# Generated by Django 3.1.8 on 2021-04-27 09:32

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('wagtailforms', '0004_add_verbose_name_plural'),
        ('wagtailredirects', '0006_redirect_increase_max_length'),
        ('wagtailcore', '0060_fix_workflow_unique_constraint'),
        ('home', '0008_auto_20210421_1108'),
    ]

    operations = [
        migrations.DeleteModel(
            name='LoginPage',
        ),
    ]
