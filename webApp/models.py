# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Competencia(models.Model):
    idcompetencia = models.IntegerField(db_column='IDCOMPETENCIA', primary_key=True)  # Field name made lowercase.
    idganador = models.ForeignKey('Ganador', models.DO_NOTHING, db_column='IDGANADOR', blank=True,
                                  null=True)  # Field name made lowercase.
    nombrecompetencia = models.CharField(db_column='NOMBRECOMPETENCIA', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'competencia'


class Conforma(models.Model):
    idrol = models.OneToOneField('Rol', models.DO_NOTHING, db_column='IDROL',
                                 primary_key=True)  # Field name made lowercase.
    idpermiso = models.ForeignKey('Permiso', models.DO_NOTHING, db_column='IDPERMISO')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'conforma'
        unique_together = (('idrol', 'idpermiso'),)


class Define(models.Model):
    idestadistica = models.OneToOneField('Estadistica', models.DO_NOTHING, db_column='IDESTADISTICA',
                                         primary_key=True)  # Field name made lowercase.
    idpartido = models.ForeignKey('Partido', models.DO_NOTHING, db_column='IDPARTIDO')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'define'
        unique_together = (('idestadistica', 'idpartido'),)


class Detallenoticia(models.Model):
    iddetalle = models.IntegerField(db_column='IDDETALLE', primary_key=True)  # Field name made lowercase.
    idnoticia = models.ForeignKey('Noticia', models.DO_NOTHING, db_column='IDNOTICIA', blank=True,
                                  null=True)  # Field name made lowercase.
    descripcionnoticia = models.CharField(db_column='DESCRIPCIONNOTICIA', max_length=9999)  # Field name made lowercase.
    fechanoticia = models.DateField(db_column='FECHANOTICIA')  # Field name made lowercase.
    urlimagen = models.CharField(db_column='URLIMAGEN', max_length=255)  

    class Meta:
        managed = True
        db_table = 'detallenoticia'


class Equipo(models.Model):
    idequipo = models.IntegerField(db_column='IDEQUIPO', primary_key=True)  # Field name made lowercase.
    nombreequipo = models.CharField(db_column='NOMBREEQUIPO', max_length=255)  # Field name made lowercase.
    yearfundacion = models.CharField(db_column='YEARFUNDACION', max_length=255)  # Field name made lowercase.
    estadioequipo = models.CharField(db_column='ESTADIOEQUIPO', max_length=255)  # Field name made lowercase.
    ciudadequipo = models.CharField(db_column='CIUDADEQUIPO', max_length=255)  # Field name made lowercase.
    idTipoEquipo = models.IntegerField(db_column='IDTIPOEQUIPO')  # Field name made lowercase.
    urllogo = models.CharField(db_column='URLLOGO', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'equipo'


class Estadistica(models.Model):
    idestadistica = models.IntegerField(db_column='IDESTADISTICA', primary_key=True)  # Field name made lowercase.
    rimtopartido = models.CharField(db_column='RIMTOPARTIDO', max_length=255)  # Field name made lowercase.
    tirosapuerta = models.CharField(db_column='TIROSAPUERTA', max_length=255)  # Field name made lowercase.
    pases = models.CharField(db_column='PASES', max_length=255)  # Field name made lowercase.
    regates = models.CharField(db_column='REGATES', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'estadistica'


class FormaParte(models.Model):
    idjugador = models.OneToOneField('Jugador', models.DO_NOTHING, db_column='IDJUGADOR',
                                     primary_key=True)  # Field name made lowercase.
    idequipo = models.ForeignKey(Equipo, models.DO_NOTHING, db_column='IDEQUIPO')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'forma_parte'
        unique_together = (('idjugador', 'idequipo'),)


class Ganador(models.Model):
    idganador = models.IntegerField(db_column='IDGANADOR', primary_key=True)  # Field name made lowercase.
    idcompetencia = models.ForeignKey(Competencia, models.DO_NOTHING, db_column='IDCOMPETENCIA', blank=True,
                                      null=True)  # Field name made lowercase.
    nombreganador = models.CharField(db_column='NOMBREGANADOR', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'ganador'


class Juega(models.Model):
    idpartido = models.OneToOneField('Partido', models.DO_NOTHING, db_column='IDPARTIDO',
                                     primary_key=True)  # Field name made lowercase.
    idequipo = models.ForeignKey(Equipo, models.DO_NOTHING, db_column='IDEQUIPO')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'juega'
        unique_together = (('idpartido', 'idequipo'),)


class Jugador(models.Model):
    nombrejugador = models.CharField(db_column='NOMBREJUGADOR', max_length=255)  # Field name made lowercase.
    fechanacimiento = models.CharField(db_column='FECHANACIMIENTO', max_length=255)  # Field name made lowercase.
    dorsaljugador = models.IntegerField(db_column='DORSALJUGADOR')  # Field name made lowercase.
    posicionjugador = models.CharField(db_column='POSICIONJUGADOR', max_length=255)  # Field name made lowercase.
    idjugador = models.IntegerField(db_column='IDJUGADOR', primary_key=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'jugador'


class Noticia(models.Model):
    idnoticia = models.IntegerField(db_column='IDNOTICIA', primary_key=True)  # Field name made lowercase.
    idcompetencia = models.ForeignKey(Competencia, models.DO_NOTHING, db_column='IDCOMPETENCIA', blank=True,
                                      null=True)  # Field name made lowercase.
    idusuario = models.ForeignKey('Usuario', models.DO_NOTHING, db_column='IDUSUARIO', blank=True,
                                  null=True)  # Field name made lowercase.
    tiponoticia = models.CharField(db_column='TIPONOTICIA', max_length=255)  # Field name made lowercase.
    nombrenoticia = models.CharField(db_column='NOMBRENOTICIA', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'noticia'


class Participa(models.Model):
    idequipo = models.OneToOneField(Equipo, models.DO_NOTHING, db_column='IDEQUIPO',
                                    primary_key=True)  # Field name made lowercase.
    idcompetencia = models.ForeignKey(Competencia, models.DO_NOTHING,
                                      db_column='IDCOMPETENCIA')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'participa'
        unique_together = (('idequipo', 'idcompetencia'),)


class Partido(models.Model):
    idpartido = models.IntegerField(db_column='IDPARTIDO', primary_key=True)  # Field name made lowercase.
    fechapartido = models.DateField(db_column='FECHAPARTIDO')  # Field name made lowercase.
    golescasa = models.IntegerField(db_column='GOLESCASA')  # Field name made lowercase.
    golesfuera = models.IntegerField(db_column='GOLESFUERA')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'partido'


class Permiso(models.Model):
    idpermiso = models.IntegerField(db_column='IDPERMISO', primary_key=True)  # Field name made lowercase.
    estadopermiso = models.IntegerField(db_column='ESTADOPERMISO')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'permiso'


class Posee(models.Model):
    idrol = models.OneToOneField('Rol', models.DO_NOTHING, db_column='IDROL',
                                 primary_key=True)  # Field name made lowercase.
    idusuario = models.ForeignKey('Usuario', models.DO_NOTHING, db_column='IDUSUARIO')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'posee'
        unique_together = (('idrol', 'idusuario'),)


class Rol(models.Model):
    idrol = models.IntegerField(db_column='IDROL', primary_key=True)  # Field name made lowercase.
    tiporol = models.CharField(db_column='TIPOROL', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'rol'


class Usuario(models.Model):
    idusuario = models.IntegerField(db_column='IDUSUARIO', primary_key=True)  # Field name made lowercase.
    nombreusuario = models.CharField(db_column='NOMBREUSUARIO', max_length=255)  # Field name made lowercase.
    correousuario = models.CharField(db_column='CORREOUSUARIO', max_length=255)  # Field name made lowercase.
    passwordusuario = models.CharField(db_column='PASSWORDUSUARIO', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'usuario'
