from django.urls import path
from . import views

# enlaces para mostrar las vistas (URLS)
# path(para pasar parametros, llamado a las  views, nombre de la url)

urlpatterns = [
    path('verNoticiasMundial/<id>/', views.verNoticiasMundial, name = 'idnoti'),
    path('verEquiposMundial', views.verEquiposMundial, name = 'equiposmundial'),
    path('verTodasNoticiasMundial', views.verTodasNoticiasMundial, name = 'qatar'),
    path('verPerfilEquipoMundial/<id>/', views.verPerfilEquipoMundial, name = 'id'),
    
]