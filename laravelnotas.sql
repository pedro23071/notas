-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-08-2019 a las 06:24:09
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravelnotas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notes`
--

CREATE TABLE `notes` (
  `id` int(255) NOT NULL,
  `tittle` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notes`
--

INSERT INTO `notes` (`id`, `tittle`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Mi nota 0', 'Descripcion de la nota 0', NULL, NULL),
(2, 'Mi nota 1', 'Descripcion de la nota 1', NULL, NULL),
(3, 'Mi nota 2', 'Descripcion de la nota 2', NULL, NULL),
(4, 'Mi nota 3', 'Descripcion de la nota 3', NULL, NULL),
(5, 'Mi nota 4', 'Descripcion de la nota 4', NULL, NULL),
(6, 'Mi nota 5', 'Descripcion de la nota 5', NULL, NULL),
(7, 'Mi nota 6', 'Descripcion de la nota 6', NULL, NULL),
(8, 'Mi nota 7', 'Descripcion de la nota 7', NULL, NULL),
(9, 'Mi nota 8', 'Descripcion de la nota 8', NULL, NULL),
(10, 'Mi nota 9', 'Descripcion de la nota 9', NULL, NULL),
(11, 'Mi nota 10', 'Descripcion de la nota 10', NULL, NULL),
(12, 'Mi nota 11', 'Descripcion de la nota 11', NULL, NULL),
(13, 'Mi nota 12', 'Descripcion de la nota 12', NULL, NULL),
(14, 'Mi nota 13', 'Descripcion de la nota 13', NULL, NULL),
(15, 'Mi nota 14', 'Descripcion de la nota 14', NULL, NULL),
(16, 'Mi nota 15', 'Descripcion de la nota 15', NULL, NULL),
(17, 'Mi nota 16', 'Descripcion de la nota 16', NULL, NULL),
(18, 'Mi nota 17', 'Descripcion de la nota 17', NULL, NULL),
(19, 'Mi nota 18', 'Descripcion de la nota 18', NULL, NULL),
(20, 'Mi nota 19', 'Descripcion de la nota 19', NULL, NULL),
(21, 'Mi nota 20', 'Descripcion de la nota 20', NULL, NULL),
(22, 'Mi nota 21', 'Descripcion de la nota 21', NULL, NULL),
(23, 'Mi nota 22', 'Descripcion de la nota 22', NULL, NULL),
(24, 'Mi nota 23', 'Descripcion de la nota 23', NULL, NULL),
(25, 'Mi nota 24', 'Descripcion de la nota 24', NULL, NULL),
(26, 'Mi nota 25', 'Descripcion de la nota 25', NULL, NULL),
(27, 'Mi nota 26', 'Descripcion de la nota 26', NULL, NULL),
(28, 'Mi nota 27', 'Descripcion de la nota 27', NULL, NULL),
(29, 'Mi nota 28', 'Descripcion de la nota 28', NULL, NULL),
(30, 'Mi nota 29', 'Descripcion de la nota 29', NULL, NULL),
(31, 'Mi nota 30', 'Descripcion de la nota 30', NULL, NULL),
(32, 'Mi nota 31', 'Descripcion de la nota 31', NULL, NULL),
(33, 'Mi nota 32', 'Descripcion de la nota 32', NULL, NULL),
(34, 'Mi nota 33', 'Descripcion de la nota 33', NULL, NULL),
(48, 'mi notas', 'sadasd', NULL, NULL),
(50, 'mi tercera nota', 'panc23', NULL, NULL),
(51, 'nota numero 100', 'esta es la nota 100', NULL, NULL),
(54, 'nota numero 10101', 'esta es la nota 10101', NULL, NULL),
(55, 'nota pedro', 'esta es la nota del creador', NULL, NULL),
(56, 'nota pedro 3', 'la nota 3', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
