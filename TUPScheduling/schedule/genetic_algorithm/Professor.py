class Professor:

    def __init__(self, id, name):
        self.Id = id
        self.Name = name
        self.SubjectClasses = []

    # Bind professor to course
    def addSubjectClass(self, subject_class):
        self.SubjectClasses.append(subject_class)

    # Compares ID's of two objects which represent professors
    def __eq__(self, rhs):
        return self.Id == rhs.Id
