from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.


def administracion(request):
    return render(request, 'paginas/login.html')
