# Generated by Django 3.1.8 on 2022-02-13 15:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0013_auto_20220122_1527'),
    ]

    operations = [
        migrations.AlterField(
            model_name='professors',
            name='salary_grade',
            field=models.IntegerField(default=12),
        ),
        migrations.AlterField(
            model_name='professors',
            name='step',
            field=models.IntegerField(choices=[(1, '1'), (2, '2'), (3, '3'), (4, '4'), (5, '5'), (6, '6'), (7, '7'), (7, '8')], default=1),
        ),
    ]
