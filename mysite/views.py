from django.http import HttpResponse
from django.shortcuts import render
from slide.models import Slide
from team.models import Team

# Create your views here.
def index(request):

    # 获取幻灯片列表
    slides = Slide.objects.all()

    # 获取团队成员列表
    team = Team.objects.all()

    return render(request, 'index.html',
                  {
                      'slides': slides,
                      'team': team,

                  })