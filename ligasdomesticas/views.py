from django.shortcuts import render
from webApp.models import *

#Bundesliga
def verNoticiasBundesliga(request):
    noticias = Noticia.objects.filter(idcompetencia=1).order_by('-idnoticia')[:12]
    detalles = Detallenoticia.objects.all()
    return render(request, 'bundesliga/index.html', {'noticias': noticias, 'detalles': detalles})


def verNoticiaBundesliga(request, iddetalle):
    noticiabundes = Detallenoticia.objects.get(iddetalle=iddetalle)
    return render(request, 'bundesliga/noticia.html', {'noticiabundes': noticiabundes})


# La Liga
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
    return render(request, 'laliga/verPerfil.html',
                  {'equipo': equipo, 'jugador': jugador, 'var': id, 'mostrar': mostrar, 'detalle': detalle})


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


def SerieA_general(request):
    mostrar = Noticia.objects.filter(idcompetencia=10)
    detalle = Detallenoticia.objects.all()
    return render(request, 'liga_Italiana/general.html', {'mostrar': mostrar, 'detalle': detalle, 'var': id})


def Ver_Noticia(request, id):
    mostrar = Noticia.objects.all()
    detalle = Detallenoticia.objects.all()
    equipo = Equipo.objects.all()
    return render(request, 'liga_Italiana/verNoticia.html',
                  {'mostrar': mostrar, 'detalle': detalle, 'var': id, 'equipo': equipo})


def verEquipo(request, id):
    mostrar = Noticia.objects.all()
    equipo = Equipo.objects.all()
    jugador = Jugador.objects.filter(idequipo=id)
    detalle = Detallenoticia.objects.all()
    return render(request, 'liga_Italiana/Equipo.html',
                  {'equipo': equipo, 'jugador': jugador, 'var': id, 'mostrar': mostrar, 'detalle': detalle})


def verEquipos(request):
    mostrar = Equipo.objects.all()
    return render(request, 'liga_Italiana/verEquipo.html', {'mostrar': mostrar})


""" 
Liga Pepsi methods (Kevin Grande)
"""


def allNewsLigaPepsi(request):
    news = Noticia.objects.filter(idcompetencia=9)
    description = Detallenoticia.objects.all()
    return render(request, 'ligapepsi/verTodasNoticias.html', {'news': news, 'description': description})


def viewTeamsLigaPepsi(request):
    teams = Equipo.objects.filter(idTipoEquipo=9)
    return render(request, 'ligapepsi/verEquipos.html', {'teams': teams})


def profileTeamsLigaPepsi(request, id):
    news = Noticia.objects.all()
    teams = Equipo.objects.all()
    players = Jugador.objects.filter(idequipo=id)
    description = Detallenoticia.objects.all()
    return render(request, 'ligapepsi/verPerfil.html',
                  {'teams': teams, 'players': players, 'var': id, 'news': news, 'description': description})


def newsByIdLigaPepsi(request, id):
    news = Noticia.objects.filter(idcompetencia=9)
    description = Detallenoticia.objects.all()
    return render(request, 'ligapepsi/verNoticiasbyId.html', {'news': news, 'description': description, 'var': id})


""" 
Premier League methods (Carlos Alfonso)
"""


def allNewsPremier(request):
    news = Noticia.objects.filter(idcompetencia=5)
    description = Detallenoticia.objects.all()
    return render(request, 'premierLeague/verTodasNoticias.html', {'news': news, 'description': description})


def viewTeamsPremier(request):
    teams = Equipo.objects.filter(idTipoEquipo=5)
    return render(request, 'premierLeague/verEquipos.html', {'teams': teams})


def profileTeamsPremier(request, id):
    news = Noticia.objects.all()
    teams = Equipo.objects.all()
    players = Jugador.objects.filter(idequipo=id)
    description = Detallenoticia.objects.all()
    return render(request, 'premierLeague/verPerfil.html',
                  {'teams': teams, 'players': players, 'var': id, 'news': news, 'description': description})


def newsByIdPremier(request, id):
    news = Noticia.objects.filter(idcompetencia=5)
    description = Detallenoticia.objects.all()
    return render(request, 'premierLeague/verNoticiasbyId.html', {'news': news, 'description': description, 'var': id})
