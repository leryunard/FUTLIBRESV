from django.urls import path
from .views import *
from. import views



# enlaces para mostrar las vistas (URLS)
# path(para pasar parametros, llamado a las  views, nombre de la url)

urlpatterns = [
   path('verNoticiasLibertadores/<id>/', views.verNoticiasLibertadores, name = 'id'),
    path('verEquiposLibertadores', views.verEquiposLibertadores),
    path('verTodasNoticiasLibertadores', views.verTodasNoticiasLibertadores),


]