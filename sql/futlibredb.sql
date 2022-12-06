-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.25-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla futlibredb.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.auth_group: ~0 rows (aproximadamente)

-- Volcando estructura para tabla futlibredb.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`) USING BTREE,
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.auth_group_permissions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla futlibredb.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.auth_permission: ~132 rows (aproximadamente)
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add auth group', 7, 'add_authgroup'),
	(26, 'Can change auth group', 7, 'change_authgroup'),
	(27, 'Can delete auth group', 7, 'delete_authgroup'),
	(28, 'Can view auth group', 7, 'view_authgroup'),
	(29, 'Can add auth group permissions', 8, 'add_authgrouppermissions'),
	(30, 'Can change auth group permissions', 8, 'change_authgrouppermissions'),
	(31, 'Can delete auth group permissions', 8, 'delete_authgrouppermissions'),
	(32, 'Can view auth group permissions', 8, 'view_authgrouppermissions'),
	(33, 'Can add auth permission', 9, 'add_authpermission'),
	(34, 'Can change auth permission', 9, 'change_authpermission'),
	(35, 'Can delete auth permission', 9, 'delete_authpermission'),
	(36, 'Can view auth permission', 9, 'view_authpermission'),
	(37, 'Can add auth user', 10, 'add_authuser'),
	(38, 'Can change auth user', 10, 'change_authuser'),
	(39, 'Can delete auth user', 10, 'delete_authuser'),
	(40, 'Can view auth user', 10, 'view_authuser'),
	(41, 'Can add auth user groups', 11, 'add_authusergroups'),
	(42, 'Can change auth user groups', 11, 'change_authusergroups'),
	(43, 'Can delete auth user groups', 11, 'delete_authusergroups'),
	(44, 'Can view auth user groups', 11, 'view_authusergroups'),
	(45, 'Can add auth user user permissions', 12, 'add_authuseruserpermissions'),
	(46, 'Can change auth user user permissions', 12, 'change_authuseruserpermissions'),
	(47, 'Can delete auth user user permissions', 12, 'delete_authuseruserpermissions'),
	(48, 'Can view auth user user permissions', 12, 'view_authuseruserpermissions'),
	(49, 'Can add django admin log', 13, 'add_djangoadminlog'),
	(50, 'Can change django admin log', 13, 'change_djangoadminlog'),
	(51, 'Can delete django admin log', 13, 'delete_djangoadminlog'),
	(52, 'Can view django admin log', 13, 'view_djangoadminlog'),
	(53, 'Can add django content type', 14, 'add_djangocontenttype'),
	(54, 'Can change django content type', 14, 'change_djangocontenttype'),
	(55, 'Can delete django content type', 14, 'delete_djangocontenttype'),
	(56, 'Can view django content type', 14, 'view_djangocontenttype'),
	(57, 'Can add django migrations', 15, 'add_djangomigrations'),
	(58, 'Can change django migrations', 15, 'change_djangomigrations'),
	(59, 'Can delete django migrations', 15, 'delete_djangomigrations'),
	(60, 'Can view django migrations', 15, 'view_djangomigrations'),
	(61, 'Can add django session', 16, 'add_djangosession'),
	(62, 'Can change django session', 16, 'change_djangosession'),
	(63, 'Can delete django session', 16, 'delete_djangosession'),
	(64, 'Can view django session', 16, 'view_djangosession'),
	(65, 'Can add competencia', 17, 'add_competencia'),
	(66, 'Can change competencia', 17, 'change_competencia'),
	(67, 'Can delete competencia', 17, 'delete_competencia'),
	(68, 'Can view competencia', 17, 'view_competencia'),
	(69, 'Can add equipo', 18, 'add_equipo'),
	(70, 'Can change equipo', 18, 'change_equipo'),
	(71, 'Can delete equipo', 18, 'delete_equipo'),
	(72, 'Can view equipo', 18, 'view_equipo'),
	(73, 'Can add estadistica', 19, 'add_estadistica'),
	(74, 'Can change estadistica', 19, 'change_estadistica'),
	(75, 'Can delete estadistica', 19, 'delete_estadistica'),
	(76, 'Can view estadistica', 19, 'view_estadistica'),
	(77, 'Can add jugador', 20, 'add_jugador'),
	(78, 'Can change jugador', 20, 'change_jugador'),
	(79, 'Can delete jugador', 20, 'delete_jugador'),
	(80, 'Can view jugador', 20, 'view_jugador'),
	(81, 'Can add partido', 21, 'add_partido'),
	(82, 'Can change partido', 21, 'change_partido'),
	(83, 'Can delete partido', 21, 'delete_partido'),
	(84, 'Can view partido', 21, 'view_partido'),
	(85, 'Can add permiso', 22, 'add_permiso'),
	(86, 'Can change permiso', 22, 'change_permiso'),
	(87, 'Can delete permiso', 22, 'delete_permiso'),
	(88, 'Can view permiso', 22, 'view_permiso'),
	(89, 'Can add rol', 23, 'add_rol'),
	(90, 'Can change rol', 23, 'change_rol'),
	(91, 'Can delete rol', 23, 'delete_rol'),
	(92, 'Can view rol', 23, 'view_rol'),
	(93, 'Can add usuario', 24, 'add_usuario'),
	(94, 'Can change usuario', 24, 'change_usuario'),
	(95, 'Can delete usuario', 24, 'delete_usuario'),
	(96, 'Can view usuario', 24, 'view_usuario'),
	(97, 'Can add noticia', 25, 'add_noticia'),
	(98, 'Can change noticia', 25, 'change_noticia'),
	(99, 'Can delete noticia', 25, 'delete_noticia'),
	(100, 'Can view noticia', 25, 'view_noticia'),
	(101, 'Can add ganador', 26, 'add_ganador'),
	(102, 'Can change ganador', 26, 'change_ganador'),
	(103, 'Can delete ganador', 26, 'delete_ganador'),
	(104, 'Can view ganador', 26, 'view_ganador'),
	(105, 'Can add detallenoticia', 27, 'add_detallenoticia'),
	(106, 'Can change detallenoticia', 27, 'change_detallenoticia'),
	(107, 'Can delete detallenoticia', 27, 'delete_detallenoticia'),
	(108, 'Can view detallenoticia', 27, 'view_detallenoticia'),
	(109, 'Can add posee', 28, 'add_posee'),
	(110, 'Can change posee', 28, 'change_posee'),
	(111, 'Can delete posee', 28, 'delete_posee'),
	(112, 'Can view posee', 28, 'view_posee'),
	(113, 'Can add participa', 29, 'add_participa'),
	(114, 'Can change participa', 29, 'change_participa'),
	(115, 'Can delete participa', 29, 'delete_participa'),
	(116, 'Can view participa', 29, 'view_participa'),
	(117, 'Can add juega', 30, 'add_juega'),
	(118, 'Can change juega', 30, 'change_juega'),
	(119, 'Can delete juega', 30, 'delete_juega'),
	(120, 'Can view juega', 30, 'view_juega'),
	(121, 'Can add forma parte', 31, 'add_formaparte'),
	(122, 'Can change forma parte', 31, 'change_formaparte'),
	(123, 'Can delete forma parte', 31, 'delete_formaparte'),
	(124, 'Can view forma parte', 31, 'view_formaparte'),
	(125, 'Can add define', 32, 'add_define'),
	(126, 'Can change define', 32, 'change_define'),
	(127, 'Can delete define', 32, 'delete_define'),
	(128, 'Can view define', 32, 'view_define'),
	(129, 'Can add conforma', 33, 'add_conforma'),
	(130, 'Can change conforma', 33, 'change_conforma'),
	(131, 'Can delete conforma', 33, 'delete_conforma'),
	(132, 'Can view conforma', 33, 'view_conforma');

-- Volcando estructura para tabla futlibredb.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.auth_user: ~2 rows (aproximadamente)
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$390000$3oOTGGRx8omD2M6Sv5Fyfz$BdkkaGhfF7fIl0qle1mDufg2xzm86E/DRzsQHkeoIDw=', '2022-12-05 21:32:26.213916', 1, 'leo', '', '', '', 1, 1, '2022-12-02 21:36:33.595849'),
	(2, 'pbkdf2_sha256$390000$uqe78HAFOMMysrGK0KTY6B$dVRE486tBuf9DOONT/i1tGYVMdN/m/CU+XQz5noh59s=', NULL, 0, 'Leryunard', '', '', '', 0, 1, '2022-12-02 21:37:49.112538');

-- Volcando estructura para tabla futlibredb.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`) USING BTREE,
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.auth_user_groups: ~0 rows (aproximadamente)

-- Volcando estructura para tabla futlibredb.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`) USING BTREE,
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.auth_user_user_permissions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla futlibredb.competencia
CREATE TABLE IF NOT EXISTS `competencia` (
  `IDCOMPETENCIA` int(11) NOT NULL,
  `NOMBRECOMPETENCIA` varchar(255) NOT NULL,
  `IDGANADOR` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDCOMPETENCIA`) USING BTREE,
  KEY `competencia_IDGANADOR_714974c5_fk_ganador_IDGANADOR` (`IDGANADOR`) USING BTREE,
  CONSTRAINT `competencia_IDGANADOR_714974c5_fk_ganador_IDGANADOR` FOREIGN KEY (`IDGANADOR`) REFERENCES `ganador` (`IDGANADOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.competencia: ~9 rows (aproximadamente)
INSERT INTO `competencia` (`IDCOMPETENCIA`, `NOMBRECOMPETENCIA`, `IDGANADOR`) VALUES
	(1, 'Bundesliga', NULL),
	(2, 'UEFA Champions League', NULL),
	(3, 'Mundial Qatar 2022', NULL),
	(4, 'La Liga', 1),
	(5, 'Premier League', NULL),
	(6, 'Liga Nacional', NULL),
	(7, 'Mundial', NULL),
	(8, 'Copa Libertadores', NULL),
	(9, 'Liga Pepsi', NULL),
	(10, 'Serie A', NULL);

-- Volcando estructura para tabla futlibredb.conforma
CREATE TABLE IF NOT EXISTS `conforma` (
  `IDROL` int(11) NOT NULL,
  `IDPERMISO` int(11) NOT NULL,
  PRIMARY KEY (`IDROL`) USING BTREE,
  UNIQUE KEY `conforma_IDROL_IDPERMISO_a0e3eb4f_uniq` (`IDROL`,`IDPERMISO`) USING BTREE,
  KEY `conforma_IDPERMISO_ff9f900a_fk_permiso_IDPERMISO` (`IDPERMISO`) USING BTREE,
  CONSTRAINT `conforma_IDPERMISO_ff9f900a_fk_permiso_IDPERMISO` FOREIGN KEY (`IDPERMISO`) REFERENCES `permiso` (`IDPERMISO`),
  CONSTRAINT `conforma_IDROL_248e8f4a_fk_rol_IDROL` FOREIGN KEY (`IDROL`) REFERENCES `rol` (`IDROL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.conforma: ~0 rows (aproximadamente)

-- Volcando estructura para tabla futlibredb.define
CREATE TABLE IF NOT EXISTS `define` (
  `IDESTADISTICA` int(11) NOT NULL,
  `IDPARTIDO` int(11) NOT NULL,
  PRIMARY KEY (`IDESTADISTICA`) USING BTREE,
  UNIQUE KEY `define_IDESTADISTICA_IDPARTIDO_2335e3f1_uniq` (`IDESTADISTICA`,`IDPARTIDO`) USING BTREE,
  KEY `define_IDPARTIDO_5857f038_fk_partido_IDPARTIDO` (`IDPARTIDO`) USING BTREE,
  CONSTRAINT `define_IDESTADISTICA_1f6b3046_fk_estadistica_IDESTADISTICA` FOREIGN KEY (`IDESTADISTICA`) REFERENCES `estadistica` (`IDESTADISTICA`),
  CONSTRAINT `define_IDPARTIDO_5857f038_fk_partido_IDPARTIDO` FOREIGN KEY (`IDPARTIDO`) REFERENCES `partido` (`IDPARTIDO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.define: ~0 rows (aproximadamente)

-- Volcando estructura para tabla futlibredb.detallenoticia
CREATE TABLE IF NOT EXISTS `detallenoticia` (
  `IDDETALLE` int(11) NOT NULL,
  `DESCRIPCIONNOTICIA` varchar(9999) NOT NULL,
  `FECHANOTICIA` date NOT NULL,
  `IDNOTICIA` int(11) NOT NULL,
  `URLIMAGEN` varchar(255) NOT NULL,
  `IDEQUIPO` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDDETALLE`) USING BTREE,
  KEY `detallenoticia_IDNOTICIA_7bdf707e_fk_noticia_IDNOTICIA` (`IDNOTICIA`) USING BTREE,
  KEY `detallenoticia_IDEQUIPO_c2906e94_fk_equipo_IDEQUIPO` (`IDEQUIPO`),
  CONSTRAINT `detallenoticia_IDEQUIPO_c2906e94_fk_equipo_IDEQUIPO` FOREIGN KEY (`IDEQUIPO`) REFERENCES `equipo` (`IDEQUIPO`),
  CONSTRAINT `detallenoticia_IDNOTICIA_7bdf707e_fk_noticia_IDNOTICIA` FOREIGN KEY (`IDNOTICIA`) REFERENCES `noticia` (`IDNOTICIA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.detallenoticia: ~37 rows (aproximadamente)
INSERT INTO `detallenoticia` (`IDDETALLE`, `DESCRIPCIONNOTICIA`, `FECHANOTICIA`, `IDNOTICIA`, `URLIMAGEN`, `IDEQUIPO`) VALUES
	(0, 'Después del triunfo 5-0 de la Selección Argentina ante Emiratos Árabes, la última prueba antes del debut en el Mundial de Qatar 2022, el técnico Lionel Scaloni encendió las alarmas con una de sus declaraciones en la que abrió la posibilidad de modificar la lista de 26 convocados en caso de que algún jugador esté lesionado. Y así fue: en primer lugar, Nico González fue desafectado y su lugar lo ocupó Ángel Correa; en segundo lugar, se anunció la baja de Joaquín Correa. "Tenemos días para definir el tema de la lista. Por buena o mala suerte tenemos la posibilidad de cambiar, ojalá que no", dijo y despertó algunas dudas en un público que ni siquiera había considerado esa chance. ¿Alguno de los jugadores que no participaron de la convocatoria tiene una lesión que no está sobre la mesa? La respuesta llegó horas después con la noticia de que el hombre de Fiorentina abandonaría la concentración para dejarle su lugar a Angelito. Por otro lado, en las primeras horas de la mañana del jueves, se especulaba con que Joaquín Correa podía ser el jugador que estaba en duda y, por la noche de Qatar, la cuenta oficial de la Selección anunció su baja. El Tucu arrastraba una molestia en el tendón de su rodilla izquierda y, aunque fue sumando minutos en Inter desde el 5 de octubre en adelante, no superaba la media hora de rodaje por encuentro. Al terminar el amistoso contra Emiratos Árabes, donde ingresó en el inicio del segundo tiempo en lugar de Marcos Acuña, manifestó que sentía dolor. Entre los jugadores que el cuerpo técnico está monitoreando por precaución está Cristian Romero, que tuvo una distension en el gemelo derecho y, aunque podrían haberlo exigido en el amistoso, hubo un guiño por parte del seleccionado al no arriesgarlo. Tottenham le había permitido priorizar su recuperación pensando en la Copa del Mundo y prescindió de él en los últimos cinco encuentros. Entonces, siguiendo esa línea, hubiera sido contradictorio arriesgarlo en un partido de preparación a menos de una semana del debut. Paulo Dybala era una de las principales dudas del cuerpo técnico, al menos de puertas para afuera, porque arrastraba una lesión y no estaba en actividad. En la última fecha en la Serie A, La Joya se exigió ante Torino, pero no estuvo siquiera entre los suplentes ante Emiratos. Por su parte, Alejandro Papu Gómez fue preservado mientras se recupera de un golpe en la rodilla, pero no tendría una molestia que ponga en riesgo su futuro en Qatar. Otro de los "tocados" en el plantel de Lionel Scaloni es Marcos Acuña, que todavía no recuperó el ritmo tras una pubalgia que lo aqueja hace más de un año. Argentina debuta ante Arabia Saudita el martes a las 7 de la mañana, en el Grupo C que comparte también con Polonia y México.', '2022-12-01', 0, 'https://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2022%2F1117%2Fr1092331_1213x682_16%2D9.jpg&w=570&format=jpg', 0),
	(1, 'La nómina de atacantes de Brasil para el Mundial 2022 \'mete miedo\': Neymar, Vinicius, Rodrygo, Richarlison, Gabriel Jesus, Raphinha, Antony, Martinelli y Pedro.\r\n\r\nSin embargo, no es oro todo lo que reluce. La \'Seleçao\' que lanzó al mundo a Jorginho, Cafú, Marcelo, Maicon, Roberto Carlos, Carlos Alberto, Nilton Santos, Branco...\'cojea\' en los laterales.\r\n\r\nLa convocatoria de Dani Alves y Danilo para el lateral derecho y de Alex Telles y Alex Sandro en el izquierdo es lo que más críticas ha generado. "Por primera vez, el país que ha fabricado los mejores laterales de la historia, va a un Mundial con laterales muy flojos", asegura el periodista Marcos Uchoa.', '2022-12-02', 1, 'https://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2022%2F1117%2Fr1092331_1213x682_16%2D9.jpg&w=570&format=jpg', 1),
	(2, 'En Catar desde la noche del viernes, el primer entrenamiento de la selección portuguesa en Al Shahania, al oeste de Doha, devolvió al grupo a Cristiano Ronaldo, fuera del último amistoso y la goleada por 4-0 contra Nigeria por un cuadro digestivo y reincorporado al trabajo este sábado, entre las turbulencias que han provocado sus declaraciones sobre el Manchester United y la incógnita sobre su futuro más allá del Mundial de Qatar 2022.\n\nEl astro luso, siempre el centro de atención, es ahora también el foco de la polémica, por las declaraciones hacia su club actual, mientras encara la recta final de su selección hacia el estreno del próximo jueves en Catar frente a Ghana, cuando igualará al mexicano Rafael Márquez como el futbolista con más Mundiales de la historia, con cinco (también alcanzará esa cifra en esta edición Lionel Messi), mientras su ciclo en el United está agotado, reducido a 10 partidos sólo de titular y tres goles este curso.\n\n"Sus declaraciones no tienen nada que ver con la selección", contestó Bernardo Silva, su compañero en el equipo portugués y su rival en el Manchester City. "Tampoco tienen nada que ver conmigo. Es un tema de Cristiano", abundó el centrocampista, que no ve "ningún ambiente extraño" entre el atacante y Bruno Fernandes, con el que juega en el United, cuando Cristiano Ronaldo saludó al media punta.', '2022-11-19', 2, 'https://s.yimg.com/ny/api/res/1.2/lR6lWcoyQOvqHX4nxPtgFQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTY0MA--/https://media.zenfs.com/es/efe.es/b9086c95e7776b04e5807705d2eb3422', 2),
	(3, 'El emblema del equipo se realizó estudios que detectaron un desgarro y la federación de Francia informó que fue desafectado del plantel\n\nKarim Benzema no jugará el Mundial de Qatar. Así lo confirmó la selección de Francia después de que el delantero se hiciera estudios por un dolor en su pierna izquierda luego del último entrenamiento que le detectaron un desgarro en la pierna izquierda. “Lesión en el cuádriceps del muslo izquierdo, Karim Benzema se ve obligado a renunciar a participar en la Copa del Mundo. Todo el equipo comparte la tristeza de Karim y le desea una pronta recuperación”, señala el posteo publicado por el combinado europeo.', '2022-11-19', 3, 'https://www.infobae.com/new-resizer/0eVYknjSPFYt8aTe0zavly1-kss=/420x315/filters:format(webp):quality(85)/cloudfront-us-east-1.images.arcpublishing.com/infobae/DKFELUWYA5QC6N6YA4K5CMD4MA.jpg', 3),
	(4, 'El Flamengo cumplió los pronósticos y ganó la Copa do Brasil ante el Corinthians, pero lo hizo cogiendo el camino más difícil posible. Después del 0-0 en la ida en Sao Paulo, los rubronegros solo necesitaban una victoria simple, pero acabaron empatando (1-1) y tuvieron que esperar a una agónica tanda de penaltis, en la que se impusieron por 6-5 gracias a los fallos de Fagner y Mateus Vital.', '2022-11-22', 4, 'https://estaticos-cdn.sport.es/clip/4e6ce2f2-f3f1-4411-a0a5-8659b1ec81ee_media-libre-aspect-ratio_default_0.jpg', 6),
	(5, 'Serán 47 equipos los que competirán en la Copa Libertadores 2023, provenientes de 10 países: Argentina, Bolivia, Brasil, Chile, Colombia, Ecuador, Paraguay, Perú, Uruguay y Venezuela.\\r\\n\\r\\nLos 47 obtendrán su clasificación a través de los criterios establecidos por sus respectivas entidades nacionales. Brasil tendrá 7 cupos disponibles, Argentina tendrá 6 cupos y el resto de los países (Bolivia, Chile, Colombia, Ecuador, Paraguay, Perú, Uruguay y Venezuela) conservarán los 4 cupos disponibles. Los dos cupos restantes corresponden al campeón de la Copa Libertadores 2022 y al campeón de la Copa Sudamericana 2022.', '2022-11-21', 5, 'https://dosisfutbolera.com/wp-content/uploads/2022/07/copa-libertadores_0.jpg', NULL),
	(6, 'Yo creo que cuando muchas veces se hace la despedida de un jugador, como la de Francescoli o la de Ponzio, por la edad que tienen uno se está despidiendo del jugador para siempre. Cuando uno se despide como director técnico, se despide de una etapa. Ojalá que volvamos a tener un Marcelo Gallardo director técnico de River, si no me toca a mí que sea para el que venga\\", declaró Jorge Brito en un diálogo con ESPN.', '2022-11-22', 6, 'https://media.tycsports.com/files/2022/10/14/492764/jorge-brito-y-marcelo-gallardo_w862.webp', 5),
	(7, 'Boca es el nuevo campeón del fútbol argentino, revalidando el título que ya logró en la pasada temporada. La Liga de Boca llegó de una manera increíble.\\r\\n\\r\\nLa Liga se jugaba en dos canchas. En el minuto 89 de ambos partidos, y con Boca siendo campeón momentáneo, pues llegaba a la última jornada con un punto arriba, se vino la jugada decisiva.\\r\\n\\r\\nRacing y River empataban 1-1 en el Cilindro e Independiente le empataba a su vez a Boca en La Bombonera. Pero llegó el minuto 90 en el Cilindro. Penalti a favor de Racing, pero el portero de River, el internacional Armani, se lo paró a Jonatan Galván, propiciando el título de... Boca, eterno enemigo de River. Si hubiera marcado Racing, hubiera sido campeón seguramente.', '2023-11-22', 7, 'https://img2.rtve.es/v/6720430/?w=1600', 4),
	(8, 'La Copa Libertadores de América calienta motores y luego del título de Flamengo en la edición 2022, se alista el calendario 2023, en el cual no habrá modificaciones en el formato, por lo que lo primero en planificar fue la realización de las fases 1 y 2.\\r\\n\\r\\nAsí las cosas, conocidos 45 de los equipos clasificados, la CONMEBOL dio a conocer la fecha en que se cumplirá el sorteo de la primera y segunda ronda, recordando que allí se llevarán a cabo once cruces. \\r\\n\\r\\nCOPA LIBERTADORES 2023: FECHA Y HORA DEL SORTEO DE LAS FASES 1 Y 2\\r\\nSe dio a conocer mediante un comunicado que el sorteo para conocer los cruces de las fases 1 y 2 de la Copa Libertadores será el miércoles 21 de diciembre desde las 10:00 de la mañana (de Colombia) y 12 de Paraguay. Asimismo, se cumplirá con el sorteo de la primera fase de la Copa Sudamericana 2023.\\r\\n\\r\\n¿CUÁNTOS EQUIPOS PARTICIPAN EN LA PRIMERA FASE DE LA COPA LIBERTADORES?\\r\\nSeis equipos se cruzarán en la primera ronda de la Copa Libertadores, siendo estos Nacional Potosí (Bolivia), El Nacional (Ecuador), Nacional (Paraguay), Sport Huancayo (Perú), Boston River (Uruguay) y Zamora (Venezuela). De tal forma, habrá tres cruces a ida y vuelta.', '2024-11-22', 8, 'https://www.elgrafico.com.ar/media/cache/pub_news_details_large/media/i/bf/d3/bfd30f71c1c6a5f43fa014eb16b18c4427c96ee4.jpg', NULL),
	(9, 'En las últimas horas se supo a través del entorno del futbolista, quien se encuentra en el exterior de vacaciones, acerca del posible rechazo de la nueva oferta que le hizo el club de la Ribera hace 10 días. De no haber un cambio en la propuesta, el jugador podrá desde enero próximo negociar su ficha al club que elija.\\r\\n\\r\\n\\r\\n\\r\\nFlamengo le habría entregado un contrato muy importante al representante del jugador, Miguel González, por cinco años y muy superior a lo que ofrece Boca.\\r\\n                                                                                                                  \\r\\nPor su parte, Boca le había ofrecido bajar la cláusula de salida y un porcentaje del 30 por ciento para el jugador en una posible venta.\\r\\n\\r\\nPara los próximos días se espera la respuesta oficial del futbolista y también si la oferta del Flamengo se formaliza ahora o para junio del año próximo, cuando Rossi quede libre. Aparte del campeón carioca, Rossi tiene dos ofertas de clubes de la Serie A de Italia, quienes aguardarán su libertad de acción.', '2025-11-22', 9, 'https://www.elgrafico.com.ar/media/cache/pub_news_details_large/media/i/46/06/4606115ace598ba615608638071d280ccc1195cd.jpg', 6),
	(10, 'El ecuatoriano Piero Hincapié cumplió una gran actuación en la victoria 2-0 del Bayer Leverkusen ante el Stuttgart, en la última jornada de la Bundesliga por el Mundial de Qatar 2022.', '2022-11-22', 10, 'https://www.elgrafico.com.ar/media/cache/pub_news_details_large/media/i/31/73/317366ce9216ed5b2d1610e88fba321261f8e526.jfif', 10),
	(11, 'El Barça requerirá a la Federación de Uruguay que cese de forma inmediata el proceso de recuperación al que está sometiendo al jugador Ronald Araujo.\r\n\r\nEl club azulgrana considera que la Asociación Uruguaya de Fútbol (AUF) no está cumpliendo con el acuerdo que el Barça y la federación acordaron antes de que se empezara el Mundial, que el jugador viajaba para participar socialmente en el grupo sudamericano pero que estaría bajo las órdenes de dos fisioterapeutas del FC Barcelona. Por tanto, sería el equipo profesional del Barça el que marcaría las pautas de recuperación del jugador y no a la inversa. Sin embargo, dadas las circunstancias observadas, el FC Barcelona denuncia que:\r\n\r\n1. los fisios del Barça no han podido trabajar y\r\n\r\n2. los de la Federación de Uruguay han acelerado y forzado los parámetros en los que está encabezada la recuperación del jugador, operado hace unos meses por mejor especialista del mundo en la lesión sufrida por Ronald Araujo.\r\n\r\nEn consecuencia, el FC Barcelona sostiene que "dado que se está forzando al jugador, a la vez se está poniendo en grave riesgo la salud del futbolista". En este sentido, desde el club azulgrana dejan claro que "de no atender esta petición que hace el Barça, y dado el incumplimiento del acuerdo pactado con la Federación de Uruguay, el FC Barcelona elevará la situación frente a la FIFA".', '2022-11-23', 11, 'https://phantom-marca.unidadeditorial.es/87cdeea152cde66ca783d95723667722/resize/660/f/webp/assets/multimedia/imagenes/2022/09/24/16640275803310.jpg', 17),
	(12, 'El Mundial de Qatar, recién iniciado, ha confirmado el buen diagnóstico de la estructura deportiva del Real Madrid en lo que a Jude Bellingham se refiere. El medio de Inglaterra ha trasladado a Oriente Medio el brillo que desprende su trayectoria con el Borussia Dortmund en lo que va de campaña 22-23 a nivel de clubes. El anotado el lunes pasado a la República Islámica de Irán fue su décimo gol del curso, sumado a los nueve que ha anotado con el club del Signal Iduna Park. Una producción ofensiva incomparable en la hoja de servicios de un futbolista que también sabe trabajar en la recuperación, lo que, a sus 19 años, le convierte en una de las piezas más codiciadas del mercado europeo y mundial.\r\n\r\nEl Madrid tuvo claro desde el principio que Bellingham era la pieza que faltaba para completar la transición dulce desde la histórica medular formada por Casemiro, Kroos y Modric a la que ya han empezado a dibujar Fede Valverde, Eduardo Camavinga y Aurélien Tchouaméni. Pero el club blanco no está sólo en la pelea. El Liverpool se perfila como el gran rival de la entidad que preside Florentino Pérez en la pelea por lograr el fichaje del internacional inglés. El club de Anfield aún no ha pasado página del caso Tchouaméni, en el que el Madrid se le adelantó por la mano. Por eso, Jurgen Klopp presiona para que la entidad red ponga toda la carne en el asador para lograr el fichaje del futbolista nacido en Stourbridge en 2003. Pero hay más. También el City quiere apuntarse al pulso por Bellingham, que trabó una buena amistad con Erling Haaland durante su etapa en Dortmund. Una baza que el club citizen quiere aprovechar para asentar una posición de fuerza en las negociaciones.', '2022-11-24', 12, 'https://pbs.twimg.com/media/FVOXjydXwAAqJYo.jpg', 18),
	(13, 'El pasado situó al Atlético como el tercer equipo de España, el presente iniciado con la llegada de Simeone al banquillo le catapultó a otra dimensión con una década de gloria deportiva que a su vez permitió el crecimiento institucional y el futuro... ya está aquí, como puede atisbarse en la Ciudad del Deporte que albergará el día a día del equipo y que supone un ejemplo de sostenibilidad. De ahí que este jueves fuera presentada en el Congreso Nacional de Medio Ambiente (CONAMA 2022) celebrado en IFEMA. El presidente Enrique Cerezo y el consejero delegado Miguel Ángel Gil, acompañados del vicepresidente Antonio Alonso, el consejero Óscar Gil y varias Leyendas como Adelardo, Solózabal, Luiz Pereira, Cacho Heredia y Manolo, acudirían a la puesta de largo junto a Borja Carabante, delegado del Área de Gobierno de Medio Ambiente y Movilidad del Ayuntamiento de Madrid, y Alejandro Ayala, presidente de Cívitas, el gran socio del Atlético en su proyecto de sostenibilidad.\r\n\r\n"La Ciudad del Deporte es una iniciativa innovadora para sumarnos al proyecto de Madrid de convertirse en una referencia en los ámbitos del deporte y la sostenibilidad", señalaría Enrique Cerezo antes de aludir al acuerdo con Cívitas. "Va mucho más allá de un patrocinio, se busca desarrollar juntos proyectos sostenibles", añadiría.\r\n\r\n"Estamos trabajando junto al Atlético de Madrid para añadir al proyecto del estadio todos los valores de sostenibilidad de la Agenda 2030. Pondremos todo nuestro empeño para que la Ciudad del Deporte sea un ejemplo a seguir por otras entidades deportivas nacionales e internacionales", refrendaría Alejandro Ayala, presidente de Cívitas.', '2022-11-24', 13, 'https://phantom-marca.unidadeditorial.es/051025ac00c666674bbbf65de1a29fc4/resize/660/f/webp/assets/multimedia/imagenes/2022/11/24/16693119502599.png', 19),
	(14, 'Al Sevilla no le abandonan esos fantasmas que se han apoderado de la actualidad del conjunto nervionense y están dispuesto a acompañarle hasta que el curso finalice. La plantilla que dirige Jorge Sampaoli regresaba en la jornada de ayer a los entrenamientos con un número reducido de profesionales por la alta presencia de miembros del vestuario en el Mundial. Hasta diez. Tras las dudas con la posible continuidad de Papu Gómez y Acuña con la selección de Argentina, solventadas en la primera jornada con la participación de ambos, la mala noticia de la primera jornada no se ha hecho esperar: Thomas Delaney caído lesionado. El centrocampista danés estará unas cuatro semanas de baja por un esguince de rodilla. Evidentemente, no se trata de una lesión de máxima gravedad, puesto que antes de que el balón vuelva a rodar de nuevo en Liga (día 30 de diciembre para el Sevilla), él ya estará a las órdenes de su entrenador, aunque con escaso ritmo competitivo. El problema en su rodilla ha perjudicado altamente otra situación no menos importante en este Sevilla. El club le había colocado al mediocentro el cartel de transferible en el mercado invernal y el Mundial aparecía como el escaparate perfecto para que Delaney mostrase todo aquello que no ha sabido encontrar en la capital de Andalucía. Un fútbol que conjunta físico y técnica, por lo que el propio Sevilla se encaprichó de su figura en la pasada Eurocopa. A este club le sale todo al revés esta temporada.', '2022-11-24', 14, 'https://phantom-marca.unidadeditorial.es/2f07d684ece89af6d509dc2f796daa14/resize/660/f/webp/assets/multimedia/imagenes/2022/11/24/16692836288616.jpg', 20),
	(15, 'Habrá fichajes, grandes salidas y nuevas caras en el Real Madrid que se empieza a cocerse de cara a la temporada 2023/2024. Queda mucho tiempo por delante si, pero estos son los 6 nombres que de más cerca son seguidos por el conjunto blanco ahora mismo.', '2022-11-26', 15, 'https://www.defensacentral.com/userfiles/2022/Nov/25/1060x545/dc20221125t194504198_O.jpg', 18),
	(16, 'Cody Gakpo está siendo una de las sensaciones del Mundial de Qatar con Países Bajos (2 goles en dos partidos) tras completar una gran primera parte de la temporada con el PSV (13 goles y 17 asistencias) y ya tiene a muchos pretendientes llamando a su puerta.\r\n\r\nSegún publica el periodista neerlandés Marco Timmer, el Real Madrid es uno de los últimos clubes en sumarse al interés por el atacante pero quien lleva la delantera es el Manchester United, que podría pagar 50 millones de euros en este mercado de invierno al PSV. Además, hay otros clubes que están detrás de Gakpo, entre ellos el Liverpool y el Bayern de Múnich.', '2022-11-26', 16, 'https://www.mundodeportivo.com/files/image_948_465/uploads/2022/11/25/638130b57b683.jpeg', 14),
	(17, 'La piel envolvente que cubrirá el exterior del Nuevo Bernabéu toma impulso durante el parón de las competiciones por el Mundial de Qatar. Según nuevobernabeu.com, son ya más de 400 toneladas de lamas las colocadas en varias zonas del exterior del estadio, lo que permite hacerse una idea del aspecto general del estadio a la conclusión de las obras, prevista para el final del verano de 2023.\r\n\r\nPrecisamente la actual pausa en la competición de clubes y los primeros meses del próximo estío son las dos grandes ventanas de actuación previstas en las obras de reforma del estadio madridista, en el que no cesan los trabajos. Con las distintas actuaciones en algunas zonas de grada (lateral este y el sector que hasta la reforma ocupaba la prensa), el club pretende aumentar en unas 7.000 localidades el aforo del estadio de La Castellana para la segunda mitad de la temporada.', '2022-11-26', 17, 'https://phantom-marca.unidadeditorial.es/aa3f7058ef8b5b9dcc9a7a710fdd4aff/resize/660/f/webp/assets/multimedia/imagenes/2022/11/24/16693152813312.jpg', 18),
	(18, 'El estado físico del capitán, de 35 años, provocó un sinfín de rumores luego que se ausentara dos prácticas previas al debut contra los saudíes. El astro del París Saint-Germain arrastra una molestia en el sóleo, según confirmó el departamento de prensa de la Asociación del Fútbol Argentino, días atrás. Sin embargo, esta dolencia de ninguna forma lo dejará afuera del partido ante México. En el mientras tanto, surgen hipótesis del otro lado del mundo. También, referidas a presencias o ausencias. Futuras, rumbo a 2023.', '2022-11-26', 18, 'https://resizer.glanacion.com/resizer/DzFRLMkL3ubi6sv4ZbVeXvQ0GQo=/879x0/filters:format(webp):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/lanacionar/AU4GU2NXLBFBPCIXTUPFC3O7UQ.JPG', 13),
	(19, 'El Ajax se despide de la Champions con un buen sabor de boca tras lograr la victoria ante el Rangers. El conjunto escocés, sin embargo, no ha podido tener peor despedida de la Champions League. No ha conseguido ganar ningún partido y es el equipo con peor diferencia de goles (-20) en la máxima competición europea.', '2022-11-26', 19, 'https://s3-eu-west-1.amazonaws.com/avochoc-safa/wp-content/uploads/2020/04/26082927/Ajax-Amsterdam-1-scaled.jpeg', 14),
	(20, 'La relación entre Kylian Mbappé y el PSG se encuentra completamente rota, aseguran a MARCA fuentes conocedoras de la situación, confirmando de esta manera la noticia adelantada por \'RMC\'. No hay vuelta atrás, insisten a este periódico las mismas personas consultadas. Y para ello aportan otro detalle desconocido hasta hoy: el futbolista ya pidió irse en julio.', '2022-11-26', 20, 'https://phantom-marca.unidadeditorial.es/c1e7bbc7701c0511b1b56e1528ed2bbb/resize/1320/f/jpg/assets/multimedia/imagenes/2021/10/28/16354261173213.jpg', 13),
	(21, 'San Salvador y Santa Ana Municipal disputarán, a partir de este jueves, la final de la primera edición de la Liga Nacional de Fútbol (LNF) Copa Pilsener 2022. El partido de ida se jugará este jueves 17 de noviembre', '2022-11-11', 21, 'https://cdn-pro.elsalvador.com/wp-content/uploads/2022/11/San-Salvador-Santa-Ana-1.jpg', NULL),
	(23, 'Atlético Marte es el segundo equipo que puso sus ojos en la Liga Nacional de Fútbol para encontrar un refuerzo en el ataque.\r\n\r\nDaniel Barrera, goleador del Cabañas FC, se convirtió en la primera alta del equipo marciano', '2022-11-13', 23, 'https://cdn-pro.elsalvador.com/wp-content/uploads/2022/11/Daniel-Barrera-Cabanas-FC-Liga-Nacional-de-Futbol.jpg', NULL),
	(24, 'Intensa y muy emocionante, así se resume el partido de vuelta de la final de la Liga Nacional de Fútbol, que terminó con celebración para el Santa Ana Municipal, al sacar el empate a dos al San Salvador FC.', '2022-11-22', 24, 'https://cdn-pro.elsalvador.com/wp-content/uploads/2022/11/Santa-Ana-Municipal-Campeon-Liga-Nacional.jpg', NULL),
	(26, 'El Águila hizo oficial este lunes su primer fichaje extranjero para afrontar el torneo Clausura 2023, según un comunicado emitido en sus cuentas de redes sociales.\r\n\r\nSe trata del delantero argentino Matías Sen, quien llega procedente del Comerciantes Unidos de la segunda división de Perú. El atacante de 31 años fue formado en el Newell\'s Old Boys, y ha realizado la mayor parte de su carrera en el fútbol peruano.\r\n\r\nCon la llegada de Sen, los emplumados suman su segundo refuerzo para el próximo torneo. Previamente llegó el defensa salvadoreño Ronald Rondríguez tras su paso por la USL.\r\n', '2022-11-21', 26, 'https://www.elgrafico.com/__export/1669076562670/sites/prensagrafica/img/2022/11/21/figzko0x0aabt1x_crop1669076561794.jpg_525981578.jpg', 22),
	(27, 'Luego de la sorpresiva eliminación de Alianza en los octavos de final, rompiendo con una racha de seis años diciendo presente en la final, mucho se especuló sobre la salida de algunos jugadores fundamentales en el equipo, pero el presidente, Pedro Hernández, lo desmintió  este jueves 17 de noviembre en conferencia de prensa.  \r\n\r\nMarvin Monterroza y Narciso Orellana aún tienen contrato por seis meses con Alianza, y asegura que existe un acuerdo de palabra con ambos para que continúen vinculados al club por tres años.\r\n\r\n“Con Marvin ya tenemos un acuerdo de renovación de palabra; nos reunimos hace dos semanas con él y el lunes lo hicimos con Narciso y, obviamente, la mentalidad de ellos en ningún momento está por salir de las filas de Alianza”, aclaró Hernández.\r\n\r\nSegún el dirigente, ambos jugadores le han manifestado “que su carrera está en Alianza, y que no necesitan ir a probar nada a otro club, a pesar de que les puedan mejorar económicamente las ofertas en otra institución”.\r\n\r\n“Yo creo que el dinero ya no es un motivo para ellos. Con ambos jugadores tenemos un acuerdo de palabra para extensión de contrato por tres años más”, manifestó.\r\n\r\nAdemás, la llegada del profesor Eduardo Lara les da otra motivación, pues “los dos mantuvieron una buena relación con él en la selección nacional”.  ', '2022-11-17', 27, 'https://www.elgrafico.com/__export/1668716844879/sites/prensagrafica/img/2022/11/17/narciso_crop1668716843655.jpg_525981578.jpg', 23),
	(28, 'Tras unas fuertes declaraciones de Eugenio Calderón en El Gráfico TV dirigidas a Juan Pablo Herrera, presidente del Firpo, el dirigente pampero le respondió a Calderón acusando que "quién es él para decirme que me retire" tal como lo dijo el panelista en la emisión del pasado miércoles. La semana pasada y tras unas declaraciones del directivo, el analista expusó que Juan Pablo debe hacerle un favor al fútbol nacional y salirse del ámbito porque ya ha hecho suficiente y que ha sido parte de las personas que se están acabando el balompié salvadoreño.\r\n\r\nEn un programa del oriente del país Herrera sacó a relucir las declaraciones de Eugenio. "Tenemos a un señor ahí y diré su nombre: Eugenio Calderón. Él dice que me retire del fútbol nacional, ¿y quién es Eugenio Calderón para mí? Yo nunca lo he saludado, no me interesa porque no me gusta su forma de ser pero lo respeto. Porque él me está diciendo que me retire si nunca le he pedido ni cinco centavos. Lo invitó a que vaya a Firpo y se lo dejó, pero tiene que llevar medio millón".\r\n\r\nEl dirigente dijo que cuánto es el costo de la planilla del equipo y que si no se llega a la final se tienen pérdidas. "La planilla de Firpo que menos ha andado es de 60 a 70 mil dólares. Si usted le suma cinco meses son 350 mil dólares, con 100 mil dólares de patrocinio la directiva tiene que poner 250 mil dólares. Si no se llega a la final se saca una pérdida y así nos pasó a nosotros". \r\n\r\n"Ya se nos olvidó acaso de donde viene Firpo, esto es un proceso no nos podemos poner a la par de Alianza, Águila y FAS cuando nosotros estamos todavía pagando cuestiones que dejó la administración anterior", mencionó Herrera sobre el pasado reciente de Firpo. \r\n\r\n"Que venga a decirme Eugenio Calderón que me retire, ¿cúando le he pedido cinco centavos a él? es como que le diga al presidente de su empresa que quité a Eugenio a cuenta de qué. Tiene que respetarme, nunca lo he saludado ni me interesa pero tiene que respetarme porque él vive del fútbol", recalcó Herrera sobre el panelista de El Gráfico TV.', '2022-10-24', 28, 'https://www.elgrafico.com/__export/1666640843819/sites/prensagrafica/img/2022/10/24/prxximamente_x64x_crop1666640843244.jpg_525981578.jpg', 25),
	(29, 'El futbolista mexicano se consolidó como una de las máximas figuras del FAS en el Apertura 2022 y en la conquista de la 19. Luis Mendoza, mejor conocido como "el Quick" se proclamó como una de las figuras del FAS que conquistó la corona número 19 el pasado domingo 13 de noviembre en el estadio Cuscatlán al ganarle a Jocoro por 2-0.\n\nEl futbolista azteca fue figura al participar en los dos goles del conjunto asociado con los que materializó el nuevo título que lo catapultó aún más como el "Rey de Copas". No obstante, tras disputar 14 encuentros y anotar 3 goles en el certamen, la continuidad del "Quick" no ha sido confirmada por parte de la dirigencia santaneca. ', '2022-11-15', 29, 'https://www.elgrafico.com/__export/1668531867514/sites/prensagrafica/img/2022/11/15/whatsapp_image_2022-11-15_at_10_46_26_am_crop1668531866942.jpeg_525981578.jpeg', 24),
	(30, 'Pep Guardiola elogió el equipo de Luis Enrique y dejó abierta la puerta del Barça en el futuro: “Si debemos reencontrarnos, vendrá, pero de manera natural”.', '2022-11-16', 30, 'https://img.asmedia.epimg.net/resizer/JqTO49z7ZJGl7tlfJVQ7smFhVMw=/736x414/cloudfront-eu-central-1.images.arcpublishing.com/diarioas/3FZKUL452BFAVBJLKEI2OCDMJU.jpg', 26),
	(31, 'La oferta del Al-Nassr se acerca a la que ya le hizo este verano, pero ahora el portugués parece decidido a dar el paso\r\nCristiano Ronaldo está en el mercado. Su ruptura, abrupta al máximo, con el Manchester United, le coloca en un callejón con escasa ms salidas, por no decir, que solamente una, la de abandonar la élite del deporte que le ha hecho grande. El paso atrás es inevitable y todo hace indicar que su destino será el Al-Nassr de Arabia Saudí, un fútbol en crecimiento (bien lo demostró con la victoria ante Argentina) pero lejos de la exigencia competitiva que reclama Cristiano Ronaldo.\r\n\r\n', '2022-11-19', 31, 'https://phantom-marca.unidadeditorial.es/c05a495a18a6bd6ef14b18f825bc6067/resize/660/f/webp/assets/multimedia/imagenes/2022/11/23/16691882203522.jpg', 30),
	(32, 'La Juventus ya no es el equipo vulnerable y repleto de dudas que empezó esta temporada. Los bianconeri ganaron merecidamente y con tranquilidad a la Lazio de Sarri, uno de los mejores conjuntos de esta Serie A, alargando una racha impresionante: seis triunfos consecutivos y todos ellos sin encajar ni un gol.\r\n\r\nEl desastre de la Champions League ya quedó atrás para Allegri, que vivirá un parón tranquilo en el tercer puesto adelantando justo a los romanos, a diez puntos del liderato del Nápoles. Una distancia importante, pero que deja esperanzas para una remontada, sobre todo con el ritmo de las últimas jornadas.\r\n\r\n\r\nEl conjunto de Sarri, sin hombres clave como Lazzari, Zaccagni e Immobile, salió de inicio con el joven Luka Romero en la delantera. Crear ocasiones le costó muchísimo y las únicas señales de peligro llegaban gracias a un Pedro en forma, pero poco acompañado. Justo antes del descanso, entonces, los bianconeri anotaron el gol que puso el partido cuesta abajo con Kean, que, tras una pérdida de Milinkovic-Savic, recibió un pase largo de Rabiot y batió a Provedel con una vaselina desde fuera del área.\r\n\r\nEl punta sentenció la contienda en el arranque de la segunda mitad, aprovechando el rechace del portero tras un potente disparo cruzado de Kostic, que luego dejó el campo por molestias musculares.\r\n\r\nCon el 2-0 en el marcador, los turineses gestionaron la ventaja sin sobresaltos y, en el tramo final, pudieron volver a disfrutar de Chiesa y Di María, que disputaron la última media hora. El italiano está creciendo físicamente y, en el 90′, asistió con un centro raso a Milik, que empujó entre palos el 3-0 final. Señales muy positivas tras un arranque desastroso: la Juventus, con esta victoria, ha superado ya definitivamente su crisis liguera y en enero, salvo sorpresas, podrá contar por fin con todas sus estrellas, Pogba y Vlahovic incluidos. La remontada de Allegri puede seguir.', '2022-11-20', 32, 'https://a.espncdn.com/combiner/i?img=%2Fphoto%2F2022%2F1113%2Fr1090792_1296x729_16%2D9.jpg&w=570&format=jpg', 32),
	(33, 'Rafael Leao se ha convertido en una de las grandes estrellas del AC Milán gracias a un rendimiento de auténtica locura en los dos últimos años, esto ha hecho que muchos grandes clubes se fijen en él, lo que provoca incertidumbre en San Siro. Los rossoneros son conscientes de la importancia del portugués en su plantilla y por eso están tratando de renovar su contrato ofreciéndole un salario de auténtica estrella, pero lamentablemente, esta cantidad se queda lejos de la que podría recibir en otros equipos y el luso no está queriendo firmar.\r\n\r\nComo sabemos desde hace varios meses, clubes como Manchester United, París Saint-Germain o Real Madrid, están muy atentos a la situación de Rafael Leao y todos ellos pueden ofrecerle un contrato mucho mayor del que le está poniendo sobre la mesa el cuadro italiano. La renovación no va por el buen camino, o por lo menos no por donde el Milán quisiera que fuese y esto les hace comenzar a pensar en alternativas en el caso de que su jugador termine marchándose en los próximos mercados de transferencias.Tal y como apunta \'Calciomercato\', el AC Milán habría tenido un acercamiento con Jérémy Doku, actual jugador del Rennes, quien habría sido ofrecido por sus representantes. El jovencísimo extremo de tan sólo 20 años está rindiendo muy bien en el equipo galo y es una de las grandes promesas de Bélgica. Su valor de mercado está entorno a los 18 millones de euros, cantidad que podrían pagar sobradamente si finalmente acceden a vender a Rafael Leao.', '2022-11-21', 33, 'https://www.fichajes.net/files/styles/epsa_horizontal_thumbail/public/el-milan-ya-tendria-sustituto-para-rafael-leao.jpg?itok=QXPqvkT7', 33),
	(34, 'Once temporadas después, el esloveno Samir Handanovic pondrá fin a su larga y exitosa relación con el Inter de Milán. Aunque este curso ya ha sido desbancado de la titularidad por André Onana, el meta dirá adiós al cuadro nerazzurro con más de 440 partidos oficiales a sus espaldas.\r\n\r\nConsciente de que el veterano meta (38 años) dirá adiós al club al término de su contrato (junio de 2023), la directiva lombarda ha dado ya el pistoletazo de salida a la búsqueda de un nuevo arquero que pueda ejercer como suplente del citado Onana y, por qué no, disputarle un puesto en el once inicial.', '2022-11-25', 34, 'https://assets-es.imgfoot.com/media/cache/642x382/atalanta-614f616606034.jpg', 35),
	(35, 'El Nápoles sigue rompiendo récords y se despide del 2022 con el mismo ritmo de los últimos meses. Los azzurri, que siguen invictos, encadenaron su undécima victoria consecutiva en la Serie A, algo nunca conseguido en su historia, batiendo 3-2 al Udinese en el Maradona. Un triunfo conseguido todavía sin Kvaratskhelia y que deja a los sureños con 11 puntos de ventaja sobre el Milan, a la espera del resto de encuentros de la jornada.\r\n\r\nSpalletti avisó de que le esperaba un partido muy complicado, ante un rival capaz de batir 4-0 a la Roma, 3-1 al Inter, de empatar en casa de la Lazio... Y estuvo claro muy pronto. Los de Sottil se encerraban bien con un 5-3-2 muy alto y agresivo, buscando la calidad de Beto y Deulofeu para hacer daño tras cada pérdida de los locales. El español, de hecho, rozó el 0-1 nada más comenzar a pase de Ehizibue, pero se topó con Meret.\r\n\r\n\r\nOsimhen, sin embargo, en el 15′ hizo de cazafantasmas con un imperioso testarazo a pase de Elmas, que valió su décimo tanto de esta temporada. Desde que viste de azzurro, el nigeriano ha marcado un gol cada 135 minutos y en este curso está imparable.\r\n\r\nEl Udinese recibió otra mala noticia poco después, cuando Deulofeu abandonó el césped del Maradona entre lágrimas por un problema muscular y fue aplaudido por los hinchas rivales.\r\n\r\nEn el 31′, entonces, el Nápoles aumentó su ventaja con una gran jugada armada por Osimhen, Lozano y Zielinski, que anotó el 2-0 con una preciosa rosca.\r\n\r\nLos azzurri siguieron controlando el partido en la segunda parte y, en el 59′, parecieron haber sentenciado la contienda con un golazo de Elmas, que se deshizo de Bijol en el área y confirmó ser un recambio perfecto ante la baja de Kvaratskhelia, que sigue fuera de combate por sus problemas en la espalda.\r\n\r\nA partir de entonces y a falta de media hora, los napolitanos empezaron a relajarse y divertirse en el verde, un error garrafal ante un conjunto con la fuerza y la calidad del Udinese. Entre el 79′ y el 82′, los friulani volvieron a meterse en el partido con dos golazos de Nestorovski y Samardzic, obligando a los partenopei y a todo el Maradona a sufrir en los últimos minutos del encuentro.\r\n\r\nUn sufrimiento que, quizás, Spalletti utilizará para recordarle a los suyos que aún no han ganado nada, a pesar del mejor arranque en la historia del club y una clasificación espectacular. A partir de enero, el Nápoles empieza de cero. Los demás (al menos) de -8.', '2022-11-11', 35, 'https://assets-es.imgfoot.com/media/cache/642x382/napoles-gol2223.jpg', 34),
	(36, 'Según informó el diario italiano Corriere dello Sport y confirmó Calcio Mercato, la Juventus de Turín podría recibir de regreso a Luca Pellegrini en enero.\r\n\r\nEl defensor italiano se encuentra cedido en el Eintracht Frankfurt, pero no está teniendo minutos ni continuidad. Su evolución se ha estacando un poco y el club italiano lo quiere de vuelta para que pueda sumar más variantes a Massimiliano Allegri para la segunda parte de la temporada.El lateral derecho italiano llegaría para compartir posición con Juan Guillermo Cuadrado, quien termina contrato en verano del 2023 y todo parece que se irá como agente libre en verano. Pellegrini tiene la intención de competir a ver si puede ganarse el puesto y quedarse como titular para el largo plazo.\r\n\r\nLa Juventus quiere probarlo para ver si está listo para tener la responsabilidad de ser el lateral derecho del equipo para el corto y largo plazo. Con tan solo 23 años, tiene mucha carrera por delante y muchísimo talento para competir en el primer nivel.', '2022-11-26', 36, 'https://assets-es.imgfoot.com/media/cache/642x382/luca-pellegrini-2223-1.jpg', 32),
	(37, 'El AC Milan está trabajando en la planificación de su plantilla con la intención de mantenerse como uno de los mejores equipos de Europa y mantenerse en la cima de la Serie A, pese a que se la ha complicado esta campaña por el gran nivel del Napoli.\r\n\r\nEl conjunto rossonero tiene la intención de hacer tres grandes movimientos en los próximos mercados de fichajes para tener una base una sólida para el corto y largo plazo. Aquí te contamos quienes son sus tres principales apuntados según Calcio Mercato\r\nLos 3 fichajes que quiere cerrar el AC Milan en los próximos mercados\r\n\r\n-Hakim Ziyech: El mediocampista marroquí, que está disputando la Copa del Mundo de Qatar 2022, quiere salir del Chelsea porque apenas está teniendo minutos en los últimos años y Graham Potter no cuenta tanto con él debido a que ha pedido varios fichajes para la zona ofensiva. El conjunto rossonero quiere concretar su cesión y posterior compra al finalizar la misma.\r\n\r\n-Houssem Aouar: El mediocampista francés termina contrato en verano del 2023 y no tiene intenciones de renovar su contrato con el Olympique de Lyon, por lo que se irá gratis del club para firmar con otro como agente libre. El conjunto rossonero quiere aprovechar la situación para hacer una oferta en el mercado invernal para ver si puede convencer al Lyon de venderlo antes de tiempo. La Roma y el Real Betis también lo tienen en la mira.\r\n\r\n-Noah Okafor: El delantero suizo, que está disputando la Copa del Mundo de Qatar 2022, es una de las sensaciones de Europa con el RB Salzburgo y está listo para dar el salto a un club más importante de Europa en el corto plazo. Sus intenciones es jugar en un club capaz de ganar títulos. El AC Milan lo ve como el delantero centro ideal para su proyecto en el largo plazo.', '2022-11-26', 37, 'https://www.fichajes.net/files/styles/epsa_horizontal_thumbail/public/ziyech_7.jpg?itok=9uqPRwy4', 33),
	(38, 'Test', '2022-12-03', 38, 'https://cdn.pixabay.com/photo/2014/06/03/19/38/road-sign-361514_960_720.png', 33);

-- Volcando estructura para tabla futlibredb.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`) USING BTREE,
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.django_admin_log: ~0 rows (aproximadamente)
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2022-12-02 21:37:49.370906', '2', 'Leryunard', 1, '[{"added": {}}]', 4, 1);

-- Volcando estructura para tabla futlibredb.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.django_content_type: ~33 rows (aproximadamente)
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session'),
	(7, 'webApp', 'authgroup'),
	(8, 'webApp', 'authgrouppermissions'),
	(9, 'webApp', 'authpermission'),
	(10, 'webApp', 'authuser'),
	(11, 'webApp', 'authusergroups'),
	(12, 'webApp', 'authuseruserpermissions'),
	(17, 'webApp', 'competencia'),
	(33, 'webApp', 'conforma'),
	(32, 'webApp', 'define'),
	(27, 'webApp', 'detallenoticia'),
	(13, 'webApp', 'djangoadminlog'),
	(14, 'webApp', 'djangocontenttype'),
	(15, 'webApp', 'djangomigrations'),
	(16, 'webApp', 'djangosession'),
	(18, 'webApp', 'equipo'),
	(19, 'webApp', 'estadistica'),
	(31, 'webApp', 'formaparte'),
	(26, 'webApp', 'ganador'),
	(30, 'webApp', 'juega'),
	(20, 'webApp', 'jugador'),
	(25, 'webApp', 'noticia'),
	(29, 'webApp', 'participa'),
	(21, 'webApp', 'partido'),
	(22, 'webApp', 'permiso'),
	(28, 'webApp', 'posee'),
	(23, 'webApp', 'rol'),
	(24, 'webApp', 'usuario');

-- Volcando estructura para tabla futlibredb.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.django_migrations: ~28 rows (aproximadamente)
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2022-11-22 02:31:00.977341'),
	(2, 'auth', '0001_initial', '2022-11-22 02:31:01.678339'),
	(3, 'admin', '0001_initial', '2022-11-22 02:31:01.852335'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-22 02:31:01.868337'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-22 02:31:01.886337'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-22 02:31:01.974337'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-22 02:31:02.068339'),
	(8, 'auth', '0003_alter_user_email_max_length', '2022-11-22 02:31:02.115338'),
	(9, 'auth', '0004_alter_user_username_opts', '2022-11-22 02:31:02.129335'),
	(10, 'auth', '0005_alter_user_last_login_null', '2022-11-22 02:31:02.198338'),
	(11, 'auth', '0006_require_contenttypes_0002', '2022-11-22 02:31:02.206338'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-22 02:31:02.220338'),
	(13, 'auth', '0008_alter_user_username_max_length', '2022-11-22 02:31:02.250338'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-22 02:31:02.280335'),
	(15, 'auth', '0010_alter_group_name_max_length', '2022-11-22 02:31:02.319340'),
	(16, 'auth', '0011_update_proxy_permissions', '2022-11-22 02:31:02.342341'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-22 02:31:02.392336'),
	(18, 'sessions', '0001_initial', '2022-11-22 02:31:02.487335'),
	(19, 'webApp', '0001_initial', '2022-11-22 02:31:04.233373'),
	(20, 'webApp', '0002_detallenoticia_idequipo', '2022-11-28 19:24:57.098216'),
	(21, 'webApp', '0003_alter_jugador_idequipo', '2022-11-28 19:30:35.784246'),
	(22, 'webApp', '0004_remove_jugador_dorsaljugador_remove_noticia_equipo_and_more', '2022-11-28 22:56:28.087975'),
	(23, 'webApp', '0004_remove_noticia_equipo', '2022-11-29 16:27:18.509102'),
	(24, 'webApp', '0005_remove_jugador_dorsaljugador', '2022-11-29 16:28:31.151959'),
	(25, 'webApp', '0006_jugador_dorsaljugador_noticia_equipo', '2022-11-29 16:28:31.214478'),
	(26, 'webApp', '0007_remove_jugador_dorsaljugador_remove_noticia_equipo', '2022-11-29 16:28:31.261367'),
	(27, 'webApp', '0008_noticia_etiqueta', '2022-12-05 02:43:00.393532'),
	(28, 'webApp', '0009_remove_noticia_etiqueta_noticia_idequipo', '2022-12-05 21:30:40.832189'),
	(29, 'webApp', '0010_remove_noticia_idusuario', '2022-12-05 21:30:41.519899');

-- Volcando estructura para tabla futlibredb.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  KEY `django_session_expire_date_a5c62663` (`expire_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.django_session: ~0 rows (aproximadamente)
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('c9w7dps6rqkdwuii6javjfkm5wtazil2', '.eJxVjMsOwiAURP-FtSHIs9ele7-BXC4gVQNJaVfGf5cmXehyzpyZN_O4rcVvPS1-juzCzuz0ywLSM9W9iA-s98ap1XWZA98VfrSd31pMr-vh_h0U7GWsdUxkgKSQgFFmsmokZwdAkBpMpom0cSEkJax1zkhwCJgFyKQcTOzzBeDQN2I:1p2J4c:x4VSo-iX0JD1fXNh-chTGX5-dD1G-koMlpCTbowN_Nw', '2022-12-19 21:32:26.243915');

-- Volcando estructura para tabla futlibredb.equipo
CREATE TABLE IF NOT EXISTS `equipo` (
  `IDEQUIPO` int(11) NOT NULL,
  `NOMBREEQUIPO` varchar(255) NOT NULL,
  `YEARFUNDACION` varchar(255) NOT NULL,
  `ESTADIOEQUIPO` varchar(255) NOT NULL,
  `CIUDADEQUIPO` varchar(255) NOT NULL,
  `IDTIPOEQUIPO` int(11) NOT NULL,
  `URLLOGO` varchar(255) NOT NULL,
  `ENTRENADOR` varchar(255) NOT NULL,
  PRIMARY KEY (`IDEQUIPO`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.equipo: ~34 rows (aproximadamente)
INSERT INTO `equipo` (`IDEQUIPO`, `NOMBREEQUIPO`, `YEARFUNDACION`, `ESTADIOEQUIPO`, `CIUDADEQUIPO`, `IDTIPOEQUIPO`, `URLLOGO`, `ENTRENADOR`) VALUES
	(0, 'Argentina', '1902', 'Monumental', '', 3, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_Argentina.svg/200px-Flag_of_Argentina.svg.png', 'Lionel Scaloni'),
	(1, 'Brasil', '1916', 'Maracaná', '', 3, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/200px-Flag_of_Brazil.svg.png', 'Leonardo Bacchi'),
	(2, 'Portugal', '1921', 'Lisboa', '', 3, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Portugal.svg/200px-Flag_of_Portugal.svg.png', 'Fernando Santos'),
	(3, 'Francia', '1904', 'Saint-Denis', '', 3, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_France_%281794–1815%2C_1830–1974%2C_2020–present%29.svg/200px-Flag_of_France_%281794–1815%2C_1830–1974%2C_2020–present%29.svg.png', 'Didier Deschamps'),
	(4, 'Boca Juniors', '1905', 'La Bombonera', 'Buenos Aires', 8, 'https://logodownload.org/wp-content/uploads/2016/10/boca-juniors-logo-escudo-0.png', 'Hugo Ibarra'),
	(5, 'River Plate', '1901', 'El Monumental', 'Buenos Aires', 8, 'https://logodownload.org/wp-content/uploads/2015/05/river-plate-logo-0-1.png', 'Martín Demichelis'),
	(6, 'Flamengo', '1895', 'Maracaná', 'Rio de Janeiro', 8, 'https://logodownload.org/wp-content/uploads/2016/09/flamengo-logo-0.png', 'Dorival Júnior'),
	(7, 'Palmeiras', '1914', 'Allianz Parque', 'Sao Paulo', 8, 'https://logodownload.org/wp-content/uploads/2015/05/palmeiras-logo-0.png', 'Abel Ferreira'),
	(8, 'Alianza Lima', '1901', 'Alejandro Villanueva Matute', 'Lima', 8, 'https://logodownload.org/wp-content/uploads/2019/04/alianza-lima-logo-escudo-0.png', 'Carlos Bustos'),
	(9, 'Cerro Porteño', '1912', 'General Pablo Rojas', 'Asunción', 8, 'https://logodownload.org/wp-content/uploads/2018/03/cerro-porteno-logo-0.png', 'Francisco Arce'),
	(10, 'Bayern Leverkusen', '1904', 'BayArena', 'Leverkusen', 1, 'https://logodownload.org/wp-content/uploads/2019/12/bayer-04-Leverkusen-logo-0.png', 'Xabi Alonso'),
	(11, 'Bayern Munchen', '1900', 'Allianz Arena', 'Munich', 1, 'https://logodownload.org/wp-content/uploads/2017/02/bayern-munchen-logo-0.png', 'Julian Nagelsmann'),
	(12, 'Borussia Dortmund', '1909', 'Signal Iduna Park', 'Dortmund', 1, 'https://logodownload.org/wp-content/uploads/2017/02/bvb-borussia-dortmund-logo-0.png', 'Edin Terzić'),
	(13, 'Paris Saint-Germain Football Club', '1970', 'Parc des Princes', 'Paris', 2, 'https://cdnb.20m.es/sites/30/2021/07/422px-Paris_Saint-Germain_F.C..svg.png', 'Christophe Galtier'),
	(14, 'Amsterdamsche Football Club Ajax', '1900', 'Johan Cruyff Arena', 'Ámsterdam', 2, 'https://cdn.milenio.com/uploads/media/2019/02/13/escudo-ajax.png', 'Alfred Schreuder'),
	(17, 'Barcelona', '1899', 'Spotify Camp Nou', '', 4, 'https://logodownload.org/wp-content/uploads/2015/05/Barcelona-logo-escudo-1.png', 'Xavier Hernández Creus'),
	(18, 'Real Madrid', '1902', 'Santiago Bernabéu ', '', 4, 'https://dlscenter.com/wp-content/uploads/2017/06/real-madrid-logo.png', 'Carlo Ancelotti'),
	(19, 'Atlético de Madrid', '1903', 'Civítas Metropolitano', '', 4, 'http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/42.png', 'Diego Simeone'),
	(20, 'Sevilla', '1890', 'Ramon Sánchez-Pizjuan', '', 4, 'https://2.bp.blogspot.com/-47A7aWFU3SA/Wch56aywdVI/AAAAAAAANyM/3aPdNRFDpvYJXMpBn4Rgyj4TgfmFXhYWgCLcBGAs/s1600/sevilla-fc-logo-512px.png', 'Jorge Sampaoli'),
	(21, 'Nacional', '2000', 'Estadio Cuscatlán', 'San Salvador', 6, '', 'Hugo Pérez'),
	(22, 'CD Águila', '1926', 'Estadio Juan Francisco Barraza', 'San Miguel', 9, 'https://www.cdaguila.com.sv/wp-content/uploads/2020/02/Aguila.png', 'Sebastián Bini'),
	(23, 'Alianza FC', '1958\r\n', 'Estadio Cuscatlán', 'San Salvador', 9, 'https://laprimera.com.sv/wp-content/uploads/2015/10/Logo-Alianza-FC-Web-2021-2.png', 'Adonay Martínez'),
	(24, 'CD Fas', '1947', 'Óscar Alberto Quiteño', 'Santa Ana', 9, 'https://1.bp.blogspot.com/-AXnVWTcQIpQ/Xp4ZrkoqhoI/AAAAAAABZcQ/zNKEDuftv8MNZpEQHmSZLeT3Bk94lyI3QCLcBGAsYHQ/s1600/Club%2BDeportivo%2BFAS.png', 'Octavio Sambrano'),
	(25, 'L.A Firpo', '1923', 'Sergio Torres Rivera', 'Usulután', 9, 'https://1.bp.blogspot.com/-7A6S21T4qxA/Xzh9ke0gp_I/AAAAAAABf3Q/GSgG-dESSMA-FvsVa2mXseStMx7WxK1-wCLcBGAsYHQ/s0/CD%2BLuis%2BAngel%2BFirpo.png', 'Eraldo Correia'),
	(26, 'Manchester City', '1880', 'City of Manchester Stadium', 'Manchester City', 5, 'https://seeklogo.com/images/M/manchester-city-fc-new-logo-4C45133019-seeklogo.com.png', 'Pep Guardiola'),
	(27, 'Liverpool', '1892', 'Anfield Stadium', 'Liverpool', 5, 'https://dreamleague-soccerkits.com/wp-content/uploads/2021/08/Liverpool-logo-1.png', 'Jurgen Klopp'),
	(28, 'Chelsea F.C', '1905', 'Stamford Bridge', 'West London', 5, 'https://assets.stickpng.com/images/580b57fcd9996e24bc43c4e1.png', 'Graham Potter'),
	(29, 'Arsenal\n', '1886', 'Emirates Stadium', 'Islington, London', 5, 'https://dlskits.com/wp-content/uploads/2018/05/Aresenal-512x512-Logo-Dream-League-Soccer.png', 'Mikel Arteta'),
	(30, 'Manchester United', '1878', 'Old Trafford', 'Manchester United', 5, 'https://assets.stickpng.com/images/580b57fcd9996e24bc43c4e7.png', 'Erik ten Hag'),
	(31, 'Tottenham Hotspur F.C', '1882', 'Tottenham Hotspur Stadium', 'London', 5, 'https://assets.stickpng.com/images/580b57fcd9996e24bc43c4ee.png', 'Antonio Conte'),
	(32, 'Juventus', '1897', 'Juventus Stadium', 'Turin', 10, 'https://dlscenter.com/wp-content/uploads/2017/06/Logo-juventus-dream-league-soccer.png', 'Massimiliano Allegri'),
	(33, 'AC Milan', '1899', 'Giuseppe Meazza', 'Milan', 10, 'https://dlskits.com/wp-content/uploads/2018/02/AC-Milan-Dream-League-Soccer-Logo-2017-18.png', 'Stefano Pioli'),
	(34, 'Napoli', '1926', 'San Paolo', 'Napoles', 10, 'https://upload.wikimedia.org/wikipedia/commons/2/2d/SSC_Neapel.svg', 'Luciano Spalletti'),
	(35, 'Inter de Milan', '1908', 'Giuseppe Meazza', 'Milan', 10, 'https://idreamleaguesoccerkits.com/wp-content/uploads/2021/05/Inter-Milan-512x512-1-300x300.png', 'Simone Inzaghi');

-- Volcando estructura para tabla futlibredb.estadistica
CREATE TABLE IF NOT EXISTS `estadistica` (
  `IDESTADISTICA` int(11) NOT NULL,
  `RIMTOPARTIDO` varchar(255) NOT NULL,
  `TIROSAPUERTA` varchar(255) NOT NULL,
  `PASES` varchar(255) NOT NULL,
  `REGATES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IDESTADISTICA`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.estadistica: ~0 rows (aproximadamente)

-- Volcando estructura para tabla futlibredb.forma_parte
CREATE TABLE IF NOT EXISTS `forma_parte` (
  `IDJUGADOR` int(11) NOT NULL,
  `IDEQUIPO` int(11) NOT NULL,
  PRIMARY KEY (`IDJUGADOR`) USING BTREE,
  UNIQUE KEY `forma_parte_IDJUGADOR_IDEQUIPO_3a0c716c_uniq` (`IDJUGADOR`,`IDEQUIPO`) USING BTREE,
  KEY `forma_parte_IDEQUIPO_8d188960_fk_equipo_IDEQUIPO` (`IDEQUIPO`) USING BTREE,
  CONSTRAINT `forma_parte_IDEQUIPO_8d188960_fk_equipo_IDEQUIPO` FOREIGN KEY (`IDEQUIPO`) REFERENCES `equipo` (`IDEQUIPO`),
  CONSTRAINT `forma_parte_IDJUGADOR_08af353f_fk_jugador_IDJUGADOR` FOREIGN KEY (`IDJUGADOR`) REFERENCES `jugador` (`IDJUGADOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.forma_parte: ~0 rows (aproximadamente)

-- Volcando estructura para tabla futlibredb.ganador
CREATE TABLE IF NOT EXISTS `ganador` (
  `IDGANADOR` int(11) NOT NULL,
  `NOMBREGANADOR` varchar(255) NOT NULL,
  `IDCOMPETENCIA` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDGANADOR`) USING BTREE,
  KEY `ganador_IDCOMPETENCIA_4732adde_fk_competencia_IDCOMPETENCIA` (`IDCOMPETENCIA`) USING BTREE,
  CONSTRAINT `ganador_IDCOMPETENCIA_4732adde_fk_competencia_IDCOMPETENCIA` FOREIGN KEY (`IDCOMPETENCIA`) REFERENCES `competencia` (`IDCOMPETENCIA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.ganador: ~1 rows (aproximadamente)
INSERT INTO `ganador` (`IDGANADOR`, `NOMBREGANADOR`, `IDCOMPETENCIA`) VALUES
	(1, 'Real Madrid', 4);

-- Volcando estructura para tabla futlibredb.juega
CREATE TABLE IF NOT EXISTS `juega` (
  `IDPARTIDO` int(11) NOT NULL,
  `IDEQUIPO` int(11) NOT NULL,
  PRIMARY KEY (`IDPARTIDO`) USING BTREE,
  UNIQUE KEY `juega_IDPARTIDO_IDEQUIPO_2cf13771_uniq` (`IDPARTIDO`,`IDEQUIPO`) USING BTREE,
  KEY `juega_IDEQUIPO_ad3129e5_fk_equipo_IDEQUIPO` (`IDEQUIPO`) USING BTREE,
  CONSTRAINT `juega_IDEQUIPO_ad3129e5_fk_equipo_IDEQUIPO` FOREIGN KEY (`IDEQUIPO`) REFERENCES `equipo` (`IDEQUIPO`),
  CONSTRAINT `juega_IDPARTIDO_e5689f4d_fk_partido_IDPARTIDO` FOREIGN KEY (`IDPARTIDO`) REFERENCES `partido` (`IDPARTIDO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.juega: ~0 rows (aproximadamente)

-- Volcando estructura para tabla futlibredb.jugador
CREATE TABLE IF NOT EXISTS `jugador` (
  `NOMBREJUGADOR` varchar(255) NOT NULL,
  `POSICIONJUGADOR` varchar(255) NOT NULL,
  `IDJUGADOR` int(11) NOT NULL,
  `NUMEROJUGADOR` int(11) NOT NULL,
  `ESCAPITAN` tinyint(1) NOT NULL,
  `IDEQUIPO` int(11) DEFAULT NULL,
  `EDAD` int(11) NOT NULL,
  PRIMARY KEY (`IDJUGADOR`) USING BTREE,
  KEY `jugador_IDEQUIPO_8f66b40d` (`IDEQUIPO`),
  CONSTRAINT `jugador_IDEQUIPO_8f66b40d_fk_equipo_IDEQUIPO` FOREIGN KEY (`IDEQUIPO`) REFERENCES `equipo` (`IDEQUIPO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.jugador: ~295 rows (aproximadamente)
INSERT INTO `jugador` (`NOMBREJUGADOR`, `POSICIONJUGADOR`, `IDJUGADOR`, `NUMEROJUGADOR`, `ESCAPITAN`, `IDEQUIPO`, `EDAD`) VALUES
	('Franco Armani', 'Portero', 0, 1, 0, 0, 36),
	('Gerónimo Rulli', 'Portero', 1, 12, 0, 0, 30),
	('Emiliano Martínez', 'Portero', 2, 23, 0, 0, 30),
	('Juan Foyth', 'Defensa', 3, 2, 0, 0, 24),
	('Nicolás Tagliafico', 'Defensa', 4, 3, 0, 0, 30),
	('Gonzalo Montiel', 'Defensa', 5, 4, 0, 0, 25),
	('Germán Pezzella', 'Defensa', 6, 6, 0, 0, 31),
	('Marcos Acuña', 'Defensa', 7, 8, 0, 0, 31),
	('Cristian Romero', 'Defensa', 8, 13, 0, 0, 24),
	('Lisandro Martínez', 'Defensa', 9, 25, 0, 0, 24),
	('Nicolás Otamendi', 'Defensa', 10, 19, 0, 0, 34),
	('Nahuel Molina', 'Defensa', 11, 26, 0, 0, 24),
	('Leandro Paredes', 'Mediocampista', 12, 5, 0, 0, 28),
	('Rodrigo de Paul', 'Mediocampista', 13, 7, 0, 0, 28),
	('Exequiel Palacios', 'Mediocampista', 14, 14, 0, 0, 24),
	('Alexis Mac Allister', 'Mediocampista', 15, 20, 0, 0, 23),
	('Guido Rodríguez', 'Mediocampista', 16, 18, 0, 0, 28),
	('Alejandro Gómez', 'Mediocampista', 17, 17, 0, 0, 34),
	('Enzo Fernández', 'Mediocampista', 18, 24, 0, 0, 21),
	('Julián Álvarez', 'Delantero', 19, 9, 0, 0, 22),
	('Lionel Messi', 'Delantero', 20, 10, 1, 0, 35),
	('Ángel Di María', 'Delantero', 21, 11, 0, 0, 34),
	('Joaquín Correa', 'Delantero', 22, 15, 0, 0, 28),
	('Paulo Dybala', 'Delantero', 23, 21, 0, 0, 29),
	('Lautaro Martínez', 'Delantero', 24, 22, 0, 0, 25),
	('Ángel Correa', 'Delantero', 25, 25, 0, 0, 27),
	('Florian Wirtz', 'Mediocampista', 26, 27, 1, 10, 19),
	('Marc-André ter Stegen', 'Portero', 27, 1, 0, 17, 30),
	('Iñaki Peña', 'Portero', 28, 26, 0, 17, 23),
	('Héctor Bellerín', 'Defensa', 29, 2, 0, 17, 27),
	('Gerard Piqué', 'Defensa', 30, 3, 0, 17, 35),
	('Andreas Christensen', 'Defensa', 31, 15, 0, 17, 4),
	('Marcos Alonso', 'Defensa', 32, 17, 0, 17, 35),
	('Jordi Alba', 'Defensa', 33, 18, 0, 17, 33),
	('Sergi Roberto', 'Defensa', 34, 20, 0, 17, 30),
	('Álex Valle Gómez', 'Defensa', 35, 22, 0, 17, 18),
	('Jules Koundé', 'Defensa', 36, 23, 0, 17, 24),
	('Eric García', 'Defensa', 37, 24, 0, 17, 21),
	('Alejandro Baldé', 'Defensa', 38, 28, 0, 17, 19),
	('Chadi Riad', 'Defensa', 39, 35, 0, 17, 19),
	('Sergio Busquets', 'Centrocampista', 40, 5, 1, 17, 34),
	('Ansu Fati', 'Centrocampista', 41, 10, 0, 17, 20),
	('Yusuf Demir', 'Centrocampista', 42, 11, 0, 17, 19),
	('Franck Kessié', 'Centrocampista', 43, 19, 0, 17, 25),
	('Frenkie de Jong', 'Centrocampista', 44, 21, 0, 17, 25),
	('Gavi', 'Centrocampista', 45, 30, 0, 17, 18),
	('Pablo Torre', 'Centrocampista', 46, 32, 0, 17, 19),
	('Álvaro Sanz Catalán', 'Centrocampista', 47, 34, 0, 17, 21),
	('Pedri', 'Centrocampista', 48, 8, 0, 17, 20),
	('Ousmane Dembélé', 'Delantero', 49, 7, 0, 17, 25),
	('Robert Lewandowski', 'Delatero', 50, 9, 0, 17, 34),
	('Ferran Torres', 'Delantero', 51, 11, 0, 17, 22),
	('Memphis Depay', 'Delantero', 52, 14, 0, 17, 28),
	('Raphinha', 'Delantero', 53, 22, 0, 17, 25),
	('Ilias Akhomach', 'Delantero', 54, 37, 0, 17, 18),
	('Thibaut Courtois', 'Portero', 55, 1, 0, 18, 30),
	('Andriy Lunin', 'Portero', 56, 13, 0, 18, 23),
	('Daniel Carvajal', 'Defensa', 57, 2, 0, 18, 30),
	('Éder Militão', 'Defensa', 58, 3, 0, 18, 24),
	('David Alaba', 'Defensa', 59, 4, 0, 18, 30),
	('Jesús Vallejo', 'Defensa', 60, 5, 0, 18, 25),
	('Nacho', 'Defensa', 61, 6, 0, 18, 32),
	('Álvaro Odriozola', 'Defensa', 62, 16, 0, 18, 26),
	('Antonio Rüdiger', 'Defensa', 63, 22, 0, 18, 29),
	('Ferland Mendy', 'Defensa', 64, 23, 0, 18, 27),
	('Toni Kroos', 'Centrocampista', 65, 8, 0, 18, 32),
	('Luka Modrić', 'Centrocampista', 66, 10, 0, 18, 37),
	('Eduardo Camavinga', 'Centrocampista', 67, 12, 0, 18, 20),
	('Lucas Vázquez', 'Centrocampista', 68, 17, 0, 18, 31),
	('Aurélien Tchouaméni', 'Centrocampista', 69, 18, 0, 18, 22),
	('Dani Ceballos', 'Centrocampista', 70, 19, 0, 18, 26),
	('Sergio Arribas', 'Centrocampista', 71, 30, 0, 18, 21),
	('Fede Valverde', 'Centrocampista', 72, 15, 0, 18, 24),
	('Eden Hazard', 'Delantero', 73, 7, 0, 18, 31),
	('Karim Benzema', 'Delantero', 74, 9, 1, 18, 34),
	('Marco Asensio', 'Delantero', 75, 11, 0, 18, 26),
	('Vinícius Júnior', 'Delantero', 76, 20, 0, 18, 22),
	('Rodrygo Goes', 'Delantero', 77, 21, 0, 18, 21),
	('Mariano Díaz', 'Delantero', 78, 24, 0, 18, 29),
	('Ivo Grbić', 'Portero', 79, 1, 0, 19, 26),
	('Jan Oblak', 'Portero', 80, 13, 0, 19, 29),
	('José María Giménez', 'Defensa', 81, 2, 0, 19, 27),
	('Sergio Reguilón', 'Defensa', 82, 3, 0, 19, 25),
	('Stefan Savić', 'Defensa', 83, 15, 0, 19, 31),
	('Nahuel Molina', 'Defensa', 84, 16, 0, 19, 2),
	('Felipe', 'Defensa', 85, 18, 0, 19, 33),
	('Mario Hermoso', 'Defensa', 86, 22, 0, 19, 27),
	('Reinildo Mandava', 'Defensa', 87, 23, 0, 19, 28),
	('Sergio Díez', 'Defensa', 88, 30, 0, 19, 19),
	('Marco Moreno', 'Defensa', 89, 36, 0, 19, 21),
	('Geoffrey Kondogbia', 'Centrocampista', 90, 4, 0, 19, 29),
	('Rodrigo De Paul', 'Centrocampista', 91, 5, 0, 19, 28),
	('Koke Koke', 'Centrocampista', 92, 6, 1, 19, 30),
	('João Félix', 'Centrocampista', 93, 7, 0, 19, 23),
	('Thomas Lemar', 'Centrocampista', 94, 11, 0, 19, 27),
	('Marcos Llorente', 'Centrocampista', 95, 14, 0, 19, 27),
	('Saúl Ñíguez', 'Centrocampista', 96, 17, 0, 19, 28),
	('Axel Witsel', 'Centrocampista', 97, 20, 0, 19, 33),
	('Yannick Carrasco', 'Centrocampista', 98, 21, 0, 19, 29),
	('Pablo Barrios Rivas', 'Centrocampista', 99, 34, 0, 19, 19),
	('Antoine Griezmann', 'Delantero', 100, 8, 0, 19, 31),
	('Matheus Cunha', 'Delantero', 101, 9, 0, 19, 23),
	('Ángel Correa', 'Delantero', 102, 10, 0, 19, 27),
	('Álvaro Morata', 'Delantero', 103, 19, 0, 19, 30),
	('Marko Dmitrović', 'Portero', 104, 1, 0, 20, 30),
	('Yassine Bounou', 'Portero', 105, 13, 0, 20, 31),
	('Gonzalo Montiel', 'Defensa', 106, 2, 0, 20, 25),
	('Alex Telles', 'Defensa', 107, 3, 0, 20, 29),
	('Karim Rekik', 'Defensa', 108, 4, 0, 20, 27),
	('Tanguy Kouassi', 'Defensa', 109, 14, 0, 20, 20),
	('Jesús Navas', 'Defensa', 110, 16, 0, 20, 37),
	('Marcos Acuña', 'Defensa', 111, 19, 0, 20, 31),
	('Fernando', 'Defensa', 112, 20, 0, 20, 35),
	('Marcão', 'Defensa', 113, 23, 0, 20, 26),
	('Kike Salas', 'Defensa', 114, 29, 0, 20, 20),
	('Nemanja Gudelj', 'Centrocampista', 115, 6, 0, 20, 31),
	('Joan Jordán', 'Centrocampista', 116, 8, 0, 20, 28),
	('Ivan Rakitić', 'Centrocampista', 117, 10, 1, 20, 34),
	('Thomas Delaney', 'Centrocampista', 118, 18, 0, 20, 31),
	('Óliver Torres', 'Centrocampista', 119, 21, 0, 20, 28),
	('Isco', 'Centrocampista', 120, 22, 0, 20, 30),
	('Kasper Dolberg', 'Delantero', 121, 5, 0, 20, 25),
	('Suso', 'Delantero', 122, 7, 0, 20, 29),
	('Jesús Corona Corona Ruíz', 'Delantero', 123, 9, 0, 20, 29),
	('Adnan Januzaj', 'Delantero', 124, 11, 0, 20, 27),
	('Rafa Mir', 'Delantero', 125, 12, 0, 20, 25),
	('Youssef En-Nesyri', 'Delantero', 126, 15, 0, 20, 25),
	('Erik Lamela', 'Delantero', 127, 17, 0, 20, 30),
	('Papu Gómez Villaverde', 'Delantero', 128, 24, 0, 20, 34),
	('Gianluigi Donnarumma', 'Portero', 129, 99, 0, 13, 23),
	('Keylor Navas', 'Portero', 130, 1, 0, 13, 35),
	('Sergio Rico', 'Portero', 131, 16, 0, 13, 29),
	('Alexandre Letellier', 'Portero', 132, 90, 0, 13, 31),
	('Lucas Lavallée', 'Portero', 133, 70, 0, 13, 19),
	('Marquinhos', 'Defensa central', 134, 5, 0, 13, 28),
	('Presnel Kimpembe', 'Defensa central', 135, 3, 0, 13, 27),
	('Sergio Ramos', 'Defensa central', 136, 4, 0, 13, 36),
	('El Chadaille Bitshiabu', 'Defensa central', 137, 31, 0, 13, 17),
	('Nuno Mendes', 'Lateral izquierdo', 138, 25, 0, 13, 20),
	('Juan Bernat', 'Lateral izquierdo', 139, 14, 0, 13, 29),
	('Achraf Hakimi', 'Lateral derecho', 140, 2, 0, 13, 24),
	('Nordi Mukiele', 'Lateral derecho', 141, 26, 0, 13, 25),
	('Timothée Pembélé', 'Lateral derecho', 142, 32, 0, 13, 20),
	('Danilo Pereira', 'Pivote', 143, 15, 0, 13, 31),
	('Warren Zaïre-Emery', 'Pivote', 144, 33, 0, 13, 16),
	('Marco Verratti', 'Mediocentro', 145, 6, 0, 13, 30),
	('Fabián Ruiz', 'Mediocentro', 146, 8, 0, 13, 26),
	('Vitinha', 'Mediocentro', 147, 17, 0, 13, 22),
	('Carlos Soler', 'Mediocentro', 148, 28, 0, 13, 25),
	('Renato Sanches', 'Mediocentro', 149, 18, 0, 13, 25),
	('Ayman Kari', 'Mediocentro', 150, 36, 0, 13, 18),
	('Ismaël Gharbi', 'Mediocentro ofensivo', 151, 35, 0, 13, 18),
	('Neymar', 'Extremo izquierdo', 152, 10, 0, 13, 30),
	('Lionel Messi', 'Extremo derecho', 153, 30, 0, 13, 35),
	('Pablo Sarabia', 'Extremo derecho', 154, 19, 0, 13, 30),
	('Kylian Mbappé', 'Delantero centro', 155, 7, 0, 13, 23),
	('Hugo Ekitiké', 'Delantero centro', 156, 44, 0, 13, 20),
	('Jay Gorter', 'Portero', 157, 16, 0, 14, 22),
	('Remko Pasveer', 'Portero', 158, 22, 0, 14, 39),
	('Maarten Stekelenburg', 'Portero', 159, 1, 0, 14, 40),
	('Jurrien Timber', 'Defensa central', 160, 2, 0, 14, 21),
	('Calvin Bassey', 'Defensa central', 161, 3, 0, 14, 22),
	('Ahmetcan Kaplan', 'Defensa central', 162, 13, 0, 14, 19),
	('Lisandro Magallán', 'Defensa central', 163, 29, 0, 14, 29),
	('Kik Pierie', 'Defensa central', 164, 39, 0, 14, 22),
	('Owen Wijndal', 'Lateral izquierdo', 165, 5, 0, 14, 23),
	('Daley Blind', 'Lateral izquierdo', 166, 17, 0, 14, 32),
	('Youri Baas', 'Lateral izquierdo', 167, 25, 0, 14, 19),
	('Devyne Rensch', 'Lateral derecho', 168, 15, 0, 14, 19),
	('Jorge Sánchez', 'Lateral derecho', 169, 19, 0, 14, 24),
	('Edson Álvarez', 'Pivote', 170, 4, 0, 14, 25),
	('Florian Grillitsch', 'Pivote', 171, 21, 0, 14, 27),
	('Kenneth Taylor', 'Mediocentro', 172, 8, 0, 14, 20),
	('Youri Regeer', 'Mediocentro', 173, 26, 0, 14, 19),
	('Mohammed Kudus', 'Mediocentro ofensivo', 174, 20, 0, 14, 22),
	('Steven Berghuis', 'Mediocentro ofensivo', 175, 23, 0, 14, 30),
	('Davy Klaassen', 'Mediocentro ofensivo', 176, 6, 0, 14, 29),
	('Mohamed Ihattaren', 'Mediocentro ofensivo', 177, 27, 0, 14, 20),
	('Steven Bergwijn', 'Extremo izquierdo', 178, 7, 1, 14, 25),
	('Lucas Ocampos', 'Extremo izquierdo', 179, 11, 0, 14, 28),
	('Dusan Tadić', 'Extremo izquierdo', 180, 10, 0, 14, 34),
	('Francisco Conceição', 'Extremo derecho', 181, 35, 0, 14, 19),
	('Brian Brobbey', 'Delantero centro', 182, 9, 0, 14, 20),
	('Lorenzo Lucca', 'Delantero centro', 183, 18, 0, 14, 22),
	('Kevin Santamaria', 'Extremo izquierdo', 184, 11, 0, 22, 23),
	('Benji Villalobos', 'Portero', 185, 22, 1, 22, 34),
	('Jack Grealish', 'Extremo Izquierdo', 186, 10, 1, 26, 30),
	('Wojciech Szczęsny', 'Portero', 187, 1, 0, 32, 32),
	('Carlo Pinsoglio', 'Portero', 188, 23, 0, 32, 32),
	('Mattia Perin', 'Portero', 189, 36, 0, 32, 30),
	('Mattia De Sciglio', 'Defensa', 190, 2, 0, 32, 30),
	('Bremer', 'Defensa', 191, 3, 0, 32, 25),
	('Danilo', 'Defensa', 192, 6, 0, 32, 31),
	('Alex Sandro', 'Defensa', 193, 12, 0, 32, 31),
	('Federico Gatti', 'Defensa', 194, 15, 0, 32, 24),
	('Leonardo Bonucci', 'Defensa', 195, 19, 1, 32, 35),
	('Daniele Rugani', 'Defensa', 196, 24, 0, 32, 28),
	('Manuel Locatelli', 'Mediocampista', 197, 5, 0, 32, 24),
	('Weston McKennie', 'Mediocampista', 198, 8, 0, 32, 24),
	('Paul Pogba', 'Mediocampista', 199, 10, 0, 32, 29),
	('Juan Cuadrado', 'Mediocampista', 200, 11, 0, 32, 34),
	('Filip Kostić', 'Mediocampista', 201, 17, 0, 32, 30),
	('Fabio Miretti', 'Mediocampista', 202, 20, 0, 32, 19),
	('Adrien Rabiot', 'Mediocampista', 203, 25, 0, 32, 27),
	('Leandro Paredes', 'Mediocampista', 204, 32, 0, 32, 28),
	('Nicolò Fagioli', 'Mediocampista', 205, 44, 0, 32, 21),
	('Federico Chiesa', 'Delantero', 206, 7, 0, 32, 25),
	('Dušan Vlahović', 'Delantero', 207, 9, 0, 32, 22),
	('Arkadiusz Milik', 'Delantero', 208, 14, 0, 32, 28),
	('Moise Kean', 'Delantero', 209, 18, 0, 32, 22),
	('Kaio Jorge', 'Delantero', 210, 21, 0, 32, 20),
	('Ángel Di María', 'Delantero', 211, 22, 0, 32, 34),
	('Matías Soulé', 'Delantero', 212, 30, 0, 32, 19),
	('Marley Aké', 'Delantero', 213, 33, 0, 32, 21),
	('Mike Maignan', 'Portero', 214, 16, 0, 33, 27),
	('Ciprian Tatarusanu', 'Portero', 215, 1, 0, 33, 36),
	('Antonio Mirante', 'Potero', 216, 83, 0, 33, 39),
	('Fikayo Tomori', 'Defensa', 217, 23, 0, 33, 24),
	('Pierre Kalulu', 'Defensa', 218, 20, 0, 33, 22),
	('Matteo Gabbia', 'Defensa', 219, 46, 0, 33, 23),
	('Malick Thiaw', 'Defensa', 220, 28, 0, 33, 21),
	('Simon Kjaer', 'Defensa', 221, 24, 0, 33, 33),
	('Theo Hernández', 'Defensa', 222, 19, 0, 33, 25),
	('Fodé Ballo-Touré', 'Defensa', 223, 5, 0, 33, 25),
	('Davide Calabria', 'Defensa', 224, 2, 0, 33, 25),
	('Sergiño Dest', 'Defensa', 225, 21, 0, 33, 22),
	('Alessandro Florenzi', 'Defensa', 226, 25, 0, 33, 31),
	('Sandro Tonali', 'Mediocampista', 227, 8, 0, 33, 22),
	('Ismaël Bennacer', 'Mediocampista', 228, 4, 0, 33, 24),
	('Tiemoué Bakayoko', 'Mediocampista', 229, 14, 0, 33, 28),
	('Tommaso Pobega', 'Mediocampista', 230, 32, 0, 33, 23),
	('Aster Vranckx', 'Mediocampista', 231, 40, 0, 33, 20),
	('Rade Krunic', 'Mediocampista', 232, 33, 0, 33, 29),
	('Charles De Ketelaere', 'Mediocampista', 233, 90, 0, 33, 21),
	('Brahim Díaz', 'Mediocampista', 234, 10, 0, 33, 23),
	('Yacine Adli', 'Mediocampista', 235, 7, 0, 33, 22),
	('Rafael Leão', 'Delantero', 236, 17, 0, 33, 23),
	('Ante Rebic', 'Delantero', 237, 12, 0, 33, 29),
	('Alexis Saelemaekers', 'Delantero', 238, 56, 0, 33, 23),
	('Junior Messias', 'Delantero', 239, 30, 0, 33, 31),
	('Divock Origi', 'Delantero', 240, 27, 0, 33, 27),
	('Olivier Giroud', 'Delantero', 241, 9, 0, 33, 36),
	('Zlatan Ibrahimović', 'Delantero', 242, 11, 1, 33, 41),
	('Alex Meret', 'Portero', 243, 1, 0, 34, 25),
	('Salvatore Sirigu', 'Portero', 244, 30, 0, 34, 35),
	('Hubert Idasiak', 'Portero', 245, 16, 0, 34, 20),
	('Davide Marfella', 'Portero', 246, 12, 0, 34, 23),
	('Min-jae Kim', 'Defensa', 247, 3, 0, 34, 26),
	('Amir Rrahmani', 'Defensa', 248, 13, 0, 34, 28),
	('Leo Östigard', 'Defensa', 249, 55, 0, 34, 23),
	('Juan Jesus', 'Defensa', 250, 5, 0, 34, 31),
	('Mathías Olivera', 'Defensa', 251, 17, 0, 34, 25),
	('Mário Rui', 'Defensa', 252, 6, 0, 34, 31),
	('Giovanni Di Lorenzo', 'Defensa', 253, 22, 0, 34, 29),
	('Alessandro Zanoli', 'Defensa', 254, 59, 0, 34, 22),
	('Frank Anguissa', 'Mediocampista', 255, 99, 0, 34, 27),
	('Stanislav Lobotka', 'Mediocampista', 256, 68, 0, 34, 28),
	('Diego Demme', 'Mediocampista', 257, 4, 0, 34, 31),
	('Tanguy Ndombélé', 'Mediocampista', 258, 91, 0, 34, 25),
	('Karim Zedadka', 'Mediocampista', 259, 31, 0, 34, 22),
	('Piotr Zielinski', 'Mediocampista', 260, 20, 0, 34, 28),
	('Eljif Elmas', 'Mediocampista', 261, 7, 0, 34, 23),
	('Gianluca Gaetano', 'Mediocampista', 262, 70, 0, 34, 22),
	('Khvicha Kvaratskhelia', 'Delantero', 263, 77, 0, 34, 21),
	('Alessio Zerbin', 'Delantero', 264, 23, 0, 34, 23),
	('Hirving Lozano', 'Delantero', 265, 11, 1, 34, 27),
	('Matteo Politano', 'Delantero', 266, 21, 0, 34, 29),
	('Giacomo Raspadori', 'Delantero', 267, 81, 0, 34, 22),
	('Victor Osimhen', 'Delantero', 268, 9, 0, 34, 23),
	('Giovanni Simeone', 'Delantero', 269, 18, 0, 34, 27),
	('André Onana', 'Portero', 270, 24, 1, 35, 26),
	('Samir Handanovic', 'Portero', 271, 1, 1, 35, 38),
	('Alex Cordaz', 'Portero', 272, 21, 0, 35, 39),
	('Milan Skriniar', 'Defensa', 273, 37, 0, 35, 27),
	('Alessandro Bastoni', 'Defensa', 274, 95, 0, 35, 23),
	('Stefan de Vrij', 'Defensa', 275, 6, 0, 35, 30),
	('Francesco Acerbi', 'Defensa', 276, 15, 0, 35, 34),
	('Danilo D\'Ambrosio', 'Defensa', 277, 33, 0, 35, 34),
	('Alessandro Fontanarosa', 'Defensa', 278, 47, 0, 35, 19),
	('Federico Dimarco', 'Defensa', 279, 32, 0, 35, 25),
	('Raoul Bellanova', 'Defensa', 280, 12, 0, 35, 22),
	('Mattia Zanotti', 'Defensa', 281, 46, 0, 35, 19),
	('Marcelo Brozovic', 'Mediocampista', 282, 77, 0, 35, 30),
	('Kristjan Asllani', 'Mediocampista', 283, 14, 0, 35, 20),
	('Nicolò Barella', 'Mediocampista', 284, 23, 0, 35, 25),
	('Hakan Calhanoglu', 'Mediocampista', 285, 20, 0, 35, 28),
	('Roberto Gagliardini', 'Mediocampista', 286, 5, 0, 35, 28),
	('Denzel Dumfries', 'Mediocampista', 287, 2, 0, 35, 26),
	('Robin Gosens', 'Mediocampista', 288, 8, 0, 35, 28),
	('Henrikh Mkhitaryan', 'Mediocampista', 289, 22, 0, 35, 33),
	('Valentín Carboni', 'Mediocampista', 290, 45, 0, 35, 17),
	('Joaquín Correa', 'Delantero', 291, 11, 0, 35, 28),
	('Lautaro Martínez', 'Delantero', 292, 10, 0, 35, 25),
	('Romelu Lukaku', 'Delantero', 293, 90, 0, 35, 29),
	('Edin Dzeko', 'Delantero', 294, 9, 0, 35, 36);

-- Volcando estructura para tabla futlibredb.noticia
CREATE TABLE IF NOT EXISTS `noticia` (
  `IDNOTICIA` int(11) NOT NULL,
  `TIPONOTICIA` varchar(255) NOT NULL,
  `NOMBRENOTICIA` varchar(255) NOT NULL,
  `IDCOMPETENCIA` int(11) DEFAULT NULL,
  `IDEQUIPO` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDNOTICIA`) USING BTREE,
  KEY `noticia_IDCOMPETENCIA_0481b949_fk_competencia_IDCOMPETENCIA` (`IDCOMPETENCIA`) USING BTREE,
  KEY `noticia_IDEQUIPO_aed6fe4e_fk_equipo_IDEQUIPO` (`IDEQUIPO`),
  CONSTRAINT `noticia_IDCOMPETENCIA_0481b949_fk_competencia_IDCOMPETENCIA` FOREIGN KEY (`IDCOMPETENCIA`) REFERENCES `competencia` (`IDCOMPETENCIA`),
  CONSTRAINT `noticia_IDEQUIPO_aed6fe4e_fk_equipo_IDEQUIPO` FOREIGN KEY (`IDEQUIPO`) REFERENCES `equipo` (`IDEQUIPO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.noticia: ~37 rows (aproximadamente)
INSERT INTO `noticia` (`IDNOTICIA`, `TIPONOTICIA`, `NOMBRENOTICIA`, `IDCOMPETENCIA`, `IDEQUIPO`) VALUES
	(0, 'Mundial Qatar 2022', 'Los lesionados de la Selección Argentina, a contrarreloj para el debut ante Arabia Saudita', 3, NULL),
	(1, 'Bundesliga', 'Brasil se queda tocada... en los laterales', 1, 0),
	(2, 'Mundial', 'Portugal recupera a Cristiano', 3, NULL),
	(3, 'Mundial', 'Karim Benzema se lesionó y no jugará el Mundial Qatar 2022', 3, NULL),
	(4, 'Libertadores', 'El "mengao" campeon', 8, NULL),
	(5, 'Libertadores', 'Clasificados Edición 2023', 8, NULL),
	(6, 'Libertadores', '¿Una despedida o un hasta Pronto?', 8, NULL),
	(7, 'Libertadores', 'Un campeón épico', 8, NULL),
	(8, 'Libertadores', 'Fecha sorteo 2023', 8, NULL),
	(9, 'Libertadores', 'Flamengo viene a la carga por agustín rossi', 8, NULL),
	(10, 'Bundesliga', 'Piero Hincapié cerró su actuación con una victoria con el Bayer', 1, NULL),
	(11, 'La liga', 'El barca en pie de guerra con Uruguay por Araujo', 4, NULL),
	(12, 'La liga', 'Enamorados de bellingham, objetivo madridista', 4, NULL),
	(13, 'La liga', 'El futuro del Atlético, su nueva ciudad deportiva', 4, NULL),
	(14, 'La liga', 'Los fantasmas del Sevilla, la lesión de Thomas Delaney', 4, NULL),
	(15, 'Champions', 'Habrá fichajes, grandes salidas y nuevas caras en el Real Madrid', 2, NULL),
	(16, 'Champions', 'Cody Gakpo está siendo una de las sensaciones del Mundial', 2, NULL),
	(17, 'Champions', 'La piel envolvente que cubrirá el exterior del Nuevo Bernabéu toma impulso', 2, NULL),
	(18, 'Champions', 'El estado físico del capitán, de 35 años, provocó un sinfín de rumores', 2, NULL),
	(19, 'Champions', 'El Ajax se despide de la Champions con un buen sabor', 2, NULL),
	(20, 'Champions', 'La relación entre Kylian Mbappé y el PSG se encuentra completamente rota', 2, NULL),
	(21, 'Liga Nacional', 'San Salvador y Santa Ana, por el título de la Liga Nacional', 6, NULL),
	(23, 'Liga Nacional', 'Otro jugador de la Liga Nacional reforzará a un historico de la Primera', 6, NULL),
	(24, 'Liga Nacional', 'Santa Ana, el primer campeón de la Liga Nacional de Fútbol', 6, NULL),
	(26, 'Deporte', 'Águila ficha a un delantero extranjero', 9, NULL),
	(27, 'Deporte', 'Principio de acuerdo entre Alianza, Marvin Monterroza y Narciso Orellana para renovar', 9, NULL),
	(28, 'Deporte', 'Presidente del Firpo le responde a Eugenio Calderón', 9, NULL),
	(29, 'Deporte', 'Luis "Quick" Mendoza responde sobre su futuro en FAS', 9, NULL),
	(30, 'Deporte', 'Guardiola no cierra la puerta a entrenar al Barça', 5, NULL),
	(31, 'Deporte', 'Una propuesta fuera de mercado de Arabia Saudí seduce a Cristiano Ronaldo', 5, NULL),
	(32, 'SerieA', 'La Juve sigue su remontada', 10, NULL),
	(33, 'SerieA', 'El Milán ya tendría sustituto para Rafael Leao', 10, NULL),
	(34, 'SerieA', 'El cambio de portero que ya valora el Inter de Milán', 10, NULL),
	(35, 'SerieA', 'El Nápoles se va al parón dominando el Calcio', 10, NULL),
	(36, 'SerieA', 'El refuerzo  de la Juve para el mercado invernal', 10, NULL),
	(37, 'SerieA', 'Los 3 fichajes que quiere cerrar el AC Milan', 10, 33),
	(38, 'Serie A', 'Test', 10, 33);

-- Volcando estructura para tabla futlibredb.participa
CREATE TABLE IF NOT EXISTS `participa` (
  `IDEQUIPO` int(11) NOT NULL,
  `IDCOMPETENCIA` int(11) NOT NULL,
  PRIMARY KEY (`IDEQUIPO`) USING BTREE,
  UNIQUE KEY `participa_IDEQUIPO_IDCOMPETENCIA_f3b7d342_uniq` (`IDEQUIPO`,`IDCOMPETENCIA`) USING BTREE,
  KEY `participa_IDCOMPETENCIA_13878a87_fk_competencia_IDCOMPETENCIA` (`IDCOMPETENCIA`) USING BTREE,
  CONSTRAINT `participa_IDCOMPETENCIA_13878a87_fk_competencia_IDCOMPETENCIA` FOREIGN KEY (`IDCOMPETENCIA`) REFERENCES `competencia` (`IDCOMPETENCIA`),
  CONSTRAINT `participa_IDEQUIPO_fb998e91_fk_equipo_IDEQUIPO` FOREIGN KEY (`IDEQUIPO`) REFERENCES `equipo` (`IDEQUIPO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.participa: ~5 rows (aproximadamente)
INSERT INTO `participa` (`IDEQUIPO`, `IDCOMPETENCIA`) VALUES
	(10, 1),
	(11, 1),
	(12, 1),
	(17, 4),
	(8, 8);

-- Volcando estructura para tabla futlibredb.partido
CREATE TABLE IF NOT EXISTS `partido` (
  `IDPARTIDO` int(11) NOT NULL,
  `FECHAPARTIDO` date NOT NULL,
  `GOLESCASA` int(11) NOT NULL,
  `GOLESFUERA` int(11) NOT NULL,
  PRIMARY KEY (`IDPARTIDO`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.partido: ~0 rows (aproximadamente)

-- Volcando estructura para tabla futlibredb.permiso
CREATE TABLE IF NOT EXISTS `permiso` (
  `IDPERMISO` int(11) NOT NULL,
  `ESTADOPERMISO` int(11) NOT NULL,
  PRIMARY KEY (`IDPERMISO`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.permiso: ~0 rows (aproximadamente)

-- Volcando estructura para tabla futlibredb.posee
CREATE TABLE IF NOT EXISTS `posee` (
  `IDROL` int(11) NOT NULL,
  `IDUSUARIO` int(11) NOT NULL,
  PRIMARY KEY (`IDROL`) USING BTREE,
  UNIQUE KEY `posee_IDROL_IDUSUARIO_c9628de8_uniq` (`IDROL`,`IDUSUARIO`) USING BTREE,
  KEY `posee_IDUSUARIO_f279d795_fk_usuario_IDUSUARIO` (`IDUSUARIO`) USING BTREE,
  CONSTRAINT `posee_IDROL_d074c642_fk_rol_IDROL` FOREIGN KEY (`IDROL`) REFERENCES `rol` (`IDROL`),
  CONSTRAINT `posee_IDUSUARIO_f279d795_fk_usuario_IDUSUARIO` FOREIGN KEY (`IDUSUARIO`) REFERENCES `usuario` (`IDUSUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.posee: ~0 rows (aproximadamente)

-- Volcando estructura para tabla futlibredb.rol
CREATE TABLE IF NOT EXISTS `rol` (
  `IDROL` int(11) NOT NULL,
  `TIPOROL` varchar(255) NOT NULL,
  PRIMARY KEY (`IDROL`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.rol: ~0 rows (aproximadamente)

-- Volcando estructura para tabla futlibredb.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `IDUSUARIO` int(11) NOT NULL,
  `NOMBREUSUARIO` varchar(255) NOT NULL,
  `CORREOUSUARIO` varchar(255) NOT NULL,
  `PASSWORDUSUARIO` varchar(255) NOT NULL,
  PRIMARY KEY (`IDUSUARIO`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla futlibredb.usuario: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
