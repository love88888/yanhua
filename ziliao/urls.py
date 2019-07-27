from django.urls import path

from ziliao import views

urlpatterns = [
    path('', views.index, name="ziliao"),
    path('list/<int:category_id>/', views.lists, name="ziliao_lists"),
]