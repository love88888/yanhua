from django.db import models

import time
# Create your models here.

from django.contrib.auth.models import AbstractUser
from django.contrib.auth.hashers import make_password


SEX_CHOICES = [
    (0,'秘密'),
	(1, '男'),
	(2, '女'),
]

def head_image_path(instance, filename):
    # file will be uploaded to MEDIA_ROOT/user_<id>/<filename>
    return f'user/static/image/head/{str(time.time())}{filename}'


class User(AbstractUser):
	cellphone = models.CharField(max_length=11, null=True, blank=True, verbose_name=u'手机')
	head_image = models.ImageField(upload_to=head_image_path, default='user/static/image/head/default.jpg', height_field=None, width_field=None, max_length=100,verbose_name=u'头像')
	nicename = models.CharField(max_length=50, null=False, verbose_name=u'昵称')
	slogan = models.CharField(max_length=200, blank=True, default=u'空空如也', verbose_name=u'标语')
	uidentity = models.CharField(max_length=18, null=True, blank=True, verbose_name=u'身份证')
	address = models.CharField(max_length=150, null=True, blank=True, verbose_name=u'地址')
	sex = models.IntegerField(choices=SEX_CHOICES, default=0, verbose_name=u'性别')

	
	def __str__(self):
		return self.username

	def save(self,*args,**kwargs):
		self.password = make_password(self.password)
		super().save(*args,**kwargs)
	# | id                   | int(11)          | NO   | PRI | NULL     | auto_increment |
	# | password      | varchar(128) | NO   |     | NULL       |                           |
	# | last_login      | datetime(6)   | YES  |     | NULL       |                           |	最后登录时间
	# | is_superuser | tinyint(1)       | NO   |     | NULL       |              				|	超级用户
	# | username     | varchar(150)  | NO   | UNI | NULL   |                			|
	# | first_name    | varchar(30)     | NO   |     | NULL      |                			|
	# | last_name    | varchar(30)     | NO   |     | NULL      |                			|
	# | email            | varchar(254)   | NO   |     | NULL      |                			|	
	# | is_staff         | tinyint(1)         | NO   |     | NULL       |                			|	后台管理员
	# | is_active       | tinyint(1)        | NO   |     | NULL       |                			|	活跃状态
	# | date_joined  | datetime(6)    | NO   |     | NULL      |                			|	登记时间
