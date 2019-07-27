
import time
import json

from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.urls import reverse

from .alipay_fun import init_alipay


def index(request):

    return render(request,'payment.html',{'out_trade_no' :int(time.time())})

def alipay_cancel_order(out_trade_no:int, cancel_time=None):
    result = init_alipay().api_alipay_trade_cancel(out_trade_no=out_trade_no)
    resp_state = result.get('msg')
    action = result.get('action')
    if resp_state=='Success':
        if action=='close':
            if cancel_time:
                print("%s秒内未支付订单，订单已被取消！" % cancel_time)
        elif action=='refund':
            print('该笔交易目前状态为：',action)
 
        return action
 
    else:
        print('请求失败：',resp_state)
        return


def alipay_trade_query(request):
    '''交易订单查询'''
    up_order = request.get_signed_cookie('out_trade_no',None)
    order = request.POST.dict()
    if order['out_trade_no']==up_order:
        return HttpResponse(json.dumps({'code':1,'msg':f"成功支付 {order.get('total_amount')} 元"}))
    result = init_alipay().api_alipay_trade_query(out_trade_no=order['out_trade_no'])
    if result.get("trade_status", "") == "TRADE_SUCCESS":
        res = HttpResponse(json.dumps({'code':1,'msg':f"成功支付 {result.get('total_amount')} 元"}))
        res.set_signed_cookie('out_trade_no',order['out_trade_no'])
        return res
    elif result.get("trade_status", "") == "TRADE_CLOSED":
        return HttpResponse(json.dumps({'code':0,'msg':result.get('sub_msg')}))
    else:
        return HttpResponse(json.dumps({'code':2,'msg':result.get('sub_msg')}))

def alipay_trade_refund(request):
    '''
    退款
    :param out_trade_no: 商户订单号
    :return: None
    '''
    order = request.POST.dict()
    order.pop('csrfmiddlewaretoken')
    result = init_alipay().api_alipay_trade_query(out_trade_no=order['out_trade_no'])
    if result.get("trade_status", "") == "TRADE_SUCCESS":
        result = init_alipay().api_alipay_trade_refund(refund_amount=order['total_amount'],out_trade_no=order['out_trade_no'])
        return HttpResponse(json.dumps({'code':1,'msg':f"成功退款 {result.get('refund_fee')} 元"}))
    else:
        return HttpResponse(json.dumps({'code':0,'msg':result.get('sub_msg')}))
            


def allipay_page_pay_return(request):
    '''页面支付同步返回'''
    order = request.GET.dict()
    sign = order.pop('sign')
    if init_alipay().verify(order,sign):
        return render(request,'order_info.html',{'order':order})
    else:
        return render(request,'order_info.html',{'msg':'验证不通过'})
    


def allipay_trade_notify_return(request):
    '''异步通知接收'''
    order = dict(request.GET)
    sign = order.pop('sign')
    if init_alipay().verify(order,sign):
        print(order)
    else:
        print('验证不通过')


def alipay_pay_request(request, method):
    '''支付请求'''
    alipay_obj = init_alipay()
    order = request.POST.dict()
    order.pop('csrfmiddlewaretoken')
    result = alipay_obj.api_alipay_trade_query(out_trade_no=order['out_trade_no'])
    if result.get("trade_status", "") == "TRADE_SUCCESS":
        return HttpResponse(json.dumps({'code':0,'msg':'已支付'}))

    if method == 'page_pay':
        res = alipay_obj.api_alipay_trade_page_pay(
            return_url=request.scheme+'://'+request.get_host() + reverse("allipay_page_pay_return"),
            notify_url=request.scheme+'://'+request.get_host() +reverse("allipay_trade_notify_return"),
            **order
        )
        return HttpResponse(json.dumps({'code':1,'msg':res}))

    elif method == 'code_pay':
        result = alipay_obj.api_alipay_trade_precreate(
            notify_url=request.scheme+'://'+request.get_host() +reverse("allipay_trade_notify_return"),
            **order
        )
        return HttpResponse(json.dumps({'code':1,'msg':result.get('qr_code')}))

    elif method == 'barcode_pay':
        order['scene'] = 'bar_code'
        result = alipay_obj.api_alipay_trade_pay(
            notify_url=request.scheme+'://'+request.get_host()+reverse("allipay_trade_notify_return"),
            **order
        )
        if result.get('code')=='10000':
            return HttpResponse(json.dumps({'code':1,'msg':'支付成功'}))
        elif result.get('code')=='10003':
            return HttpResponse(json.dumps({'code':0,'msg':'order success pay inprocess'}))
        else:
            return HttpResponse(json.dumps({'code':0,'msg':result.get('sub_msg')}))

    else:
        return HttpResponse(json.dumps({'code':0,'msg':'请求错误'}))









