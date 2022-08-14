from django.http import HttpResponseRedirect
import os
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from .forms import FormVacancy
from admins.models import *
from django.contrib import messages
from accounts.auth import user_only
from findjob.models import *
from admins.filters import VFilter


def about(request):
    return render(request, 'findjob/about.html')


def index(request):
    vacancies = Vacancy.objects.all().order_by('-id')
    context = {
        'activate_home': 'active',
        'vacancies': vacancies
    }
    return render(request, 'findjob/index.html', context)


def jobs(request):
    vacancies = Vacancy.objects.all().order_by('-id')
    V_filter = VFilter(request.GET, queryset=vacancies)
    V_final = V_filter.qs
    context = {
        'activate_jobs': 'active',
        'vacancies': V_final,
        'V_filter': V_filter
    }

    return render(request, 'findjob/jobs.html', context)


def team(request):
    return render(request, 'findjob/team.html')


def terms(request):
    return render(request, 'findjob/terms.html')


def testimonials(request):
    return render(request, 'findjob/testimonials.html')


def msgreq(request):
    if request.method == "GET":
        context = {
            'activate_contacts': 'active'
        }
        return render(request, 'findjob/contact.html', context)
    else:
        name = request.POST.get('name')
        email = request.POST.get('email')
        message = request.POST.get('message')
        subject = request.POST.get('subject')
        msg = Message()
        msg.name = name
        msg.email = email
        msg.query = message
        msg.subject = subject
        msg.save()

        messages.success(request, "Message Send successfully. Thank you!")
        return redirect('/contact')


@login_required
@user_only
def jobform(request, id):

    if request.method == 'GET':
        form = FormVacancy()
        job = Vacancy.objects.get(id=id)
        vac = VacancyForm.objects.filter(vacancy=job)

        if vac.first():
            vac = True
            vac = VacancyForm.objects.get(vacancy=job)
            response = vac.response
        else:
            vac = False
            response = None
        return render(request, 'findjob/jobform.html',
                      {'form': form, 'job': job, 'vacancy': vac, 'response': response})

    else:
        form = FormVacancy(request.POST, request.FILES)
        vacancy = Vacancy.objects.get(id=id)
        user = request.user

        if form.is_valid():
            ok = form.save(commit=False)
            ok.vacancy = vacancy
            ok.user = user

            ok.applied = True

            vtitle = vacancy.job
            ok.save()
            messages.success(request, "Your info submitted successfully for " + vtitle + ". Thank you!")
            messages.success(request, "Please wait for the response. It might take 1-2 days for the selection")
            return redirect('/jobs')

        else:
            messages.add_message(request, messages.ERROR, 'Error in filling the form.')
            return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
