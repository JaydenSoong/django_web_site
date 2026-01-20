from django.urls import path
from .views import news_list, detail

urlpatterns = [
    path('list/', news_list),
    path('<int:id>/', detail),
]