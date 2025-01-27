
from django.db import models
from wagtail.core.models import Page
from TUPScheduling.base.models import BasePage
from TUPScheduling import _COLOR, _CLASS_SCHEDULE, _DAY
from TUPScheduling.schedule.models import Schedule


class InstructorSchedule(Page):
    max_count = 1
    parent_page_types = [BasePage]

    def get_context(self, request):
        context = super().get_context(request)

        if hasattr(request.user, 'students'):
            final_schedule = Schedule.objects.all()
            print(request.user.students.section)
            list_of_professors = []

            for schedule in final_schedule:
                if schedule.prof == None:
                    continue
                if schedule.prof not in list_of_professors:
                    if request.user.students.section == schedule.section:
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


        if hasattr(request.user, 'professors'):
            final_schedule = Schedule.objects.all()

            list_of_sections = []

            for schedule in final_schedule:
                if schedule.section == None:
                    continue
                if schedule.section not in list_of_sections:
                    if schedule.prof == request.user.professors:

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
