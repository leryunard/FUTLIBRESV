from django.shortcuts import render
from webApp.models import *;


def verNoticiasLibertadores(request, id):
    mostrar = Noticia.objects.all()
    detalle = Detallenoticia.objects.all()
    return render(request, 'Libertadores/verNoticias.html', {'mostrar': mostrar, 'detalle': detalle, 'var': id})


def verEquiposLibertadores(request):
    equipo = Equipo.objects.all()
    return render(request, 'Libertadores/verEquipos.html', {'equipo': equipo})


def verTodasNoticiasLibertadores(request):
    mostrar = Noticia.objects.all()
    detalle = Detallenoticia.objects.all()
    return render(request, 'Libertadores/verTodas.html', {'mostrar': mostrar, 'detalle': detalle})

# Create your views here.
# Parte Carlos Rafaelano


def verEquiposChampions(request):
    equipo = Equipo.objects.filter(idTipoEquipo=1)
    return render(request, 'champions/verEquipos.html', {'equipo': equipo})


def verTodasNoticiasChampions(request):
    mostrar = Noticia.objects.filter(idcompetencia=0)
    detalle = Detallenoticia.objects.all()
    return render(request, 'champions/verTodas.html', {'mostrar': mostrar, 'detalle': detalle})


def verNoticiasChampions(request, id):
    mostrar = Noticia.objects.all()
    detalle = Detallenoticia.objects.all()
    return render(request, 'champions/verNoticias.html', {'mostrar': mostrar, 'detalle': detalle, 'var': id})

def verPerfilEquipoChampions(request, id):
    mostrar = Noticia.objects.all()
    equipo = Equipo.objects.all()
    jugador = Jugador.objects.all()
    detalle = Detallenoticia.objects.all()
    return render(request, 'champions/verPerfil.html', {'equipo': equipo, 'jugador': jugador, 'var': id, 'mostrar': mostrar, 'detalle': detalle})