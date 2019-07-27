from django.shortcuts import render
from django.http import HttpResponse
from django.contrib import auth  #导入auth模块
from django.contrib.auth.decorators import login_required
# Create your views here.




def login(request):
    return HttpResponse('<h1>login</h1>')
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = auth.authenticate(username =user,password=pwd)  #自动给你的user表自动校验
    if user: #登陆成功
        auth.login(request,user)  #相当于设置session



#退出登录方法
@login_required
def logout(request):
    auth.logout(request)


