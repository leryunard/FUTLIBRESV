from django.shortcuts import render
from webApp.models import *


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
    jugador = Jugador.objects.all()
    detalle = Detallenoticia.objects.all()
    return render(request, 'laliga/verPerfil.html', {'equipo': equipo, 'jugador': jugador, 'var': id, 'mostrar': mostrar, 'detalle': detalle})


