from dataclasses import dataclass, field
from typing import ClassVar, List

class Constant:
    DAYS_NUM = 5
    DAY_HOURS = 12

@dataclass(order=True)
class RawClass:
    professor_id: int
    section_id: int
    subject_id: int
    is_lab: bool
    duration: int
    
    id: int = field(default=0)
    _next_id: ClassVar[int] = field(default=0)
    
    def __post_init__(self):
        self.id = RawClass._next_id
        RawClass._next_id += 1
        
    def section_overlap(self, other):
        return self.section_id == other.section_id
    
    def professor_overlap(self, other):
        return self.profesor_id == other.professor_id
    
    @staticmethod
    def restart_IDs() -> None:
        RawClass._next_id = 0
    
    def __hash__(self):
        return hash(self.id)
    
    def __eq__(self, other):
        return self.id == other.id

    def __ne__(self, other):
        return not (self == other)

@dataclass
class Professor:
    id: int
    name: str
    classes: List = field(default_factory=list)
    
    def add_raw_class(self, raw_class):
        self.classes.append(raw_class)

@dataclass
class Section:
    id: int
    name: str
    classes: List = field(default_factory=list)
    
    def add_raw_class(self, raw_class):
        self.classes.append(raw_class)

@dataclass
class Subject:
    id: int
    name: str

@dataclass
class Room:
    db_id: int
    name: str
    is_lab: bool
    
    id: int = field(default=0)
    _next_id: ClassVar[int] = field(default=0)
    
    def __post_init__(self):
        self.id = Room._next_id
        Room._next_id += 1
        
    @staticmethod
    def restart_IDs() -> None:
        Room._next_id = 0
    

@dataclass
class Reservation:
    day: int
    time: int
    room: int
    
    _index: int = field(default=0)
    
    def __post_init__(self):
        self._index = self.room * Constant.DAY_HOURS + self.time
        
    def __hash__(self) -> int:
        return self._index
    
@dataclass
class SlottedClass:
    prof_id: int
    room_dbid: int
    day: str
    section_id: int
    subject_id: int
    starting_time: int
