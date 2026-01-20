from django.contrib import admin
from .models import Category, News

# Register your models here.
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('id', 'name',)
    list_display_links = ('name',)
    readonly_fields = ('id',)

class NewsAdmin(admin.ModelAdmin):
    list_display = ('id', 'title', 'category', 'publish_time', 'update_time')
    list_display_links = ('title',)
    readonly_fields = ('id',)

admin.site.register(Category, CategoryAdmin)
admin.site.register(News, NewsAdmin)
