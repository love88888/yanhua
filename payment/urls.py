from django.urls import path

from payment import alipay_views

urlpatterns = [
    #首页
    path('alipay/', alipay_views.index),
    #支付进程查询
    path('alipay/trade/query/', alipay_views.alipay_trade_query, name='alipay_trade_query'),
    #支付请求
    path('alipay/pay/<method>/', alipay_views.alipay_pay_request, name='alipay_pay_request'),
    #交易退款
    path('alipay/trade/refund/', alipay_views.alipay_trade_refund, name='alipay_trade_refund' ),
    #页面支付订单同步返回
    path('alipay/page_pay/return/', alipay_views.allipay_page_pay_return, name='allipay_page_pay_return'),
    #页面支付异步通知
    path('alipay/trade/notify/return/', alipay_views.allipay_trade_notify_return, name='allipay_trade_notify_return'),
]