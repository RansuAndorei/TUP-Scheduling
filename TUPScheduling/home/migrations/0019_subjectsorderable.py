# Generated by Django 3.1.8 on 2021-04-16 03:44

from django.db import migrations, models
import django.db.models.deletion
import modelcluster.fields


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0018_auto_20210416_1144'),
    ]

    operations = [
        migrations.CreateModel(
            name='SubjectsOrderable',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sort_order', models.IntegerField(blank=True, editable=False, null=True)),
                ('professor_model', modelcluster.fields.ParentalKey(on_delete=django.db.models.deletion.CASCADE, related_name='professor_parental_key', to='home.professors')),
                ('subject', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='home.subjects')),
                ('subject_model', modelcluster.fields.ParentalKey(on_delete=django.db.models.deletion.CASCADE, related_name='subject_parental_key', to='home.subjects')),
            ],
            options={
                'ordering': ['sort_order'],
                'abstract': False,
            },
        ),
    ]
