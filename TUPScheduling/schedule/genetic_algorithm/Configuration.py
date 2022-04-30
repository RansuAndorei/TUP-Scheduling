# import from the database
# import from the auto assign function

from TUPScheduling.base.models import CourseCurriculum, Sections, Rooms, BasePage, Subjects, SubjectsOrderable, Departments
from TUPScheduling.accounts.models import Professors


from TUPScheduling.schedule.genetic_algorithm.Professor import Professor
from TUPScheduling.schedule.genetic_algorithm.Section import Section
from TUPScheduling.schedule.genetic_algorithm.Subject import Subject
from TUPScheduling.schedule.genetic_algorithm.Room import Room
from TUPScheduling.schedule.genetic_algorithm.SubjectClass import SubjectClass
# from Professor import Professor
# from Section import Section
# from Subject import Subject
# from Room import Room
# from SubjectClass import SubjectClass
# from Assign import assign


class Configuration:

    def __init__(self, department_id, class_list):
        self._isEmpty = True
        # parsed professors
        self._professors = {}
        # parsed sections
        self._sections = {}
        # parsed subjects
        self._subjects = {}
        # parsed rooms
        self._rooms = {}
        # parsed classes
        self._subjectClasses = []

        # self._lab_rooms = []
        # self._lab_class = []
        self.department = department_id

        self._class_list = class_list

    # Returns professor with specified ID
    # If there is no professor with such ID method returns NULL

    def getProfessorById(self, id) -> Professor:
        if id in self._professors:
            return self._professors[id]
        return None

    @property
    # Returns number of parsed professors
    def numberOfProfessors(self) -> int:
        return len(self._professors)

    # Returns student group with specified ID
    # If there is no student group with such ID method returns NULL
    def getSectionById(self, id) -> Section:
        if id in self._sections:
            return self._sections[id]
        return None

    @property
    # Returns number of parsed student groups
    def numberOfSections(self) -> int:
        return len(self._sections)

    # Returns course with specified ID
    # If there is no course with such ID method returns NULL
    def getSubjectById(self, id) -> Subject:
        if id in self._subjects:
            return self._subjects[id]
        return None

    @property
    def numberOfSubjects(self) -> int:
        return len(self._subjects)

    # Returns room with specified ID
    # If there is no room with such ID method returns NULL
    def getRoomById(self, id) -> Room:
        if id in self._rooms:
            return self._rooms[id]
        return None

    # @property
    # # Returns number of parsed rooms
    # def numberOfRooms(self) -> int:
    #     return len(self._rooms)
    @property
    # Returns number of parsed rooms
    def rooms(self) -> int:
        return self._rooms
    
    @property
    # Returns number of parsed rooms
    def numberOfRooms(self) -> int:
        return len(self._rooms)

    # @property
    # # Returns reference to list of parsed classes
    # def subjectClasses(self) -> []:
    #     return self._subjectClasses

    @property
    # Returns reference to list of parsed classes
    def subjectClasses(self) -> []:
        return self._subjectClasses

    @property
    # Returns number of parsed classes
    def numberOfSubjectClasses(self) -> int:
        return len(self._subject_classes)

    @property
    # Returns TRUE if configuration is not parsed yet
    def isEmpty(self) -> bool:
        return self._isEmpty

    @staticmethod
    def __parseProfessor(professor):
        # returns professor
        # needs Id
        # needs name

        # self.Id = id
        # self.Name = name
        # self.SubjectClasses = []
        id = professor.id
        name = professor.last_name

        if id == 0 or name == '':
            return None

        return Professor(id, name)
        

    @staticmethod
    def __parseSections(section):
        # returns section
        # needs Id
        # needs name

        # self.Id = id
        # self.Name = name
        # self.SubjectClasses = []

        id = section.id
        name = section.section_name

        if id == 0 or name == '':
            return None

        return Section(id, name)

    @staticmethod
    def __parseSubject(subject):
        # returns subjects
        # needs Id
        # needs name

        # self.Id = id
        # self.Name = name

        id = subject.id
        name = subject.subject_code

        if id == 0 or name == '':
            return None

        return Subject(id, name)

        pass

    def __parseRoom(self, room):
        # returns Room
        # needs isLab
        # needs name

        # self.Id = Room._next_room_id
        # Room._next_room_id += 1
        # self.Name = name
        # self.Lab = lab

        name = room.Room_Name
        lab = True if room.Room_Type == 'Laboratory' else False
        is_lab = lab

        if lab == '' or name == '':
            return None

        room = Room(name, is_lab, room.id)
        if not is_lab:
            self._lab_rooms.append(room)
        return room

    # @staticmethod
    def __parseSubjectClass(self, subject_class):
        # returns SubjectClass
        # needs prof ID
        # needs subject ID
        # needs duration
        # needs isLab
        # needs sectionList

        prof_id = 0
        subject_id = 0
        duration = 1
        is_lab = False
        section = 0

        # self.Professor = professor
        # self.Subject = subject
        # self.LabRequired = requires_lab
        # self.Duration = duration
        # self.Sections = sections

        prof_id = subject_class['professor']
        subject_id = subject_class['subject']
        duration = int(subject_class['duration'])
        is_lab = subject_class['is_lab']
        section = subject_class['section']
        p = self.getProfessorById(prof_id)
        s = self.getSubjectById(subject_id)
        q = self.getSectionById(section)

        raw = SubjectClass(prof_id, subject_id, is_lab, duration, section)
        p.addSubjectClass(raw)

        q.addClass(raw)

        if prof_id == 0 or subject_id == 0 or duration == 0 or section == 0:
            return None
        if not is_lab:
            self._lab_class.append(raw)
        return raw
        pass

    def parseFromDB(self):
        self._professors = {}
        self._sections = {}
        self._subjects = {}
        self._rooms = {}
        self._subjectClasses = []

        self._lab_rooms = []
        self._lab_class = []

        Room.restartIDs()
        SubjectClass.restartIDs()

        # Professors
        professors = Professors.objects.filter(
            choose_department_id=self.department,
        )
        for professor in professors:
            prof = self.__parseProfessor(professor)
            self._professors[prof.Id] = prof

        # Sections
        sections = Sections.objects.filter(
            course_curriculum_id__choose_department_id=self.department,
        )

        # merge section
        i = 0
        new_sections = []
        while i < len(sections)-1:
            if sections[i].section_name[-2] == sections[i+1].section_name[-2]:
                sections[i].section_name = sections[i].section_name + \
                    " & " + sections[i+1].section_name
                new_sections.append(sections[i])
                i += 1
            else:
                new_sections.append(sections[i])
            i += 1

        for section in new_sections:
            sec = self.__parseSections(section)
            self._sections[section.id] = sec

        # Subjects
        subjects = Subjects.objects.filter(
            choose_department_id=self.department)

        for subject in subjects:
            sub = self.__parseSubject(subject)
            self._subjects[sub.Id] = sub

        # Rooms
        rooms = Rooms.objects.filter(
            choose_department_id=self.department)

        for room in rooms:
            temp_room = self.__parseRoom(room)
            self._rooms[temp_room.Id] = temp_room

        # SubjectClass
        subject_classes = self._class_list
        # counter = 0
        for subject_class in subject_classes:
            temp_class = self.__parseSubjectClass(subject_class)
            self._subjectClasses.append(temp_class)
            # counter += 1
            # if counter == 100:
            #     break

        self._isEmpty = False

    def trial(self):
        print("TRIAL")
        self.parseFromDB()
        for room in self._rooms:
            print(self._rooms[room].Name)

        # print(self._subjects[1].Name)
        # print(self._professors[5].Name)
        # print(self._sections[34].Name)
        # for prof in self._professors:
        #     print(self._professors[prof].SubjectClasses)

class Necessary:
    def __init__(self, subject_classes, rooms):
        self._subject_classes = subject_classes
        self._rooms = rooms
        
    def getRoomById(self, id) -> Room:
        if id in self._rooms:
            return self._rooms[id]
        return None
    
    @property
    # Returns number of parsed rooms
    def numberOfRooms(self) -> int:
        return len(self._rooms)
    
    @property
    # Returns reference to list of parsed classes
    def subjectClasses(self) -> []:
        return self._subject_classes
    
    @property
    # Returns number of parsed classes
    def numberOfSubjectClasses(self) -> int:
        return len(self._subject_classes)