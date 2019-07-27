from django.contrib import admin
from user.models import User

@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    list_display = ('username','nicename','email','cellphone','sex',
    'is_superuser','is_staff','is_active')
    list_display_links = ('username',)
    list_editable = ('nicename','is_staff','is_active')
    search_fields = ('username','cellphone','email')
    list_filter = ('is_superuser','is_staff','is_active','sex')
    date_hierarchy = 'last_login'