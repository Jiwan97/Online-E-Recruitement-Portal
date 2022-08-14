from django.contrib import admin
from django.urls import path, include
from django.http import HttpResponse
from . import views
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.auth import views as auth_views


def index(request):
    return HttpResponse("This is test")


urlpatterns = [

    path('about', views.about),
    path('contact', views.msgreq),
    path('index', views.index),
    path('jobs', views.jobs),
    path('team', views.team),
    path('terms', views.terms),
    path('jobform/<int:id>', views.jobform),
    path('testimonials', views.testimonials),

]
