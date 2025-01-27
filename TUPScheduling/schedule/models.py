from wagtail.core.models import Page
from django.db import models

from wagtail.snippets.models import register_snippet
from TUPScheduling import _DAY, _TIME, _TIME_DAY
from TUPScheduling.base.models import CourseCurriculum, Sections, Rooms, BasePage, Subjects, SubjectsOrderable, Departments
from TUPScheduling.accounts.models import Professors
from django.http import JsonResponse
from django.http import HttpResponseRedirect
# from django.shortcuts import render

import math
from TUPScheduling.schedule.genetic_algorithm.genetic_algorithm import genetic_algorithm
from TUPScheduling.schedule.genetic_algorithm.Playground import sdas

from TUPScheduling.schedule.auto_sched.main import run_auto_sched


class Schedule(models.Model):
    prof = models.ForeignKey(
        Professors,
        null=True,
        on_delete=models.CASCADE,
        related_name='schedules'
    )
    starting_time = models.IntegerField(
        choices=_TIME,
        default=7
    )
    school_year = models.DateTimeField(
        auto_now_add=True, blank=True, null=True)

    room = models.ForeignKey(
        Rooms,
        null=True,
        on_delete=models.SET_NULL,
        related_name='schedules'
    )
    section = models.ForeignKey(
        Sections,
        null=True,
        on_delete=models.CASCADE,
        related_name='schedules'
    )
    subject = models.ForeignKey(
        Subjects,
        null=True,
        on_delete=models.CASCADE,
        related_name='schedules'
    )
    day = models.CharField(
        max_length=20,
        null=True,
        choices=tuple([(day, day) for day in _DAY])
    )

    def subject_description(self):
        return self.subject.description

    def subject_units(self):
        return self.subject.units

    def starting_time_display(self):
        return dict(_TIME_DAY).get(int(self.starting_time))

    def ending_time_display(self):
        ending_time = int(
            (int(self.starting_time) + int(self.subject.hours)) % 12)
        if ending_time == 0:
            ending_time = 12
        return dict(_TIME_DAY).get(ending_time)

    # def __str__(self):
    #     ending_time = int((int(self.starting_time) +  int(self.subject.hours)) % 12)
    #     if ending_time == 0:
    #         ending_time = 12
    #     return self.subject.subject_code + ' | ' + self.subject.description + ' | ' + self.section.__str__() + ' | ' + str(self.subject.units) + ' | ' + self.day[0] + ' - ' + dict(_TIME_DAY).get(int(self.starting_time)) + '-' + dict(_TIME_DAY).get(ending_time)


class SchedulePage(Page):
    max_count = 1
    table_count = 5
    day = _DAY
    time = _TIME
    parent_page_types = [BasePage]

    def serve(self, request):

        if request.user.professors.is_scheduler is False:
            return HttpResponseRedirect('/class-schedule/')

        add_schedule = request.POST.get('add_schedule', None)
        remove_schedule = request.POST.get('remove_schedule', None)
        update_schedule = request.POST.get('update_schedule', None)
        update_remove_schedule = request.POST.get(
            'update_remove_schedule', None)
        update_add_schedule = request.POST.get('update_add_schedule', None)

        button_reset = request.POST.get('button_reset', None)
        reset_all = request.POST.get('reset_all', None)

        if button_reset:
            Schedule.objects.filter(room_id=button_reset).delete()

        if reset_all:
            Schedule.objects.all().delete()

        restriction = request.POST.get('restriction', None)

        if restriction:
            section_pk = request.POST.get('section_pk', None)
            day = request.POST.get('day', None)
            subject_pk = request.POST.get('subject', None)
            starting_time = request.POST.get('starting_time', None)
            subject_hours = request.POST.get('subject_hours', None)
            room_pk = request.POST.get('room_pk', None)

            schedule_pk = request.POST.get('schedule_pk', None)
            past_time = request.POST.get('past_time', None)
            past_day = request.POST.get('past_day', None)

            schedules = Schedule.objects.filter(
                day=day,
                section_id=section_pk,
            )

            current_starting_time = int(starting_time)
            current_ending_time = current_starting_time + \
                int(float(subject_hours))

            # RESTRICTION SAME TIME IN  ROOM
            for sched in schedules.exclude(room_id=room_pk):

                sched_starting_time = sched.starting_time
                sched_ending_time = int(
                    float(sched.starting_time + sched.subject.hours)) - 1
                if (current_starting_time >= sched_starting_time and current_starting_time <= sched_ending_time) or (sched_starting_time >= current_starting_time and sched_starting_time <= current_ending_time):

                    if restriction == 'ADD':
                        Schedule.objects.filter(
                            day=day,
                            section_id=section_pk,
                            starting_time=starting_time,
                            room_id=room_pk
                        ).delete()

                    if restriction == 'UPDATE':
                        update_schedule = Schedule.objects.get(
                            pk=schedule_pk
                        )
                        update_schedule.day = past_day
                        update_schedule.starting_time = past_time
                        update_schedule.save()

                    return JsonResponse({
                        'status': False,
                        'error': 'Overlapping Schedule',
                    })

            time_checker = 0
            ending_time_trace = -1
            starting_time_trace = -1
            first_time = True
            for sched in schedules:
                hours = sched.subject.hours
                starting_time = sched.starting_time
                past_ending_time_trace = ending_time_trace % 12
                past_starting_time_trace = starting_time_trace % 12

                if ending_time_trace == -1:
                    past_ending_time_trace = -1

                if starting_time_trace == -1:
                    past_ending_time_trace = -1

                future_ending_time_trace = sched.starting_time + \
                    int(sched.subject.hours)

                if past_ending_time_trace == 0:
                    past_ending_time_trace = 12

                if past_starting_time_trace == 0:
                    past_starting_time_trace = 12

                print('CHECKER: ', past_starting_time_trace,
                      future_ending_time_trace)

                if past_ending_time_trace == starting_time or first_time or past_starting_time_trace == future_ending_time_trace:
                    ending_time_trace = int(future_ending_time_trace)
                    starting_time_trace = int(starting_time)
                    time_checker = time_checker + hours
                    if time_checker > 4:

                        if restriction == 'ADD':
                            Schedule.objects.filter(
                                day=day,
                                section_id=section_pk,
                                starting_time=starting_time,
                            ).delete()

                        if restriction == 'UPDATE':

                            update_schedule = Schedule.objects.get(
                                pk=schedule_pk
                            )
                            update_schedule.day = past_day
                            update_schedule.starting_time = past_time
                            update_schedule.save()

                        return JsonResponse({
                            'status': False,
                            'error': '5 hours or more are not allowed!',

                        })
                else:
                    time_checker = 0
                first_time = False

            return JsonResponse({'status':  True})

        if add_schedule:
            prof_pk = request.POST.get('prof_pk', None)
            room_pk = request.POST.get('room_pk', None)
            section_pk = request.POST.get('section_pk', None)
            day = request.POST.get('day', None)
            subject_pk = request.POST.get('subject', None)
            starting_time = request.POST.get('starting_time', None)
            # units = request.POST.get('units', None)
            professor = None
            if prof_pk:
                professor = Professors.objects.get(pk=prof_pk)
                # professor.units = int(units)
                professor.save()

            room = Rooms.objects.get(pk=room_pk)
            section = Sections.objects.get(pk=section_pk)
            subject = Subjects.objects.get(pk=subject_pk)
            schedule_created = Schedule.objects.create(

                prof=professor,
                room=room,
                day=day,
                section=section,
                subject=subject,
                starting_time=int(starting_time),
            )

            return JsonResponse({'schedule_pk': schedule_created.pk})
        if update_add_schedule:
            day = request.POST.get('day', None)
            starting_time = request.POST.get('starting_time', None)
            schedule_pk = request.POST.get('schedule_pk', None)
            schedule = Schedule.objects.get(pk=schedule_pk)
            schedule.day = day
            schedule.starting_time = starting_time
            schedule.save()

        if remove_schedule:
            schedule_pk = request.POST.get('schedule_pk', None)
            prof_pk = request.POST.get('prof_pk', None)
            # units = request.POST.get('units', None)

            if prof_pk:
                professor = Professors.objects.get(pk=prof_pk)
                # professor.units = professor.units - int(units)
                professor.save()

            Schedule.objects.get(pk=schedule_pk).delete()

        if update_schedule:
            schedule_pk = request.POST.get('schedule_pk', None)
            # units = request.POST.get('units', None)

            prof_pk = request.POST.get('prof_pk', None)
            professor = Professors.objects.get(pk=prof_pk)

            schedule = Schedule.objects.get(pk=schedule_pk)
            schedule.prof = professor
            # professor.units = professor.units + int(units)
            professor.save()
            schedule.save()

        if update_remove_schedule:
            schedule_pk = request.POST.get('schedule_pk', None)
            # units = request.POST.get('units', None)

            prof_pk = request.POST.get('prof_pk', None)
            professor = Professors.objects.get(pk=prof_pk)
            # professor.units = professor.units - int(units)
            professor.save()

            schedule = Schedule.objects.get(pk=schedule_pk)
            schedule.prof = None
            schedule.save()

        return super().serve(request)

    def get_context(self, request):
        context = super().get_context(request)

        department = 24
        profs = Professors.objects.filter(
            choose_department_id=department)

        temp_rooms = Rooms.objects.filter(
            choose_department_id=department)
        new_rooms = []
        for temp_room in temp_rooms:
            obj_room = {
                'pk': temp_room.pk,
                'name': temp_room.Room_Name,
                'type': temp_room.Room_Type,
            }
            new_rooms.append(obj_room)

        context['room_entries'] = new_rooms

        context['subject_entries'] = Subjects.objects.filter(
            choose_department_id=department)

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

        list_of_schedules = Schedule.objects.all()
        list_of_professors = []
        units = []

        for schedule in list_of_schedules:
            if schedule.prof == None:
                continue

            if schedule.prof not in list_of_professors:
                list_of_professors.append(schedule.prof)
                units.append(0)

        i = 0
        for schedule in list_of_schedules:
            for i in range(len(list_of_professors)):
                if list_of_professors[i] == schedule.prof:
                    units[i] += schedule.subject.units
            i += 1

        for professor in profs:
            flag = 1
            for i in range(len(units)):
                if professor == list_of_professors[i]:
                    professor.units = units[i]
                    flag = 0
            if flag:
                professor.units = 0

        # print("Sections: ", sections[0].section_name)
        # print("Schedule: ", Schedule.objects.all()[0].section)

        # total hours needed
        lec_hours = 0
        lab_hours = 0
        max_hour = 0
        hours = []
        for section in sections:
            for subject in section.subjects:
                if subject['subject_object'].lab_or_lec == 'Lecture':
                    lec_hours += subject['subject_object'].hours
                else:
                    lab_hours += subject['subject_object'].hours

                if subject['subject_object'].hours > max_hour:
                    max_hour = subject['subject_object'].hours
                if subject['subject_object'].hours not in hours:
                    hours.append(subject['subject_object'].hours)

        # rooms needed
        lec_rooms = math.ceil(lec_hours / 72) + 1
        lab_rooms = math.ceil(lab_hours / 72) + 1

        # print(max_hour)
        # print(hours)

        # # set subject on professors
        # for professor in profs:
        #     professor.subject_ids = []
        #     professor.hours = 0
        #     professor.subject_ids.append(list(SubjectsOrderable.objects.values_list('subject_id', flat=True).filter(
        #         professor_model_id=professor.id)))

        #     temp_subjects = []
        #     for subject_id in professor.subject_ids[0]:
        #         temp_subjects.append(Subjects.objects.get(id=subject_id))
        #     professor.subjects = temp_subjects

        # # genetic_algorithm(Schedule, max_hour, sections, profs, new_rooms)

        # # results = sdas()
        
        # results = run_auto_sched()
        # for result in results:
        #     Schedule.objects.create(
        #         prof=Professors.objects.get(pk=result['prof']),
        #         room=Rooms.objects.get(pk=result['room']),
        #         day=result['day'],
        #         section=Sections.objects.get(pk=result['section']),
        #         subject=Subjects.objects.get(pk=result['subject']),
        #         starting_time=result['time'],
        #     )

        context['already_schedule_object'] = Schedule.objects.all()
        context['section_entries'] = sections
        context['professor_entries'] = profs

        return context
