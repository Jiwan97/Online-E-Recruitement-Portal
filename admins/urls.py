from django.urls import path
from . import views

urlpatterns = [
    path('', views.admin_dashboard),
    path('show-user', views.get_user),
    path('totalvacancy', views.totalvacancy),
    path('msg-requestsSn', views.msgrequestSn),
    path('msg-requestsUn', views.msgrequestUn),
    path('applied-vacancySn', views.appliedVacancySn),
    path('applied-vacancyUn', views.appliedVacancyUn),
    path('applied-detail/<int:id>', views.appliedDetail),
    path('msg-detail/<int:id>', views.msgDetail),
    path('addvacancy', views.addVacancy),
    path('editvacancy/<int:id>', views.editVacancy),
    path('deletevacancy/<int:id>', views.DeleteVacancy),
    path('deletevacancy1/<int:id>', views.DappliedVacancy),


]
