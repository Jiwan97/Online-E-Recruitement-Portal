# Generated by Django 3.1.6 on 2021-04-19 14:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('admins', '0002_delete_message'),
    ]

    operations = [
        migrations.AddField(
            model_name='vacancy',
            name='pic',
            field=models.FileField(null=True, upload_to='static/useruploads'),
        ),
    ]
