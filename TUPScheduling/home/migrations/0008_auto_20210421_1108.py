# Generated by Django 3.1.8 on 2021-04-21 03:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0007_professororderable'),
    ]

    operations = [
        migrations.RenameField(
            model_name='professororderable',
            old_name='room',
            new_name='professor',
        ),
        migrations.AlterField(
            model_name='rooms',
            name='Room_Type',
            field=models.CharField(choices=[('Laboratory', 'Laboratory'), ('Lecture', 'Lecture')], default='Lecture', max_length=50),
        ),
    ]