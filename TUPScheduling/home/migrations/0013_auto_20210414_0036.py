# Generated by Django 3.1.8 on 2021-04-14 00:36

from django.db import migrations, models
import django.db.models.deletion
import modelcluster.fields


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0012_subjects_chevy'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='coursecurriculum',
            name='subjects',
        ),
        migrations.RemoveField(
            model_name='subjects',
            name='chevy',
        ),
        migrations.RemoveField(
            model_name='subjects',
            name='prerequisites',
        ),
        migrations.CreateModel(
            name='SubjectsOrderable',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sort_order', models.IntegerField(blank=True, editable=False, null=True)),
                ('chevy', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.subjects')),
                ('page', modelcluster.fields.ParentalKey(on_delete=django.db.models.deletion.CASCADE, related_name='blog_authors', to='home.subjects')),
            ],
            options={
                'ordering': ['sort_order'],
                'abstract': False,
            },
        ),
    ]