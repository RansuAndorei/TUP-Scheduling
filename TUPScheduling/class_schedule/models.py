from traceback import print_tb
from django.db import models
from wagtail.core.models import Page
from TUPScheduling.base.models import BasePage
from TUPScheduling import _COLOR, _CLASS_SCHEDULE, _DAY
from TUPScheduling.schedule.models import Schedule
from TUPScheduling.base.models import BasePage, Rooms
from wagtail.contrib.routable_page.models import RoutablePageMixin, route


class ClassSchedule(Page):
    max_count = 1
    parent_page_types = [BasePage]

    def get_context(self, request):
        context = super().get_context(request)

        if hasattr(request.user, 'students'):
            final_schedule = request.user.students.section.schedules.all()
            i = 0
            for schedule in final_schedule:
                schedule.color = _COLOR[i]
                i += 1

                if schedule.starting_time < 7:
                    schedule.new_time = str(schedule.starting_time) + " PM"
                elif schedule.starting_time == 12:
                    schedule.new_time = str(schedule.starting_time) + " PM"
                else:
                    schedule.new_time = str(schedule.starting_time) + " AM"

            context['user'] = request.user.students
            context['schedules'] = final_schedule
            context['class_schedule'] = _CLASS_SCHEDULE
            context['days'] = _DAY

        if hasattr(request.user, 'professors'):
            final_schedule = request.user.professors.schedules.all()
            i = 0

            for schedule in final_schedule:
                print(schedule)
                schedule.color = _COLOR[i]
                i += 1

                if schedule.starting_time < 7:
                    schedule.new_time = str(schedule.starting_time) + " PM"
                elif schedule.starting_time == 12:
                    schedule.new_time = str(schedule.starting_time) + " PM"
                else:
                    schedule.new_time = str(schedule.starting_time) + " AM"

            context['user'] = request.user.professors
            context['schedules'] = final_schedule
            context['class_schedule'] = _CLASS_SCHEDULE
            context['days'] = _DAY

        return context


class ClassScheduleOverview(Page):
    max_count = 1
    parent_page_types = [ClassSchedule]

    def get_context(self, request):
        context = super().get_context(request)

        if hasattr(request.user, 'students'):
            total_units = 0
            total_subjects = 0
            i = 0
            final_schedule = request.user.students.section.schedules.all()
            for schedule in final_schedule:
                total_units += schedule.subject.units
                total_subjects += 1

                schedule.color = _COLOR[i]
                i += 1

                if((schedule.starting_time + int(schedule.subject.hours)) == 12):
                    schedule.time = (
                        str(schedule.starting_time) + ':00 - ' + '12:00')
                else:
                    schedule.time = (str(schedule.starting_time) + ':00 - ' +
                                     str((schedule.starting_time + int(schedule.subject.hours)) % 12) + ':00')

            context['user'] = request.user.students
            context['schedules'] = final_schedule
            context['units'] = total_units
            context['total_subjects'] = total_subjects
            if request.user.students.section.schedules.all():
                context['school_year'] = request.user.students.section.schedules.all()[
                    0].school_year

        if hasattr(request.user, 'professors'):
            total_units = 0
            total_subjects = 0
            i = 0
            final_schedule = request.user.professors.schedules.all()
            for schedule in final_schedule:
                total_units += schedule.subject.units
                total_subjects += 1

                schedule.color = _COLOR[i]
                i += 1

                if((schedule.starting_time + int(schedule.subject.hours)) == 12):
                    schedule.time = (
                        str(schedule.starting_time) + ':00 - ' + '12:00')
                else:
                    schedule.time = (str(schedule.starting_time) + ':00 - ' +
                                     str((schedule.starting_time + int(schedule.subject.hours)) % 12) + ':00')

            context['user'] = request.user.professors
            context['schedules'] = final_schedule
            context['units'] = total_units
            context['total_schedule'] = total_subjects
            if request.user.professors.schedules.all():
                context['school_year'] = request.user.professors.schedules.all()[
                    0].school_year

        return context


# class ClassSchedule(Page):
#     max_count = 1
#     parent_page_types = [BasePage]

#     def get_context(self, request):
#         context = super().get_context(request)

#         if hasattr(request.user, 'students'):
#             final_schedule = request.user.students.section.schedules.all()
#             i = 0
#             for schedule in final_schedule:
#                 schedule.color = _COLOR[i]
#                 i += 1

#                 if schedule.starting_time < 7:
#                     schedule.new_time = str(schedule.starting_time) + " PM"
#                 elif schedule.starting_time == 12:
#                     schedule.new_time = str(schedule.starting_time) + " PM"
#                 else:
#                     schedule.new_time = str(schedule.starting_time) + " AM"

#             context['user'] = request.user.students
#             context['schedules'] = final_schedule
#             context['class_schedule'] = _CLASS_SCHEDULE
#             context['days'] = _DAY

#         if hasattr(request.user, 'professors'):
#             final_schedule = request.user.professors.schedules.all()
#             i = 0

#             for schedule in final_schedule:
#                 schedule.color = _COLOR[i]
#                 i += 1

#                 if schedule.starting_time < 7:
#                     schedule.new_time = str(schedule.starting_time) + " PM"
#                 elif schedule.starting_time == 12:
#                     schedule.new_time = str(schedule.starting_time) + " PM"
#                 else:
#                     schedule.new_time = str(schedule.starting_time) + " AM"

#             context['user'] = request.user.professors
#             context['schedules'] = final_schedule
#             context['class_schedule'] = _CLASS_SCHEDULE
#             context['days'] = _DAY

#         return context


class ScheduleLoading(Page):
    max_count = 1
    parent_page_types = [ClassSchedule]

    def get_context(self, request):
        context = super().get_context(request)

        return context

class AllScheduleProfessors(Page):
    def get_context(self, request):
        context = super().get_context(request)
        
        final_schedule = Schedule.objects.all()

        list_of_professors = []

        for schedule in final_schedule:
            if schedule.prof == None:
                continue
            if schedule.prof not in list_of_professors:
                list_of_professors.append(schedule.prof)

            if schedule.starting_time < 7:
                schedule.new_time = str(schedule.starting_time) + " PM"
            elif schedule.starting_time == 12:
                schedule.new_time = str(schedule.starting_time) + " PM"
            else:
                schedule.new_time = str(schedule.starting_time) + " AM"

        list_of_professor_names = []
        for professor in list_of_professors:
            full_name = professor.first_name + ' ' + \
                professor.middle_name + '. ' + professor.last_name
            list_of_professor_names.append(full_name)
        list_of_professor_names.append('- Select -')

        list_of_professor_names_without_select = list_of_professor_names.copy()
        list_of_professor_names_without_select.pop()

        
        
        temp_prof = []
        for professor in list_of_professor_names_without_select:
            professor_object = {}
            i = 0
            professor_object = {'colors': [], 'subjects':[], 'name': professor}
            for schedule in final_schedule:
                if schedule.prof == None:
                    continue
                prof_check = schedule.prof.first_name + " " + schedule.prof.middle_name + ". " + schedule.prof.last_name
                if prof_check == professor:
                    professor_object['subjects'].append(schedule.subject)
                    professor_object['colors'].append(_COLOR[i])
                    i += 1
                    
            professor_object['subjects'] = list(dict.fromkeys(professor_object['subjects']))
            temp_prof.append(professor_object)
                    

        context['list_of_professors'] = list_of_professors
        context['list_of_professor_names'] = list_of_professor_names
        context['professor_objects'] = temp_prof


        context['schedules'] = final_schedule
        context['class_schedule'] = _CLASS_SCHEDULE
        context['days'] = _DAY

            

        return context

class AllScheduleSections(Page):
    max_count = 1
    parent_page_types = [BasePage]

    def get_context(self, request):
        context = super().get_context(request)

        final_schedule = Schedule.objects.all()

        list_of_sections = []

        for schedule in final_schedule:
            if schedule.section == None:
                continue
            if schedule.section not in list_of_sections:
                list_of_sections.append(schedule.section)

            if schedule.starting_time < 7:
                schedule.new_time = str(schedule.starting_time) + " PM"
            elif schedule.starting_time == 12:
                schedule.new_time = str(schedule.starting_time) + " PM"
            else:
                schedule.new_time = str(schedule.starting_time) + " AM"
        

        list_of_section_names = []
        for section in list_of_sections:
            list_of_section_names.append(section.section_name)
        list_of_section_names.append('- Select -')

        list_of_section_names_without_select = list_of_section_names.copy()
        list_of_section_names_without_select.pop()
        
        temp_sec = []
        for section in list_of_section_names_without_select:
            section_object = {}
            i = 0
            section_object = {'colors': [], 'subjects':[], 'name': section}
            for schedule in final_schedule:
                if schedule.section == None:
                    continue
                if schedule.section.section_name == section:
                    section_object['subjects'].append(schedule.subject)
                    section_object['colors'].append(_COLOR[i])
                    i += 1

                    
            section_object['subjects'] = list(dict.fromkeys(section_object['subjects']))
            temp_sec.append(section_object)
        
        context['list_of_professors'] = list_of_sections
        context['list_of_professor_names'] = list_of_section_names
        context['professor_objects'] = temp_sec
        context['schedules'] = final_schedule
        context['class_schedule'] = _CLASS_SCHEDULE
        context['days'] = _DAY

        return context
class AllScheduleRooms(RoutablePageMixin, Page):
    max_count = 1
    parent_page_types = [BasePage]

    @route(r'^(\d+)/$')
    def fetch_schedule(self, request, id=None):
        room = Rooms.objects.get(pk=id)

        if room:
            final_schedule = room.schedules.all()

            subject_color = {}
            subject_holder = []
            no_duplicate = []
            i = 0
            for schedule in final_schedule:
                if schedule.subject not in subject_holder:
                    subject_color[schedule.subject.description] = _COLOR[i]
                    subject_holder.append(schedule.subject)

                    schedule.color = subject_color[schedule.subject.description]
                    no_duplicate.append(schedule)

                    i += 1
                schedule.color = subject_color[schedule.subject.description]

                if schedule.starting_time < 7:
                    schedule.new_time = str(schedule.starting_time) + " PM"
                elif schedule.starting_time == 12:
                    schedule.new_time = str(schedule.starting_time) + " PM"
                else:
                    schedule.new_time = str(schedule.starting_time) + " AM"

            return self.render(
                request,
                context_overrides={
                    'room': room,
                    'schedules': final_schedule,
                    'class_schedule': _CLASS_SCHEDULE,
                    'days': _DAY,
                    'no_duplicate': no_duplicate
                },
                template="room_schedule/scheduled_room.html",
            )

    def get_context(self, request):
        context = super().get_context(request)

        context['rooms'] = Rooms.objects.all()

        return context
