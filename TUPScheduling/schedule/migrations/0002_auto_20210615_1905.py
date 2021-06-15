# Generated by Django 3.1.8 on 2021-06-15 11:05

from django.conf import settings
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('wagtailcore', '0060_fix_workflow_unique_constraint'),
        ('contenttypes', '0002_remove_content_type_name'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('wagtailredirects', '0006_redirect_increase_max_length'),
        ('wagtailforms', '0004_add_verbose_name_plural'),
        ('schedule', '0001_initial'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Schedule',
            new_name='SchedulePage',
        ),
        migrations.DeleteModel(
            name='ProfessorsSchedule',
        ),
        migrations.DeleteModel(
            name='RoomsSchedule',
        ),
        migrations.DeleteModel(
            name='SectionsSchedule',
        ),
    ]