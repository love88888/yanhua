from django.db import models

# Create your models here.

from django.contrib.auth.models import AbstractUser

SEX_CHOICES = [
    (0,'秘密'),
	(1, '男'),
	(2, '女'),
]

def head_image_path(instance, filename):
    # file will be uploaded to MEDIA_ROOT/user_<id>/<filename>
    return f'user/static/image/heed/{str(time.time())}{filename}'

class User(AbstractUser):
    cellphone = models.CharField(max_length=11, null=True, blank=True, verbose_name='手机')
	head_image = models.ImageField(upload_to=head_image_path, height_field=None, width_field=None, max_length=100, verbose_name='头像')
    nicename = models.CharField(max_length=50, null=False, verbose_name='昵称')
    slogan = models.CharField(max_length=200, blank=True, default='空空如也', verbose_name='标语')
    uidentity = models.CharField(max_length=18, null=True, blank=True ,verbose_name='身份证')
    address = models.CharField(max_length=150, null=True, blank=True ,verbose_name='地址')
    sex = models.IntegerField(choices=SEX_CHOICES, default=0, verbose_name='性别')

	def __str__(self):
        return self.username


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



