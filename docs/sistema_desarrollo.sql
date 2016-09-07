-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-09-2016 a las 23:03:06
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_desarrollo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nombre_carrera` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_carrera_html` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_carrera_no_tilde` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `created_at`, `updated_at`, `nombre_carrera`, `nombre_carrera_html`, `nombre_carrera_no_tilde`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Ingeniería en Computación e Informática', 'Ingenier&iacute;a en Computaci&oacute;n e Inform&aacute;tica', 'Ingenieria en Computacion e Informatica'),
(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Ingeniería en Computación e Informática', 'Ingenier&iacute;a en Computaci&oacute;n e Inform&aacute;tica', 'Ingenieria en Computacion e Informatica'),
(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Ingeniería en Computación e Informática', 'Ingenier&iacute;a en Computaci&oacute;n e Inform&aacute;tica', 'Ingenieria en Computacion e Informatica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera_ramos`
--

CREATE TABLE `carrera_ramos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_carrera` int(10) UNSIGNED NOT NULL,
  `id_ramo` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `carrera_ramos`
--

INSERT INTO `carrera_ramos` (`id`, `created_at`, `updated_at`, `id_carrera`, `id_ramo`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_08_30_015035_create_usuario_sistemas_table', 1),
('2016_09_01_001512_create_carreras_table', 1),
('2016_09_01_001518_create_ramos_table', 1),
('2016_09_01_235448_create_carrera_ramos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ramos`
--

CREATE TABLE `ramos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nombre_ramo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_ramo_html` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_ramo_no_tilde` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ramos`
--

INSERT INTO `ramos` (`id`, `created_at`, `updated_at`, `nombre_ramo`, `nombre_ramo_html`, `nombre_ramo_no_tilde`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Matemáticas I', 'Matem&aacute;ticas I', 'Matematicas I'),
(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Matemáticas I', 'Matem&aacute;ticas I', 'Matematicas I'),
(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Matemáticas I', 'Matem&aacute;ticas I', 'Matematicas I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_sistemas`
--

CREATE TABLE `usuario_sistemas` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carrera_ramos`
--
ALTER TABLE `carrera_ramos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carrera_ramos_id_carrera_foreign` (`id_carrera`),
  ADD KEY `carrera_ramos_id_ramo_foreign` (`id_ramo`);

--
-- Indices de la tabla `ramos`
--
ALTER TABLE `ramos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_sistemas`
--
ALTER TABLE `usuario_sistemas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `carrera_ramos`
--
ALTER TABLE `carrera_ramos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `ramos`
--
ALTER TABLE `ramos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuario_sistemas`
--
ALTER TABLE `usuario_sistemas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrera_ramos`
--
ALTER TABLE `carrera_ramos`
  ADD CONSTRAINT `carrera_ramos_id_carrera_foreign` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id`),
  ADD CONSTRAINT `carrera_ramos_id_ramo_foreign` FOREIGN KEY (`id_ramo`) REFERENCES `ramos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
