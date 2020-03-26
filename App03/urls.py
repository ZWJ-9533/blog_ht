"""blog_ht URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path

from App03 import views
app_name='App03'
urlpatterns = [
    path('',views.index,name='index'),

    # 左边导航栏
    path('left/',views.public_left, name='left'),

    # 右边的标题栏
    path('header/', views.public_header, name='header'),

    # 主窗口，内容展示
    path('main/',views.public_main, name='main'),
    #分类展示
    path('main/<int:cid>/',views.public_main, name='main'),
    #分页
    path('main/<int:cid>/<int:page>/', views.public_main, name='main'),

    #登录
    path('login/',views.user_login,name='user_login' ),
    #退出登录
    path('logout/',views.user_logout,name='user_logout'),

    #验证码
    path('photo/',views.photo,name='photo'),

    #修改密码
    path('changepwd/',views.changepwd,name='changepwd'),

    #文章删除
    path('shanchu/<int:cid>/<int:page>/<int:aid>/',views.shanchu,name='shanchu'),

    #发表文章
    path('fabiao/',views.fabiao,name='fabiao'),

    #文件上传
    path('send_photo/',views.upload,name='send_photo'),

    #文章修改
    path('update/<int:cid>/<int:aid>/',views.update_article, name='update'),

    #评论管理
    path('pinlun/',views.pinlun,name='pinlun'),
    #分页
    path('pinlun/<int:page>/', views.pinlun, name='pinlun'),
    #发表评论
    path('fabiaopl/',views.fabiaopl,name='fabiaopl'),
    #评论删除
    path('shanchupl/<int:page>/<int:mid>/',views.shanchupl,name='shanchupl'),
    #评论修改
    path('updatepl/<int:mid>/',views.update_mark, name='updatepl'),

    # #用户管理
    path('usergl/',views.usergl,name='usergl'),
    #分页
    path('usergl/<int:page>/', views.usergl, name='usergl'),
    #用户删除
    path('shanchuyh/<int:page>/<int:uid>/',views.shanchuyh,name='shanchuhy'),
    #用户修改
    path('updateyh/<int:uid>/',views.update_user, name='updateyh'),
    #用户注册
    path('user_register/',views.user_register,name='user_register')

]
