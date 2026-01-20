from unicodedata import category

from django.http import HttpResponse
from django.shortcuts import render
from slide.models import Slide
from team.models import Team
from news.models import News

# Create your views here.
def index(request):

    # 获取幻灯片列表
    slides = Slide.objects.all()

    # 获取团队成员列表
    team = Team.objects.all()

    # 获取资讯列表,由于前端页面只显示三条，所以这里只取三条
    news_list = News.objects.filter(category_id = 1).order_by('-publish_time')[:3]

    # 获取成功案例列表,由于前端页面只显示八条，所以这里只取八条
    cases = News.objects.filter(category_id__gt = 1).order_by('-publish_time')[:8]

    return render(request, 'index.html',
                  {
                      'slides': slides,
                      'team': team,
                      'news_list': news_list,
                      'cases': cases
                  })