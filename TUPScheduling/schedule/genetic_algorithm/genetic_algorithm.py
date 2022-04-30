from TUPScheduling.base.models import Sections, Rooms, Subjects, Professors, SubjectsOrderable
import random


def genetic_algorithm(Schedule, max_hour, sections, professors, rooms):
    obj_class = professor_assignment(sections, professors)
    # print("YEAH: ", obj_class)

    """"""
    # professor = Professors.objects.get(pk=5)
    # room = Rooms.objects.get(pk=5)
    # section = Sections.objects.get(pk=32)
    # subject = Subjects.objects.get(pk=5)
    # Schedule.objects.create(
    #     prof=professor,
    #     room=room,
    #     day="Monday",
    #     section=section,
    #     subject=subject,
    #     starting_time=int(7),
    # )


def professor_assignment(sections, professors):
    obj_class = []
    lec_counter = 0
    lab_counter = 0
    for section in sections:
        for subject in section.subjects:
            lowest_hours = 100
            current_prof = None
            for professor in professors:
                if subject['subject_object'] in professor.subjects:
                    if professor.hours < lowest_hours:
                        current_prof = professor
                        lowest_hours = professor.hours

            for professor in professors:
                if professor == current_prof:
                    professor.hours += subject['subject_object'].hours

            lab = subject['subject_object'].lab_or_lec
            lab = True if lab == 'Laboratory' else False
            obj_class.append({
                'professor': current_prof.id,
                'subject': subject['subject_object'].id,
                'duration': subject['subject_object'].hours,
                'section': section.id,
                'is_lab': lab,
            })
            if not lab:
                lec_counter += 1
            else:
                lab_counter += 1

    # for professor in professors:
    #     print("Name: ", professor.last_name,
    #           " Hours: ", professor.hours)
    # print(obj_class)
    # print(lec_counter)
    # print(lab_counter)
    return obj_class


def check_time():
    """Check Time"""
