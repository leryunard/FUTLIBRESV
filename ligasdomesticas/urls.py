from django.urls import path
from . import views

urlpatterns = [
    path('verNoticiaBundesliga/<id>/', views.verNoticiaBundesliga, name='id'),
    path('verEquiposBundesliga', views.verEquiposBundesliga),
    path('verNoticiasBundesliga', views.verNoticiasBundesliga, name='bundesliga'),
]
