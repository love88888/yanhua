from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import auth  #导入auth模块
from django.contrib.auth.decorators import login_required
# Create your views here.




def login(request):
    if request.user.is_authenticated:
        return redirect(request.META['HTTP_REFERER'])
    elif request.method=='GET':
        next_ = request.GET.get('next',request.META['HTTP_REFERER'])
        params = {'next':next_}
        return render(request,'login.html',params)
    elif request.method=='POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        next_ = request.POST.get('next',request.META['HTTP_REFERER'])
        savelogin = request.POST.get('savelogin')
        user = auth.authenticate(username=username,password=password)
        if user:
            auth.login(request,user)
            if savelogin!='save':
                request.session.set_expiry(0)
                return redirect(next_)
            else:
                return redirect(next_)
            # .set_cookie()
        else:
            msg = u'用户名或密码错误'
            params = {'next':next_,'msg':msg}
            return render(request,'login.html',params)
        #redirect('%s?next=%s' % (settings.LOGIN_URL, request.path))
    else:
        return redirect('/')


#退出登录方法
@login_required
def logout(request):
    auth.logout(request)


