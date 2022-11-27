from django.urls import path
from . import views

# enlaces para mostrar las vistas (URLS)
# path(para pasar parametros, llamado a las  views, nombre de la url)

urlpatterns = [
    path('SerieA_general', views.SerieA_general),
    path('Equipo/<id>', views.verEquipo,name='id'),
    path('verNoticia/<id>',views.Ver_Noticia,name='id'),
    path('verEquipos',views.verEquipos),
]