from django.urls import path, include
from . import views

bundesligaurls = [
    path('', views.verNoticiasBundesliga, name='bundesliga'),
    path('noticia/<int:iddetalle>', views.verNoticiaBundesliga, name='noticiabundesliga'),
    path('todas', views.verTodasBundesliga, name='todasbundesliga'),
    path('equipos', views.verEquiposBundesliga, name='equiposbundesliga'),
    path('perfil/<int:idequipo>', views.verPerfilBundesliga, name='perfilbundesliga'),
]

urlpatterns = [
    path('bundesliga/', include(bundesligaurls)),
    path('verNoticiasLaliga/<id>/', views.verNoticiasLaliga, name = 'noticialiga'),
    path('verEquiposLaliga', views.verEquiposLaliga, name = 'equiposlaliga'),
    path('verTodasNoticiasLaliga', views.verTodasNoticiasLaliga, name = 'Espana'),
    path('verPerfilEquipoLaliga/<id>/', views.verPerfilEquipoLaliga, name = 'id'),
    path('SerieA_general', views.SerieA_general, name = 'seriea'),
    path('Equipo/<id>', views.verEquipo, name='id'),
    path('verNoticia/<id>', views.Ver_Noticia, name='noticiaseriea'),
    path('verEquipos', views.verEquipos, name='equiposseriea'),

    path('viewTeamsLigaPepsi', views.viewTeamsLigaPepsi, name='teamsLigaPepsi'),
    path('profileTeamsLigaPepsi/<id>/', views.profileTeamsLigaPepsi, name='profileLigaPepsi'),
    path('newsByIdLigaPepsi/<id>/', views.newsByIdLigaPepsi, name='newsIdLigaPepsi'),
    path('allNewsLigaPepsi', views.allNewsLigaPepsi, name='allnewsLigaPepsi'),

    path('viewTeamsPremierLeague', views.viewTeamsPremier, name='teamsPremier'),
    path('profileTeamsPremierLeague/<id>/', views.profileTeamsPremier, name='profilePremierLeague'),
    path('newsByIdPremierLeague/<id>/', views.newsByIdPremier, name='newsIdPremierLeague'),
    path('allNewsPremierLeague', views.allNewsPremier, name='allnewsPremierLeague'),
]
