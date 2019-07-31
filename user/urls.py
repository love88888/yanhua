from django.urls import path

from user import views

urlpatterns = [
    path('', views.login),
    path('login/', views.login, name='login'),
    path('logout/', views.logout, name = 'logout'),
]