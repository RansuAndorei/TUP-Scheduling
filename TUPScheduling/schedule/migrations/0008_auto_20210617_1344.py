# Generated by Django 3.1.8 on 2021-06-17 05:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schedule', '0007_auto_20210617_1319'),
    ]

    operations = [
        migrations.AlterField(
            model_name='schedule',
            name='starting_time',
            field=models.IntegerField(choices=[(0, '07:00 - 08:00'), (1, '08:00 - 09:00'), (2, '09:00 - 10:00'), (3, '10:00 - 11:00'), (4, '11:00 - 12:00'), (5, '12:00 - 01:00'), (6, '01:00 - 02:00'), (7, '02:00 - 03:00'), (8, '03:00 - 04:00'), (9, '04:00 - 05:00'), (10, '05:00 - 06:00'), (11, '06:00 - 07:00')], default=7),
        ),
    ]
