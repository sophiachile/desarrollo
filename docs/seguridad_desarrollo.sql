-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-09-2016 a las 23:02:52
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `seguridad_desarrollo`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_accesos`
--

CREATE TABLE `log_accesos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `fecha_y_hora_acceso` datetime NOT NULL,
  `descripcion_accion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nombre_menu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link_menu` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `id_modulo` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
('2016_08_28_031115_create_usuarios_table', 1),
('2016_08_28_031344_create_perfils_table', 1),
('2016_08_28_031406_create_modulos_table', 1),
('2016_08_28_031440_create_rols_table', 1),
('2016_08_28_031514_create_menus_table', 1),
('2016_08_28_031542_create_usuario_perfils_table', 1),
('2016_08_28_031601_create_perfil_modulos_table', 1),
('2016_08_28_031634_create_rol_usuarios_table', 1),
('2016_08_28_032204_create_usuario_password_historicos_table', 1),
('2016_08_28_033011_create_log_accesos_table', 1),
('2016_08_30_015035_create_usuario_sistemas_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE `modulos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `codigo_modulo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_modulo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `estado_modulo` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`id`, `created_at`, `updated_at`, `codigo_modulo`, `descripcion_modulo`, `estado_modulo`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD001', 'Administración de usuarios', 'ACTIVO'),
(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD002', 'Administración de perfiles', 'ACTIVO'),
(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD003', 'Administración de modulos', 'ACTIVO'),
(4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD004', 'Administración de roles', 'ACTIVO'),
(5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD005', 'Configuración personal general', 'ACTIVO'),
(6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD006', 'Configuración personal seguridad', 'ACTIVO'),
(7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD007', 'Configuración personal privacidad', 'ACTIVO'),
(8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD008', 'Configuración personal bloqueos', 'ACTIVO'),
(9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD009', 'Configuración personal notificaciones', 'ACTIVO'),
(10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD010', 'Solicitudes de amistad', 'ACTIVO'),
(11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD011', 'Mensajes', 'ACTIVO'),
(12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD012', 'Notificaciones', 'ACTIVO'),
(13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD013', 'Editar perfil', 'ACTIVO'),
(14, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD014', 'Mis ramos', 'ACTIVO'),
(15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD015', 'Noticias', 'ACTIVO'),
(16, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD016', 'Administración de archivos', 'ACTIVO'),
(17, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD001', 'Administración de usuarios', 'ACTIVO'),
(18, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD002', 'Administración de perfiles', 'ACTIVO'),
(19, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD003', 'Administración de modulos', 'ACTIVO'),
(20, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD004', 'Administración de roles', 'ACTIVO'),
(21, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD005', 'Configuración personal general', 'ACTIVO'),
(22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD006', 'Configuración personal seguridad', 'ACTIVO'),
(23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD007', 'Configuración personal privacidad', 'ACTIVO'),
(24, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD008', 'Configuración personal bloqueos', 'ACTIVO'),
(25, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD009', 'Configuración personal notificaciones', 'ACTIVO'),
(26, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD010', 'Solicitudes de amistad', 'ACTIVO'),
(27, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD011', 'Mensajes', 'ACTIVO'),
(28, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD012', 'Notificaciones', 'ACTIVO'),
(29, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD013', 'Editar perfil', 'ACTIVO'),
(30, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD014', 'Mis ramos', 'ACTIVO'),
(31, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD015', 'Noticias', 'ACTIVO'),
(32, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD016', 'Administración de archivos', 'ACTIVO'),
(33, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD001', 'Administración de usuarios', 'ACTIVO'),
(34, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD002', 'Administración de perfiles', 'ACTIVO'),
(35, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD003', 'Administración de modulos', 'ACTIVO'),
(36, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD004', 'Administración de roles', 'ACTIVO'),
(37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD005', 'Configuración personal general', 'ACTIVO'),
(38, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD006', 'Configuración personal seguridad', 'ACTIVO'),
(39, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD007', 'Configuración personal privacidad', 'ACTIVO'),
(40, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD008', 'Configuración personal bloqueos', 'ACTIVO'),
(41, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD009', 'Configuración personal notificaciones', 'ACTIVO'),
(42, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD010', 'Solicitudes de amistad', 'ACTIVO'),
(43, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD011', 'Mensajes', 'ACTIVO'),
(44, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD012', 'Notificaciones', 'ACTIVO'),
(45, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD013', 'Editar perfil', 'ACTIVO'),
(46, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD014', 'Mis ramos', 'ACTIVO'),
(47, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD015', 'Noticias', 'ACTIVO'),
(48, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MOD016', 'Administración de archivos', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfils`
--

CREATE TABLE `perfils` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `codigo_perfil` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_perfil` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `estado_perfil` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `perfils`
--

INSERT INTO `perfils` (`id`, `created_at`, `updated_at`, `codigo_perfil`, `descripcion_perfil`, `estado_perfil`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ADM', 'administrador', 'ACTIVO'),
(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'USR', 'Usuario', 'ACTIVO'),
(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ADM', 'administrador', 'ACTIVO'),
(4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'USR', 'Usuario', 'ACTIVO'),
(5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ADM', 'administrador', 'ACTIVO'),
(6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'USR', 'Usuario', 'ACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_modulos`
--

CREATE TABLE `perfil_modulos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_modulo` int(10) UNSIGNED NOT NULL,
  `id_perfil` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `perfil_modulos`
--

INSERT INTO `perfil_modulos` (`id`, `created_at`, `updated_at`, `id_modulo`, `id_perfil`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 1),
(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 1),
(4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 1),
(5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 2),
(6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 6, 2),
(7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, 2),
(8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 2),
(9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9, 2),
(10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10, 2),
(11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 11, 2),
(12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 12, 2),
(13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 13, 2),
(14, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 14, 2),
(15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 15, 2),
(16, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 16, 2),
(17, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 17, 1),
(18, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, 1),
(19, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 19, 1),
(20, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 20, 1),
(21, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 21, 2),
(22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 22, 2),
(23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 23, 2),
(24, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 24, 2),
(25, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 25, 2),
(26, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 26, 2),
(27, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 27, 2),
(28, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 28, 2),
(29, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 29, 2),
(30, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 30, 2),
(31, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 31, 2),
(32, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 32, 2),
(33, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 33, 1),
(34, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 34, 1),
(35, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 35, 1),
(36, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 36, 1),
(37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 37, 2),
(38, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 38, 2),
(39, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 39, 2),
(40, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 40, 2),
(41, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 41, 2),
(42, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 42, 2),
(43, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 43, 2),
(44, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 44, 2),
(45, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 45, 2),
(46, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 46, 2),
(47, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 47, 2),
(48, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 48, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rols`
--

CREATE TABLE `rols` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `codigo_rol` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_rol` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_modulo` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `rols`
--

INSERT INTO `rols` (`id`, `created_at`, `updated_at`, `codigo_rol`, `descripcion_rol`, `id_modulo`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL001', 'Crear usuarios', 1),
(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL002', 'Modificar usuarios', 1),
(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL003', 'Eliminar usuarios', 1),
(4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL004', 'Bloquear/desbloquear usuarios', 1),
(5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL005', 'Resetear contraseña', 1),
(6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL006', 'Ingresar perfil', 2),
(7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL007', 'Modificar perfil', 2),
(8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL008', 'Eliminar perfil', 2),
(9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL009', 'Ingresar modulos', 3),
(10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL010', 'Modificar modulos', 3),
(11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL011', 'Eliminar modulos', 3),
(12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL012', 'Ingresar roles', 4),
(13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL013', 'Modificar roles', 4),
(14, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL014', 'Eliminar roles', 4),
(15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL015', 'Modificar información', 5),
(16, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL016', 'Bloquear usuarios', 8),
(17, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL017', 'Buscar usuarios', 10),
(18, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL018', 'Agregar usuarios', 10),
(19, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL019', 'Enviar mensaje a un usuario', 11),
(20, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL020', 'Ver notificaciones', 12),
(21, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL021', 'Modificar información de perfil', 13),
(22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL022', 'Ingresar información de ramos', 14),
(23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL023', 'Ver noticias', 15),
(24, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL024', 'Agregar archivos', 16),
(25, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL025', 'Ver archivos', 16),
(26, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL025', 'Compartir archivos', 16),
(27, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL001', 'Crear usuarios', 17),
(28, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL002', 'Modificar usuarios', 17),
(29, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL003', 'Eliminar usuarios', 17),
(30, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL004', 'Bloquear/desbloquear usuarios', 17),
(31, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL005', 'Resetear contraseña', 17),
(32, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL006', 'Ingresar perfil', 18),
(33, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL007', 'Modificar perfil', 18),
(34, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL008', 'Eliminar perfil', 18),
(35, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL009', 'Ingresar modulos', 19),
(36, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL010', 'Modificar modulos', 19),
(37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL011', 'Eliminar modulos', 19),
(38, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL012', 'Ingresar roles', 20),
(39, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL013', 'Modificar roles', 20),
(40, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL014', 'Eliminar roles', 20),
(41, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL015', 'Modificar información', 21),
(42, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL016', 'Bloquear usuarios', 24),
(43, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL017', 'Buscar usuarios', 26),
(44, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL018', 'Agregar usuarios', 26),
(45, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL019', 'Enviar mensaje a un usuario', 27),
(46, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL020', 'Ver notificaciones', 28),
(47, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL021', 'Modificar información de perfil', 29),
(48, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL022', 'Ingresar información de ramos', 30),
(49, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL023', 'Ver noticias', 31),
(50, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL024', 'Agregar archivos', 32),
(51, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL025', 'Ver archivos', 32),
(52, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL025', 'Compartir archivos', 32),
(53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL001', 'Crear usuarios', 33),
(54, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL002', 'Modificar usuarios', 33),
(55, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL003', 'Eliminar usuarios', 33),
(56, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL004', 'Bloquear/desbloquear usuarios', 33),
(57, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL005', 'Resetear contraseña', 33),
(58, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL006', 'Ingresar perfil', 34),
(59, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL007', 'Modificar perfil', 34),
(60, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL008', 'Eliminar perfil', 34),
(61, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL009', 'Ingresar modulos', 35),
(62, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL010', 'Modificar modulos', 35),
(63, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL011', 'Eliminar modulos', 35),
(64, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL012', 'Ingresar roles', 36),
(65, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL013', 'Modificar roles', 36),
(66, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL014', 'Eliminar roles', 36),
(67, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL015', 'Modificar información', 37),
(68, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL016', 'Bloquear usuarios', 40),
(69, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL017', 'Buscar usuarios', 42),
(70, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL018', 'Agregar usuarios', 42),
(71, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL019', 'Enviar mensaje a un usuario', 43),
(72, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL020', 'Ver notificaciones', 44),
(73, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL021', 'Modificar información de perfil', 45),
(74, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL022', 'Ingresar información de ramos', 46),
(75, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL023', 'Ver noticias', 47),
(76, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL024', 'Agregar archivos', 48),
(77, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL025', 'Ver archivos', 48),
(78, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ROL025', 'Compartir archivos', 48);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_usuarios`
--

CREATE TABLE `rol_usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_rol` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `edad` int(11) NOT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `fecha_expiracion` date NOT NULL,
  `reintentos` int(11) NOT NULL,
  `pregunta_secreta` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_secreta` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `nombre`, `apellido`, `email`, `password`, `fecha_nacimiento`, `edad`, `estado`, `fecha_registro`, `fecha_expiracion`, `reintentos`, `pregunta_secreta`, `respuesta_secreta`, `pais`) VALUES
(1, '0000-00-00 00:00:00', '2016-08-31 02:33:32', '', '', '', '', '1985-03-02', 31, 'ACTIVO', '2016-08-29 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Chile'),
(2, '0000-00-00 00:00:00', '2016-09-01 02:07:54', 'Giovani', 'Koepp', 'Rau.Leaaanna@Halvorson.com', '$2y$10$8hs2GoPh3gLI5H/wvgwTr.ktg.he/jNiOrvjR7G0wphcGJ2Dzkx5G', '1984-12-10', 57, 'ACTIVO', '2004-06-18 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Gabon'),
(3, '0000-00-00 00:00:00', '2016-08-31 02:56:57', 'Hello!!!', 'asasas', 'san.storres@gmail.com', '123456', '2016-06-01', 42, 'ACTIVO', '1991-04-14 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Guernsey'),
(4, '0000-00-00 00:00:00', '2016-09-01 02:38:27', 'Deonte', 'Gorczany', 'Eme1111lia26@Tremblay.biz', '$2y$10$nIL5sF./Tpv/1Ti9y3lf/ujBc7JiE.nwuDEpisaGPzLdtLesrwwgm', '1995-11-26', 51, 'ACTIVO', '1997-09-12 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Slovakia (Slovak Republic)'),
(5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Cletus', 'Kerluke', 'Jakubowski.Bernie@hotmail.com', '$2y$10$WsFubmYm6/l0iVenANh8NOhwsia20mMYCCUwKWyvUc7h03fYadY6q', '1977-08-13', 42, 'ACTIVO', '1987-05-05 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Saint Pierre and Miquelon'),
(6, '0000-00-00 00:00:00', '2016-09-01 02:11:26', 'Carlie', 'Aufderhar', 'Amaaalia81@Kuphal.com', '$2y$10$/KEmwaMO12z2SSYAOQV9LeTG2RwJHHrlFpCSjj1BqHZj5K77sMiRe', '2000-10-16', 25, 'ACTIVO', '1983-09-24 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Lithuania'),
(7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Devante', 'Spencer', 'Walker.Autumn@Sipes.com', '$2y$10$7yXCsgdU63mnETi8f.1EluzxWR.yJPuBpuYKyxs44wJEfIOFwOqg6', '1997-03-14', 94, 'ACTIVO', '2007-11-03 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Guernsey'),
(8, '0000-00-00 00:00:00', '2016-09-01 02:11:03', 'Leon', 'Howell', 'Rice.Valeaantina@Moen.com', '$2y$10$oJC/ZxJZS32juFODP2Bk5uVk9sK59SnRFlW4SV9dIohJKK5baMq/6', '1971-02-19', 102, 'ACTIVO', '1997-04-12 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Kyrgyz Republic'),
(9, '0000-00-00 00:00:00', '2016-08-31 22:01:12', 'Mariana', 'Gislason', 'Braun.Cedricssk@Mitchell.com', '$2y$10$Q9ipIee4FDbS2xp1cdGI.eTyHhR8KDjfBhELmGEIIbHlQVcpa.gwi', '2011-12-28', 7, 'ACTIVO', '1970-10-17 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Netherlands Antilles'),
(10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Marquise', 'Oberbrunner', 'OKeefe.Mertie@Hodkiewicz.biz', '$2y$10$aEcoEnPgdhDCSUiW4u56rOOjynlJMxwSb0Ketv07lCaHhZYwLAxyq', '2003-01-17', 95, 'ACTIVO', '1982-07-28 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Macedonia'),
(11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Hadley', 'Abshire', 'Emilie69@hotmail.com', '$2y$10$JUkn6fn5Ueayxct50rhGte6uAhjbxrF4tFIRJJBKo5h0qem.k1JXm', '2011-12-21', 90, 'ACTIVO', '2000-09-27 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Monaco'),
(12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Lucious', 'Paucek', 'Miracle.Fadel@yahoo.com', '$2y$10$ZLUarqkoFrw5x7zwFRwMPulZkNP6c/p46nr.bZ3vjr41mUbSEKJA.', '1989-10-12', 115, 'ACTIVO', '2011-03-11 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Botswana'),
(13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Beaulah', 'Grant', 'jSchneider@gmail.com', '$2y$10$79/KRAMh1yJ5uFdi1ZBBd.UgXK3mAX.R5lmqiAEkGWiLjze3zx6jC', '1983-04-21', 76, 'ACTIVO', '1977-01-26 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Nicaragua'),
(14, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Keith', 'Armstrong', 'pRitchie@Waters.net', '$2y$10$ssNy2P8NeBB1wqBBuHH/qubPG6UKpkwzSzu1hn5ILUNmQFsY4wuq6', '1997-06-11', 26, 'ACTIVO', '1972-11-12 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Burkina Faso'),
(15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Norris', 'Heaney', 'Makenzie15@Veum.com', '$2y$10$NveepPHCqbZ4JEnFheSH0eosg1GiIPwU4j7gYusOKy/6xVqTyDlLW', '1973-10-16', 89, 'ACTIVO', '1999-03-19 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Georgia'),
(16, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tyrel', 'Corkery', 'Nader.Kurtis@gmail.com', '$2y$10$Ic8mTTf5aEY92xaXMzrWguSh5is6TJAMCYiTmZ8KmIrOeoLVwIPIW', '1984-03-10', 15, 'ACTIVO', '1975-03-18 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Georgia'),
(17, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Waldo', 'Daugherty', 'gSpencer@gmail.com', '$2y$10$Vcv1KatsYk2zVzVQwDEk7.2o7mWxRZPRLsM.JXHwey8qiMW9DBh5S', '1973-07-25', 29, 'ACTIVO', '1979-04-09 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Serbia'),
(18, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Nathan', 'Kutch', 'Jackie22@yahoo.com', '$2y$10$MjpfmKOsZsxFr8eTlpxf2.YfOJVFkZo8vwRb2GIn/OZKJiPvmJJ2a', '1978-06-18', 102, 'ACTIVO', '2007-02-04 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Switzerland'),
(19, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Adolf', 'D''Amore', 'Marks.Wiley@Walker.org', '$2y$10$LSVA1AkTI6RbiqlPtS.xGe1LWm8iou.V8Eu5MNddafqBzt.0NStLS', '1977-04-27', 116, 'ACTIVO', '2013-04-24 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'New Caledonia'),
(20, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Angus', 'Labadie', 'Werner.Thompson@Harvey.com', '$2y$10$mGPtk4uZ3NiInuh63S1h6uzc9qFD2bKssBZc6hspFSYlr9UuevNVm', '1972-11-10', 14, 'ACTIVO', '2001-11-30 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Bahrain'),
(21, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Arno', 'Weissnat', 'Charlie01@hotmail.com', '$2y$10$GE01bA6kHauA/eYFZ3nZQu3Hp1ivMhh5M5zu1713BAardefjwVuG6', '1991-04-29', 10, 'ACTIVO', '2003-09-10 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Guyana'),
(22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Madilyn', 'Collins', 'mWilkinson@gmail.com', '$2y$10$FfnN8j/0xDvLO5F6LBjFh.jFAeMvFQ6NwlFKkPx0vs1Z7bLDLrrDm', '1999-08-02', 111, 'ACTIVO', '1984-01-09 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Hong Kong'),
(23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Jameson', 'Barrows', 'qFrami@hotmail.com', '$2y$10$j898P4aFeXFnkaHIs27EjuLKaoQ5Qsz7da0YJK/Hg5BDoHj/rZDXS', '1996-07-18', 116, 'ACTIVO', '1990-08-20 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Benin'),
(24, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Alexzander', 'Cassin', 'Herman59@hotmail.com', '$2y$10$RP3yj7qvlOFeqeHLTS32xOGdIsR9jY.fx3Og1yTGfCxntoyCRO.f2', '2010-11-18', 51, 'ACTIVO', '1976-01-28 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Hungary'),
(25, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Lyric', 'Lueilwitz', 'Gerlach.Ursula@Rosenbaum.info', '$2y$10$xLJsxHXu5DbdYKfJxY1c/ugS/nmAtKk1u1I9GXFe5vzdS8Fp1nkCa', '1993-08-17', 69, 'ACTIVO', '1999-06-16 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Maldives'),
(26, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Deonte', 'Hudson', 'Cristina86@hotmail.com', '$2y$10$ZODLKzKr2epjksd0aOmDMecoD2UHAzu4WOK/2WflS/jCqWyt5lwF.', '1972-06-25', 35, 'ACTIVO', '2015-12-28 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Namibia'),
(27, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Johanna', 'Hickle', 'Fiona.Homenick@hotmail.com', '$2y$10$f3RnAKZqMx9kX2fIzKCHfOmzPvZkLQwFBPt4tV7oKO1tPdhujDv4K', '1988-07-28', 38, 'ACTIVO', '1975-10-16 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Samoa'),
(28, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Lempi', 'Ledner', 'iPagac@Kshlerin.biz', '$2y$10$jqPeXMkGPuhsxZtmthxBaOa61UlLSD79/.mW3sw.JtQ.lot0v7IBC', '2005-05-13', 105, 'ACTIVO', '1993-02-27 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Kiribati'),
(29, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Kaia', 'Grant', 'Fay.Louie@hotmail.com', '$2y$10$/bs3BPKUO90ssCkEEKa/2OeKWKAX5n.qPoAuPy56cYz8pTHvgNNcO', '1979-09-15', 46, 'ACTIVO', '2011-02-27 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Haiti'),
(30, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Constance', 'Murphy', 'McCullough.Sabina@yahoo.com', '$2y$10$mKJVwt/3qgUQ9G4PeAP/FeviBtDvBAcJk7TgoF1TmsZDSgwJvPcN.', '2011-11-15', 109, 'ACTIVO', '1997-07-04 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'New Caledonia'),
(31, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Kendra', 'Denesik', 'Akeem06@yahoo.com', '$2y$10$pY5nKHQJ40p2Q4QonqnhTu/.G91dkzwMdnRx.jgipBsabkbfd.wQy', '1971-03-30', 2, 'ACTIVO', '1970-12-11 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Morocco'),
(32, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Estrella', 'Rau', 'Kimberly.Leffler@Fisher.org', '$2y$10$4UCK6kp7jkfaQdr45JYLtOQLv0WvDF8z1Fzd5qmkdUO7M8eGTsJry', '1991-04-14', 114, 'ACTIVO', '2016-05-15 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Kenya'),
(33, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Margarette', 'Gutkowski', 'mGibson@Dickinson.com', '$2y$10$zLgviiauPwIOsrfqjJUgFef3ftk/EtbNmwyi9tBGK5Bdd8WpjUuG6', '1978-12-16', 26, 'ACTIVO', '1973-04-21 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Liberia'),
(34, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Jakayla', 'Volkman', 'Stark.Michaela@Anderson.com', '$2y$10$KAgcsxRpJBcxG762ilymk.jjk0dWWavkN1rB2n21NKdk5IqpBQjKK', '1990-07-21', 95, 'ACTIVO', '1986-06-15 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Dominica'),
(35, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Hellen', 'Bins', 'Anastacio.Becker@hotmail.com', '$2y$10$n/0Wmm50cL6yxlHsKcS95.HyjgCcOXR5Bhz0xSx92C9.9Huf0oFOO', '2012-07-01', 28, 'ACTIVO', '1977-05-04 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Christmas Island'),
(36, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Abby', 'Johnston', 'Rico30@Schowalter.org', '$2y$10$vDkkHRSsRt4YSZchNdtWNeksXryKojKBrEMTyIhEPbM6iBTtRkyx6', '1986-10-16', 98, 'ACTIVO', '2005-06-26 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Bhutan'),
(37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Addie', 'Bartell', 'Macie.Russel@Hand.org', '$2y$10$qbwt8TpRqBQg7lhKh/4UXuldwSX11wyU1SDuV/PsQZKZXpdDt6Q.a', '1971-05-12', 69, 'ACTIVO', '1989-10-22 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Mongolia'),
(38, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Beatrice', 'Hammes', 'White.Taya@hotmail.com', '$2y$10$Lu4pMRQXS249CYi568e2D.f/4VUIfieBOda/lW26sr6BmLdyjcFsu', '1973-06-29', 104, 'ACTIVO', '2006-11-17 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Norway'),
(39, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Jerel', 'Lang', 'bMiller@yahoo.com', '$2y$10$aLBN8gVMtX7CL74O0dJUA.w2m2yNtDxmTV2Rdd4c.WUcLz2wgAWNG', '1993-07-10', 70, 'ACTIVO', '1985-07-24 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'British Virgin Islands'),
(40, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Barney', 'Funk', 'Rachelle37@yahoo.com', '$2y$10$fppicl.SWbqeitOwyYYIcunAT/KjLYIgveXw6sQE5FFSLjfJehecm', '2015-11-17', 98, 'ACTIVO', '2010-10-05 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Maldives'),
(41, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Augusta', 'Torphy', 'Bahringer.Efren@gmail.com', '$2y$10$LdaCWzeETMWGe48yqn0kG.5cdE0gSg0rydNtTrEqROPGrbolln2sq', '1993-08-26', 30, 'ACTIVO', '2004-08-15 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Cameroon'),
(42, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Kianna', 'Beier', 'Esta87@Beahan.info', '$2y$10$9wHEK8GmJNOtWWcoUtFVI.uTp.RFApVuW4MJGZB/A6Ntma3jKcylq', '1980-03-21', 101, 'ACTIVO', '2016-02-19 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Poland'),
(43, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Garfield', 'Powlowski', 'Price.Powlowski@Hickle.info', '$2y$10$gPldC2i9iZTE98cJNgjlB.i281oLyz2q6PRpA6lVCx5PfRY/XhNfK', '2004-03-30', 50, 'ACTIVO', '1982-07-28 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Mauritania'),
(44, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Elaina', 'Daugherty', 'mArmstrong@gmail.com', '$2y$10$3IgABe/K4.xoMUIFr1oWbO8KeykWW8Ux4e5yaDyRZYGNZb5jYi/vq', '1979-03-28', 51, 'ACTIVO', '1978-04-09 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Afghanistan'),
(45, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Damian', 'Langworth', 'Gregorio06@yahoo.com', '$2y$10$fOzsEkM8hX6dtVRlkt0R5.XrVO6PTdxmxt10CaB109RvET7z.X7L.', '1972-10-28', 76, 'ACTIVO', '1993-05-24 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Tonga'),
(46, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Edgar', 'Heathcote', 'Karina83@hotmail.com', '$2y$10$RrQQBI60GNxj97XoVyAudO/QlGJpVM0HgZlVRcpMBg.fHDBISUngG', '2016-04-18', 96, 'ACTIVO', '1971-10-27 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Italy'),
(47, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Keshaun', 'Sauer', 'Schmitt.Adriana@Kuhlman.info', '$2y$10$V2SnkrbZHo04aaHTC7.L3eGVnkVyRsrwpxjQa1f95hBU0sW28ZuOy', '2015-04-22', 104, 'ACTIVO', '2005-07-26 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Finland'),
(48, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Marco', 'Kassulke', 'Jalen22@Heidenreich.org', '$2y$10$2JbMMMm7mGucDtubDjQt5eJHIAoyt9WG5Drj2S2JsJ63YGFxexau6', '1970-06-20', 70, 'ACTIVO', '1987-08-11 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'United Kingdom'),
(49, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Hildegard', 'Jaskolski', 'Heidenreich.Nadia@Becker.org', '$2y$10$5Ev25MxF9XoFt0uslBXM8eEyBqITqoqdQCxyhuX9Xor8OGLEwDmly', '2005-05-13', 61, 'ACTIVO', '2013-12-17 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Micronesia'),
(50, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Maximo', 'D''Amore', 'Bayer.Fay@yahoo.com', '$2y$10$SPZ7FBz8xRVSkqOWg4k2uesfyMhGfmm/UwSTzyzZSEd5K8VQv..VC', '1982-02-03', 91, 'ACTIVO', '1973-06-13 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Togo'),
(51, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Paxton', 'Hegmann', 'Nash51@yahoo.com', '$2y$10$1xYj6BGg2rSiaXubzxvDmOwMDXeqqx5O/mirSGS1RL..ElvmfWv3O', '1973-03-12', 35, 'ACTIVO', '1974-02-10 00:00:00', '2017-08-29', 0, 'Hola como estas', 'bien y tu', 'Botswana'),
(52, '2016-08-29 05:18:22', '2016-08-29 05:18:22', 'asas', 'asas', 'asas@a.cl', '$2y$10$YwTrwl7GjoNxZtGogrSZROUt7iYuEjQkVwzanmDomxJLFUe4Jh3UG', '0000-00-00', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(53, '2016-08-29 06:01:07', '2016-08-29 06:01:07', 'asas', 'asas', 'asas@a.cl', '$2y$10$RHJ5ZaS60.wN7AQbB5936.B.izxz86rhVaTKAUTs4bE4yQnUcV0/q', '0000-00-00', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(54, '2016-08-29 20:44:45', '2016-08-29 20:44:45', 'assa', 'asas', 'asas@a.cl', '$2y$10$TU0GcgbpA08StVir1f7Ade/G2RPVUgyjbZ2gLaFXqjDpcdbIvgVJO', '0000-00-00', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(55, '2016-08-29 20:59:52', '2016-08-29 20:59:52', 'asa', 'aasas', 'asas@a.cl', '$2y$10$VNIse1nbqJnX564i0SS7TOGSbekmRiDt.wUrm0QK18zEioWvLSX2y', '0000-00-00', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(56, '2016-08-29 21:02:33', '2016-08-29 21:02:33', 'asa', 'aasas', 'asas@a.cl', '$2y$10$9P3hB4O.foRJ/02fxCokkuhMciwSFGjqkdk0rYGKGVE6ki/3ut3wC', '0000-00-00', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(57, '2016-08-29 21:03:24', '2016-08-29 21:03:24', 'asa', 'aasas', 'asas@a.cl', '$2y$10$4xrYE5SAByD85a/ZxYmSdezrHSavajN3Pab/348JRen0vfMNHRuJG', '0000-00-00', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(58, '2016-08-29 21:07:38', '2016-08-29 21:07:38', 'asa', 'aasas', 'asas@a.cl', '$2y$10$lvi2RKuBhSTPD6DqNbP33umsSLhEBs//LF4CMXAL6Af0/nUD4PqTm', '0000-00-00', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(59, '2016-08-29 21:08:15', '2016-08-29 21:08:15', 'asa', 'aasas', 'asas@a.cl', '$2y$10$atIEpNJXcynv7swJckSpcuMWFUoE6wIeh8D3ksn1kl.0S3radNw06', '0000-00-00', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(60, '2016-08-29 21:12:28', '2016-08-29 21:12:28', 'asa', 'aasas', 'asas@a.cl', '$2y$10$D6MRN2nydY.A8qWVlVTzjOHjEC.jpZ9YmnK.hRZc5GloluAPy7pn6', '0000-00-00', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(61, '2016-08-29 21:13:39', '2016-08-29 21:13:39', 'asas', 'asas', 'asas@a.cl', '$2y$10$FBaeDAA/6vXJgiEzSN0fceB/JkRWhmCipWxBeN4tQgNvDkm7SgA/O', '0000-00-00', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(62, '2016-08-29 21:14:33', '2016-08-29 21:14:33', 'asas', 'asas', 'asas@a.cl', '$2y$10$u0tqyU4EqVMjhBHjwU4/iekH5kOCjRrtU7thG8moNdn7aButsXsre', '1976-09-12', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(63, '2016-08-29 21:15:00', '2016-08-29 21:15:00', 'asas', 'asas', 'asas@a.cl', '$2y$10$kfFUpOvwFhk9BaveHSu1GeMo2YXGGyqpK2Q5AC6mZwR51KydGMmmK', '1976-09-12', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(64, '2016-08-30 13:51:46', '2016-08-30 13:51:46', 'asas', 'asas', 'ass@asas.cl', '$2y$10$KwgiKyDz7dD47Xk7vpn1zOrrVTE29JgrsxkKG.mpaWkgKiSZZhuyy', '1976-12-16', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(65, '2016-08-30 13:52:12', '2016-08-30 13:52:12', 'asas', 'asas', 'ass@asas.cl', '$2y$10$.me7hsQpGDO6ifd2nYtET.8VX6yIrU7XeszCh1pStqNIcgU2F5/5C', '1977-03-12', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(66, '2016-08-30 13:52:19', '2016-08-30 13:52:19', 'asas', 'asas', 'ass@asas.cl', '$2y$10$VcI8q6jRE1PiOZ0Wd50hJePEKKjntX9fYp5lDD2JRQcNLG.ft8T.m', '1977-03-04', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(67, '2016-08-30 13:52:25', '2016-08-30 13:52:25', 'asas', 'asas', 'ass@asas.cl', '$2y$10$cjtUaiWKmHe2q0C9BOw6guIa0w6fiM9YwL2CDS4wvTF37XRMiiQKS', '1977-03-04', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(68, '2016-08-30 13:52:37', '2016-08-30 13:52:37', 'asas', 'asas', 'ass@asas.cl', '$2y$10$5lR.KM/ym0UnF6zOR/SS3euJHI4quQPixjiFX6WH9C.G.EHfUiaE6', '1977-09-05', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(69, '2016-08-30 13:52:46', '2016-08-30 13:52:46', 'asas', 'asas', 'ass@asas.cl', '$2y$10$kV1UJbwbNFxLy8QRCbXyreOyTe..u0iYeJKE9xJrNZ2Xg6pI6akMS', '1977-09-05', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(70, '2016-08-30 14:49:29', '2016-08-30 14:49:29', 'aa', 'aasas', 'ass@asas.cl', '$2y$10$Pmsukhp0942jPEvAVzPvLesI9NSu5w6/h0wgGSykIlFAHn5i12OaK', '1978-09-13', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(71, '2016-08-30 14:50:09', '2016-08-30 14:50:09', 'aa', 'aasas', 'ass@asas.cl', '$2y$10$zIUvFh08mzM2YN8jCfsEv.WrDOqMKqSM/cagcwRavH1pMoTA1KDt2', '1978-09-13', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(72, '2016-08-30 17:47:52', '2016-08-31 21:17:09', 'aa', 'aasas', 'jajaaaa@asas.cl', '$2y$10$G1CoPumeUmwjAleD4z2FQOv1xIr1fxs2MavR3l9CkbCA23U6w.uT.', '0000-00-00', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(73, '2016-08-30 17:48:57', '2016-08-30 17:48:57', 'aa', 'aasas', 'ass@asas.cl', '$2y$10$SFC860tso8RHV/oJeAm4eOaE3.ewFQGv/X001Rc5Xnaji4qTkNox.', '0000-00-00', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(74, '2016-08-31 21:09:41', '2016-08-31 21:09:41', 'asas', 'asas', 'hello@a.cl', '$2y$10$otOfhdaDWgu6/FhkuCu9p.XpucRmC1e8l0dSackHkfOdbbysY04N.', '0000-00-00', 0, '', '0000-00-00 00:00:00', '0000-00-00', 0, '', '', ''),
(75, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Admin', 'istrador', 'carlos.gonzalez.gavilan@gmail.com', '$2y$10$fD6jnGl8djIkAi33pTorjeQac9p.QLJtD/1ZblpvUQvdUKN8GnN7e', '1985-03-02', 31, 'ACTIVO', '2016-08-31 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Chile'),
(76, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Odie', 'Stokes', 'Aidan.Daniel@Ankunding.net', '$2y$10$QyTK2p2z6hn6K4lxD0z0SemjOy1CeRqvd/56.XXtnYNxnUdOBObC6', '1986-08-09', 99, 'ACTIVO', '1979-06-27 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Montenegro'),
(77, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Christophe', 'Zemlak', 'Medhurst.Florian@gmail.com', '$2y$10$vOrTqUlcca5a3m90zLwahuKs3YbK6NY7NEPPw/BsxCYhRRsDBmolC', '2007-08-30', 100, 'ACTIVO', '1975-12-07 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Kenya'),
(78, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Cole', 'McGlynn', 'Maryse.Halvorson@Auer.org', '$2y$10$raDdAPfl/DCimt45aobj0OCw.bSyZgqSunVm.LpX6TRADImPLh7qu', '2002-02-11', 111, 'ACTIVO', '1996-09-03 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Cayman Islands'),
(79, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Manuel', 'Koepp', 'Renner.Francis@yahoo.com', '$2y$10$vvbDzezs9SrM44WJvWEI4eiP5ab1MRGSjZyNzK9jh5K.nax0/f9.W', '1991-07-14', 63, 'ACTIVO', '1996-02-24 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Sao Tome and Principe'),
(80, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Ernest', 'Hickle', 'rBlick@Hilll.info', '$2y$10$bFPMfDOA8V.lclR11vL4..cIBHeH2Wpzl2ejULIKWu0Rhy82uGXn.', '1995-04-29', 69, 'ACTIVO', '1970-05-13 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Nauru'),
(81, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Winifred', 'Schuppe', 'xCollier@hotmail.com', '$2y$10$oaWncIZSYaCP4KbFMRzN0euPC23QP4U.Jbhap1a8PN3Od9afT92ZK', '1986-11-18', 90, 'ACTIVO', '1972-11-11 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Paraguay'),
(82, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Olga', 'Towne', 'Gregg.Hayes@Wisoky.com', '$2y$10$ln/TjqDB9Qidvszp2tscm.z3ttpLGBKfXDDths6FXtmsJYkvWVxZ.', '2012-07-19', 8, 'ACTIVO', '1979-04-29 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Estonia'),
(83, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Julia', 'Carter', 'Parker.Gulgowski@Swift.com', '$2y$10$kxhWJQ9VweLdCovKtYiHT.T4klYrNK4bltukIDTX/6AEvxHJP2Gga', '1971-12-09', 75, 'ACTIVO', '2012-05-04 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Sudan'),
(84, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tobin', 'Witting', 'Donnelly.Milton@Greenfelder.org', '$2y$10$ZiiB1IaRYoZOGDfMeuPz0.qM9Y2.S990V59//Yv.3G7K162abz8fy', '2004-08-26', 52, 'ACTIVO', '1970-04-24 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Paraguay'),
(85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Krystel', 'Mitchell', 'Madisyn44@OConner.net', '$2y$10$2yMA5spMxXQVv.3VxPC4tegn5bSE1RplUJUJT3HGBctrG/Ttc8XZS', '1996-03-27', 7, 'ACTIVO', '1994-05-29 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Iran'),
(86, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Andreane', 'White', 'Cornelius88@gmail.com', '$2y$10$G1WzZvo4RHk3Hlrvy.Vg1uUbba56wVTdBT9gd7injj3ehNZzy8Lai', '2008-05-11', 54, 'ACTIVO', '1980-05-28 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Chile'),
(87, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Stephan', 'D''Amore', 'Spinka.Sabrina@Flatley.biz', '$2y$10$beag1RhmCKIP3tAE77jnI.0KmEYdjecbmpPWyfDfTNxPHYUTPZmHO', '1998-12-09', 52, 'ACTIVO', '2015-07-02 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Italy'),
(88, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Ellis', 'McClure', 'Florian.Bogisich@Kautzer.com', '$2y$10$uqYhZA70AxWVHkMlchAmvePRLBN3Guc3BwCc5ZgxALrVggbXNheNa', '1999-11-13', 78, 'ACTIVO', '1985-10-01 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Chad'),
(89, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Evalyn', 'Homenick', 'Terry.Lisandro@Strosin.info', '$2y$10$PoY92Mp90eRNCCibezmfoOJwzp1hS36jYcQWa7GQ7YY/vq1ZdCGfy', '1977-05-17', 64, 'ACTIVO', '1977-05-12 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'El Salvador'),
(90, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Evelyn', 'Wolff', 'Dillan61@gmail.com', '$2y$10$Me3uQD0RP1eN5Quy96PGaOAIlW2sNiIpTEIhYc1LeECd52ISoWfPe', '2002-12-24', 30, 'ACTIVO', '1997-11-10 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Iceland'),
(91, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Estefania', 'Huel', 'Skyla.Herman@hotmail.com', '$2y$10$xP/s5WsX5SA1znMOtQodvuLmK.lIJ7qS8NE848VteV0HhgIhF2LMO', '1972-04-30', 64, 'ACTIVO', '2016-04-03 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Czech Republic'),
(92, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Carlee', 'Welch', 'tAufderhar@hotmail.com', '$2y$10$DjMEj.7hzhI0hSXTwVT7j.SrqJ63r.6OKUZcz/L4gZWpD6NZUrnSm', '1997-11-13', 117, 'ACTIVO', '2012-06-10 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Belarus'),
(93, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Candido', 'Lehner', 'rHaag@gmail.com', '$2y$10$oHERrGA/.Z4WV2PfuG.L8e42nkdYACIkChEoT4k4RezhGpbfcciRW', '1977-06-09', 66, 'ACTIVO', '2014-05-05 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Belize'),
(94, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Hazel', 'Maggio', 'Mack.Kuhlman@hotmail.com', '$2y$10$1K982kAMrQhz9d00DA3RcuQU0P6d5Twd2znCSX59LxKSX5EueX3uq', '2006-02-05', 47, 'ACTIVO', '1977-12-31 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Germany'),
(95, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Jermain', 'Schaefer', 'Beatty.Myles@gmail.com', '$2y$10$0ITNhTkthhSNM4Yua8wrqeZXGnST0GDT4wMV5oa/C0VtwXVRZsmFW', '2001-08-11', 105, 'ACTIVO', '2008-05-31 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Mauritania'),
(96, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Otis', 'McDermott', 'Brice.Roberts@yahoo.com', '$2y$10$cvcX1.IkyXRkhu5vvFB8q..n3x/EmL/gXSNZnPk2DwCqn/Dw7n7DK', '2008-05-24', 70, 'ACTIVO', '2015-07-24 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Suriname'),
(97, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Alexa', 'Beier', 'Laisha63@Corkery.com', '$2y$10$t7ynElFrbMRptecu2oEC/elwFRUO7yFskzA3kcdjpC0VgPFWfA5ai', '2008-02-02', 72, 'ACTIVO', '2005-09-28 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Malaysia'),
(98, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Patrick', 'Schmeler', 'vLemke@Kovacek.com', '$2y$10$0Yjzyq49uJpFaL...njgGOgvejG0EilItMEz11cEW9Jb9wWQp.zzu', '2002-10-19', 52, 'ACTIVO', '1976-08-10 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'French Polynesia'),
(99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Chad', 'Walsh', 'Kevin96@Nader.com', '$2y$10$vK7vzy7eBuBh0w.4z4PjMOKlRHbPyug5lgbV1Y.saOIZZwCWM5NLy', '1989-09-21', 16, 'ACTIVO', '2014-01-09 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Japan'),
(100, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Marjolaine', 'Morar', 'Reva25@Simonis.com', '$2y$10$pLDMJim8AQDmg1JFz3/eLeZTetmPHWzlhLd7Cx/X8PGopDqZ2Cpy2', '2015-06-25', 3, 'ACTIVO', '1996-12-27 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'France'),
(101, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Felix', 'Wolff', 'Justyn79@Cronin.com', '$2y$10$cg3o6egGBhaIE72NOlYiN.gE/tcQkoMqJCSAnpwSXAhkngJ8xxSjK', '1973-04-19', 119, 'ACTIVO', '2003-08-27 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Israel'),
(102, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Nova', 'Williamson', 'Khalid.Ziemann@Kassulke.com', '$2y$10$SYTYUHm1kd1IHGkwy35Ua.y9M/gg.TdU96WzXQJ/lxOFRVgneAzCu', '2013-04-12', 57, 'ACTIVO', '1988-06-23 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Serbia'),
(103, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Francisco', 'Osinski', 'aHomenick@gmail.com', '$2y$10$YuARH.mZMRAEtzmnTKb8yeR/b8kncUP.GleKF2XJoqG06fWJ6m2zK', '1978-08-23', 98, 'ACTIVO', '2013-01-22 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'United States Minor Outlying Islands'),
(104, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Alene', 'Steuber', 'Araceli.Miller@hotmail.com', '$2y$10$0nSzX8VS8Hy7MiM.f498EeWucL9RfZ7WhljChso/9pX3ZA4imnS/G', '1977-10-16', 22, 'ACTIVO', '1993-10-17 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Sri Lanka'),
(105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Adan', 'Jacobi', 'sRice@gmail.com', '$2y$10$HA5ebnbzJLE2eyK/uRVMXe75Jel8wqXrJCr2XQ..DMO0p.7AKq2WG', '1982-07-21', 77, 'ACTIVO', '1989-09-02 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Djibouti'),
(106, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Davin', 'Berge', 'Quitzon.Maida@Larkin.com', '$2y$10$2h5AHBSDmrB/uh5wwmAPs.NaUK8KxDAdvzg3376bh3ivIOxNozihS', '1988-01-04', 92, 'ACTIVO', '2005-08-14 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Saint Kitts and Nevis'),
(107, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Brandon', 'Sauer', 'Bode.Lilyan@Glover.com', '$2y$10$5UG2KC1vn0FKbpcoPeg8sORBNvbcg4TzsPe618LP8RtDfi393gCVm', '1981-02-08', 19, 'ACTIVO', '1976-11-08 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Bhutan'),
(108, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Damian', 'Veum', 'Nelle89@Williamson.info', '$2y$10$.TxZjhWkWnKM0646EBw5xudXma5ogd6kV5beHPjFkq9fB1ZWlEIpC', '1974-10-21', 44, 'ACTIVO', '1995-10-13 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Kenya'),
(109, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Gwendolyn', 'Sawayn', 'xWunsch@yahoo.com', '$2y$10$jJYFnoh9QFt/5.TQ1Kzoh.I0sDtcCSDetW7XatUK6iEa6ldNtXHEq', '1972-03-30', 64, 'ACTIVO', '1987-09-12 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Chile'),
(110, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Anita', 'Hagenes', 'Daisy.Johnston@gmail.com', '$2y$10$qjX7H/PQXyN3GxlbuRN.hOW8wrL3ViXpbiH4awhJkDOMzs2jP2MHG', '2002-11-13', 43, 'ACTIVO', '1972-04-19 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Moldova'),
(111, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Jesse', 'Farrell', 'Luettgen.Bianka@yahoo.com', '$2y$10$A6BxvqJbZs8fKo98rQWx1.Cxt1CxSkmcxPak6b98D2/Us98/kVGCa', '1977-03-29', 25, 'ACTIVO', '1998-05-23 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Cuba'),
(112, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Madie', 'Emmerich', 'Feeney.Missouri@Reynolds.com', '$2y$10$ee.D7IuO46ug47Z79nv25equgycEoAFE.SAod7lKbB63ow/xxHGjK', '1970-07-05', 53, 'ACTIVO', '1989-11-23 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'French Guiana'),
(113, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Darion', 'VonRueden', 'Douglas.Mariano@yahoo.com', '$2y$10$r.9Eq4PSM/nkzJQP1XWyfOuMIrpYmySMq1bZg.uAtbN3sAVv.ZSA6', '1997-01-18', 25, 'ACTIVO', '2001-08-18 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Belgium'),
(114, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tristian', 'Purdy', 'Ignatius89@gmail.com', '$2y$10$BC64bP/GSglFwwAJxsGPzuWR78vCHnHcQ4HMY3yTiMwLXzM3TkifO', '1990-01-15', 105, 'ACTIVO', '1993-07-31 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Somalia'),
(115, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Brendan', 'Ortiz', 'Berniece.Graham@Hoeger.com', '$2y$10$AmVsIjjSyNMai3F3CabTM.xd4Q2zplR3bYtVnoFQWkiEkCUGChe2O', '1979-07-12', 32, 'ACTIVO', '1981-10-31 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Nauru'),
(116, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Kelley', 'Mayert', 'Jaiden08@Abshire.com', '$2y$10$6vfDS7nttvHHKYTPeLyCuejIOfda1RXC1tWoff65TGxtjO/owoJfG', '1991-03-02', 34, 'ACTIVO', '2010-05-17 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Antarctica (the territory South of 60 deg S)'),
(117, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'June', 'Gislason', 'aKihn@Ruecker.net', '$2y$10$lTZgQrk1k9KSPMQCKGC5z.edKtUX3d7lnU0ESiayAXRL2aS5Hx9Bu', '1979-12-19', 101, 'ACTIVO', '1982-06-12 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Iceland'),
(118, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Adan', 'Gleichner', 'eRitchie@hotmail.com', '$2y$10$Of3BeY5GLYxFF1Z9pvriSemHjgpdzLDzqaxzqjc8WSDtMKdkVoUwS', '1985-08-05', 20, 'ACTIVO', '1985-01-14 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Mozambique'),
(119, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Sheila', 'Considine', 'Casimir.Collier@Torp.org', '$2y$10$wHeneJh8DlgtAqOIvaiTLu0i5Gc/ZqgNB1eJunbB2Zmy2Lwv0BBIu', '1982-08-02', 62, 'ACTIVO', '1970-04-18 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Armenia'),
(120, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Justen', 'Murazik', 'Robb39@OKon.biz', '$2y$10$xOAZyDIh4FieGGzFu4tEAOVyiM/0RKAgLgj.J6lFmkMkG0vCyIym6', '2015-10-21', 104, 'ACTIVO', '2000-06-02 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Maldives'),
(121, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Trinity', 'Blanda', 'kSawayn@OConner.com', '$2y$10$DuWLs0PJ.TZ8aM2rIjMFfOhc/WjgmEYRUMqnPW8dUH7SMFO7f4wzS', '1994-04-03', 10, 'ACTIVO', '1997-07-13 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Guadeloupe'),
(122, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Percy', 'Feil', 'Kris.Jessyca@gmail.com', '$2y$10$vprHRoO9EaAyC.kAXmX9N.G5i.QIBKcfVYi3qy8UKIOSwHNcio36K', '1979-04-28', 29, 'ACTIVO', '2003-08-19 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Senegal'),
(123, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Greg', 'Stoltenberg', 'Wilton.Cruickshank@hotmail.com', '$2y$10$PaZt8hGzD3YrwQgyMTQtFe.iPaUORsSXJ893gdkXWAUeOlhJjV83K', '2003-06-10', 85, 'ACTIVO', '2004-01-14 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'San Marino'),
(124, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Santina', 'O''Conner', 'dLynch@Okuneva.com', '$2y$10$qAH0p5atwDxYpFRhXeuQne6j69ISu.nR/SSoXmOT4mbfsTGZXWMkC', '2004-11-29', 52, 'ACTIVO', '1984-04-26 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Hong Kong'),
(125, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Lisa', 'Moore', 'gMitchell@Stark.com', '$2y$10$JWoFqQ3uB.tNITEQOb80v.YI6D6iIKrvqSb/BiPP5F58JL.4ik7nO', '1991-02-13', 11, 'ACTIVO', '1970-08-12 00:00:00', '2017-08-31', 0, 'Hola como estas', 'bien y tu', 'Colombia'),
(126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Admin', 'istrador', 'carlos.gonzalez.gavilan@gmail.com', '$2y$10$drb9IITlTxPfyvfyYk3ide6fmQZJWgQhsNq7v82SLztYPudJar3Um', '1985-03-02', 31, 'ACTIVO', '2016-09-01 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Chile'),
(127, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Josue', 'Deckow', 'dBoehm@Quitzon.org', '$2y$10$i4mf97h32fPJk7uMksekyeWw2cbQWZ90QPdlzooYIBarJrpDYyWku', '1987-02-05', 112, 'ACTIVO', '1981-07-21 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Colombia'),
(128, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Leola', 'Swift', 'Conor.Corkery@gmail.com', '$2y$10$f1l5T9a/uq2AtVrIVeRLIeZXUoI5aXjQXeHMn2k8b8IJ/RrCHFgd6', '2012-03-30', 82, 'ACTIVO', '1988-07-16 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Ethiopia'),
(129, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Jasmin', 'Schmitt', 'rKozey@gmail.com', '$2y$10$oCQeavHmulfQwyLRLkat8eTYip1XKkm005dCRwnfzLe6Msc.PYOt.', '1982-02-11', 58, 'ACTIVO', '1986-11-07 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Bosnia and Herzegovina'),
(130, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Rowena', 'Towne', 'Laury31@yahoo.com', '$2y$10$dU.j8KHNVcXe09KK2RNGHeljwM.vONxigBYtRs5x/CIUwkPHf6nIm', '2004-03-21', 91, 'ACTIVO', '1982-08-30 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Finland'),
(131, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Kayla', 'Jones', 'Katlynn65@Will.com', '$2y$10$XLv6Yjkjt5Cytkcoi7zameS981hQkFzDJo5wfeY9I5TWU76JuhbCu', '2014-12-30', 93, 'ACTIVO', '1997-11-13 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Reunion'),
(132, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Ross', 'Kunze', 'Carter33@Rodriguez.com', '$2y$10$r3AQNndJIDtzMHxnHVLv/uHj3I06kH43YJfktm1093wIDd8DrNGMS', '1972-05-01', 72, 'ACTIVO', '2000-10-05 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Cyprus'),
(133, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Ebony', 'Strosin', 'Bria91@Sipes.com', '$2y$10$XnLl9/N/3UEPSlBeQ5.SyO29HepprTOVy1wiLnS6pHbOPC48o6dKO', '2004-05-26', 44, 'ACTIVO', '2007-10-16 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Djibouti'),
(134, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Isobel', 'Frami', 'Augustus74@Cummerata.com', '$2y$10$zDcpgirXBw5tZjTzlwUlf.qSqpk7X7RKP8KIjMNsVUL40TcIFiM/u', '1999-05-15', 69, 'ACTIVO', '1980-04-03 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Lao People''s Democratic Republic'),
(135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Dexter', 'Marks', 'Seamus55@Thiel.com', '$2y$10$GSfKicKS7mbaNcFpAfwM0.pUDeNfL9twzRH6RvXY4lhD0qIUp7yC.', '1988-09-19', 14, 'ACTIVO', '2012-10-22 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Bahrain'),
(136, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Kaelyn', 'Yost', 'pBeier@Torp.net', '$2y$10$VOv.AGRl.Mef8MBVOv20FOYyXe4N7hnpOAb3zmxUCh7erN1DSjbIS', '1985-09-01', 100, 'ACTIVO', '2002-12-24 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Saint Pierre and Miquelon'),
(137, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Alf', 'Lindgren', 'Arely64@hotmail.com', '$2y$10$1PNNBNYn9pAzKKn/CwEXGeiXJH2PK8MpG/bRtKiAtB0UoW3jVtV6O', '1994-04-20', 1, 'ACTIVO', '1990-11-26 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Portugal'),
(138, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Sadye', 'Wunsch', 'Drake.Hamill@hotmail.com', '$2y$10$oUBq.Cl2zE.wyW0wjKUSju1ypVED4Hjd0hSMAB1oLkhADskYOz96O', '2000-10-12', 12, 'ACTIVO', '1985-05-27 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Dominica'),
(139, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Melvina', 'Denesik', 'Brody.Satterfield@gmail.com', '$2y$10$k0Api/0NOqGp1cftbgpAJO0ct1XefAERDug2IyavI6nQQi3UNdqgu', '1972-09-09', 5, 'ACTIVO', '1995-08-14 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Bangladesh'),
(140, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Titus', 'Bernier', 'lGrant@Parisian.com', '$2y$10$XppxVxJGyPLfZmyOmvneOunCY7WR0k1elFdI8ZioyKWXsh9GOuInq', '2014-10-17', 90, 'ACTIVO', '1980-08-18 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Puerto Rico'),
(141, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Rafaela', 'Wolf', 'Florian.Wunsch@Littel.org', '$2y$10$UJvbhB/.Jwr5S76oaAS1BOF3XvHDwGGIAcKAFafjPNzACSw1.G7NK', '1980-07-09', 99, 'ACTIVO', '1971-02-07 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Antigua and Barbuda'),
(142, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Zoe', 'Gutmann', 'Langworth.Danika@Bayer.info', '$2y$10$w/82K50Lckc/Uf4DO.eJyeHzSUJo7.X0bB8jq9wWtXMGCIim5EHCK', '1979-11-15', 96, 'ACTIVO', '1983-01-31 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Iraq'),
(143, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Theron', 'Kuphal', 'Jason.White@gmail.com', '$2y$10$7XBoZG6/aaXhHSbKH9L18.FAvpc6ezD4RNRsgGZDpw3oSIOF7kqzC', '1988-10-20', 2, 'ACTIVO', '1995-01-05 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'United States Minor Outlying Islands'),
(144, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Murl', 'Crooks', 'Rodriguez.Eleazar@Kutch.org', '$2y$10$jV/K3S7vkJ77/FrPo0/1pOYu40NOlT4T/JX5wbr7WTliy5rdrRQu2', '1989-02-02', 102, 'ACTIVO', '2009-04-19 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Gibraltar'),
(145, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Brannon', 'Eichmann', 'OConner.Otho@Green.com', '$2y$10$CXZYf1bL8uR5nI53jxo9lO3qw05TPcs6rzPufHrWtpzANqPSKcypG', '1990-05-23', 107, 'ACTIVO', '2009-09-22 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Tuvalu'),
(146, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Brittany', 'Hayes', 'Dana.Lesch@hotmail.com', '$2y$10$jEm5kHYXn50iM2spv9QC/.WwgkMo7O3c5zQam1HAtYpheDFSSCnZW', '2011-01-26', 61, 'ACTIVO', '1974-11-03 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Nicaragua'),
(147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Jacques', 'Nader', 'xWehner@hotmail.com', '$2y$10$8NwzDPqO2r7vWc19556bjOlhcaNG7MXVhf.VCiOkhXuFrj6nTLk5W', '2016-03-27', 39, 'ACTIVO', '1976-07-06 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Suriname'),
(148, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Clay', 'Krajcik', 'Willa12@hotmail.com', '$2y$10$XWF0mtpGxt9FWKBerXZSA.Z.a8.wugPdtFIg/lwW3Mv.0QrF0d3fO', '2009-08-18', 30, 'ACTIVO', '1985-08-13 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Montserrat'),
(149, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Evangeline', 'Kling', 'Kacey.Maggio@Murphy.com', '$2y$10$lv/oS10G21MXRtCul/TZmOWw3OvscB9rCIyqgUyP8StK9cjT8WgPK', '2008-10-23', 7, 'ACTIVO', '1979-04-28 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Antigua and Barbuda'),
(150, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Krystal', 'Hettinger', 'Howard21@Braun.net', '$2y$10$1Yxm23RKbx7apOtTLKaM0.SVZRwBig7akeBu6W1RQdHMwfPgLoVcK', '1982-06-05', 60, 'ACTIVO', '2015-07-11 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Myanmar'),
(151, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Johnpaul', 'Goldner', 'kMonahan@Simonis.com', '$2y$10$C5Xn2aThbOjZ4p5XD1e78ug9Oesc5PExEpEs8GAvnd2ZWZAl.41ly', '1984-01-16', 19, 'ACTIVO', '1998-07-15 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Angola'),
(152, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Stanford', 'Langosh', 'qGleichner@McClure.com', '$2y$10$kEe7pvaPM1E8/VjvuK2ciOrWPqj1Yx4Y7klL/pB42s5SYSUDDKj/y', '1978-05-15', 4, 'ACTIVO', '2015-12-23 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Zambia'),
(153, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Cortney', 'Wisozk', 'Joaquin.Raynor@Lang.net', '$2y$10$I.w3bgyQd1jVCAmXZRIza.Xd3V3HNG0CLSRwSgxNh7ngyJ4D4wkO.', '2002-11-12', 106, 'ACTIVO', '1978-05-02 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Hungary'),
(154, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Myra', 'Brekke', 'Enola65@Jast.com', '$2y$10$.Ufx4Cy/aPT7RFsW8HyB1.vFoUXvFcBKOqZjVtGzSMRRawOoip1QG', '1999-02-15', 84, 'ACTIVO', '1979-03-29 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Hong Kong'),
(155, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Susie', 'Mraz', 'Irving16@Lehner.com', '$2y$10$EghiMMFm1YzdPwx2QQDYauRSvNGJAL4WuSN9BCCA5gKPrXrh7WRdu', '1990-02-14', 87, 'ACTIVO', '1971-05-14 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Saudi Arabia'),
(156, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Macie', 'Runolfsson', 'Cole.Hoyt@Donnelly.com', '$2y$10$qDDJqsNwwWbImbDjfS/yzu6gUM23UuGOaWX9SDVik4YYfbAnpUGei', '1971-10-03', 29, 'ACTIVO', '1986-05-28 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Ireland'),
(157, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Darryl', 'Macejkovic', 'oGoyette@Okuneva.com', '$2y$10$A1xjSNnPaLj0jhKO1MGibeyvzQR0h/HS8M1HRjVUc4Oz3U8dBjRn6', '1971-01-18', 72, 'ACTIVO', '1984-03-01 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'San Marino'),
(158, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Peggie', 'Sauer', 'Legros.Theresa@Ritchie.com', '$2y$10$xK2fWQF7ZH/ga/I5bKRaduEqnlcCKz3i4gB.ZPyXqg2VHLGZ//doi', '1981-02-21', 96, 'ACTIVO', '2010-11-09 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'France'),
(159, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Chaz', 'Grady', 'vKulas@Considine.com', '$2y$10$zEo4LJyZr3XiaJdlPihY5.pagG1hQv5a/4iJVGaErmIVn9225igiK', '2015-01-21', 67, 'ACTIVO', '2004-10-12 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Bermuda'),
(160, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Jefferey', 'Leannon', 'Granville15@Stanton.com', '$2y$10$G5HJZF5RBB/BwTGpA2MVQutmr7HDNKXToiauh8./CtiIXWiB6fsvK', '1973-01-26', 24, 'ACTIVO', '1977-03-13 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Wallis and Futuna'),
(161, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Alana', 'Effertz', 'Bechtelar.Magdalen@gmail.com', '$2y$10$z.u2kcKMit1IIDkyAj52junI8Z6T.XhGDL3/A4C1GIfeS.xGvoMBe', '2007-08-01', 76, 'ACTIVO', '1970-12-13 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Vietnam'),
(162, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Noel', 'Larson', 'Hellen40@gmail.com', '$2y$10$8OikiHfgR5J3Ce/BopVkrOKXKUVx0ogExJYW/ChA1jOX.lYAvk/O6', '1987-07-27', 58, 'ACTIVO', '1995-11-18 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Samoa'),
(163, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Catalina', 'Christiansen', 'Moore.Mattie@gmail.com', '$2y$10$LiDlIRViJmvtg7F.EtqwpODxy5A/isvqYkyXK2LnefmfEuVbqk1lG', '1976-04-05', 108, 'ACTIVO', '1980-05-18 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Austria'),
(164, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Paris', 'Walker', 'Bogan.Dora@yahoo.com', '$2y$10$EkA6ZJm6wyGHWVDNBokFbeAwPFtHCCYzV8Ge.GpcOLgWNT3XSotwS', '1980-11-25', 22, 'ACTIVO', '2016-03-16 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Togo'),
(165, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Henri', 'Mills', 'Bergstrom.Sandrine@yahoo.com', '$2y$10$Nv9cDmPz2SvgCmIP.c08YemBHknKQOCfkLNtqFOhHmuqxahl410c6', '1988-07-10', 15, 'ACTIVO', '1978-12-10 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Turkey'),
(166, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Marques', 'Cruickshank', 'Louisa97@gmail.com', '$2y$10$SyC7lbw/8EFueg6Y6xuQK./tlY8BGUd1xgamjeAWg7/k8cGvAdqOS', '1983-01-20', 10, 'ACTIVO', '2010-10-05 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Peru'),
(167, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Katlynn', 'Jerde', 'Una.Hauck@gmail.com', '$2y$10$Mwrwejymt4krGIbnbfn83eD/BUkEDJhOEYHxm6zVUiOWFhoeKLvuC', '1984-06-24', 58, 'ACTIVO', '1976-06-12 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Djibouti'),
(168, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Ezra', 'Botsford', 'Hobart20@Feest.com', '$2y$10$CqKAQ2gNPohLnncwCT/9tuvS0OCwA0O6sxIfVhmcpWo9aI6Z3ymMC', '2006-06-30', 30, 'ACTIVO', '2015-12-07 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Thailand'),
(169, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Shawna', 'Brekke', 'uSchuster@OConner.com', '$2y$10$ljiZ63ak7lZbXwhxMr8OJe8oOAu6tPL.8WRtuKDEElZ7nKBxg2XXi', '1996-10-02', 53, 'ACTIVO', '2008-09-15 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Equatorial Guinea'),
(170, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Breanna', 'Morar', 'Oberbrunner.Polly@yahoo.com', '$2y$10$sqUe/LxKdEGaz2D0kMJK3ukJ2.pKvTl/RwwvPW4tTtUCN0XWe.bzi', '2016-06-28', 26, 'ACTIVO', '2010-06-17 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Somalia'),
(171, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Nelda', 'Hammes', 'tGerhold@Koepp.com', '$2y$10$H03x8mIO8moZuzKdBggkZeQIxhpCtLKj2ueVPry2aExnhl41TUrGO', '1985-10-13', 62, 'ACTIVO', '2010-09-26 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Iran'),
(172, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Jazmin', 'Braun', 'Earl.Jenkins@Fadel.com', '$2y$10$R2XG4PsVkdsbGHqRCZbfBO374RfSHc2xcZXunWI/MDkpNy8LuoJTG', '2010-05-18', 79, 'ACTIVO', '2009-01-24 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Hungary'),
(173, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tavares', 'Mohr', 'Guiseppe59@yahoo.com', '$2y$10$v/WajhqXXJZ.UtnBM9pWoeETwCRjT5gyqPkzn9AEP0Jc74jDr8y/C', '1980-09-13', 33, 'ACTIVO', '1994-08-29 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Bulgaria'),
(174, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Greta', 'Hansen', 'Rodriguez.Hester@yahoo.com', '$2y$10$z5w.fsR8gXU9bleQ9VYDnebkOlTeh/Xmysrddtx7/Y8rPFmSS2F7i', '1994-09-27', 33, 'ACTIVO', '1983-04-06 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Bangladesh'),
(175, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Dean', 'Block', 'Elvis93@hotmail.com', '$2y$10$LHVHtmAIUCLdUf8hnZMN/O1Abz5NVuti9EDZUJ/OS4bxGHcLqgiRe', '2009-03-06', 50, 'ACTIVO', '1994-01-13 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Spain'),
(176, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Paula', 'Schimmel', 'Stuart30@Johnson.com', '$2y$10$kRmU38Goseq/.Ow6ViSvAOhhLpI1LS3UOJQt8uygYbtyoq9w3I3cu', '1975-01-09', 67, 'ACTIVO', '1973-02-18 00:00:00', '2017-09-01', 0, 'Hola como estas', 'bien y tu', 'Kenya');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_password_historicos`
--

CREATE TABLE `usuario_password_historicos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_perfils`
--

CREATE TABLE `usuario_perfils` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `id_perfil` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario_perfils`
--

INSERT INTO `usuario_perfils` (`id`, `created_at`, `updated_at`, `id_usuario`, `id_perfil`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 2),
(4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 2),
(5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 2),
(6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 6, 2),
(7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, 2),
(8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 2),
(9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9, 2),
(10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10, 2),
(11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 11, 2),
(12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 12, 2),
(13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 13, 2),
(14, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 14, 2),
(15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 15, 2),
(16, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 16, 2),
(17, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 17, 2),
(18, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, 2),
(19, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 19, 2),
(20, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 20, 2),
(21, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 21, 2),
(22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 22, 2),
(23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 23, 2),
(24, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 24, 2),
(25, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 25, 2),
(26, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 26, 2),
(27, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 27, 2),
(28, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 28, 2),
(29, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 29, 2),
(30, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 30, 2),
(31, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 31, 2),
(32, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 32, 2),
(33, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 33, 2),
(34, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 34, 2),
(35, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 35, 2),
(36, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 36, 2),
(37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 37, 2),
(38, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 38, 2),
(39, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 39, 2),
(40, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 40, 2),
(41, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 41, 2),
(42, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 42, 2),
(43, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 43, 2),
(44, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 44, 2),
(45, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 45, 2),
(46, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 46, 2),
(47, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 47, 2),
(48, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 48, 2),
(49, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 49, 2),
(50, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 50, 2),
(51, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 51, 2),
(52, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 75, 1),
(53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 76, 2),
(54, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 77, 2),
(55, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 78, 2),
(56, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 79, 2),
(57, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 80, 2),
(58, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 81, 2),
(59, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 82, 2),
(60, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 83, 2),
(61, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 84, 2),
(62, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 85, 2),
(63, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 86, 2),
(64, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 87, 2),
(65, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 88, 2),
(66, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 89, 2),
(67, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 90, 2),
(68, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 91, 2),
(69, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 92, 2),
(70, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 93, 2),
(71, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 94, 2),
(72, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 95, 2),
(73, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 96, 2),
(74, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 97, 2),
(75, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 98, 2),
(76, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 99, 2),
(77, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 100, 2),
(78, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 101, 2),
(79, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 102, 2),
(80, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 103, 2),
(81, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 104, 2),
(82, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 105, 2),
(83, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 106, 2),
(84, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 107, 2),
(85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 108, 2),
(86, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 109, 2),
(87, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 110, 2),
(88, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 111, 2),
(89, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 112, 2),
(90, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 113, 2),
(91, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 114, 2),
(92, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 115, 2),
(93, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 116, 2),
(94, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 117, 2),
(95, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 118, 2),
(96, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 119, 2),
(97, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 120, 2),
(98, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 121, 2),
(99, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 122, 2),
(100, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 123, 2),
(101, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 124, 2),
(102, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 125, 2),
(103, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 126, 1),
(104, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 127, 2),
(105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 128, 2),
(106, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 129, 2),
(107, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 130, 2),
(108, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 131, 2),
(109, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 132, 2),
(110, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 133, 2),
(111, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 134, 2),
(112, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 135, 2),
(113, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 136, 2),
(114, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 137, 2),
(115, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 138, 2),
(116, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 139, 2),
(117, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 140, 2),
(118, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 141, 2),
(119, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 142, 2),
(120, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 143, 2),
(121, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 144, 2),
(122, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 145, 2),
(123, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 146, 2),
(124, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 147, 2),
(125, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 148, 2),
(126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 149, 2),
(127, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 150, 2),
(128, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 151, 2),
(129, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 152, 2),
(130, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 153, 2),
(131, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 154, 2),
(132, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 155, 2),
(133, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 156, 2),
(134, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 157, 2),
(135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 158, 2),
(136, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 159, 2),
(137, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 160, 2),
(138, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 161, 2),
(139, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 162, 2),
(140, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 163, 2),
(141, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 164, 2),
(142, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 165, 2),
(143, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 166, 2),
(144, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 167, 2),
(145, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 168, 2),
(146, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 169, 2),
(147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 170, 2),
(148, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 171, 2),
(149, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 172, 2),
(150, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 173, 2),
(151, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 174, 2),
(152, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 175, 2),
(153, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 176, 2);

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
-- Volcado de datos para la tabla `usuario_sistemas`
--

INSERT INTO `usuario_sistemas` (`id`, `created_at`, `updated_at`) VALUES
(75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera_ramos`
--
ALTER TABLE `carrera_ramos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `log_accesos`
--
ALTER TABLE `log_accesos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_accesos_id_usuario_foreign` (`id_usuario`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_id_modulo_foreign` (`id_modulo`);

--
-- Indices de la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfils`
--
ALTER TABLE `perfils`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfil_modulos`
--
ALTER TABLE `perfil_modulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `perfil_modulos_id_modulo_foreign` (`id_modulo`),
  ADD KEY `perfil_modulos_id_perfil_foreign` (`id_perfil`);

--
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rols_id_modulo_foreign` (`id_modulo`);

--
-- Indices de la tabla `rol_usuarios`
--
ALTER TABLE `rol_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rol_usuarios_id_rol_foreign` (`id_rol`),
  ADD KEY `rol_usuarios_id_usuario_foreign` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_password_historicos`
--
ALTER TABLE `usuario_password_historicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_password_historicos_id_usuario_foreign` (`id_usuario`);

--
-- Indices de la tabla `usuario_perfils`
--
ALTER TABLE `usuario_perfils`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_perfils_id_usuario_foreign` (`id_usuario`),
  ADD KEY `usuario_perfils_id_perfil_foreign` (`id_perfil`);

--
-- Indices de la tabla `usuario_sistemas`
--
ALTER TABLE `usuario_sistemas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrera_ramos`
--
ALTER TABLE `carrera_ramos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `log_accesos`
--
ALTER TABLE `log_accesos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT de la tabla `perfils`
--
ALTER TABLE `perfils`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `perfil_modulos`
--
ALTER TABLE `perfil_modulos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT de la tabla `rol_usuarios`
--
ALTER TABLE `rol_usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
--
-- AUTO_INCREMENT de la tabla `usuario_password_historicos`
--
ALTER TABLE `usuario_password_historicos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario_perfils`
--
ALTER TABLE `usuario_perfils`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT de la tabla `usuario_sistemas`
--
ALTER TABLE `usuario_sistemas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `log_accesos`
--
ALTER TABLE `log_accesos`
  ADD CONSTRAINT `log_accesos_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_id_modulo_foreign` FOREIGN KEY (`id_modulo`) REFERENCES `modulos` (`id`);

--
-- Filtros para la tabla `perfil_modulos`
--
ALTER TABLE `perfil_modulos`
  ADD CONSTRAINT `perfil_modulos_id_modulo_foreign` FOREIGN KEY (`id_modulo`) REFERENCES `modulos` (`id`),
  ADD CONSTRAINT `perfil_modulos_id_perfil_foreign` FOREIGN KEY (`id_perfil`) REFERENCES `perfils` (`id`);

--
-- Filtros para la tabla `rols`
--
ALTER TABLE `rols`
  ADD CONSTRAINT `rols_id_modulo_foreign` FOREIGN KEY (`id_modulo`) REFERENCES `modulos` (`id`);

--
-- Filtros para la tabla `rol_usuarios`
--
ALTER TABLE `rol_usuarios`
  ADD CONSTRAINT `rol_usuarios_id_rol_foreign` FOREIGN KEY (`id_rol`) REFERENCES `rols` (`id`),
  ADD CONSTRAINT `rol_usuarios_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuario_password_historicos`
--
ALTER TABLE `usuario_password_historicos`
  ADD CONSTRAINT `usuario_password_historicos_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuario_perfils`
--
ALTER TABLE `usuario_perfils`
  ADD CONSTRAINT `usuario_perfils_id_perfil_foreign` FOREIGN KEY (`id_perfil`) REFERENCES `perfils` (`id`),
  ADD CONSTRAINT `usuario_perfils_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
