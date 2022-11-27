from django.shortcuts import render
from webApp.models import *


def verNoticiasBundesliga(request):
    noticias = Noticia.objects.filter(idcompetencia=1).order_by('-idnoticia')[:12]
    detalles = Detallenoticia.objects.all()
    return render(request, 'bundesliga/index.html', {'noticias': noticias, 'detalles': detalles})


def verNoticiaBundesliga(request, iddetalle):
    noticiabundes = Detallenoticia.objects.get(iddetalle=iddetalle)
    return render(request, 'bundesliga/noticia.html', {'noticiabundes': noticiabundes})
