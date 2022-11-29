from django.urls import path
from . import views

urlpatterns = [
    path('inicio', views.vernoticias,name='noticias'),
    path('vernoticia/<id>/', views.verdetalle, name = 'detalle'),

]