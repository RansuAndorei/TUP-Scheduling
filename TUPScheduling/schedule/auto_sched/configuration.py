from TUPScheduling.base.models import CourseCurriculum, Sections, Rooms, BasePage, Subjects, SubjectsOrderable, Departments
from TUPScheduling.accounts.models import Professors

from TUPScheduling.schedule.auto_sched.data import RawClass, Professor, Section, Subject, Room, Constant

import operator

class Configuration:
    
    def __init__(self, department_id, class_list):
        
        self._is_empty = True
        self._professors = {}
        self._sections = {}
        self._subjects = {}
        self._rooms = {}
        
        self._raw_classes = []
        self._distributed_classes = {}
        
        self.department = department_id
        self._class_list = class_list

    
    def get_professor_by_id(self, id) -> Professor:
        if id in self._professors:
            return self._professors[id]
        return None
    
    @property
    def number_of_professors(self)-> int:
        return len(self._professors)
    
    def get_section_by_id(self, id) -> Section:
        if id in self._sections:
            return self._sections[id]
        return None
    
    @property
    def number_of_sections(self)-> int:
        return len(self._sections)
    
    def get_subject_by_id(self, id) -> Subject:
        if id in self._subjects:
            return self._subjects[id]
        return None
    
    @property
    def number_of_subjects(self)-> int:
        return len(self._subjects)
    
    def get_room_by_id(self, id) -> Room:
        if id in self._rooms:
            return self._rooms[id]
        return None
    
    @property
    def rooms(self) -> int:
        return self._rooms
    
    @property
    def number_of_rooms(self)-> int:
        return len(self._rooms)
    
    @property
    def raw_classes(self) -> []:
        return self._raw_classes
    
    @property
    def number_of_raw_classes(self)-> int:
        return len(self._raw_classes)
    
    @property
    def distributed_classes(self) -> {}:
        return self._distributed_classes
    
    @property
    def isEmpty(self) -> bool:
        return self._is_empty
    
    @staticmethod
    def __parse_professor(professor):
        id = professor.id
        name = professor.last_name

        if id == 0 or name == '':
            return None

        return Professor(id, name)
    
    @staticmethod
    def __parse_section(section):
        id = section.id
        name = section.section_name

        if id == 0 or name == '':
            return None

        return Section(id, name)
    
    @staticmethod
    def __parse_subject(subject):
        id = subject.id
        name = subject.subject_code

        if id == 0 or name == '':
            return None

        return Subject(id, name)
    
    def __parse_room(self, room):
        name = room.Room_Name
        lab = True if room.Room_Type == 'Laboratory' else False
        is_lab = lab

        if lab == '' or name == '':
            return None

        room = Room(room.id, name, is_lab)
        return room
    
    def __parse_raw_class(self, raw_class):
        prof_id = 0
        subject_id = 0
        duration = 1
        is_lab = False
        section = 0
        
        prof_id = raw_class['professor']
        section_id = raw_class['section']
        subject_id = raw_class['subject']
        is_lab = raw_class['is_lab']
        duration = int(raw_class['duration'])
        
        professor = self.get_professor_by_id(prof_id)
        section = self.get_section_by_id(section_id)

        raw = RawClass(prof_id, section_id, subject_id, is_lab, duration)
        professor.add_raw_class(raw)
        section.add_raw_class(raw)
        
        if prof_id == 0 or subject_id == 0 or duration == 0 or section == 0:
            return None
        return raw
        
    
    def parse_from_db(self):
        self._professors = {}
        self._sections = {}
        self._subjects = {}
        self._rooms = {}
        self._raw_classes = []
        
        Room.restart_IDs()
        RawClass.restart_IDs()
        
        # Professors
        professors = Professors.objects.filter(
            choose_department_id=self.department,
        )
        for professor in professors:
            prof = self.__parse_professor(professor)
            self._professors[prof.id] = prof
        
        # Sections
        sections = Sections.objects.filter(
            course_curriculum_id__choose_department_id=self.department,
        )

        # merge section
        i = 0
        new_sections = []
        while i < len(sections)-1:
            if sections[i].section_name[-2] == sections[i+1].section_name[-2]:
                sections[i].section_name = sections[i].section_name + " & " + sections[i+1].section_name
                new_sections.append(sections[i])
                i += 1
            else:
                new_sections.append(sections[i])
            i += 1

        for section in new_sections:
            sec = self.__parse_section(section)
            self._sections[section.id] = sec
            
        # Subjects
        subjects = Subjects.objects.filter(
            choose_department_id=self.department)

        for subject in subjects:
            sub = self.__parse_subject(subject)
            self._subjects[sub.id] = sub

        # Rooms
        rooms = Rooms.objects.filter(
            choose_department_id=self.department)

        for room in rooms:
            temp_room = self.__parse_room(room)
            self._rooms[temp_room.id] = temp_room
            
        # RawClass
        raw_classes = self._class_list
        for raw_class in raw_classes:
            temp_class = self.__parse_raw_class(raw_class)
            self._raw_classes.append(temp_class)
            
        self._is_empty = False
                       
    def even_distribution(self) -> None:
        if self._is_empty == True:
            print("Class list is empty")
            return None
        
        self._distributed_classes = {}
        DAYS_NUM = Constant.DAYS_NUM
        classes = self._raw_classes
        
        for i in range(DAYS_NUM):
            self._distributed_classes[i] = []
            
        classes.sort(key=operator.attrgetter("section_id", "duration"))
        
        for idx, val in enumerate(classes):
            key = idx % DAYS_NUM
            self._distributed_classes[key].append(val)
        
        
    
    
    
    
    