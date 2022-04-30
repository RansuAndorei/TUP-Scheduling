class Section:
    
    def __init__(self, id, name):
        self.Id = id
        self.Name = name
        self.SubjectClasses = []

    # Bind section to class
    def addClass(self, subject_class):
        self.SubjectClasses.append(subject_class)

    def __hash__(self):
        return hash(self.Id)

    # Compares ID's of two objects which represent section
    def __eq__(self, rhs):
        return self.Id == rhs.Id

    def __ne__(self, other):
        return not (self == other)
