# Generated by Django 3.1.8 on 2021-04-19 16:28

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0004_auto_20210419_1627'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sections',
            name='course_curriculum',
            field=models.ForeignKey(help_text='Ex. Computer Science', null=True, on_delete=django.db.models.deletion.CASCADE, to='home.coursecurriculum'),
        ),
        migrations.AlterField(
            model_name='sections',
            name='deparment',
            field=models.ForeignKey(help_text='Ex. Computer Studies', null=True, on_delete=django.db.models.deletion.CASCADE, to='home.departments'),
        ),
    ]