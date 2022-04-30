#from TUPScheduling.schedule.genetic_algorithm.Configuration import Configuration
from TUPScheduling.schedule.genetic_algorithm.Reservation import Reservation
from TUPScheduling.schedule.genetic_algorithm.Constant import Constant
from TUPScheduling.schedule.genetic_algorithm.SlottedClass import SlottedClass

from collections import defaultdict
from random import randrange


class Schedule:
    def __init__(self, configuration):
        self._configuration = configuration
        self._fitness = 0

        # Size of the Schedule Chromosome
        slots_length = Constant.DAYS_NUM * Constant.DAY_HOURS * self._configuration.numberOfRooms
        self._slots = [[] for _ in range(slots_length)]

        # Hash map corresponding to Class-Reservation relationship
        self._classes = defaultdict(Reservation)

    def copy(self, schedule, setup_only):
        if not setup_only:
            self._configuration = schedule.configuration
            self._slots = schedule.slots
            self._classes = schedule.classes
            self._fitness = schedule.fitness
            return self
        return Schedule(schedule.configuration)

    def makeNewFromPrototype(self):
        new_chromosome = self.copy(self, True)
        new_chromosome_slots = new_chromosome._slots
        new_chromosome_classes = new_chromosome._classes

        classes = self._configuration.subjectClasses
        num_of_rooms = self._configuration.numberOfRooms
        DAYS_NUM = Constant.DAYS_NUM
        DAY_HOURS = Constant.DAY_HOURS + 1

        for c in classes:
            duration = c.Duration
            day = randrange(327568) % DAYS_NUM
            room = randrange(327568) % num_of_rooms
            time = randrange(327568) % (DAY_HOURS - duration)
            reservation = Reservation(num_of_rooms, day, time, room)
            reservation_index = hash(reservation)

            for slot in range(reservation_index, reservation_index + duration):
                new_chromosome_slots[slot].append(c)

            new_chromosome_classes[c] = reservation

        new_chromosome.calculateFitness()
        return new_chromosome

    def crossover(self, parent, numberOfCrossoverPoints, crossoverProbability):

        if randrange(327568) % 100 > crossoverProbability:
            return self.copy(self, False)

        # new chromosome
        new = self.copy(self, True)
        new_classes, new_slots = new._classes, new._slots

        classes = self._classes
        size = len(classes)

        subject_classes = tuple(classes.keys())
        parent_classes = parent.classes
        parent_subject_classes = tuple(parent.classes.keys())

        # randomly choose crossover points
        crossover_point = size * [False]
        for i in range(numberOfCrossoverPoints, 0, -1):
            check_point = False
            while not check_point:
                point = randrange(327568) % size
                if not crossover_point[point]:
                    crossover_point[point] = True
                    check_point = True

        first = randrange(2) == 0

        for i in range(size):
            slot = 0
            # first parent
            if first:
                subject_class = subject_classes[i]
                duration = subject_class.Duration
                reservation = classes[subject_class]
                reservation_index = hash(reservation)

                if not (reservation_index + duration) > len(new_slots):
                    new_classes[subject_class] = reservation
                    for slot in range(reservation_index, reservation_index + duration):
                        new_slots[slot].append(subject_class)
            # second parent
            else:
                subject_class = parent_subject_classes[i]
                duration = subject_class.Duration
                reservation = parent_classes[subject_class]
                reservation_index = hash(reservation)

                if not (reservation_index + duration) > len(new_slots):
                    new_classes[subject_class] = reservation
                    for slot in range(reservation_index, reservation_index + duration):
                        new_slots[slot].append(subject_class)

            if crossover_point[i]:
                first = not first

        new.calculateFitness()
        return new

    def mutation(self, mutationSize, mutationProbability):
        if randrange(32768) % 100 > mutationProbability:
            return

        classes = self._classes
        num_of_classes = len(classes)
        subject_classes = tuple(classes.keys())
        configuration = self._configuration
        slots = self._slots
        num_of_rooms = configuration.numberOfRooms

        DAY_HOURS = Constant.DAY_HOURS + 1
        DAYS_NUM = Constant.DAYS_NUM

        for i in range(mutationSize, 0, -1):
            position = randrange(32768) % num_of_classes

            current_class = subject_classes[position]
            reservation1 = classes[current_class]
            reservation1_index = hash(reservation1)

            duration = current_class.Duration
            day = randrange(32768) % DAYS_NUM
            room = randrange(32768) % num_of_rooms
            time = randrange(32768) % (DAY_HOURS - duration)
            reservation2 = Reservation(num_of_rooms, day, time, room)
            reservation2_index = hash(reservation2)

            for j in range(duration):
                previous = slots[reservation1_index + j]
                previousTuple = tuple(previous)
                for current_class in previousTuple:
                    previous.remove(current_class)

                slots[reservation2_index + j].append(current_class)

            classes[current_class] = reservation2

        self.calculateFitness()

    def calculateFitness(self):

        configuration = self._configuration
        classes = self._classes.items()
        slots = self._slots
        numberOfRooms = configuration.numberOfRooms
        DAY_HOURS, DAYS_NUM = Constant.DAY_HOURS, Constant.DAYS_NUM
        daySize = DAY_HOURS * numberOfRooms

        class_score = 0
        max_class_score = configuration.numberOfSubjectClasses * 4
        
        # check each class in the hash map
        for _class, reservation in classes:
            day, time, room_id = reservation.Day, reservation.Time, reservation.Room

            duration = _class.Duration

            # room overlap
            reservation_index = hash(reservation)
            class_slot = slots[reservation_index: reservation_index + duration]
            room_overlap = any(filter(lambda slot: len(slot) > 1, class_slot))

            class_score = class_score + 0 if room_overlap else class_score + 1

            # # lab requirement
            room = configuration.getRoomById(room_id)
            lab_flag = (not _class.LabRequired and not room.Lab) or (
                _class.LabRequired and room.Lab)
            class_score = class_score + 1 if lab_flag else class_score + 0
            
            # check overlapping prof and section
            prof_overlap = sec_overlap = False

            t = day * daySize + time
            try:
                # check each room
                for k in range(numberOfRooms, 0, -1):
                    # check time slice of that room
                    for i in range(t, t + duration):
                        cl = slots[i]
                        for check_class in cl:
                            if _class != check_class:
                                if not prof_overlap and _class.professorOverlaps(check_class):
                                    prof_overlap = True
                                if not sec_overlap and _class.sectionOverlap(check_class):
                                    sec_overlap = True
                                if prof_overlap and sec_overlap:
                                    raise Exception('stop checking')

                    t += DAY_HOURS
            except Exception:
                pass

            class_score = class_score + 0 if prof_overlap else class_score + 1
            class_score = class_score + 0 if sec_overlap else class_score + 1

        self._fitness = class_score / max_class_score

    def processSchedule(self):
        WEEK_DAYS = ("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
        classes = self._classes.items()
        schedule_list = []

        getRoomById = self._configuration.getRoomById

        for cc, reservation in classes:
            prof_id = cc.Professor

            room_id = reservation.Room
            room = getRoomById(room_id)
            room_name = room.dbId

            day_num = reservation.Day - 1
            day = WEEK_DAYS[day_num]

            section_id = cc.Section
            subject_id = cc.Subject

            time = reservation.Time
            if time < 6:
                starting_time = time + 7
            else:
                starting_time = time - 5

            slot = SlottedClass(prof_id, room_name, day,
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
        classes, otherClasses = self._classes, other.classes
        for cc in classes.keys():
            if classes[cc] != otherClasses[cc]:
                return False

    def __ne__(self, other):
        return not self.__eq__(other)
