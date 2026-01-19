from django.db import models

# Create your models here.
class Slide(models.Model):
    image = models.ImageField('幻灯片图片', upload_to='slides/', help_text='最佳尺寸：1920*1280')
    title = models.CharField('标题', max_length=200, help_text='一级标题')
    content =  models.CharField('内容',max_length=200, help_text='二级内容')

    class Meta:
        db_table = 'slide'
        verbose_name = '幻灯片列表'
        verbose_name_plural = verbose_name