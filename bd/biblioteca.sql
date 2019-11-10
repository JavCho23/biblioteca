-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2019 a las 19:48:33
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellido_materno` varchar(30) NOT NULL,
  `apellido_paterno` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--

CREATE TABLE `biblioteca` (
  `id_biblioteca` int(11) NOT NULL,
  `nombre` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallelibro`
--

CREATE TABLE `detallelibro` (
  `id_detalle_libro` int(11) NOT NULL,
  `id_libro` int(11) NOT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `id_editorial` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ejemplar`
--

CREATE TABLE `detalle_ejemplar` (
  `id_detalle_ejemplar` int(11) NOT NULL,
  `id_ejemplar` int(11) NOT NULL,
  `id_reserva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_prestamo`
--

CREATE TABLE `detalle_prestamo` (
  `id_detalle_prestamo` int(11) NOT NULL,
  `id_ejemplar` int(11) NOT NULL,
  `id_prestamo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `id_editorial` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplar`
--

CREATE TABLE `ejemplar` (
  `id_ejemplar` int(11) NOT NULL,
  `id_libro` int(11) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `id_facultad` int(11) NOT NULL,
  `nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lector`
--

CREATE TABLE `lector` (
  `id_lector` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellidoMaterno` varchar(30) NOT NULL,
  `apellidoPaterno` varchar(30) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `id_procedencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id_libro` int(11) NOT NULL,
  `id_biblioteca` int(11) NOT NULL,
  `dewey` varchar(8) NOT NULL,
  `numero_ejemplares` int(11) NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `anio_publicacion` year(4) NOT NULL,
  `id_programa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `id_prestamo` int(11) NOT NULL,
  `id_lector` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_termino` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procedencia`
--

CREATE TABLE `procedencia` (
  `id_procedencia` int(11) NOT NULL,
  `id_universidad` int(11) DEFAULT NULL,
  `id_facultad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa_estudio`
--

CREATE TABLE `programa_estudio` (
  `id_programa` int(11) NOT NULL,
  `nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `fecha` int(11) NOT NULL,
  `detalle` int(11) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_lector` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universidad`
--

CREATE TABLE `universidad` (
  `id_universidad` int(11) NOT NULL,
  `nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` int(11) NOT NULL,
  `pass` int(11) NOT NULL,
  `imagen` int(11) DEFAULT NULL,
  `nombre_usuario` int(11) NOT NULL,
  `id_biblioteca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indices de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`id_biblioteca`);

--
-- Indices de la tabla `detallelibro`
--
ALTER TABLE `detallelibro`
  ADD PRIMARY KEY (`id_detalle_libro`),
  ADD KEY `id_editorial` (`id_editorial`),
  ADD KEY `id_autor` (`id_autor`),
  ADD KEY `id_libro` (`id_libro`);

--
-- Indices de la tabla `detalle_ejemplar`
--
ALTER TABLE `detalle_ejemplar`
  ADD PRIMARY KEY (`id_detalle_ejemplar`),
  ADD KEY `id_ejemplar` (`id_ejemplar`),
  ADD KEY `id_reserva` (`id_reserva`);

--
-- Indices de la tabla `detalle_prestamo`
--
ALTER TABLE `detalle_prestamo`
  ADD PRIMARY KEY (`id_detalle_prestamo`),
  ADD KEY `id_ejemplar` (`id_ejemplar`),
  ADD KEY `id_prestamo` (`id_prestamo`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`id_editorial`);

--
-- Indices de la tabla `ejemplar`
--
ALTER TABLE `ejemplar`
  ADD PRIMARY KEY (`id_ejemplar`),
  ADD KEY `id_libro` (`id_libro`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`id_facultad`);

--
-- Indices de la tabla `lector`
--
ALTER TABLE `lector`
  ADD PRIMARY KEY (`id_lector`),
  ADD KEY `id_procedencia` (`id_procedencia`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id_libro`),
  ADD KEY `id_biblioteca` (`id_biblioteca`),
  ADD KEY `id_programa` (`id_programa`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`id_prestamo`),
  ADD KEY `id_lector` (`id_lector`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `procedencia`
--
ALTER TABLE `procedencia`
  ADD PRIMARY KEY (`id_procedencia`),
  ADD KEY `id_facultad` (`id_facultad`),
  ADD KEY `id_universidad` (`id_universidad`);

--
-- Indices de la tabla `programa_estudio`
--
ALTER TABLE `programa_estudio`
  ADD PRIMARY KEY (`id_programa`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_lector` (`id_lector`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `universidad`
--
ALTER TABLE `universidad`
  ADD PRIMARY KEY (`id_universidad`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_biblioteca` (`id_biblioteca`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `id_biblioteca` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallelibro`
--
ALTER TABLE `detallelibro`
  MODIFY `id_detalle_libro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_ejemplar`
--
ALTER TABLE `detalle_ejemplar`
  MODIFY `id_detalle_ejemplar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_prestamo`
--
ALTER TABLE `detalle_prestamo`
  MODIFY `id_detalle_prestamo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `editorial`
--
ALTER TABLE `editorial`
  MODIFY `id_editorial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ejemplar`
--
ALTER TABLE `ejemplar`
  MODIFY `id_ejemplar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `id_facultad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lector`
--
ALTER TABLE `lector`
  MODIFY `id_lector` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  MODIFY `id_prestamo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `procedencia`
--
ALTER TABLE `procedencia`
  MODIFY `id_procedencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `programa_estudio`
--
ALTER TABLE `programa_estudio`
  MODIFY `id_programa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `universidad`
--
ALTER TABLE `universidad`
  MODIFY `id_universidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallelibro`
--
ALTER TABLE `detallelibro`
  ADD CONSTRAINT `detallelibro_ibfk_1` FOREIGN KEY (`id_editorial`) REFERENCES `editorial` (`id_editorial`),
  ADD CONSTRAINT `detallelibro_ibfk_2` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`),
  ADD CONSTRAINT `detallelibro_ibfk_3` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id_libro`);

--
-- Filtros para la tabla `detalle_ejemplar`
--
ALTER TABLE `detalle_ejemplar`
  ADD CONSTRAINT `detalle_ejemplar_ibfk_1` FOREIGN KEY (`id_ejemplar`) REFERENCES `ejemplar` (`id_ejemplar`),
  ADD CONSTRAINT `detalle_ejemplar_ibfk_2` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id_reserva`);

--
-- Filtros para la tabla `detalle_prestamo`
--
ALTER TABLE `detalle_prestamo`
  ADD CONSTRAINT `detalle_prestamo_ibfk_1` FOREIGN KEY (`id_ejemplar`) REFERENCES `ejemplar` (`id_ejemplar`),
  ADD CONSTRAINT `detalle_prestamo_ibfk_2` FOREIGN KEY (`id_prestamo`) REFERENCES `prestamo` (`id_prestamo`);

--
-- Filtros para la tabla `ejemplar`
--
ALTER TABLE `ejemplar`
  ADD CONSTRAINT `ejemplar_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id_libro`);

--
-- Filtros para la tabla `lector`
--
ALTER TABLE `lector`
  ADD CONSTRAINT `lector_ibfk_1` FOREIGN KEY (`id_procedencia`) REFERENCES `procedencia` (`id_procedencia`);

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`id_biblioteca`) REFERENCES `biblioteca` (`id_biblioteca`),
  ADD CONSTRAINT `libro_ibfk_2` FOREIGN KEY (`id_programa`) REFERENCES `programa_estudio` (`id_programa`);

--
-- Filtros para la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`id_lector`) REFERENCES `lector` (`id_lector`),
  ADD CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `procedencia`
--
ALTER TABLE `procedencia`
  ADD CONSTRAINT `procedencia_ibfk_1` FOREIGN KEY (`id_facultad`) REFERENCES `facultad` (`id_facultad`),
  ADD CONSTRAINT `procedencia_ibfk_2` FOREIGN KEY (`id_universidad`) REFERENCES `universidad` (`id_universidad`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_lector`) REFERENCES `lector` (`id_lector`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_biblioteca`) REFERENCES `biblioteca` (`id_biblioteca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
