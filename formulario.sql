-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-09-2024 a las 18:28:31
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `formulario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas_habilidades`
--

CREATE TABLE `respuestas_habilidades` (
  `id` int(11) NOT NULL,
  `pregunta1` varchar(255) NOT NULL,
  `pregunta2` varchar(255) NOT NULL,
  `pregunta3` varchar(255) NOT NULL,
  `pregunta4` varchar(255) NOT NULL,
  `pregunta5` varchar(255) NOT NULL,
  `pregunta6` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `respuestas_habilidades`
--

INSERT INTO `respuestas_habilidades` (`id`, `pregunta1`, `pregunta2`, `pregunta3`, `pregunta4`, `pregunta5`, `pregunta6`, `fecha`, `nombre`) VALUES
(1, 'er', 'er', 'df', 'eer', 'rsd', 'sfs', '2024-08-20 19:52:47', NULL),
(2, 'jhsdhj', 'jsdb', 'jhsdb', 'ksj', 'sdh', 'oiehd', '2024-08-22 16:54:13', 'Omar Méndez'),
(3, 'q', 'q', 'q', 'qq', 'q', 'q', '2024-08-26 15:54:32', 'qqq'),
(4, 'qQq', 'q', 'q', 'q', 'q', 'q', '2024-08-29 17:37:44', 'q'),
(5, 'Político ', 'Hablar mejor ', 'Hablar ', 'Preparación ', 'Llegar a una dirección ', 'Seguir preparandome ', '2024-08-29 19:05:14', 'Raúl Bustamante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas_intereses`
--

CREATE TABLE `respuestas_intereses` (
  `id` int(11) NOT NULL,
  `pregunta1` varchar(255) NOT NULL,
  `pregunta2` varchar(255) NOT NULL,
  `pregunta3` varchar(255) NOT NULL,
  `pregunta4` varchar(255) NOT NULL,
  `pregunta5` varchar(255) NOT NULL,
  `pregunta6` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `respuestas_intereses`
--

INSERT INTO `respuestas_intereses` (`id`, `pregunta1`, `pregunta2`, `pregunta3`, `pregunta4`, `pregunta5`, `pregunta6`, `fecha`, `nombre`) VALUES
(1, 'df', 'dg', 'dg', 'dg', 'dg', 'dg', '2024-08-20 19:55:34', NULL),
(2, 'jhdh', 'ipuodf', 'iuhre', 'piurf', 'iupd', 'iuph', '2024-08-22 16:54:26', 'Omar Méndez'),
(3, 'q', 'q', 'q', 'q', 'q', 'q', '2024-08-26 15:54:46', 'qqq');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas_personalidad`
--

CREATE TABLE `respuestas_personalidad` (
  `id` int(11) NOT NULL,
  `pregunta1` varchar(255) NOT NULL,
  `pregunta2` varchar(255) NOT NULL,
  `pregunta3` varchar(255) NOT NULL,
  `pregunta4` varchar(255) NOT NULL,
  `pregunta5` varchar(255) NOT NULL,
  `pregunta6` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `respuestas_personalidad`
--

INSERT INTO `respuestas_personalidad` (`id`, `pregunta1`, `pregunta2`, `pregunta3`, `pregunta4`, `pregunta5`, `pregunta6`, `fecha`, `nombre`) VALUES
(1, 'sd', 'sd', 'sd', 'sd', 'sd', 'sd', '2024-08-20 19:50:33', NULL),
(2, 'dmvfb', 'wbf', 'fb', 'jkwfj', 'wfj', 'fv', '2024-08-22 16:28:15', NULL),
(3, 'jkw', 'kwn', 'ow', 'oiwej', 'wiopwi', 'iew', '2024-08-22 16:53:58', 'Omar Méndez'),
(4, 'q', 'Q', 'Q', 'Q', 'Q', 'q', '2024-08-26 15:52:28', 'Omar'),
(5, 'q', 'q', 'q', 'q', 'q', 'q', '2024-08-26 15:54:39', 'q'),
(6, 'q', 'q', 'q', 'q', 'q', 'q', '2024-08-29 17:35:59', 'q'),
(7, 'q', 'q', 'q', 'q', 'q', 'q', '2024-08-29 17:37:35', 'q');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respues_aptitud`
--

CREATE TABLE `respues_aptitud` (
  `id` int(11) NOT NULL,
  `habilidad_mas_destacada` varchar(255) NOT NULL,
  `motivacion_trabajo` varchar(255) NOT NULL,
  `manejo_estres` varchar(255) NOT NULL,
  `mayor_logro_profesional` varchar(255) NOT NULL,
  `trabajo_equipo` varchar(255) NOT NULL,
  `habilidades_mejorar` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `respues_aptitud`
--

INSERT INTO `respues_aptitud` (`id`, `habilidad_mas_destacada`, `motivacion_trabajo`, `manejo_estres`, `mayor_logro_profesional`, `trabajo_equipo`, `habilidades_mejorar`, `fecha`, `nombre`) VALUES
(1, 'er', 'er', 'er', 'er', 'er', 'er', '2024-08-20 19:42:42', NULL),
(2, 'correr', 'superacion', 'tomando un descanso ', 'terminar mi carrera ', 'de forma organizada ', 'comprender ', '2024-08-20 19:46:05', NULL),
(3, 'dg', 'dg', 'cb', 'c', 'ccb', 'ccc', '2024-08-20 19:58:19', NULL),
(4, 'ortografia ', 'seguir aprendiendo mas ', 'actividad diaria ', 'ascender a un puesto mejor ', 'individual ', 'el orden ', '2024-08-20 21:20:37', NULL),
(5, 'comunicación asertiva', 'mejorara coo persona y ayudar a los demas', 'con respiraciones constantes y actitud positiva', 'Disfrutar lo que hago', 'Con gente dispuesta y proactiva', 'la paciencia y capacitación profesional', '2024-08-21 16:05:51', NULL),
(6, 'Hs', 'Nd', 'Nd', 'Jdj', 'Dk', 'Dj', '2024-08-22 16:19:56', NULL),
(7, 'Hs', 'Q', 'Q', 'Q', 'Q', 'Q', '2024-08-22 16:22:57', NULL),
(8, 'kjsd', 'ksjbd', 'svn', 'e', 'alrnf', 'whfe', '2024-08-22 16:27:58', NULL),
(9, 'correr', 'superacion', 'descansando y respirando ', 'terminar mi carrera ', 'de forma organizada ', 'comprender ', '2024-08-22 16:45:33', 'Omar Méndez'),
(10, 'Hs', 'Jd', 'Jd', 'Ud', 'Jd', 'O', '2024-08-22 17:20:31', 'Omar Méndez '),
(11, 'Comunicación Asertiva', 'Ser mejor cada dia', 'Respiración y actitud positiva', 'Ser feliz', 'Con energía positiva y disposición ', 'La paciencia y capacitación profesional ', '2024-08-22 18:09:28', 'Areli'),
(12, 'dff', 'dfD', 'fg', 'qdgfq', 'fdg', 'qq', '2024-08-23 18:41:44', 'rtyu'),
(13, 'q', 'q', 'q', 'q', 'q', 'q', '2024-08-26 15:52:11', 'Omar'),
(14, 'q', 'q', 'q', 'qq', 'q', 'q', '2024-08-26 15:52:40', 'Omar Méndez'),
(15, 'q', 'q', 'q', 'q', 'q', 'q', '2024-08-26 15:54:22', 'Omar Méndez'),
(16, 'e', 'e', 'e', 'e', 'e', 'e', '2024-08-28 15:31:23', 'er'),
(17, 'q', 'q', 'q', 'q', 'q', 'q', '2024-08-29 17:36:07', 'q'),
(18, 'Jeje', 'Jdjd', 'Ndnd', 'Ndnd', 'Bdjd', 'Bdjd', '2024-08-29 17:40:45', 'Jdjd');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `respuestas_habilidades`
--
ALTER TABLE `respuestas_habilidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas_intereses`
--
ALTER TABLE `respuestas_intereses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas_personalidad`
--
ALTER TABLE `respuestas_personalidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respues_aptitud`
--
ALTER TABLE `respues_aptitud`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `respuestas_habilidades`
--
ALTER TABLE `respuestas_habilidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `respuestas_intereses`
--
ALTER TABLE `respuestas_intereses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `respuestas_personalidad`
--
ALTER TABLE `respuestas_personalidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `respues_aptitud`
--
ALTER TABLE `respues_aptitud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
