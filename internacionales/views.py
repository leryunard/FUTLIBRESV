from django.shortcuts import render
from webApp.models import Equipo, Noticia, Detallenoticia


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
