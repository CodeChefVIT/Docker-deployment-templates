from django.shortcuts import render
from django.http import HttpResponse


def index(request):
    return HttpResponse("Yo, lets go!")
