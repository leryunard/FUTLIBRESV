from django.urls import path
from . import views
from django.contrib.auth.decorators import login_required

urlpatterns = [
    path('salir/', views.salir, name='salir'),
    path('panel', views.panelControl, name='panelControl'),
    path('noticiasCRUD', views.noticiasCRUD, name='noticiasCRUD'),
    path('noticiasCRUD/<id>/', views.editar, name='noticiaEditar'),
    path('noticiasCRUD/nueva', views.guardar, name='noticiaGuardar'),
    path('noticiasCRUD/eliminar', views.eliminar, name='noticiaEliminar'),
]
