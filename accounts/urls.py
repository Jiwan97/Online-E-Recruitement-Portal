from django.contrib import admin
from django.urls import path, include
from django.http import HttpResponse
from . import views
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.auth import views as auth_views

urlpatterns = [

    path('', views.login_user),
    path('register', views.register_user),
    path('logout', views.logout_user),
    path('profile', views.user_account),
    path('password_change', auth_views.PasswordChangeView.as_view(
        template_name='accounts/passwordChange.html')),
    path('password_change_done', auth_views.PasswordChangeView.as_view(
        template_name='accounts/passwordChangeDone.html'), name='password_change_done'),
]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL,
                          document_root=settings.STATIC_URL)