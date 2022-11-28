from django.shortcuts import render
from webApp.models import *


def verNoticiasBundesliga(request):
    noticias = Noticia.objects.filter(idcompetencia=1).order_by('-idnoticia')[:12]
    detalles = Detallenoticia.objects.all()
    return render(request, 'bundesliga/index.html', {'noticias': noticias, 'detalles': detalles})


def verNoticiaBundesliga(request, iddetalle):
    noticiabundes = Detallenoticia.objects.get(iddetalle=iddetalle)
    return render(request, 'bundesliga/noticia.html', {'noticiabundes': noticiabundes})


def verTodasBundesliga(request):
    todas = Noticia.objects.filter(idcompetencia=1)
    detalles = Detallenoticia.objects.all()
    return render(request, 'bundesliga/noticias.html', {'todas': todas, 'detalles': detalles})


def verEquiposBundesliga(request):
    equipo = Equipo.objects.filter(idTipoEquipo=1)
    return render(request, 'bundesliga/equipos.html', {'equipo': equipo})


def verPerfilBundesliga(request, idequipo):
    equipo = Equipo.objects.get(idequipo=idequipo)
    noticia = Detallenoticia.objects.filter(idequipo=idequipo)
    jugador = Jugador.objects.filter(idequipo=idequipo)

    return render(request, 'bundesliga/perfil.html',
                  {'equipo': equipo, 'jugador': jugador, 'noticia': noticia})
