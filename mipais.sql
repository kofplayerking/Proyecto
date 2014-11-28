-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2014 a las 17:32:26
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mipais`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE IF NOT EXISTS `departamentos` (
`idDepartamento` int(10) unsigned NOT NULL,
  `nombreDep` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Ubicacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `longitud` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitud` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `poblacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`idDepartamento`, `nombreDep`, `Ubicacion`, `descripcion`, `longitud`, `latitud`, `poblacion`) VALUES
(1, 'cabanas', 'paracentral', 'Cabañas es un departamento de la zona paracentral de El Salvador. Su cabecera departamental es Sensuntepeque. Esta región tiene muchas reservas naturales. El departamento fue nombrado en honor del político centroamericanista hondureño, José Trinidad Cabañas.', '-88.7500', '13.8667', '149 326 hab'),
(2, 'San vicente', 'paracentral', 'San Vicente es la ciudad cabecera del municipio y departamento homónimos en El Salvador. Fue fundada en el año 1635 y llegó a ser capital de la república en el siglo XIX. Durante lacolonización española, fue una de las localidades más importantes de la Intendencia de San Salvador.', '-88.85', '13.6', '53.213 hab'),
(3, 'Santa Ana', 'Occidental', 'Santa Ana es un departamento ubicado en la zona occidental de El Salvador. Su cabecera es la ciudad de Santa Ana que cuenta con aproximadamente una población de 245,421 habitantes. El Departamento fue creado en 1855 durante la presidencia de José María San Martín.', ' -89.5167 ', ' 13.8833', '523 655 hab');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_11_12_162247_create_mipais_table', 1),
('2014_11_14_152909_create_municipios_table', 1),
('2014_11_28_030303_create_users_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE IF NOT EXISTS `municipios` (
`idMuncipio` int(10) unsigned NOT NULL,
  `nombreMun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Ubicacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `longitud` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitud` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `poblacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tradiciones` text COLLATE utf8_unicode_ci NOT NULL,
  `nomDep` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`idMuncipio`, `nombreMun`, `Ubicacion`, `descripcion`, `longitud`, `latitud`, `poblacion`, `tradiciones`, `nomDep`) VALUES
(1, 'Sensuntepeque', 'paracentral', 'Sensuntepeque es una ciudad de El Salvador, cabecera del departamento de Cabañas, ubicada en la zona paracentral del país. Está situada a 83 km al noreste de la capital, San Salvador, y a una altitud de 820 msnm.\r\n\r\nTiene una población de 45 mil habitantes, y una extensión territorial de 306,33 km². Está subdividido geográficamente en se distribuyen en 22 cantones y 236 caseríos en la zona rural. La zona urbana se divide en cuatro populosos barrios y 28 colonias.\r\n\r\n\r\n', '13.8833', '-88.6333', '40 332 hab.', '<em>-Los fogones:</em> <br> Cada 7 de diciembre las personas recolectan hojas y las queman en la cuneta a las seis de la tarde, celebrando la víspera de la Virgen de Concepción. <br><em>-Servir riguas con leche cruda:</em><br> Rigua es una tortilla hecha de una mezcla de maíz, queso y crema, en el resto del país se sirve con crema, pero acá se introduce en un plato de leche recién ordeñada.<br><em>-La corrida del ángel:</em><br> Cada domingo de resurrección a las cuatro de la madrugada sale de la iglesia Santa Bárbara una imagen de ángel que es llevada corriendo hasta la iglesia El Calvario, ahí se abren las puertas y salen las imágenes de las tres Marías y caminan unos metros, luego el ángel regresa a la primera iglesia y de ahí salen otras imágenes. El ángel corre de iglesia a iglesia hasta que todas las imágenes se juntan para iniciar la procesión de “Los farolitos”.', '1'),
(2, 'Tejutepeque', 'paracentral', 'Tejutepeque es una ciudad ubicada en el departamento de Cabañas en la Región Paracentral de El Salvador, al noreste del país, tiene una población estimada de 7,968 habitantes para el año 2013,1 se dedica a la ganadería, cultivo de maíz, frijol, café, caña de azúcar. <br>\r\n\r\nEl nombre Tejutepeque emana de la función del perfijo Tejut o Texut = brasas, y Tepec, cerro, la localidad significa por consiguiente “Cerro de las brasas”, expresión utilizada para indicar un paraje de clima caluroso. Dicho nombre viene del náhuatl Testutepec, También significa: “Cerro de las Tejas”, “Cerro Caracol de Piedra”, “Cerro Azul”.', '13.85', '-88.9', '7,968 hab', 'Tejutepeque celebra sus Fiestas patronales del 13 al 24 de octubre en honor \r\na San Rafael Arcángel, entre las actividades se encuentran las oraciones y de \r\nparte de la comunidad y la municipalidad realizan el tradicional desfile del correo,\r\n desfile de Reinas de la fiesta y comunidades, diversos platillos típicos, bandas \r\ny otras actividades que engalanan las fiestas; siempre participa la Policia Nacional \r\nCivil por ser su Patrono; la CoPatrona es la Virgen de Concepción, celebran su festividad en el mes de diciembre.\r\n', '1'),
(3, 'Tecoluca', 'paracentral', 'Tecoluca es un municipio del departamento de San Vicente, El Salvador. Tiene una población estimada de 25 803 habitantes para el año 2013', '13.55', '-88.7833', '25 803 hab', 'En Tecoluca celebran las Fiestas Patronales en honor a San Lorenzo \r\nMártir del 1 al 10 de agosto; durante esta festividad, el 6 de agosto\r\n realizan actividades en honor al Divino Salvador del Mundo, por coincidir\r\n la fiesta patronal en su honor en la capital salvadoreña; durante las fiestas \r\nse realizan diversas alboradas, carrozas, serenatas y en las mañanas el tradicional reparto de atol shuco y de elote.\r\n', '2'),
(4, 'Ilobasco', 'paracentral', 'Ilobasco es una ciudad ubicada en el Departamento de Cabañas, en la Región Paracentral de El Salvador, su población, de unas 61,510 personas, se dedica a la ganadería, la agricultura del maíz, el comercio y a la alfarería la actividad por la que Ilobasco es más conocido. La extensión territorial del municipio es de 249.69 Kms2; para su administración el municipio se divide en 18 cantones y 111 caseríos. La ciudad se divide en los barrios: San Sebastián, San Miguel, Los Desamparados, El Calvario, y La Cruz.', ' -88.85 ', '13.85', '61,510 hab', 'La ciudad de Ilobasco celebra tradicionalmente sus fiestas patronales\r\nen honor a San Miguel Arcángel en los días comprendidos del 21 al 29 \r\nde septiembre; además el 10 de mayo se celebran las fiestas en honor \r\na la Virgen de los Desamparados; del 6 al 8 de diciembre en honor a la\r\n Virgen Inmaculada Concepción y una romería en honor al Señor de las\r\n Misericordias celebrada del 12 al 14 de enero.', '1'),
(5, 'Santo Domingo', 'paracentral', 'La localidad fue fundada a finales del siglo XVIII, y, de acuerdo al Intendente Antonio Gutiérrez y Ulloa, Santo Domingo era pueblo de indios y algunos ladinos, y pertenecía al Partido de Cojutepeque.\r\n\r\nEl 12 de junio de 1824 pasó a formar parte del departamento de San Salvador; y en 1835 pasó a Cuscatlán. Para 1859 tenía una población de 824 habitantes. Es probable que el año 1871 obtuviera el título de villa. El año 1873 Santo Domingo fue anexado al distrito de San Sebastián, en el departamento de San Vicente. Para 1890 tenía alrededor de unos 2.530 moradores.', ' -88.85 ', ' 13.7167 ', '7055 hab', 'La ciudad de Santo Domingo recientemente, del 28 de julio al 4 de agosto,\r\n celebró sus fiestas patronales en honor a Santo Domingo de Guzmán, durante\r\n la misma realizan diverso tipo de actividades tales como desfiles de carrozas, \r\nbailes, elección y coronación de su reina, se disfrutan los juegos mecánicos ubicados \r\nen el parque municipal y se comparte atol shuco y otros platillos típicos en cofradías \r\norganizadas por los diversos comités; entre otras actividades se realiza un festival del maíz, \r\nfestival gastronómico, concursos entre ellos el comelón de pupusas y se muestra a los visitantes\r\n el arte de sus pobladores, principalmente en la preparación de dulce artesanal así como artesanías \r\nen barro y madera; no puede faltar la alborada al patrono con la reventazón de pólvora para finalizar las fiestas.\r\n', '2'),
(6, 'San Sebastian', 'paracentral', 'San Sebastián es un municipio de El Salvador, en el departamento de San Vicente en la zona central del país.\r\n\r\nSan Sebastián dista aproximadamente 50 kilómetros al oriente de la ciudad de San Salvador, la capital del país. El castellano es el idioma oficial, sin embargo, se habla Inglés ampliamente en los lugares turísticos; en algunas zonas del interior parte de la población indígena aún se expresa en náhuat.', '-88.8167 ', '13.7167 ', '15 193 hab', 'San Sebastián posee casas de diferentes estilo, se conservan muchas de adobe\r\n y bahareque, otras con sistema mixto, algunas conservan estilo colonial y \r\notras son de estilo moderno; sus calles son rectas, la mayoría de cemento, \r\nalgunas empedradas o adoquinadas; en su plaza central posee un pequeño parque y \r\nel mercado municipal; se encuentra rodeada de portales y de su imponente Parroquia; \r\ncelebrar sus fiestas patronales del 16 al 31 de enero en honor a San Sebastián Mártir.', '2'),
(7, 'Metapan', 'Occidental', 'Metapán es un municipio salvadoreño ubicado en la zona occidental, en el Distrito Homónimo del departamento de Santa Ana.\r\n\r\nEs la segunda ciudad más grande del departamento de Santa Ana (El Salvador), y en las cercanías se encuentra el Parque Nacional Montecristo, el Lago de Güija y la laguna de Metapán.\r\n\r\nMetapán tiene una extensión territorial de 668.36 km², posee una población de 59,004 habitantes según el censo de 2007 ocupando el puesto número 24 en población y para su administración se divide en 29 cantones y 227 caseríos.\r\n\r\nDesde el 2006 el gobierno municipal es presidido por Juan Umaña Samayoa del Partido de Conciliación Nacional (PCN)', '-89.4167', ' 14.3167', '59 004 hab', 'Actualmente Metapán es una ciudad con alto desarrollo comercial, debido a sus minas \r\nde piedra caliza utilizadas para preparar cemento, a su límite con la frontera guatemalteca\r\n y a ser una de las ciudades con alto componente industrial; posee una zona moderna y \r\nsu centro histórico, donde posee casas de estilo colonial, con bellos relieves en sus paredes, \r\ntechos y amplios patios; al centro de la ciudad una bonita plaza rodeada por la Alcaldía Municipal, \r\nel local destinado al estadio Jorge el "calero" Suárez y su imponente Iglesia colonial de San Pedro Apóstol, \r\nque data de 1743, celebran sus fiestas patronales en honor a su mismo patrono del 20 al 29 de junio.\r\n', '3'),
(8, 'Santiago de la Frontera', 'occidental', 'Santiago de la Frontera, pertenece al Distrito de Metapán del departamento salvadoreño de Santa Ana en la zona occidental. Está ubicado a 98 Km de la capital.\r\n\r\nTiene una extensión territorial de 44.22 Km², con una población 9,150 habitantes, para su administración se divide en 6 cantones y 22 caseríos.\r\n\r\nDesde 2006 el alcalde de Santiago de la Frontera es José Antonio Martínez Barrera.', '\r\n -89.6167', '14.1667 ', '6714 hab', 'Santiago de la Frontera es una ciudad con varias pendientes, sus calles son de cemento, \r\ntiene una zona urbana bastante pequeña, un pequeño parque y una Iglesia Parroquial frente\r\n a su plaza central, celebran sus fiestas patronales del 24 al 25 de julio, en honor al Santo Santiago Apóstol.\r\n', '3'),
(9, 'Coatepeque', 'occidental', 'Coatepeque fue fundada alrededor del siglo V o VI después de Cristo por los Mayas Pocomames. Fue ocupado por los pipiles alrededor del 1200 D.C., llegando a formar parte del Señorío de Cuzcatlán.\r\n\r\nDurante la época colonial formó parte de la Alcaldía Mayor de San Salvador y posteriormente en 1786 formó parte del partido o distrito de Santa Ana de la Intendencia de San Salvador.\r\n\r\nDespués de la independencia, en 1824 pasó a formar parte del Departamento de Sonsonate y posteriormente del departamento de Santa Ana en 1855. El 21 de octubre de 1858 se le otorgó el título de villa y el 25 de marzo de 1917 el de ciudad.', ' -89.5167', '13.8833', '39 842 hab', 'La Iglesia San Pedro Apóstol es una iglesia bicentenaria, su estilo es colonial, \r\nposee dos alas con lo cual el templo forma una cruz; esta iglesia se convirtió \r\nen parroquia el 20 de julio de 1812; en esta se venera a San Pedro y a Jesús de los \r\nMilagros. En Coatepeque los católicos celebran tres grandes fiestas: la Romería de \r\nJesús de los Milagros, las fiestas en honor al Niño de Atocha y la celebración al patrono \r\nSan Pedro Apóstol. La Romería se desarrolla en Semana Santa, el tercer viernes; el Niño de Atocha\r\n es festejado en la Semana de Pascua; y las fiestas al patrono del 26 al 29 de junio.', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`idUsers` int(10) unsigned NOT NULL,
  `usuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contraseña` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
 ADD PRIMARY KEY (`idDepartamento`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
 ADD PRIMARY KEY (`idMuncipio`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`idUsers`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
MODIFY `idDepartamento` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
MODIFY `idMuncipio` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
MODIFY `idUsers` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
