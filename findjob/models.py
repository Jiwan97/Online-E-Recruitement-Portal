from django.db import models


class Message(models.Model):
    name = models.CharField(max_length=100, null=True)
    email = models.EmailField(null=True)
    subject = models.CharField(max_length=100, null=True)
    query = models.CharField(max_length=1000, null=True)
    response = models.CharField(max_length=1000)
    date = models.DateField(auto_now_add=True, null=True)
    seen = models.BooleanField(default=False)

    def __str__(self):
        return self.name
