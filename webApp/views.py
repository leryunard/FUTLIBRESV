from django.shortcuts import render
from webApp.models import *


# Create your views here.

def home(request):
    return render(request, 'paginas/home.html')


def verTodasNoticias(request):
    mostrar = Noticia.objects.all()
    detalle = Detallenoticia.objects.all()
    return render(request, 'paginas/home.html', {'mostrar': mostrar, 'detalle': detalle})
