# Generated by Django 4.1.3 on 2022-11-29 16:24

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('webApp', '0004_remove_noticia_equipo'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='jugador',
            name='dorsaljugador',
        ),
    ]