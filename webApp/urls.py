from django.urls import path
from .views import *
from . import views
from django.urls import include

# enlaces para mostrar las vistas (URLS)
# path(para pasar parametros, llamado a las  views, nombre de la url)

urlpatterns = [
    path('', views.verTodasNoticias, name='home'),
]
