from django.db import models

# Create your models here.
class Team(models.Model):
    avatar = models.ImageField('头像', upload_to='avatars/', help_text='最佳尺寸：500*755')
    title = models.CharField('职务', max_length=30 )
    name = models.CharField('姓名', max_length=30)

    class Meta:
        db_table = 'team'
        verbose_name = '团队成员'
        verbose_name_plural = verbose_name
