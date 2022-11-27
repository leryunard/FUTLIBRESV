from django.shortcuts import render
from webApp.models import Equipo, Noticia, Detallenoticia, Jugador

# Create your views here.

def SerieA_general(request):
    mostrar = Noticia.objects.filter(idcompetencia=6)
    detalle = Detallenoticia.objects.all()
    return render(request, 'liga_Italiana/general.html',{'mostrar':mostrar, 'detalle':detalle,'var':id})

def Ver_Noticia(request, id):
    mostrar = Noticia.objects.all()
    detalle = Detallenoticia.objects.all()
    equipo = Equipo.objects.all()
    return render(request,'liga_Italiana/verNoticia.html',{'mostrar':mostrar,'detalle':detalle,'var':id,'equipo':equipo})

def verEquipo(request, id):
    mostrar = Noticia.objects.all()
    equipo = Equipo.objects.all()
    jugador = Jugador.objects.all()
    detalle = Detallenoticia.objects.all()
    return render(request, 'liga_Italiana/Equipo.html', {'equipo':equipo, 'jugador':jugador, 'var':id, 'mostrar':mostrar, 'detalle':detalle})


def verEquipos(request):
    mostrar = Equipo.objects.all()
    return render(request, 'liga_Italiana/verEquipo.html', {'mostrar':mostrar})