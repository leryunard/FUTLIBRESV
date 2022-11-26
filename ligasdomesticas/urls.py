from django.urls import path
from . import views

urlpatterns = [
    path('verNoticiasLaliga/<id>/', views.verNoticiasLaliga, name = 'id'),
    path('verEquiposLaliga', views.verEquiposLaliga),
    path('verTodasNoticiasLaliga', views.verTodasNoticiasLaliga, name = 'Espana'),
    path('verPerfilEquipoLaliga/<id>/', views.verPerfilEquipoLaliga, name = 'id'),
]
