from django.contrib import admin
from .models import Team

# Register your models here.
class TeamAdmin(admin.ModelAdmin):
    # 配置列表页显示字段
    list_display = ('id','name', 'title')
    # 配置列表页可点击字段
    list_display_links = ('name', 'title' )
    # 配置列表页不可编辑字段
    readonly_fields = ('id',)

admin.site.register(Team, TeamAdmin)
