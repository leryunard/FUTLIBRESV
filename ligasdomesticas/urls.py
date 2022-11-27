from django.urls import path
from . import views

urlpatterns = [
    path('bundesliga', views.verNoticiasBundesliga, name='bundesliga'),
    path('noticiabundesliga/<int:iddetalle>', views.verNoticiaBundesliga, name='noticiabundesliga'),
]
