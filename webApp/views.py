from django.shortcuts import render
from webApp.models import *


# Create your views here.

def home(request):
    return render(request, 'paginas/home.html')


def verTodasNoticias(request):
    noticias = Detallenoticia.objects.filter().order_by('-iddetalle')[:12]
    return render(request, 'paginas/home.html', {'noticias': noticias})


def verNoticia(request, iddetalle):
    noticia = Detallenoticia.objects.get(iddetalle=iddetalle)
    return render(request, 'paginas/noticia.html', {'noticia': noticia})


def verTodas(request):
    todas = Detallenoticia.objects.all()
    return render(request, 'paginas/todas.html', {'todas': todas})
