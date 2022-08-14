from django.shortcuts import render, redirect
from accounts.auth import admin_only
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from .forms import Vacancy_Form
from .models import *
from findjob.models import *
from django.http import HttpResponseRedirect
from .filters import VFilter


@login_required
@admin_only
def admin_dashboard(request):
    totalusers = User.objects.filter(is_staff=False).count()
    totalvacancy = Vacancy.objects.all().count()
    vacancyappliedUn = VacancyForm.objects.filter(seen=False).count()
    vacancyappliedSn = VacancyForm.objects.filter(seen=True).count()
    msgreqUn = Message.objects.filter(seen=False).count()
    msgreqSn = Message.objects.filter(seen=True).count()
    context = {'Tusers': totalusers,
               'tvacancy': totalvacancy,
               'vacancyappliedSn': vacancyappliedSn,
               'vacancyappliedUn': vacancyappliedUn,
               'noofmssgSn': msgreqSn,
               'noofmssgUn': msgreqUn
               }
    return render(request, 'admin/adminDashboard.html', context)


@login_required
@admin_only
def get_user(request):
    users_all = User.objects.all()
    users = users_all.filter(is_staff=0)
    context = {
        'users': users,
    }
    return render(request, 'admin/showUser.html', context)


@login_required
@admin_only
def totalvacancy(request):
    totalvacancy = Vacancy.objects.all().order_by('-id')
    V_filter = VFilter(request.GET, queryset=totalvacancy)
    V_final = V_filter.qs
    context = {'totvac': V_final,
               'V_filter': V_filter}
    return render(request, 'admin/totalvacancy.html', context)


def DeleteVacancy(request, id):
    file = Vacancy.objects.get(id=id)
    file.delete()
    return redirect('/admin-dashboard/totalvacancy')


@login_required
@admin_only
def msgrequestUn(request):

    totalmsg_us = Message.objects.filter(seen=False).order_by('-id')
    context = {'totalmsg_us': totalmsg_us}
    return render(request, 'admin/totalmsgUn.html', context)

def msgrequestSn(request):
    totalmsg_sn = Message.objects.filter(seen=True).order_by('-id')
    context = {'totalmsg_sn': totalmsg_sn}
    return render(request, 'admin/totalmsgSn.html', context)

@login_required
@admin_only
def appliedVacancySn(request):
    totapp_sn = VacancyForm.objects.filter(seen=True).order_by('-id')
    context = {'totapp_sn': totapp_sn}
    return render(request, 'admin/appliedVacancySn.html', context)

def appliedVacancyUn(request):
    totapp_us = VacancyForm.objects.filter(seen=False).order_by('-id')
    context = {'totapp_us': totapp_us}
    return render(request, 'admin/appliedVacancyUn.html', context)


def DappliedVacancy(request, id):
    file = VacancyForm.objects.get(id=id)
    file.delete()
    return redirect('/admin-dashboard/applied-vacancy')


@login_required
@admin_only
def msgDetail(request, id):
    form = Message.objects.get(id=id)
    form.seen = True
    form.save()
    return render(request, 'admin/msgdetail.html', {'form': form})


@login_required
@admin_only
def appliedDetail(request, id):
    if request.method == 'GET':
        form = VacancyForm.objects.get(id=id)
        form.seen = True
        form.save()

        return render(request, 'admin/applieddetail.html', {'form': form})
    else:
        form = VacancyForm.objects.get(id=id)
        response = request.POST.get('response')
        form.response = response
        form.save()
        messages.success(request, 'Response saved Successfully.')
        return redirect('/admin-dashboard/applied-vacancySn')


@login_required
@admin_only
def addVacancy(request):
    if request.method == 'GET':
        form = Vacancy_Form
        return render(request, 'admin/addVacancy.html', {'form': form})
    else:
        form = Vacancy_Form(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.success(request, 'Vacancy added Successfully.')
            return redirect('/admin-dashboard/totalvacancy')
        else:
            messages.error(request, 'Error!!.')

            return HttpResponseRedirect(request.META.get('HTTP_REFERER'))


@login_required
@admin_only
def editVacancy(request, id):
    vac = Vacancy.objects.get(id=id)
    if request.method == 'POST':
        form = Vacancy_Form(request.POST, instance=vac)
        if form.is_valid():
            form.save()
            messages.success(request, 'Vacancy updated successfully.')
            return redirect('/admin-dashboard/totalvacancy')

    context = {
        'form': Vacancy_Form(instance=vac),

    }
    return render(request, 'admin/editVacancy.html', context)
