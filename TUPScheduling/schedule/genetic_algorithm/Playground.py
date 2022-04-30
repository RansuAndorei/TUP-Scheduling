# import Configuration
from TUPScheduling.schedule.genetic_algorithm.Assign import assign
from TUPScheduling.schedule.genetic_algorithm.Configuration import Configuration, Necessary
from TUPScheduling.schedule.genetic_algorithm.GeneticAlgorithm import GeneticAlgorithm


def main():
    config = Configuration()
    config.trial()


def sdas():
    department_id = 24
    class_list = assign(department_id)
    configuration = Configuration(department_id, class_list)
    configuration.parseFromDB()
    
    classes = configuration.subjectClasses
    rooms = configuration.rooms
    
    config = Necessary(classes, rooms)
    
    algo = GeneticAlgorithm(config)
    print("\n", "GaSchedule Making a Class Schedule Using", algo, ".\n")
    algo.run()
    print(algo.result)

    schedule_list = algo.result.processSchedule()
    result = []

    for schedule in schedule_list:
        result.append({'prof': schedule.prof_id, 'room': schedule.room_name[0], 'day': schedule.day,
                      'section': schedule.section_id, 'subject': schedule.subject_id, 'time': schedule.starting_time})

    print(result)

    return result
