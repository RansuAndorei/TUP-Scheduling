class SubjectClass:
    _next_class_id = 0

    def __init__(self, professor, subject, requires_lab, duration, sections):
        self.Id = SubjectClass._next_class_id
        SubjectClass._next_class_id += 1

        self.Professor = professor
        self.Subject = subject
        self.LabRequired = requires_lab
        self.Duration = duration
        self.Section = sections

        # self.Professor.addSubjectClass(self)

        # self.Section.addClass(self)

    def sectionOverlap(self, c):
        return self.Section == c.Section

    def professorOverlaps(self, c):
        return self.Professor == c.Professor

    def __hash__(self):
        return hash(self.Id)

    def __eq__(self, other):
        return self.Id == other.Id

    def __ne__(self, other):
        return not (self == other)

    @staticmethod
    def restartIDs() -> None:
        SubjectClass._next_class_id = 0
