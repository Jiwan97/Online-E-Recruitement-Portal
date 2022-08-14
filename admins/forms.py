from django import forms
from .models import Vacancy
from django.forms import ModelForm


class Vacancy_Form(ModelForm):
    class Meta:
        model = Vacancy
        fields = '__all__'
