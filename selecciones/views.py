from django.shortcuts import render
from webApp.models import Equipo, Noticia, Detallenoticia, Jugador


# Create your views here.

def verNoticiasMundial(request, id):
    mostrar = Noticia.objects.all()
    detalle = Detallenoticia.objects.all()
    return render(request, 'mundial/verNoticias.html', {'mostrar': mostrar, 'detalle': detalle, 'var': id})


def verTodasNoticiasMundial(request):
    mostrar = Noticia.objects.filter(idcompetencia=3)
    detalle = Detallenoticia.objects.all()
    return render(request, 'mundial/verTodas.html', {'mostrar': mostrar, 'detalle': detalle})


def verEquiposMundial(request):
    mostrar = Equipo.objects.filter(idTipoEquipo=3)
    return render(request, 'mundial/verEquipos.html', {'mostrar': mostrar})


def verPerfilEquipoMundial(request, id):
    mostrar = Noticia.objects.all()
    equipo = Equipo.objects.all()
    jugador = Jugador.objects.all()
    detalle = Detallenoticia.objects.all()
    return render(request, 'mundial/verPerfil.html', {'equipo': equipo, 'jugador': jugador, 'var': id, 'mostrar': mostrar, 'detalle': detalle})
