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

    # 获取资讯列表
    news_list = News.objects.filter(category_id = 1)

    return render(request, 'index.html',
                  {
                      'slides': slides,
                      'team': team,
                      'news_list': news_list
                  })