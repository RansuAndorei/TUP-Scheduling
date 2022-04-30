class Room:

    _next_room_id = 0

    def __init__(self, name, lab, id):
        self.dbId = id
        self.Id = Room._next_room_id
        Room._next_room_id += 1
        self.Name = name
        self.Lab = lab

    @staticmethod
    def restartIDs() -> None:
        Room._next_room_id = 0
