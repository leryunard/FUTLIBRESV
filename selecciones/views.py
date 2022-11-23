from django.shortcuts import render
from webApp.models import Equipo, Noticia, Detallenoticia

# Create your views here.

def verNoticiasMundial(request, id):
    mostrar = Noticia.objects.all()
    detalle = Detallenoticia.objects.all()
    return render(request, 'mundial/verNoticias.html', {'mostrar':mostrar, 'detalle':detalle, 'var':id})

def verTodasNoticiasMundial(request):
    mostrar = Noticia.objects.all()
    detalle = Detallenoticia.objects.all()
    return render(request, 'mundial/verTodas.html', {'mostrar':mostrar, 'detalle':detalle})

def verEquiposMundial(request):
    mostrar = Equipo.objects.all()
    return render(request, 'mundial/verEquipos.html', {'mostrar':mostrar})