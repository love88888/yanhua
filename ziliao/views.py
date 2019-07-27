from django.shortcuts import render
from django.http import HttpResponse
from ziliao.models import Category,DataFile

def index(request):
    rootcategorys = Category.objects.filter(parent=None)
    return render(request,'ziliao_index.html',{'rootcategorys':rootcategorys})

def lists(request,category_id):
    file_lists = DataFile.objects.filter(category=category_id)
    return render(request,'ziliao/templates/lists.html',{'file_lists':file_lists})