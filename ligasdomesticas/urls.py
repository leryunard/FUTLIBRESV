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
]
