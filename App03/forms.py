import re

from django import forms
from django.core.exceptions import ValidationError

from App03.models import User


class RegisterForm(forms.Form):
    oldpassword = forms.CharField(min_length=3,required=True,error_messages={
        'required': '密码必须输入',
        'min_length': '密码至少3个字符'
    })
    newpassword = forms.CharField(min_length=3, required=True, error_messages={
        'required': '密码必须输入',
        'min_length': '密码至少3个字符'
    })
    confile = forms.CharField(min_length=3,required=True,error_messages={
        'required': '密码必须输入',
        'min_length': '密码至少3个字符'
    })

    #单个字段验证
    def clean_oldpassword(self):
        oldpassword = self.cleaned_data.get('password')
        # username = self.cleaned_data.get('username',None)
        user = User.objects.filter(passwd=oldpassword)
        if user:
            return self.cleaned_data
        raise ValidationError('你输入的旧密码不正确')


    #全局验证，多个字段验证
    def clean(self):
        newpassword = self.cleaned_data.get('password',None)
        confile = self.cleaned_data.get('confirm','')
        if newpassword != confile:
            raise ValidationError({'confile':'两次密码不一致'})
        return self.cleaned_data


class UserMake(forms.Form):
    username = forms.CharField(min_length=3, required=True, error_messages={
        'required': '用户名必须输入',
        'min_length': '用户名至少3个字符'
    })
    passwd = forms.CharField(min_length=3, required=True, error_messages={
        'required': '密码必须输入',
        'min_length': '密码至少3个字符'
    })
    confirm = forms.CharField(min_length=3, required=True, error_messages={
        'required': '密码必须输入',
        'min_length': '密码至少3个字符'
    })
    regtime = forms.DateTimeField(required=False, error_messages={
        'invalid': '日期格式错误'
    })
    email = forms.EmailField(required=True, error_messages={
        'required': '请输入邮箱'
    })
    phone = forms.CharField(max_length=11, required=True, error_messages={
        'required': '请输入手机号',
        'max_length': '手机号码最长为11位'
    })


    def clean_passwd(self):
        passwd = self.cleaned_data.get('passwd')
        if passwd and passwd.isdigit():
            raise ValidationError('密码不能是纯数字')
        return passwd

    def clean_username(self):
        username = self.cleaned_data.get('username')
        print(username)
        usersname = User.objects.filter(username=username).first()
        print(usersname)
        if username == usersname:
            print(11)
            raise ValidationError('用户已存在')
        print(22)
        return username

    def clean_phone(self):
        phone = self.cleaned_data.get('phone')
        pattern = re.compile(r"^((\d{3,4}-)?\d{7,8})$|(1[3-9][0-9]{9})")
        if not pattern.match(phone):
            raise ValidationError('手机号码格式不正确')
        return phone

    def clean(self):
        passwd = self.cleaned_data.get('passwd')
        confirm = self.cleaned_data.get('confirm')
        if passwd != confirm:
            raise ValidationError({'confirm':'两次密码输入不一致'})
        return self.cleaned_data