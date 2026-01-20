from django.shortcuts import render
from .models import News

# Create your views here.
def news_list(request):
    # 获取资讯列表
    news_list = News.objects.all()
    return render(request, 'list.html', {
        'news_list': news_list
    })

def detail(request,  id):
    try:
        # 根据id获取资讯
        news = News.objects.get(id=id)
        return render(request, 'detail.html', {
            'news': news
        })
    except:
        return render(request, '404.html')
