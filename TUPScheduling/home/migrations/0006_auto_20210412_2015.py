# Generated by Django 3.1.8 on 2021-04-12 20:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0005_subjects_sem'),
    ]

    operations = [
        migrations.AlterField(
            model_name='subjects',
            name='units',
            field=models.FloatField(default=1),
        ),
    ]