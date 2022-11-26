from django.shortcuts import render
from webApp.models import *


def verNoticiasBundesliga(request):
    mostrar = Noticia.objects.all()
    detalle = Detallenoticia.objects.all()
    return render(request, 'bundesliga/index.html', {'mostrar': mostrar, 'detalle': detalle})


