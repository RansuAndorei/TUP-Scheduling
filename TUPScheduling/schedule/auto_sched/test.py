from data import RawClass, Professor
import operator

x = RawClass(1, 1, 1, 1, 4)
y = RawClass(1, 2, 3, 1, 3)
print(x)
print(y)
z = Professor(1,"Hey")
z.add_raw_class(x)
z.add_raw_class(y)
z.classes.sort(key=operator.attrgetter("duration"))
print(z)

hashmap = {x: 1}
print(hash(y))
