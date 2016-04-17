-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2016 a las 18:13:42
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`) VALUES
(1, 'Informatica'),
(2, 'Psicologia'),
(3, 'Idiomas'),
(4, 'Contabilidad'),
(5, 'Enfermeria'),
(6, 'Administracion'),
(7, 'Arquitectura'),
(8, 'Literatura'),
(9, 'Quimica'),
(10, 'Historia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_carrera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `id_carrera`) VALUES
(13, 'Programacion', 1),
(14, 'Contabilidad', 1),
(15, 'Administracion', 1),
(16, 'Probabilidad', 1),
(17, 'Logica', 1),
(18, 'Matematicas', 1),
(19, 'Ingles', 1),
(20, 'Algoritmia', 1),
(21, 'Lenguajes de programacion', 1),
(22, 'Teoria de computacion', 1),
(23, 'Anatomia', 2),
(24, 'Filosofia', 2),
(25, 'Matematicas', 2),
(26, 'Motivacion y Emocion', 2),
(27, 'Neurofisiologia', 2),
(28, 'Psicopatologia', 2),
(29, 'Teoria de la Personalidad', 2),
(30, 'Psicometria', 2),
(31, 'Teoria de la Medida', 2),
(32, 'Bases Biologicas', 2),
(38, 'Discurso y Pragmatica ', 3),
(39, 'Escritura Academica en Ingles', 3),
(40, 'Gramatica Pedagogica', 3),
(41, 'Lecto-Escritura', 3),
(42, 'Desarrollo curricular', 3),
(43, 'Español', 3),
(44, 'Lengua Extranjera', 3),
(45, 'Tercer Lengua', 3),
(46, 'Cuarta Lengua', 3),
(47, 'Razonamiento', 3),
(56, 'Lenguaje', 4),
(57, 'Filosofia', 4),
(58, 'Economia', 4),
(59, 'Lenguaje', 4),
(60, 'Contabilidad', 4),
(61, 'Ciencia Politica', 4),
(62, 'Matematicas 2', 4),
(63, 'Marketing', 4),
(64, 'Contabilidad', 4),
(65, 'Estadistica Aplicada', 4),
(66, 'Anatomia', 5),
(67, 'Salud Ambiental', 5),
(68, 'Psicologia', 5),
(69, 'Aprender a Aprender', 5),
(70, 'Etica', 5),
(71, 'Fundamentos de Enfermeria', 5),
(72, 'Microbiologia', 5),
(73, 'Bioquimica', 5),
(74, 'Fisiologia', 5),
(75, 'Tecnologias de la Informacion', 5),
(76, 'Seguridad Social', 6),
(77, 'Legislacion Aduanera', 6),
(78, 'Comercio Electronico', 6),
(79, 'Administracion de Compras', 6),
(80, 'Servicio Social Profesional', 6),
(81, 'Gestion de Empresas', 6),
(82, 'Simulacion de Negocios', 6),
(83, 'Gobierno Corporativo', 6),
(84, 'Estrategias para la Competitividad', 6),
(85, 'Extreñimiento', 6),
(86, 'Matematicas 1', 7),
(87, 'Matematicas 2', 7),
(88, 'Matematicas 3', 7),
(89, 'Fisica 1', 7),
(90, 'Fisica 2', 7),
(91, 'Construcciones 1', 7),
(92, 'Construcciones 2', 7),
(93, 'Historia 1', 7),
(94, 'Historia 2', 7),
(95, 'Dibujo', 7),
(96, 'Español', 8),
(97, 'Historia', 8),
(98, 'Lengua Española', 8),
(99, 'Creacion Literaria', 8),
(100, 'Lengua Extranjera', 8),
(101, 'Literatura Prehispanicas', 8),
(102, 'Arte', 8),
(103, 'Historia', 8),
(104, 'Literatura Española', 8),
(105, 'Literatura Hispanoamericana', 8),
(106, 'Calculo', 9),
(107, 'Fisica', 9),
(108, 'Estadistica', 9),
(109, 'Quimica General', 9),
(110, 'Fisica', 9),
(111, 'Quimica Organica', 9),
(112, 'Quimica Analitica', 9),
(113, 'Quimica cuantitativa', 9),
(114, 'Estadistica', 9),
(115, 'Analitica Experimental', 9),
(116, 'Historia', 10),
(117, 'Historia Antigua', 10),
(118, 'Historia Antigua 2', 10),
(119, 'Historia Medieval', 10),
(120, 'Historia Moderna', 10),
(121, 'Historia Contemporanea', 10),
(122, 'Historia de America 1', 10),
(123, 'Historia de America 2', 10),
(124, 'Historia de España', 10),
(125, 'Historia de Asia', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

CREATE TABLE `temas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_materias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `temas`
--

INSERT INTO `temas` (`id`, `nombre`, `id_materias`) VALUES
(1, 'Acces', 13),
(2, 'AJAX', 13),
(3, 'Apache', 13),
(4, 'A SP', 13),
(5, 'A sp.NET', 13),
(6, 'Base de Datos', 13),
(7, 'hackers', 13),
(8, 'HTML', 13),
(9, 'SQL', 13),
(10, 'SQL Server', 13),
(11, 'Flash', 13),
(12, 'Tema 1', 14),
(13, 'Tema 2', 14),
(14, 'Tema 3', 14),
(15, 'Tema 4', 14),
(16, 'Tema 5', 14),
(17, 'Tema 6', 14),
(18, 'Tema 7', 14),
(19, 'Tema 8', 14),
(20, 'Tema 9', 14),
(21, 'Tema 10', 14),
(22, 'Tema 1', 15),
(23, 'Tema 2', 15),
(24, 'Tema 3', 15),
(25, 'Tema 4', 15),
(26, 'Tema 5', 15),
(27, 'Tema 6', 15),
(28, 'Tema 7', 15),
(29, 'Tema 8', 15),
(30, 'Tema 9', 15),
(31, 'Tema 10', 15),
(32, 'Tema 1', 16),
(33, 'Tema 2', 16),
(34, 'Tema 3', 16),
(35, 'Tema 5', 16),
(36, 'Tema 6', 16),
(37, 'Tema 7', 16),
(38, 'Tema 8', 16),
(39, 'Tema 9', 16),
(40, 'Tema 10', 16),
(41, 'Tema 1', 17),
(42, 'Tema 2', 17),
(43, 'Tema 3', 17),
(44, 'Tema 4', 17),
(45, 'Tema 5', 17),
(46, 'Tema 6', 17),
(47, 'Tema 7', 17),
(48, 'Tema 8', 17),
(49, 'Tema 9', 17),
(50, 'Tema 10', 17),
(51, 'Tema 1', 23),
(52, 'Tema 2', 23),
(53, 'Tema 3', 23),
(54, 'Tema 4', 23),
(55, 'Tema 5', 23),
(56, 'Tema 6', 23),
(57, 'Tema 7', 23),
(58, 'Tema 8', 23),
(59, 'Tema 9', 23),
(60, 'Tema 10', 23),
(61, 'Tema 1', 24),
(62, 'Tema 2', 24),
(63, 'Tema 3', 24),
(64, 'Tema 4', 24),
(65, 'Tema 5', 24),
(66, 'Tema 6', 24),
(67, 'Tema 7', 24),
(68, 'Tema 8', 24),
(69, 'Tema 9', 24),
(70, 'Tema 10', 24),
(71, 'Tema 1', 25),
(72, 'Tema 2', 25),
(73, 'Tema 3', 25),
(74, 'Tema 4', 25),
(75, 'Tema 5', 25),
(76, 'Tema 6', 25),
(77, 'Tema 7', 25),
(78, 'Tema 8', 25),
(79, 'Tema 9', 25),
(80, 'Tema 10', 25),
(81, 'Tema 1', 38),
(82, 'Tema 2', 38),
(83, 'Tema 3', 38),
(84, 'Tema 4', 38),
(85, 'Tema 5', 38),
(86, 'Tema 6', 38),
(87, 'Tema 7', 38),
(88, 'Tema 8', 38),
(89, 'Tema 9', 38),
(90, 'Tema 10', 38),
(91, 'Tema 1', 39),
(92, 'Tema 2', 39),
(93, 'Tema 3', 39),
(94, 'Tema 4', 39),
(95, 'Tema 5', 39),
(96, 'Tema 6', 39),
(97, 'Tema 7', 39),
(98, 'Tema 8', 39),
(99, 'Tema 9', 39),
(100, 'Tema 10', 39),
(101, 'Tema 1', 40),
(102, 'Tema 2', 40),
(103, 'Tema 3', 40),
(104, 'Tema 4', 40),
(105, 'Tema 5', 40),
(106, 'Tema 6', 40),
(107, 'Tema 7', 40),
(108, 'Tema 8', 40),
(109, 'Tema 9', 40),
(110, 'Tema 10', 40);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `temas`
--
ALTER TABLE `temas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT de la tabla `temas`
--
ALTER TABLE `temas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
