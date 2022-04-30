from TUPScheduling.schedule.auto_sched.assign import assign
from TUPScheduling.schedule.auto_sched.configuration import Configuration
from TUPScheduling.schedule.auto_sched.genetic_algorithm import GeneticAlgorithm
from TUPScheduling.schedule.auto_sched.data import Constant


def run_auto_sched():
    DAYS_NUM = Constant.DAYS_NUM
    department_id = 24
    class_list = assign(department_id)
    
    configuration = Configuration(department_id, class_list)
    configuration.parse_from_db()
    configuration.even_distribution()
    
    result = []
    
    for day in range(DAYS_NUM):
        schedule_list = []

        algo = GeneticAlgorithm(configuration, day)
        print("\n", "Making a Class Schedule Using", algo, ".\n")
        print(f"Day {day + 1}")
        algo.run()
        
        schedule_list = algo.result.process_schedule()
        
        for schedule in schedule_list:
            result.append({'prof': schedule.prof_id, 'room': schedule.room_dbid, 'day': schedule.day,
                      'section': schedule.section_id, 'subject': schedule.subject_id, 'time': schedule.starting_time})
     
       
    print(result)
    return result

    
    

# def sdas():
#     department_id = 24
#     class_list = assign(department_id)
#     configuration = Configuration(department_id, class_list)
#     configuration.parseFromDB()
    
#     # classes = configuration.subjectClasses
#     # rooms = configuration.rooms
    
#     # config = Necessary(classes, rooms)
    
#     algo = GeneticAlgorithm(config)
#     print("\n", "GaSchedule Making a Class Schedule Using", algo, ".\n")
#     algo.run()
#     print(algo.result)

#     schedule_list = algo.result.processSchedule()
#     result = []

#     for schedule in schedule_list:
#         result.append({'prof': schedule.prof_id, 'room': schedule.room_name[0], 'day': schedule.day,
#                       'section': schedule.section_id, 'subject': schedule.subject_id, 'time': schedule.starting_time})

#     print(result)

#     return result
