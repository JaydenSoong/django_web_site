from django.contrib import admin
from .models import Slide

# Register your models here.
class SlideAdmin(admin.ModelAdmin):
    # 配置列表页显示字段
    list_display = ('id','title', 'content', 'image')
    # 配置列表页可点击字段
    list_display_links = ('title', 'content' )
    # 配置列表页不可编辑字段
    readonly_fields = ('id',)

admin.site.register(Slide, SlideAdmin)