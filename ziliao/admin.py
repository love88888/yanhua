from django.contrib import admin

# Register your models here.

from ziliao.models import Category,DataFile

@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name','parent','note_lable','update_datetime',
    'creat_datetime')
    readonly_fields = ('creat_datetime',)
    list_display_links = ('name',)
    list_editable = ('note_lable',)
    search_fields = ('name','parent')
    date_hierarchy = 'update_datetime'

@admin.register(DataFile)
class DataFileAdmin(admin.ModelAdmin):
    list_display = ('name','category','note_lable','update_datetime',
    'creat_datetime')
    readonly_fields = ('creat_datetime',)
    list_display_links = ('name',)
    list_editable = ('note_lable',)
    search_fields = ('name','category','parent')
    date_hierarchy = 'update_datetime'