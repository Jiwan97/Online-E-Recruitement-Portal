# Generated by Django 3.1.6 on 2021-04-19 20:24

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('admins', '0003_vacancy_pic'),
    ]

    operations = [
        migrations.RenameField(
            model_name='vacancy',
            old_name='title',
            new_name='job',
        ),
    ]
