from django.urls import path
from . import views

urlpatterns = [
    path('', views.administracion, name='administracion'),
    path('noticiasCRUD', views.noticiasCRUD,name='noticiasCRUD'),
    path('noticiasCRUD/<id>/', views.editar, name = 'noticiaEditar'),
    path('noticiasCRUD/nueva', views.guardar, name = 'noticiaGuardar'),
    path('noticiasCRUD/eliminar', views.eliminar, name = 'noticiaEliminar'),
]