# Generated by Django 3.1.8 on 2021-06-15 11:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0004_auto_20210615_1905'),
        ('schedule', '0004_auto_20210615_1912'),
    ]

    operations = [
        migrations.AlterField(
            model_name='schedule',
            name='room',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='schedules', to='base.rooms'),
        ),
    ]