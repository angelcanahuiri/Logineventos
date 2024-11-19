-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-11-2024 a las 03:37:27
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eventosdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_evento`
--

CREATE TABLE `categoria_evento` (
  `ID_Categoria` int(11) NOT NULL,
  `Nombre_Categoria` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria_evento`
--

INSERT INTO `categoria_evento` (`ID_Categoria`, `Nombre_Categoria`) VALUES
(1, 'Concierto'),
(2, 'Conferencia'),
(3, 'Taller'),
(4, 'Fiesta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_Cliente` int(11) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Apellido` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Telefono` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Direccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Distrito` int(11) DEFAULT NULL,
  `Fecha_Registro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_Cliente`, `Nombre`, `Apellido`, `Telefono`, `Email`, `Direccion`, `Distrito`, `Fecha_Registro`) VALUES
(1, 'Juan', 'Perez', '999999999', 'juanperez@mail.com', 'Av. Siempre Viva 123', 1, '2024-09-01'),
(2, 'Ana', 'Gonzalez', '988888888', 'anagonzalez@mail.com', 'Calle Falsa 456', 2, '2024-08-25'),
(3, 'Carlos', 'Ramos', '977777777', 'carlosramos@mail.com', 'Jr. Los Pinos 789', 3, '2024-08-20'),
(4, 'Maria', 'Lopez', '966666666', 'marialopez@mail.com', 'Av. Las Palmeras 321', 4, '2024-08-15'),
(5, 'Aldo', 'Vasquez', '975450468', 'aldo.vasquez@essalud.gob.pe', 'AV REBAGLIATI 490', 1, '2024-11-18'),
(6, 'Carlos', 'Aldave', '975450468', 'carlos.aldave@essalud.gob.pe', 'jr', 2, '2024-11-18'),
(7, 'Marcos', 'pariona', '975450468', 'marcos.pariona@essalud.gob.pe', 'jr reba', 4, '2024-11-18'),
(12, 'xxxx', 'xxxxx', '975450468', 'a@s.com', 'ssss', 4, '2024-11-18'),
(13, 'xxxx', 'xxxxx', '975450468', 'a@s.com', 'ssss', 4, '2024-11-18'),
(14, 'xxxx', 'xxxxx', '975450468', 'a@s.com', 'ssss', 4, '2024-11-18'),
(15, 'xxxx', 'xxxxx', '975450468', 'a@s.com', 'ssss', 4, '2024-11-18'),
(16, 'xxxx', 'xxxxx', '975450468', 'a@s.com', 'ssss', 4, '2024-11-18'),
(17, 'xxxx', 'xxxxx', '975450468', 'a@s.com', 'ssss', 4, '2024-11-18'),
(18, 'xxxx', 'xxxxx', '975450468', 'a@s.com', 'ssss', 4, '2024-11-18'),
(19, 'xxxx', 'xxxxx', '975450468', 'a@s.com', 'ssss', 4, '2024-11-18'),
(20, 'xxxx', 'xxxxx', '975450468', 'a@s.com', 'ssss', 4, '2024-11-18'),
(21, 'xxxx', 'xxxxx', '975450468', 'a@s.com', 'ssss', 4, '2024-11-18'),
(22, 'xxxx', 'xxxxx', '975450468', 'a@s.com', 'ssss', 4, '2024-11-18'),
(23, 'Aldo', 'Vasquez', '975450468', 'aldo.vasquez@essalud.gob.pe', 'av rebagliati 490', 4, '2024-11-18'),
(24, 'Angel', 'Canahuire Jaimes', '975458752', 'angelc@gmail.com', 'Miraflores 758', 1, '2024-11-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratacion`
--

CREATE TABLE `contratacion` (
  `ID_Contratacion` int(11) NOT NULL,
  `ID_Cliente` int(11) DEFAULT NULL,
  `ID_Evento` int(11) DEFAULT NULL,
  `ID_Trabajador` int(11) DEFAULT NULL,
  `Fecha_Contratacion` date DEFAULT NULL,
  `Estado` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contratacion`
--

INSERT INTO `contratacion` (`ID_Contratacion`, `ID_Cliente`, `ID_Evento`, `ID_Trabajador`, `Fecha_Contratacion`, `Estado`) VALUES
(9, 1, 1, 1, '2024-09-02', 'Confirmado'),
(10, 2, 2, 2, '2024-09-05', 'Pendiente'),
(11, 3, 3, 3, '2024-09-10', 'Confirmado'),
(12, 4, 4, 4, '2024-09-15', 'Finalizado'),
(13, 2, 4, 1, '2024-11-21', 'Pendiente'),
(14, 2, 3, 4, '2024-11-01', 'Pendiente'),
(15, 2, 3, 2, '2024-11-17', 'Pendiente'),
(16, 2, 1, 2, '2024-11-08', 'Pendiente'),
(17, 2, 1, 1, '2024-11-14', 'Pendiente'),
(18, 2, 1, 1, '2024-11-15', 'Pendiente'),
(19, 2, 1, 1, '2024-11-13', 'Pendiente'),
(20, 2, 2, 4, '2024-11-30', 'Pendiente'),
(21, 2, 4, 3, '2024-12-31', 'Pendiente'),
(22, 2, 3, 1, '2024-11-19', 'Pendiente'),
(23, 17, 4, 4, '2024-12-31', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE `distrito` (
  `ID_Distrito` int(11) NOT NULL,
  `Nombre_Distrito` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Region` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `distrito`
--

INSERT INTO `distrito` (`ID_Distrito`, `Nombre_Distrito`, `Region`) VALUES
(1, 'Lima', 'Costa'),
(2, 'Cusco', 'Sierra'),
(3, 'Arequipa', 'Sierra'),
(4, 'Piura', 'Costa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `ID_Evento` int(11) NOT NULL,
  `ID_Categoria` int(11) DEFAULT NULL,
  `ID_Distrito` int(11) DEFAULT NULL,
  `Fecha_Evento` date DEFAULT NULL,
  `Estado` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`ID_Evento`, `ID_Categoria`, `ID_Distrito`, `Fecha_Evento`, `Estado`, `Descripcion`) VALUES
(1, 1, 1, '2024-12-01', 'Pendiente', 'Concierto de rock en Lima'),
(2, 2, 2, '2024-10-15', 'Confirmado', 'Conferencia de tecnología'),
(3, 3, 3, '2024-11-10', 'Pendiente', 'Taller de cocina'),
(4, 4, 4, '2024-09-25', 'Finalizado', 'Fiesta de fin de año');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventosdb_contratacion_servicio`
--

CREATE TABLE `eventosdb_contratacion_servicio` (
  `ID_Contratacion_Servicio` int(11) NOT NULL,
  `ID_Contratacion` int(11) NOT NULL,
  `ID_Servicio` int(11) NOT NULL,
  `Cantidad_Servicios` int(11) DEFAULT '1',
  `Precio_Final` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `eventosdb_contratacion_servicio`
--

INSERT INTO `eventosdb_contratacion_servicio` (`ID_Contratacion_Servicio`, `ID_Contratacion`, `ID_Servicio`, `Cantidad_Servicios`, `Precio_Final`) VALUES
(2, 19, 1, 1, NULL),
(5, 19, 8, 1, NULL),
(7, 19, 7, 1, NULL),
(9, 19, 6, 1, NULL),
(10, 19, 2, 1, NULL),
(11, 21, 1, 1, NULL),
(13, 21, 2, 1, NULL),
(14, 21, 3, 1, NULL),
(15, 21, 4, 1, NULL),
(16, 21, 5, 1, NULL),
(17, 21, 6, 1, NULL),
(18, 21, 7, 1, NULL),
(19, 21, 8, 1, NULL),
(20, 23, 1, 1, NULL),
(21, 23, 2, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feedback`
--

CREATE TABLE `feedback` (
  `ID_Feedback` int(11) NOT NULL,
  `ID_Cliente` int(11) DEFAULT NULL,
  `ID_Trabajador` int(11) DEFAULT NULL,
  `ID_Evento` int(11) DEFAULT NULL,
  `Calificacion` int(11) DEFAULT NULL,
  `Comentario` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `feedback`
--

INSERT INTO `feedback` (`ID_Feedback`, `ID_Cliente`, `ID_Trabajador`, `ID_Evento`, `Calificacion`, `Comentario`, `Fecha`) VALUES
(5, 1, 1, 1, 5, 'Excelente servicio', '2024-09-03'),
(6, 2, 2, 2, 4, 'Muy buen evento', '2024-09-06'),
(7, 3, 3, 3, 5, 'Me encantó la organización', '2024-09-11'),
(8, 4, 4, 4, 3, 'Podría haber sido mejor', '2024-09-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `ID_Servicio` int(11) NOT NULL,
  `Tipo_Servicio` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Precio_Base` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`ID_Servicio`, `Tipo_Servicio`, `Descripcion`, `Precio_Base`) VALUES
(1, 'Fotografía', 'Servicio de fotografía para eventos', '500.00'),
(2, 'Catering', 'Servicio de catering', '1000.00'),
(3, 'Decoración', 'Decoración temática para eventos', '750.00'),
(4, 'Seguridad', 'Servicio de seguridad privada', '300.00'),
(5, 'Fotografía', 'Servicio de fotografía para eventos', '500.00'),
(6, 'Catering', 'Servicio de catering', '1000.00'),
(7, 'Decoración', 'Decoración temática para eventos', '750.00'),
(8, 'Seguridad', 'Servicio de seguridad privada', '300.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `ID_Trabajador` int(11) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Apellido` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Telefono` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Estado_Disponibilidad` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`ID_Trabajador`, `Nombre`, `Apellido`, `Telefono`, `Email`, `Estado_Disponibilidad`) VALUES
(1, 'Pedro', 'Sanchez', '955555555', 'pedrosanchez@mail.com', 'Disponible'),
(2, 'Laura', 'Diaz', '944444444', 'lauradiaz@mail.com', 'No disponible'),
(3, 'Luis', 'Castillo', '933333333', 'luiscastillo@mail.com', 'Disponible'),
(4, 'Rosa', 'Torres', '922222222', 'rosatorres@mail.com', 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `clave` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rol` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ID_Cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `clave`, `rol`, `ID_Cliente`) VALUES
(1, 'admin', 'YWRtaW4=', 'ADMINISTRADOR', NULL),
(2, 'cliente1', 'Y2xpZW50ZTE=', 'CLIENTE', NULL),
(3, 'cliente2', 'MTIzNDU2', 'CLIENTE', NULL),
(4, 'cliente3', 'MTIzNDU2', 'CLIENTE', NULL),
(6, 'cliente4', 'MTIzNDU2', 'CLIENTE', NULL),
(7, 'cliente5', 'MTIzNDU2', 'CLIENTE', 5),
(8, 'cliente6', 'MTIzNDU2', 'CLIENTE', 6),
(9, 'cliente7', 'MTIzNDU2', 'CLIENTE', 7),
(10, 'cliente8', 'MTIzNDU2', 'CLIENTE', 12),
(11, 'cliente9', 'YWRtaW4=', 'CLIENTE', 13),
(12, 'cliente10', 'YWRtaW4=', 'CLIENTE', 19),
(13, 'cliente11', 'YWRtaW40NTY3OA==', 'CLIENTE', 20),
(14, 'cliente12', 'MTIzNDU2', 'CLIENTE', 21),
(15, 'cliente13', 'MTIzNDU2', 'CLIENTE', 22),
(16, 'cliente14', 'MTIzNDU2', 'CLIENTE', 23),
(17, 'cliente15', 'MTIzNDU2', 'CLIENTE', 24);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  ADD PRIMARY KEY (`ID_Categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_Cliente`),
  ADD KEY `Distrito` (`Distrito`);

--
-- Indices de la tabla `contratacion`
--
ALTER TABLE `contratacion`
  ADD PRIMARY KEY (`ID_Contratacion`),
  ADD KEY `ID_Cliente` (`ID_Cliente`),
  ADD KEY `ID_Evento` (`ID_Evento`),
  ADD KEY `ID_Trabajador` (`ID_Trabajador`);

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`ID_Distrito`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`ID_Evento`),
  ADD KEY `ID_Categoria` (`ID_Categoria`),
  ADD KEY `ID_Distrito` (`ID_Distrito`);

--
-- Indices de la tabla `eventosdb_contratacion_servicio`
--
ALTER TABLE `eventosdb_contratacion_servicio`
  ADD PRIMARY KEY (`ID_Contratacion_Servicio`),
  ADD KEY `ID_Contratacion` (`ID_Contratacion`),
  ADD KEY `ID_Servicio` (`ID_Servicio`);

--
-- Indices de la tabla `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`ID_Feedback`),
  ADD KEY `ID_Cliente` (`ID_Cliente`),
  ADD KEY `ID_Trabajador` (`ID_Trabajador`),
  ADD KEY `ID_Evento` (`ID_Evento`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`ID_Servicio`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`ID_Trabajador`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD KEY `FK_Usuario_Cliente` (`ID_Cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  MODIFY `ID_Categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `contratacion`
--
ALTER TABLE `contratacion`
  MODIFY `ID_Contratacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `distrito`
--
ALTER TABLE `distrito`
  MODIFY `ID_Distrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `ID_Evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `eventosdb_contratacion_servicio`
--
ALTER TABLE `eventosdb_contratacion_servicio`
  MODIFY `ID_Contratacion_Servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `feedback`
--
ALTER TABLE `feedback`
  MODIFY `ID_Feedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `ID_Servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  MODIFY `ID_Trabajador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`Distrito`) REFERENCES `distrito` (`ID_Distrito`);

--
-- Filtros para la tabla `contratacion`
--
ALTER TABLE `contratacion`
  ADD CONSTRAINT `contratacion_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  ADD CONSTRAINT `contratacion_ibfk_2` FOREIGN KEY (`ID_Evento`) REFERENCES `evento` (`ID_Evento`),
  ADD CONSTRAINT `contratacion_ibfk_4` FOREIGN KEY (`ID_Trabajador`) REFERENCES `trabajador` (`ID_Trabajador`);

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`ID_Categoria`) REFERENCES `categoria_evento` (`ID_Categoria`),
  ADD CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`ID_Distrito`) REFERENCES `distrito` (`ID_Distrito`);

--
-- Filtros para la tabla `eventosdb_contratacion_servicio`
--
ALTER TABLE `eventosdb_contratacion_servicio`
  ADD CONSTRAINT `eventosdb_contratacion_servicio_ibfk_1` FOREIGN KEY (`ID_Contratacion`) REFERENCES `contratacion` (`ID_Contratacion`),
  ADD CONSTRAINT `eventosdb_contratacion_servicio_ibfk_2` FOREIGN KEY (`ID_Servicio`) REFERENCES `servicio` (`ID_Servicio`);

--
-- Filtros para la tabla `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`ID_Trabajador`) REFERENCES `trabajador` (`ID_Trabajador`),
  ADD CONSTRAINT `feedback_ibfk_3` FOREIGN KEY (`ID_Evento`) REFERENCES `evento` (`ID_Evento`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `FK_Usuario_Cliente` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
