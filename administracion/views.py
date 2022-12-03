from django.shortcuts import render
from django.http import HttpResponse
from webApp.models import Equipo, Noticia, Detallenoticia, Jugador, Competencia
from django.contrib import messages
from django.shortcuts import redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout


# Create your views here.


def salir(request):
    logout(request)
    return redirect('home')


@login_required
def noticiasCRUD(request):
    noticias = Noticia.objects.all()
    return render(request, 'paginas/noticias.html', {'noticias': noticias})


@login_required
def panelControl(request):
    return render(request, 'paginas/panel.html', {})


@login_required
def editar(request, id):
    noticia = Noticia.objects.get(pk=id)
    detalle = Detallenoticia.objects.get(idnoticia=id)
    equipos = Equipo.objects.all()
    competencias = Competencia.objects.all()
    if request.method == 'POST':
        if request.POST['nombrenoticia'] != "" and request.POST['idequipo'] != "" and request.POST[
            'descripcion'] != "" and request.POST['fecha'] != "" and request.POST['urlimagen'] != "":
            competencia = Competencia.objects.get(
                pk=request.POST['idcompetencia'])
            noticia.idcompetencia = competencia
            noticia.tiponoticia = competencia.nombrecompetencia
            noticia.equipo = request.POST['idequipo']
            noticia.nombrenoticia = request.POST['nombrenoticia']
            noticia.save()
            detalle.descripcionnoticia = request.POST['descripcion']
            detalle.fechanoticia = request.POST['fecha']
            detalle.urlimagen = request.POST['urlimagen']
            detalle.save()
            messages.success(request, "Guardado Con exito")
            return redirect('noticiasCRUD')
        else:
            messages.error(request, "El formulario esta invalido")
    return render(request, 'paginas/editar.html',
                  {'noticia': noticia, 'detalle': detalle, 'competencias': competencias, 'equipos': equipos})


@login_required
def guardar(request):
    competencias = Competencia.objects.all()
    equipos = Equipo.objects.all()
    if request.method == 'POST':
        obj = Noticia.objects.latest('idnoticia')
        objdetalle = Detallenoticia.objects.latest('iddetalle')
        if request.POST['nombrenoticia'] != "" and request.POST['idequipo'] != "" and request.POST[
            'descripcion'] != "" and request.POST['fecha'] != "" and request.POST['urlimagen'] != "":
            competencia = Competencia.objects.get(
                pk=request.POST['idcompetencia'])
            nuevanoticia = Noticia(nombrenoticia=request.POST['nombrenoticia'], idcompetencia=competencia,
                                   tiponoticia=competencia.nombrecompetencia, equipo=request.POST['idequipo'],
                                   subtitulonoticia="", idnoticia=obj.idnoticia + 1)
            nuevanoticia.save()
            nuevodetalle = Detallenoticia(idnoticia=nuevanoticia, descripcionnoticia=request.POST['descripcion'],
                                          fechanoticia=request.POST[
                                              'fecha'], urlimagen=request.POST['urlimagen'],
                                          iddetalle=objdetalle.iddetalle + 1)
            nuevodetalle.save()
            messages.success(request, "Guardado Con exito")
            return redirect('noticiasCRUD')
        else:
            messages.error(request, "El formulario esta invalido")
    return render(request, 'paginas/guardar.html', {'competencias': competencias, 'equipos': equipos})


@login_required
def eliminar(request):
    if request.method == 'POST':
        Detallenoticia.objects.filter(
            idnoticia=request.POST['idnoticia']).delete()
        noticia = Noticia.objects.get(pk=request.POST['idnoticia'])
        noticia.delete()
    messages.success(request, "Eliminado con exito")
    return redirect('noticiasCRUD')
