from django import template
from admins.models import Vacancy,VacancyForm

register = template.Library()


@register.filter(name='getApplicants')
def getApplicants(id):
    vacancy = Vacancy.objects.get(id=id)
    applicants = VacancyForm.objects.filter(vacancy=vacancy).count()
    return applicants
