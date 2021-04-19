# Generated by Django 3.1.8 on 2021-04-19 11:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0023_merge_20210419_1906'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Department',
        ),
        migrations.DeleteModel(
            name='Room',
        ),
        migrations.AlterModelOptions(
            name='colleges',
            options={'ordering': ['college_name'], 'verbose_name': 'College', 'verbose_name_plural': 'Colleges'},
        ),
        migrations.AlterModelOptions(
            name='departments',
            options={'ordering': ['Department_Name'], 'verbose_name': 'Department', 'verbose_name_plural': 'Departments'},
        ),
        migrations.AddField(
            model_name='colleges',
            name='college_name',
            field=models.CharField(max_length=300, null=True),
        ),
        migrations.AddField(
            model_name='departments',
            name='Department_Name',
            field=models.CharField(help_text='Department of Mathematics', max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='rooms',
            name='Room_Name',
            field=models.CharField(help_text='Ex. CS33', max_length=20, null=True),
        ),
        migrations.AddField(
            model_name='rooms',
            name='Room_Type',
            field=models.CharField(choices=[('Laboratory', 'Laboratory'), ('Lecture', 'Lecture')], default='Laboratory', max_length=50),
        ),
    ]
