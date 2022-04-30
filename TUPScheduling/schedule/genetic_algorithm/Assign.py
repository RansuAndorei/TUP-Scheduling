# probably needed probably not
# import from the DB
from TUPScheduling.base.models import Sections, SubjectsOrderable, Subjects, Departments, Professors

# auto assign function goes here


def assign(department):
    # Sections
    sections = Sections.objects.filter(
        course_curriculum_id__choose_department_id=department,
    )

    # merge sections
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

    sections = new_sections

    for section in sections:

        section.subjects_query = []

        if section.year_level == "1st Year" and section.sem == "First":
            section.subjects_query.append(list(SubjectsOrderable.objects.values_list('subject_id', flat=True).filter(
                first_year_first_sem_id=section.course_curriculum_id)))

        elif section.year_level == "1st Year" and section.sem == "Second":
            section.subjects_query.append(list(SubjectsOrderable.objects.values_list('subject_id', flat=True).filter(
                first_year_second_sem_id=section.course_curriculum_id)))

        elif section.year_level == "2nd Year" and section.sem == "First":
            section.subjects_query.append(list(SubjectsOrderable.objects.values_list('subject_id', flat=True).filter(
                second_year_first_sem_id=section.course_curriculum_id)))

        elif section.year_level == "2nd Year" and section.sem == "Second":
            section.subjects_query.append(list(SubjectsOrderable.objects.values_list('subject_id', flat=True).filter(
                second_year_second_sem_id=section.course_curriculum_id)))
        elif section.year_level == "3rd Year" and section.sem == "First":
            section.subjects_query.append(list(SubjectsOrderable.objects.values_list('subject_id', flat=True).filter(
                third_year_first_sem_id=section.course_curriculum_id)))

        elif section.year_level == "3rd Year" and section.sem == "Second":
            section.subjects_query.append(list(SubjectsOrderable.objects.values_list('subject_id', flat=True).filter(
                third_year_second_sem_id=section.course_curriculum_id)))

        elif section.year_level == "4th Year" and section.sem == "First":
            section.subjects_query.append(list(SubjectsOrderable.objects.values_list('subject_id', flat=True).filter(
                fourth_year_first_sem_id=section.course_curriculum_id)))

        elif section.year_level == "4th Year" and section.sem == "Second":
            section.subjects_query.append(list(SubjectsOrderable.objects.values_list('subject_id', flat=True).filter(
                fourth_year_second_sem_id=section.course_curriculum_id)))

        section.subjects_query = section.subjects_query[0]

    already_schedule_object = []

    for section in sections:
        section.subjects = []
        for subject in section.subjects_query:
            subject_object = Subjects.objects.get(id=subject)
            if subject_object.choose_department == Departments.objects.get(id=department):
                scheduled = False
                if len(section.schedules.all()) > 0 and subject_object.schedules.all():
                    scheduled = True

                section.subjects.append(
                    {
                        'subject_object': subject_object,
                        'scheduled': scheduled
                    }
                )

    # Professors
    profs = Professors.objects.filter(
        choose_department_id=department)

    for professor in profs:
        professor.subject_ids = []
        professor.hours = 0
        professor.subject_ids.append(list(SubjectsOrderable.objects.values_list('subject_id', flat=True).filter(
            professor_model_id=professor.id)))

        temp_subjects = []
        for subject_id in professor.subject_ids[0]:
            temp_subjects.append(Subjects.objects.get(id=subject_id))
        professor.subjects = temp_subjects

    return professor_assignment(sections, profs)


def professor_assignment(sections, professors):
    obj_class = []
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

    # for professor in professors:
    #     print("Name: ", professor.last_name,
    #           " Hours: ", professor.hours)

    return obj_class
