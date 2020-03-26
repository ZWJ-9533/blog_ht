from django.contrib.auth.models import AbstractUser
from django.db import models

# Create your models here.
class Article(models.Model):
    aid = models.AutoField(primary_key=True)
    title = models.CharField(max_length=100, blank=True, null=True)
    content = models.CharField(max_length=10000, blank=True, null=True)
    creat_time = models.DateTimeField(blank=True, null=True)
    uid = models.IntegerField(blank=True, null=True)
    cid = models.ForeignKey('Category', models.DO_NOTHING, db_column='cid', blank=True, null=True)
    hits = models.IntegerField(blank=True, null=True)
    comments = models.IntegerField(blank=True, null=True)
    picture = models.CharField(max_length=300, blank=True, null=True)

    class Meta:
        db_table = 'article'


class Category(models.Model):
    cid = models.AutoField(primary_key=True)
    name = models.CharField(unique=True, max_length=100)
    num = models.IntegerField(blank=True, null=True)

    class Meta:
        db_table = 'category'



class Mark(models.Model):
    mid = models.AutoField(primary_key=True)
    content = models.CharField(max_length=10000, blank=True, null=True)
    creat_time = models.DateTimeField(blank=True, null=True)
    uid = models.ForeignKey('User', models.DO_NOTHING, db_column='uid', blank=True, null=True)

    class Meta:
        db_table = 'mark'


class Tag(models.Model):
    tid = models.AutoField(primary_key=True)
    tname = models.CharField(unique=True, max_length=100)
    aid = models.ForeignKey(Article, models.DO_NOTHING, db_column='aid', blank=True, null=True)

    class Meta:
        db_table = 'tag'


class User(AbstractUser):
    uid = models.AutoField(primary_key=True)
    passwd = models.CharField(max_length=128)
    username = models.CharField(max_length=30,unique=True)
    phone = models.CharField(max_length=11, blank=True, null=True)
    email = models.CharField(max_length=200, blank=True, null=True)
    portrait = models.CharField(max_length=3000, blank=True, null=True)
    regtime = models.DateTimeField(blank=True, null=True)
    isforbid = models.IntegerField(blank=True, null=True)

    class Meta:
        db_table = 'user'