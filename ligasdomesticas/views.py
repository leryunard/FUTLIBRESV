from django.shortcuts import render
from webApp.models import *


def verNoticiasBundesliga(request):
    noticias = Noticia.objects.filter(idcompetencia=1).order_by('-idnoticia')[:12]
    detalles = Detallenoticia.objects.all()
    return render(request, 'bundesliga/index.html', {'noticias': noticias, 'detalles': detalles})


def verNoticiaBundesliga(request, iddetalle):
    noticiabundes = Detallenoticia.objects.get(iddetalle=iddetalle)
    return render(request, 'bundesliga/noticia.html', {'noticiabundes': noticiabundes})

#La Liga
def verNoticiasLaliga(request, id):
    mostrar = Noticia.objects.all()
    detalle = Detallenoticia.objects.all()
    return render(request, 'laliga/verNoticias.html', {'mostrar': mostrar, 'detalle': detalle, 'var': id})


def verTodasNoticiasLaliga(request):
    mostrar = Noticia.objects.all()
    detalle = Detallenoticia.objects.all()
    return render(request, 'laliga/verTodas.html', {'mostrar': mostrar, 'detalle': detalle})


def verEquiposLaliga(request):
    mostrar = Equipo.objects.all()
    return render(request, 'laliga/verEquipos.html', {'mostrar': mostrar})


def verPerfilEquipoLaliga(request, id):
    mostrar = Noticia.objects.all()
    equipo = Equipo.objects.all()
    jugador = Jugador.objects.filter(idequipo=id)
    detalle = Detallenoticia.objects.all()
    return render(request, 'laliga/verPerfil.html', {'equipo': equipo, 'jugador': jugador, 'var': id, 'mostrar': mostrar, 'detalle': detalle})

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
