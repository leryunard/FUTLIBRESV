# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Competencia(models.Model):
    idcompetencia = models.IntegerField(db_column='IDCOMPETENCIA', primary_key=True)  # Field name made lowercase.
    idganador = models.ForeignKey('Ganador', models.DO_NOTHING, db_column='IDGANADOR', blank=True, null=True)  # Field name made lowercase.
    nombrecompetencia = models.CharField(db_column='NOMBRECOMPETENCIA', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'competencia'


class Conforma(models.Model):
    idrol = models.OneToOneField('Rol', models.DO_NOTHING, db_column='IDROL', primary_key=True)  # Field name made lowercase.
    idpermiso = models.ForeignKey('Permiso', models.DO_NOTHING, db_column='IDPERMISO')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'conforma'
        unique_together = (('idrol', 'idpermiso'),)


class Define(models.Model):
    idestadistica = models.OneToOneField('Estadistica', models.DO_NOTHING, db_column='IDESTADISTICA', primary_key=True)  # Field name made lowercase.
    idpartido = models.ForeignKey('Partido', models.DO_NOTHING, db_column='IDPARTIDO')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'define'
        unique_together = (('idestadistica', 'idpartido'),)


class Detallenoticia(models.Model):
    iddetalle = models.IntegerField(db_column='IDDETALLE', primary_key=True)  # Field name made lowercase.
    idnoticia = models.ForeignKey('Noticia', models.DO_NOTHING, db_column='IDNOTICIA', blank=True, null=True)  # Field name made lowercase.
    descripcionnoticia = models.CharField(db_column='DESCRIPCIONNOTICIA', max_length=255)  # Field name made lowercase.
    fechanoticia = models.DateField(db_column='FECHANOTICIA')  # Field name made lowercase.
    imagennoticia = models.ImageField(upload_to='imagenes/', verbose_name="IMAGENNOTICIA", null=False, blank=False)

    # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'detallenoticia'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Equipo(models.Model):
    idequipo = models.IntegerField(db_column='IDEQUIPO', primary_key=True)  # Field name made lowercase.
    nombreequipo = models.CharField(db_column='NOMBREEQUIPO', max_length=255)  # Field name made lowercase.
    yearfundacion = models.CharField(db_column='YEARFUNDACION', max_length=255)  # Field name made lowercase.
    estadioequipo = models.CharField(db_column='ESTADIOEQUIPO', max_length=255)  # Field name made lowercase.
    ciudadequipo = models.CharField(db_column='CIUDADEQUIPO', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'equipo'


class Estadistica(models.Model):
    idestadistica = models.IntegerField(db_column='IDESTADISTICA', primary_key=True)  # Field name made lowercase.
    rimtopartido = models.CharField(db_column='RIMTOPARTIDO', max_length=255)  # Field name made lowercase.
    tirosapuerta = models.CharField(db_column='TIROSAPUERTA', max_length=255)  # Field name made lowercase.
    pases = models.CharField(db_column='PASES', max_length=255)  # Field name made lowercase.
    regates = models.CharField(db_column='REGATES', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'estadistica'


class FormaParte(models.Model):
    idjugador = models.OneToOneField('Jugador', models.DO_NOTHING, db_column='IDJUGADOR', primary_key=True)  # Field name made lowercase.
    idequipo = models.ForeignKey(Equipo, models.DO_NOTHING, db_column='IDEQUIPO')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'forma_parte'
        unique_together = (('idjugador', 'idequipo'),)


class Ganador(models.Model):
    idganador = models.IntegerField(db_column='IDGANADOR', primary_key=True)  # Field name made lowercase.
    idcompetencia = models.ForeignKey(Competencia, models.DO_NOTHING, db_column='IDCOMPETENCIA', blank=True, null=True)  # Field name made lowercase.
    nombreganador = models.CharField(db_column='NOMBREGANADOR', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ganador'


class Juega(models.Model):
    idpartido = models.OneToOneField('Partido', models.DO_NOTHING, db_column='IDPARTIDO', primary_key=True)  # Field name made lowercase.
    idequipo = models.ForeignKey(Equipo, models.DO_NOTHING, db_column='IDEQUIPO')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'juega'
        unique_together = (('idpartido', 'idequipo'),)


class Jugador(models.Model):
    nombrejugador = models.CharField(db_column='NOMBREJUGADOR', max_length=255)  # Field name made lowercase.
    fechanacimiento = models.CharField(db_column='FECHANACIMIENTO', max_length=255)  # Field name made lowercase.
    dorsaljugador = models.IntegerField(db_column='DORSALJUGADOR')  # Field name made lowercase.
    posicionjugador = models.CharField(db_column='POSICIONJUGADOR', max_length=255)  # Field name made lowercase.
    idjugador = models.IntegerField(db_column='IDJUGADOR', primary_key=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'jugador'


class Noticia(models.Model):
    idnoticia = models.IntegerField(db_column='IDNOTICIA', primary_key=True)  # Field name made lowercase.
    idcompetencia = models.ForeignKey(Competencia, models.DO_NOTHING, db_column='IDCOMPETENCIA', blank=True, null=True)  # Field name made lowercase.
    idusuario = models.ForeignKey('Usuario', models.DO_NOTHING, db_column='IDUSUARIO', blank=True, null=True)  # Field name made lowercase.
    tiponoticia = models.CharField(db_column='TIPONOTICIA', max_length=255)  # Field name made lowercase.
    nombrenoticia = models.CharField(db_column='NOMBRENOTICIA', max_length=255)  # Field name made lowercase.
    subtitulonoticia = models.CharField(db_column='SUBTITULONOTICIA', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'noticia'


class Participa(models.Model):
    idequipo = models.OneToOneField(Equipo, models.DO_NOTHING, db_column='IDEQUIPO', primary_key=True)  # Field name made lowercase.
    idcompetencia = models.ForeignKey(Competencia, models.DO_NOTHING, db_column='IDCOMPETENCIA')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'participa'
        unique_together = (('idequipo', 'idcompetencia'),)


class Partido(models.Model):
    idpartido = models.IntegerField(db_column='IDPARTIDO', primary_key=True)  # Field name made lowercase.
    fechapartido = models.DateField(db_column='FECHAPARTIDO')  # Field name made lowercase.
    golescasa = models.IntegerField(db_column='GOLESCASA')  # Field name made lowercase.
    golesfuera = models.IntegerField(db_column='GOLESFUERA')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'partido'


class Permiso(models.Model):
    idpermiso = models.IntegerField(db_column='IDPERMISO', primary_key=True)  # Field name made lowercase.
    estadopermiso = models.IntegerField(db_column='ESTADOPERMISO')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'permiso'


class Posee(models.Model):
    idrol = models.OneToOneField('Rol', models.DO_NOTHING, db_column='IDROL', primary_key=True)  # Field name made lowercase.
    idusuario = models.ForeignKey('Usuario', models.DO_NOTHING, db_column='IDUSUARIO')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'posee'
        unique_together = (('idrol', 'idusuario'),)


class Rol(models.Model):
    idrol = models.IntegerField(db_column='IDROL', primary_key=True)  # Field name made lowercase.
    tiporol = models.CharField(db_column='TIPOROL', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'rol'


class Usuario(models.Model):
    idusuario = models.IntegerField(db_column='IDUSUARIO', primary_key=True)  # Field name made lowercase.
    nombreusuario = models.CharField(db_column='NOMBREUSUARIO', max_length=255)  # Field name made lowercase.
    correousuario = models.CharField(db_column='CORREOUSUARIO', max_length=255)  # Field name made lowercase.
    passwordusuario = models.CharField(db_column='PASSWORDUSUARIO', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'usuario'
