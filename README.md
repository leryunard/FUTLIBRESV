# FUTLIBRESV
Es un proyecto para la asignatura TPI115, se trata de un sitio web de noticias deportivas de última hora que ofrece una experiencia totalmente personalizada para el usuario.

FUTLIBRESV: Aquí se encuentran los archivos de configuracion del proyecto.

Autenticacion: Dedicada a la seguridad y el Login del administrador de la página.

Administración: Acá se guardará la información sobre el administrador y sus operaciones.

Internacionales: Donde se guarda la información pertinente a competiciones internacionales de fútbol.

Ligas domésticas: Donde se guarda la información pertinente a competiciones domésticas de fútbol, como ligas nacionales de equipos.

Selecciones: Donde se guarda la información pertinente a selecciones nacionales de fútbol y sus competiciones.

webApp: Mostrará las páginas como el home y cualquier otra cuya categoría sea general o compartida.

-----------------------------------------------------------------------------------------------
...............................................................................................
--par instalar todas las librerias y modulos necesarios usar "pip install -r requirements.txt"

-----------------------------------------------------------------------------------------------
->Selecciones/mundial

Usa las tablas de la base de datos: equipo, noticia, detallenoticia
En la tabla de equipo se a añadido una columna nueva llemada IDTipoEquipo que cuando es de "3" se refiere a que es un equipo del mundial y saldra en las vistas de la app 

En la tabla de noticias en la columna tiponoticia, el valor debe de ser de "Mundial" para que la app carge las noticias

Las imagenes son cargadas externamente con el link de la imagen en sus respectivas columnas de las tablas

-----------------------------------------------------------------------------------------------


