# Generated by Django 4.1.3 on 2022-11-28 19:24

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('webApp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='detallenoticia',
            name='idequipo',
            field=models.ForeignKey(blank=True, db_column='IDEQUIPO', null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='webApp.equipo'),
        ),
    ]
