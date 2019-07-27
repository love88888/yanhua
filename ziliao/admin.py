from django.contrib import admin

# Register your models here.

from .models import Category,DataFile

admin.site.register(Category)
admin.site.register(DataFile)