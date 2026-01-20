from django.db import models
from ckeditor_uploader.fields import RichTextUploadingField

# Create your models here.
class Category(models.Model):
    name = models.CharField('分类名称', max_length=30)

    # 友好显示
    def __str__(self):
        return self.name

    class Meta:
        db_table = 'categories'
        verbose_name = '新闻分类'
        verbose_name_plural = verbose_name

class News(models.Model):
    title = models.CharField('标题', max_length=100)
    # 使用带图片上传的富文本编辑器 ckeditor
    # content = models.TextField('内容')
    content = RichTextUploadingField('内容')
    image = models.ImageField('新闻图片', upload_to='news/', blank=True, null=True, help_text='最佳尺寸：1280*853')
    comment_count = models.IntegerField('评论数', default=0)
    publish_time = models.DateTimeField('发布时间', auto_now_add=True, editable=True)
    update_time = models.DateTimeField('更新时间', auto_now=True, editable=True)
    category = models.ForeignKey(Category, verbose_name='分类', on_delete=models.CASCADE)

    def __str__(self):
        return self.title

    class Meta:
        db_table = 'news'
        verbose_name = '新闻列表'
        verbose_name_plural = verbose_name