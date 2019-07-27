
import os
import time
import re
from io import BytesIO
from django.utils import timezone
from django.db import models
from django.conf import settings
# Create your models here.



def category_image_path(instance, filename):
    # file will be uploaded to MEDIA_ROOT/user_<id>/<filename>
    return f'ziliao/static/image/category/{str(time.time())}{filename}'


class AbstractCategory(models.Model):
    parent = models.ForeignKey('self', on_delete=models.CASCADE,null=True,blank=True,related_name='child')
    class Meta:
        abstract = True


class Category(AbstractCategory):
    '''资料类型'''
    name = models.CharField(verbose_name=u"名称", max_length=50, unique=True)
    name_full = models.CharField(verbose_name=u"全名", max_length=200 ,blank=True)
    note_lable = models.CharField(verbose_name=u"备注", max_length=200)
    image = models.ImageField(upload_to=category_image_path, default='ziliao/static/image/category/default.jpg', height_field=None, width_field=None, max_length=100,verbose_name=u"封面")
    creat_datetime = models.DateTimeField(verbose_name=u"创建时间",default=timezone.now)
    update_datetime = models.DateTimeField(verbose_name=u"修改时间",auto_now=True)

    class Meta:
        verbose_name = u'资料类型'
        verbose_name_plural = u'资料类型'

    def __str__(self):
        return self.name_full

    def compute_name_full(self,name):
        '''类型全名'''
        if not self.parent:
            return name
        else:
            return self.parent.name_full + '/' + name


    def save(self,*args,**kwargs):
        '''建立文件夹和资料类型的映射'''
        ZILIAO_PATH = os.path.join(settings.BASE_DIR,'ziliao/templates/datafile/')
        self.name_full = self.compute_name_full(self.name)

        if hasattr(self,'pk') and self.pk:
            name_full = Category.objects.get(pk=self.pk).name_full
            os.rename(os.path.join(ZILIAO_PATH,name_full),\
            os.path.join(ZILIAO_PATH,self.name_full))
        else:
            if not os.path.exists(os.path.join(ZILIAO_PATH,self.name_full)):
                os.mkdir(os.path.join(ZILIAO_PATH,self.name_full))
        return super().save(*args,**kwargs)
        


def data_file_static(html):
    head_regex = re.compile(r'<head>.+?</head>',re.S)
    static_regex = re.compile(r'(<link.+?/>)|(<style.+?</style>)',flags = re.S)
    #取出头标签
    head_str = head_regex.findall(html)[0]
    #清除原样式
    head_str_r = static_regex.sub('',head_str)
    #添加新样式样式
    static_g ="\n<link href={% static 'ziliao/css/dark.base.css' %} rel='stylesheet' type='text/css' />\
    \n<link href={% static 'ziliao/css/dark.github.css' %} rel='stylesheet' type='text/css' />\
    \n<script src={% static 'index/js/jQuery-3-4-1.min.js' %}></script>\
    \n<script src={% static 'ziliao/js/change_zhuti.js' %}></script>\
    \n</head>"
    head_str_r = re.sub(r'</head>',static_g,head_str_r)
    #合成新的html
    html_r = head_regex.sub(head_str_r,html)
    return html_r



def data_file_path(instance, filename):
    # file will be uploaded to MEDIA_ROOT/user_<id>/<filename>
    file_path = f'ziliao/templates/datafile/{instance.category.name_full}/{filename}'
    if os.path.exists(file_path):
        os.remove(file_path)
    return file_path


class DataFile(models.Model):
    '''资料文件'''
    name = models.CharField(verbose_name=u"标题",max_length=50)
    note_lable = models.CharField(verbose_name=u"备注",max_length=200)
    file_path = models.FileField(verbose_name=u"文件地址",upload_to=data_file_path,max_length=200)
    creat_datetime = models.DateTimeField(verbose_name=u"创建时间",default=timezone.now)
    update_datetime = models.DateTimeField(verbose_name=u"修改时间",auto_now=True)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)#datafile_set

    class Meta:
        verbose_name = u'资料文件'
        verbose_name_plural = u'资料文件'

    def __str__(self):
        return self.name


    def save(self,*args,**kwargs):
        '''修改上传文件的样式'''
        file = self.file_path.file
        self.file_path.file = BytesIO(data_file_static(file.read().decode('utf-8')).encode('utf-8'))       
        return super().save(*args,**kwargs)

