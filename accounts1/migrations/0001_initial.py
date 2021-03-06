# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2018-04-27 11:42
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='CustomerBankaccount',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('full_name', models.CharField(default='', max_length=200)),
                ('email', models.EmailField(blank=True, max_length=254)),
                ('contact', models.IntegerField(default=0)),
                ('residence', models.CharField(default='', max_length=200)),
                ('work_history', models.CharField(default='', max_length=200)),
                ('identification_information', models.IntegerField(default=0)),
                ('next_of_kin', models.CharField(default='', max_length=200)),
                ('relationship', models.CharField(default='', max_length=200)),
                ('account_number', models.IntegerField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='Friends',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('users', models.ManyToManyField(to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Post',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('post', models.CharField(max_length=200)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Registercustomer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('first_name', models.CharField(default='', max_length=200)),
                ('last_name', models.CharField(default='', max_length=200)),
                ('email', models.EmailField(blank=True, max_length=254)),
                ('contact', models.IntegerField(default=0)),
                ('residence', models.CharField(default='', max_length=200)),
                ('occupation', models.CharField(default='', max_length=200)),
                ('next_of_kin', models.CharField(default='', max_length=200)),
                ('relationship', models.CharField(default='', max_length=200)),
                ('relate', models.CharField(default='', max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='Registercustomertranscations',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Full_name', models.CharField(default='', max_length=200)),
                ('Email', models.EmailField(blank=True, max_length=254)),
                ('Contact', models.IntegerField(default=0)),
                ('Account_number', models.IntegerField(default=0)),
                ('Transcation_type', models.CharField(default='', max_length=200)),
                ('Amount', models.IntegerField(default=0)),
                ('Transcation_date', models.DateTimeField(default=django.utils.timezone.now)),
            ],
        ),
        migrations.CreateModel(
            name='Userprofile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('description', models.CharField(default='', max_length=200)),
                ('city', models.CharField(default='', max_length=200)),
                ('website', models.URLField(default='')),
                ('phone', models.IntegerField(default=0)),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
