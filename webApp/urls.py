from django.urls import path
from . import views

# enlaces para mostrar las vistas (URLS)
# path(para pasar parametros, llamado a las  views, nombre de la url)

urlpatterns = [
    path('', views.verTodasNoticias, name='home'),
    path('noticia/<int:iddetalle>', views.verNoticia, name='noticia'),
    path('todas', views.verTodas, name='todas'),
]
