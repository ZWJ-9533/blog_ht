import datetime
import os
from random import randint

from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.hashers import check_password, make_password
from django.core.paginator import Paginator
from django.http import HttpResponse, JsonResponse, response
from django.shortcuts import render, redirect
from django.urls import reverse
from django.views.decorators.csrf import csrf_exempt

from App03.forms import RegisterForm, UserMake
from App03.models import Category, Article, User, Tag, Mark
# Create your views here.
from App03.verifycode import vc
from blog_ht import settings


@login_required(login_url='/user/login/')
def index(request):
    return render(request,'index.html')

# 左边导航栏
def public_left(request):
    return render(request,"public_left.html")


def public_header(request):
    data = request.session.get('username')
    return render(request,'public_header.html',locals())

# 文章管理
@csrf_exempt
@login_required(login_url='/user/login/')
def public_main(request,cid=-1,page=1):
    #分类展示
    categories = Category.objects.all()
    if cid < 0:
        first_category=categories.first()  #查询第一个分类
        cid = first_category.cid #第一个分类cid
    #文章检索
    articles = Article.objects.filter(cid=cid).order_by('aid')

    #搜索框
    if request.method == "POST":
            articles = Article.objects.filter(title__contains=request.POST.get('gjz'),cid=cid)

    #分页
    paginator = Paginator(articles,2)
    pager = paginator.page(page)

    return render(request,"wenzhang_xinwen.html",locals())



#图片验证码
def photo(request):
    result = vc.generate()
    # 把验证码字符串保存到session
    print(222)
    request.session['code'] = vc.code
    print(111)
    return HttpResponse(result,'image/png')


#登录
def user_login(request):
    if request.method == 'POST':
        yzm = request.POST.get('yzm')
        zf = request.session.get('code')
        username = request.POST.get('username','')
        password = request.POST.get('password','')
        print(password)
        passwords = make_password(password)
        #用户验证，如果用户名和密码正确，返回User对象，否则返回None
        user = User.objects.filter(username=username).first()
        if check_password(user.passwd,passwords) and yzm==zf:
            request.session['username']=user.username
            #记录用户登录状态，参数是请求对象和用户对象
            login(request,user)
            return render(request,'index.html',locals())
        else:
            return render(request,'loginb.html',{'msg':'用户名名密码错误'})
    return render(request,'loginb.html',locals())

#退出登录
def user_logout(request):
    logout(request)
    return redirect('/user/login/')

#改密码
def changepwd(request):
    if request.method == 'POST':
        form = RegisterForm(request.POST)
        if form.is_valid():
            oldpassword = request.POST.get('oldpassword')
            newpassword = request.POST.get('newpassword')
            data = request.session.get('username')
            user = User.objects.filter(passwd=oldpassword,username=data)
            # print(user)
            if user:
                #写新密码
                user.update(password=make_password(newpassword),passwd=newpassword)
                return render(request,'loginb.html')
            else:
                return render(request,'change_psw.html', {'form': form})
        else:
            return render(request, 'change_psw.html', {'form': form})
    return render(request,'change_psw.html')


#删除文章
def shanchu(request,aid,cid=-1,page=1):
    """
    :param request:
    :param aid: 文章id
    :param cid: 类别id
    :param page: 页码
    :return:
    """
    arcticle = Article.objects.get(pk=aid)
    if arcticle:
        arcticle.delete()
    return redirect(reverse('App03:main',kwargs={'cid':cid,'page':page}))

#发表文章
@csrf_exempt
def fabiao(request, datatime=None):
    categorys = Category.objects.all()
    tags = Tag.objects.all()
    if request.method=='POST':
        #获取文章标题
        title = request.POST.get('title')
        #内容
        content = request.POST.get('wj')
        #分类cid
        mcid = request.POST.get('cid')
        cid = Category.objects.filter(cid=mcid).first()
        #创建时间
        creat_time = datetime.datetime.now()
        #保存图片路径
        picture = request.session.get('path')
        #存进数据库
        artile = Article.objects.create(title=title,content=content,creat_time=creat_time,uid=randint(1,5),cid=cid,hits=randint(100,150),comments=randint(100,200),picture=picture)
        artile.save()
        return render(request,'index.html')
    return render(request,'wenzhang_xinwen_fabu.html',locals())

#文件上传
def upload(request):
    if request.method == 'POST':
        #　获取文件上传的对象
        fobj = request.FILES.get('photo')
        path = os.path.join(settings.STATICFILES_DIRS[0],'upload')
        path = os.path.join(path,fobj.name)
        with open(path,'wb') as target:
            if fobj.multiple_chunks():
                for data in fobj.chunks():
                    target.write(data)
            else:
                target.write(fobj.read())

        request.session['path'] = path
        return HttpResponse('上传成功'+ path)
    return render(request,'image.html')

#文章修改
@csrf_exempt
def update_article(request,aid,cid=1):
    categories = Category.objects.all()
    arcticle = Article.objects.filter(aid=aid).first()
    if arcticle:
        if request.method == 'POST':
            title = request.POST.get('title')
            print(title)
            # 内容
            content = request.POST.get('wj')
            print(content)
            # 分类cid
            mcid = request.POST.get('cid')
            cid = Category.objects.filter(cid=mcid).first()
            # arcticle.cid = cid
            # arcticle.aid = aid
            # 创建时间
            creat_time = datetime.datetime.now()
            # 保存图片路径
            picture = request.session.get('path')
            # 更改
            arcticle.title = title
            arcticle.content = content
            arcticle.cid = cid
            arcticle.creat_time=creat_time
            arcticle.save()
    return render(request,'wenzhang_xinwen_info.html',locals())


def pinlun(request,page=1):
    data = request.session.get('username')
    marks = Mark.objects.filter(uid__username=data)
    if request.method == "POST":
            marks = Mark.objects.filter(content__contains=request.POST.get('gjz'))
    #分页
    paginator = Paginator(marks,4)
    pager = paginator.page(page)
    return render(request,'pinlun.html',locals())

@csrf_exempt
def fabiaopl(request):
    if request.method=='POST':
        content = request.POST.get('pl')
        creat_time = datetime.datetime.now()
        data = request.session.get('username')
        user = User.objects.filter(username=data).first()
        mark =Mark.objects.create(content=content,creat_time=creat_time,uid=user)
        mark.save()
    return render(request,'pinlun_fabu.html',locals())


def shanchupl(request,mid,page=1):
    mark = Mark.objects.get(pk=mid)
    if mark:
        mark.delete()
    return redirect(reverse('App03:pinlun', kwargs={'page': page}))

@csrf_exempt
def update_mark(request,mid):
    mark = Mark.objects.filter(mid=mid).first()
    if mark:
        if request.method=='POST':
            content = request.POST.get('pl')
            creat_time = datetime.datetime.now()
            data = request.session.get('username')
            user = User.objects.filter(username=data).first()
            #更新
            mark.content = content
            mark.creat_time=creat_time
            mark.uid=user
            mark.save()
            return redirect('/user/pinlun/')
    return render(request,'pinlun_info.html',locals())

@csrf_exempt
def usergl(request,page=1):
    users = User.objects.all()
    if request.method == "POST":
        users = User.objects.filter(username__contains=request.POST.get('gjz'))
    # 分页
    paginator = Paginator(users, 2)
    pager = paginator.page(page)
    return render(request,'user.html',locals())


def shanchuyh(request,uid,page=1):
    user = User.objects.get(pk=uid)
    if user:
        user.delete()
    return redirect(reverse('App03:usergl', kwargs={'page': page}))

@csrf_exempt
def update_user(request,uid):
    user = User.objects.filter(uid=uid).first()
    if user:
        if request.method == 'POST':
            username = request.POST.get('username')
            creat_time = datetime.datetime.now()
            phone = request.POST.get('phone')
            email = request.POST.get('email')
            portrait = request.session.get('path')
            # 更新
            user.username = username
            user.creat_time = creat_time
            user.phone = phone
            user.portrait=portrait
            user.email = email
            user.save()
            return redirect('/user/usergl/')
    return render(request,'user_info.html',locals())

def user_register(request):
    if request.method =='POST':
        form = UserMake(request.POST)
        if form.is_valid():
            data = form.cleaned_data
            data.pop('confirm')
            user = User.objects.create_user(**data)
            if user:
                return render(request,'user.html',{'page':1})
            else:
                return render(request, 'user_make.html', {'form': form})
        else:
            return render(request, 'user_make.html', {'form': form})
    return render(request,'user_make.html')