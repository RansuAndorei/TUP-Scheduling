from TUPScheduling.schedule.auto_sched.data import Constant, Reservation, SlottedClass

from collections import defaultdict
from random import randrange

class Schedule:
    
    def __init__(self, configuration, day):
        self._configuration = configuration
        self._day = day
        self._fitness = 0
        
        # Size of the Schedule Chromosome
        slots_length = Constant.DAY_HOURS * self._configuration.number_of_rooms
        self._slots = [[] for _ in range(slots_length)]
        
        # Hash map corresponding to Class-Reservation relationship
        self._classes = defaultdict(Reservation)
    
    def copy(self, schedule, setup_only):
        if not setup_only:
            self._configuration = schedule.configuration
            self._day = schedule.day
            self._slots = schedule.slots
            self._classes = schedule.classes
            self._fitness = schedule.fitness
            return self
        return Schedule(schedule.configuration, schedule.day)
    
    def create(self):
        new_chromosome = self.copy(self, True)
        new_chromosome_slots = new_chromosome._slots
        new_chromosome_classes = new_chromosome._classes
        day = self.day
        
        classes = self._configuration.distributed_classes[day]
        number_of_rooms = self._configuration.number_of_rooms
        
        DAY_HOURS = Constant.DAY_HOURS + 1
        
        for _class in classes:
            duration = _class.duration
            time = randrange(327568) % (DAY_HOURS - duration)
            room = randrange(327568) % number_of_rooms
            reservation = Reservation(day, time, room)
            reservation_index = hash(reservation)
            
            for slot in range(reservation_index, reservation_index + duration):
                new_chromosome_slots[slot].append(_class)

            new_chromosome_classes[_class] = reservation
            
        new_chromosome.calculate_fitness()
        return new_chromosome
    
    def crossover(self, parent, n_crossoverpoint, crossover_prob):
        if randrange(327568) % 100 > crossover_prob:
            return self.copy(self, False)
        
        # new chromosome
        new = self.copy(self, True)
        new_classes, new_slots = new._classes, new._slots
        
        classes = self._classes
        size = len(classes)
        
        raw_classes = tuple(classes.keys())
        parent_classes = parent.classes
        parent_raw_classes = tuple(parent.classes.keys())
        
        # randomly choose crossover points
        crossover_point = size * [False]
        for i in range(n_crossoverpoint, 0, -1):
            check_point = False
            while not check_point:
                point = randrange(327568) % size
                if not crossover_point[point]:
                    crossover_point[point] = True
                    check_point = True

        first = randrange(2) == 0
        
        for i in range(size):
            slot = 0
            
            if first:
                raw_class = raw_classes[i]
                duration = raw_class.duration
                reservation = classes[raw_class]
                reservation_index = hash(reservation)
            else:
                raw_class = parent_raw_classes[i]
                duration = raw_class.duration
                reservation = parent_classes[raw_class]
                reservation_index = hash(reservation)
                
            if not (reservation_index + duration) > len(new_slots):
                    new_classes[raw_class] = reservation
                    for slot in range(reservation_index, reservation_index + duration):
                        new_slots[slot].append(raw_class)
            else:
                return self.copy(self, False)
            
            if crossover_point[i]:
                first = not first
                
        new.calculate_fitness()
        return new
            
    def mutation(self, mutation_size, mutation_prob):
        if randrange(32768) % 100 > mutation_prob:
            return
        
        classes = self._classes
        day = self._day
        num_of_classes = len(classes)
        raw_class = tuple(classes.keys())
        configuration = self._configuration
        slots = self._slots
        num_of_rooms = configuration.number_of_rooms
        
        DAY_HOURS = Constant.DAY_HOURS + 1
        
        for i in range(mutation_size, 0, -1):
            position = randrange(32768) % num_of_classes

            current_class = raw_class[position]
            reservation1 = classes[current_class]
            reservation1_index = hash(reservation1)

            duration = current_class.duration
            time = randrange(32768) % (DAY_HOURS - duration)
            room = randrange(32768) % num_of_rooms
            reservation2 = Reservation(day, time, room)
            reservation2_index = hash(reservation2)

            if not (reservation2_index + duration) > len(slots):
                for j in range(duration):
                    previous = slots[reservation1_index + j]
                    previous_tuple = tuple(previous)
                    for current_class in previous_tuple:
                        previous.remove(current_class)

                    slots[reservation2_index + j].append(current_class)

            classes[current_class] = reservation2

        self.calculate_fitness()   
    
    def calculate_fitness(self):
        configuration = self._configuration
        classes = self._classes.items()
        slots = self._slots
        n_rooms = configuration.number_of_rooms
        
        DAY_HOURS = Constant.DAY_HOURS
        
        class_score = 0
        max_class_score = len(classes) * 4
        
        for _class, reservation in classes:
            time, room_id = reservation.time, reservation.room
            duration = _class.duration
            
            # room overlap
            reservation_index = hash(reservation)
            class_slot = slots[reservation_index: reservation_index + duration]
            room_overlap = any(filter(lambda slot: len(slot) > 1, class_slot))
            
            class_score = class_score + 0 if room_overlap else class_score + 1
            
            ## lab requirement
            room = configuration.get_room_by_id(room_id)
            lab_flag = (not _class.is_lab and not room.is_lab) or (
                _class.is_lab and room.is_lab)
            
            class_score = class_score + 1 if lab_flag else class_score + 0
            
             # check overlapping prof and section
            prof_overlap = sec_overlap = False
            
            timeslot = time
            try:
                # check each room
                for _ in range(n_rooms, 0, -1):
                    # check time slice of that room
                    for i in range(timeslot, timeslot + duration):
                        cl = slots[i]
                        for check_class in cl:
                            if _class != check_class:
                                if not prof_overlap and _class.professor_overlap(check_class):
                                    prof_overlap = True
                                if not sec_overlap and _class.section_overlap(check_class):
                                    sec_overlap = True
                                if prof_overlap and sec_overlap:
                                    raise Exception('stop checking')

                    timeslot += DAY_HOURS
            except Exception:
                pass
            
            class_score = class_score + 0 if prof_overlap else class_score + 1
            class_score = class_score + 0 if sec_overlap else class_score + 1
            
        # print(class_score)
        # print(max_class_score)
        self._fitness = class_score / max_class_score
            
        
    
    def process_schedule(self):
        WEEK_DAYS = ("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
        classes = self._classes.items()
        schedule_list = []
        
        get_room_by_id = self._configuration.get_room_by_id
        
        for raw_class, reservation in classes:
            prof_id = raw_class.professor_id
            
            room_id = reservation.room
            room = get_room_by_id(room_id)
            room_dbid = room.db_id
            
            day = WEEK_DAYS[self.day]
            
            section_id = raw_class.section_id
            subject_id = raw_class.subject_id
            
            time = reservation.time
            if time < 6:
                starting_time = time + 7
            else:
                starting_time = time - 5
                
            slot = SlottedClass(prof_id, room_dbid, day,
                                section_id, subject_id, starting_time)

            schedule_list.append(slot)
            
        return schedule_list
    
    @property
    def fitness(self):
        return self._fitness

    @property
    def configuration(self):
        return self._configuration

    @property
    def classes(self):
        return self._classes

    @property
    def slots(self):
        return self._slots
    
    @property
    def day(self):
        return self._day
    
    def __hash__(self) -> int:
        prime = 31
        result = 1
        classes = self._classes
        for cc in classes.keys():
            reservation = classes[cc]
            result = prime * result + \
                (0 if reservation is None else hash(reservation))
        return result

    def __eq__(self, other):
        if not isinstance(other, self.__class__):
            return False
        classes, other_classes = self._classes, other.classes
        for cc in classes.keys():
            if classes[cc] != other_classes[cc]:
                return False

    def __ne__(self, other):
        return not self.__eq__(other)