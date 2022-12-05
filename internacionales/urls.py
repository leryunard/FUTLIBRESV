from django.urls import path
from .views import *
from . import views

# enlaces para mostrar las vistas (URLS)
# path(para pasar parametros, llamado a las  views, nombre de la url)

urlpatterns = [
    path('verNoticiasLibertadores/<id>/', views.verNoticiasLibertadores, name='noticialiber'),
    path('verEquiposLibertadores', views.verEquiposLibertadores, name='equiposliber'),
    path('verTodasNoticiasLibertadores', views.verTodasNoticiasLibertadores, name='liber'),
    # Parte Carlos Rafaelano
    path('verNoticiasChampions/<id>/', views.verNoticiasChampions, name='notiChampions'),
    path('verEquiposChampions', views.verEquiposChampions, name="equipoChampions"),
    path('verTodasNoticiasChampions', views.verTodasNoticiasChampions, name='todasChampions'),
    path('verPerfilEquipoChampions/<id>/', views.verPerfilEquipoChampions, name = 'perfilChampions'),
]
