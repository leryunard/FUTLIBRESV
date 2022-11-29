from django.shortcuts import render
from django.http import HttpResponse
from webApp.models import Equipo, Noticia, Detallenoticia, Jugador,Competencia
from django.contrib import messages
from django.shortcuts import redirect
# Create your views here.

def vernoticias(request):
    noticias = Noticia.objects.all()
    for val in noticias:
        val.detalle = Detallenoticia.objects.filter(idnoticia=val.idnoticia).first()
    return render(request, 'paginas/vertodas.html',{'noticias':noticias})

def verdetalle(request,id):
    noticia = Noticia.objects.get(pk=id)
    detalle = Detallenoticia.objects.get(idnoticia=id)
    return render(request, 'paginas/verdetalle.html',{'noticia':noticia,'detalle':detalle})


