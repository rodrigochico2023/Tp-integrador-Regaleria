-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2023 a las 19:01:58
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tpintegrador-confbsas23563`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id` int(11) NOT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `fotoPerfil` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id`, `producto`, `descripcion`, `cantidad`, `fecha_alta`, `precio`, `fotoPerfil`) VALUES
(4, 'Termo deportista 500cc', 'Termo deportista de 500cc. Marca Fit, conserva la temperatura. Excelente calidad y precio', 200, '2023-01-03', 8500, 'https://imgdb.net/storage/uploads/6e421ff4a337f905c5cbac6a3b7f47556031dea129f8340a51307b5ccdac9f15.png'),
(5, 'Juego de cubiertos asador', 'Juego de cubiertos para preparar el mas rico asado, excelente precio y calidad', 75, '2023-01-04', 8300, NULL),
(6, 'Juego de mate', 'Juego de termo, mate y porta yerba. Mate hecho en alpaca, de excelente calidad y precio', 100, '2023-01-01', 23700, NULL),
(7, 'Juego asador', 'Juego asador - Tabla trabajada en quebracho colorado, cubiertos en alpaca', 50, '2023-01-02', 24600, NULL),
(8, 'Pava elegante 1000cc', 'Pava elegante 1000cc - Marca Cocinerito, aluminio pintado. Excelente calidad', 150, '2023-01-05', 11200, NULL),
(9, 'Reloj red and black', 'Reloj, con detalles en fibra de carbono, de altisima calidad y excelente precio', 80, '2023-01-06', 22500, NULL),
(10, 'Reloj red and black', 'Reloj, con detalles en fibra de carbono, de altisima calidad y excelente precio', 120, '2023-01-07', 33700, NULL),
(11, 'Reloj Sin Markas', 'Reloj - Sin Markas excelente calidad, totalmente en negro, pilas incluidas', 60, '2023-01-09', 28300, NULL),
(12, 'Reloj Sin Markas', 'Reloj - Sin Markas excelente calidad, totalmente en negro, pilas incluidas', 180, '2023-01-10', 28300, NULL),
(13, 'Reloj Switch', 'Reloj Swicht - Excelente calidad con diamantes incrustados y pilas incluidas', 110, '2023-01-11', 28300, NULL),
(14, 'Reloj Switch', 'Reloj Swicht - Excelente calidad con diamantes incrustados y pilas incluidas', 70, '2023-01-12', 23700, NULL),
(15, 'Reloj black and red', 'Reloj, con detalles en fibra de carbono, de altisima calidad y excelente precio', 200, '2023-01-13', 24600, NULL),
(16, 'Reloj black and red', 'Reloj, con detalles en fibra de carbono, de altisima calidad y excelente precio', 130, '2023-01-14', 25200, NULL),
(17, 'Bolso de mano negro - Tortolita', 'Bolso de mano - Las Tortolitas. Bolso en tela, excelente calidad', 40, '2023-01-15', 18300, NULL),
(19, 'Cartera negra tela - Amayra', 'Amayra. Cartera tela y detalles dorados, de excelente calidad', 95, '2023-01-17', 14600, NULL),
(20, 'Mochila negra tela - Amayra', 'Amayra. Mochila tela y detalles dorados, de excelente calidad', 55, '2023-01-18', 15200, NULL),
(21, 'Cartera negra charol', 'Las Oreiro. Cartera simil cuero, de excelente calidad', 170, '2023-01-19', 18300, NULL),
(22, 'Mochila negra charol', 'Las Oreiro. Mochila simil cuero, de excelente calidad', 120, '2023-01-20', 13700, NULL),
(23, 'Cartera marron claro', 'Las Oreiro. Cartera simil cuero, de excelente calidad', 85, '2023-01-21', 14600, NULL),
(24, 'Mochila marron claro', 'Las Oreiro. Mochila simil cuero, de excelente calidad', 110, '2023-01-22', 15200, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `fotoPerfil` varchar(200) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `pass`, `fotoPerfil`, `nombre`, `apellido`, `dni`, `telefono`, `direccion`, `rol`) VALUES
(1, 'ada@gmail.com', '1234', 'https://imgdb.net/storage/uploads/6e421ff4a337f905c5cbac6a3b7f47556031dea129f8340a51307b5ccdac9f15.png', 'Ada', 'Lovel', '10232155', '3811544221', 'san martin 3154', 'user'),
(2, 'jperez@gmail.com', '1234', 'https://imgdb.net/storage/uploads/1d81e66905ab291ce139feedfdedbcbf06dfabf61aa0ad0b5ae96c45cc6f06a4.png', 'Juan', 'Perez', '32254111', '38631244211', 'colon 3120', 'user'),
(6, 'jblaske3', 'kV4|~VHB#?koRa', NULL, 'carlos', 'zabalia', '10323125', '11454545423', 'monteagudo 123', 'user'),
(8, 'phannabus5', 'tC5`is\"!,cZzY\"h', NULL, 'carlos', 'ruiz', '26555444', '386413214', 'colon 4781', 'user'),
(10, 'kroarty7', 'tH0,iY$7j', NULL, 'Roberto', 'Pavez', '23456456', '3865333222', 'Concepcion 1234', 'user'),
(11, 'cfrere8', 'fD7.>(b$', NULL, NULL, NULL, NULL, NULL, NULL, 'user'),
(12, 'cortes9', 'pT1`c8sa!z#7', NULL, NULL, NULL, NULL, NULL, NULL, 'user'),
(14, 'admin2@gmail.com', 'admin', 'https://imgdb.net/storage/uploads/6e421ff4a337f905c5cbac6a3b7f47556031dea129f8340a51307b5ccdac9f15.png', 'admin2', 'Admin', '123123', '123123', 'Admin', 'admin'),
(15, 'hgomez@gmail.com', 'aA123456', NULL, NULL, NULL, NULL, NULL, NULL, 'user'),
(16, 'hgomez@codoacodo.edu.ar', 'aA123456', NULL, NULL, NULL, NULL, NULL, NULL, 'user'),
(22, 'cfernando@codoACodo.edu.ar', 'Aa123456', '', 'carlos fernando', 'nuñez', '10354563', '38654456452', 'las piedras 3154', 'user'),
(23, 'martino@codoACodo.edu.ar', '123456Aa', '', 'colorao', 'martino', '28555777', '38144444444', 'martino 315', 'user'),
(24, 'chico@codoACodo.edu.ar', '123456bB', 'https://imgdb.net/storage/uploads/6e421ff4a337f905c5cbac6a3b7f47556031dea129f8340a51307b5ccdac9f15.png', 'carlos', 'chico', '21212121212', '2121212121121', 'aofhoashnfas 31522', 'user'),
(25, 'mama@codoACodo.edu.ar', '123456Mama', 'WIN_20230430_16_19_22_Pro.jpg', 'mamama', 'mamamamam', '12333333333', '1531231232312', 'hakslnlsnkaksl 1231', 'user'),
(26, 'rodrigo@gmail.com', '123456Nnn', 'https://imgdb.net/storage/uploads/6e421ff4a337f905c5cbac6a3b7f47556031dea129f8340a51307b5ccdac9f15.png', 'rodrigo', 'chico', '11111111111', '11111111111', '11111111111', 'user'),
(27, 'esteban@gmail.com', '123456aA', '', 'esteban', 'carmona', '23123123', '3863121212', 'monteros 125', 'user'),
(28, 'franco@gmail.com', 'Aa123456', '', 'Franco', 'Benitez', '23532141', '386341414141', 'monteagudo 3456', 'user'),
(29, 'eduardo@gmail.com', 'Aa123456', '', 'Eduardo', 'ruso', '15232125', '38654545415', 'belgrano 2025', 'user'),
(30, 'carlosperez@gmail.com', 'Aa123456', 'WIN_20230430_16_19_22_Pro.jpg', 'Carlos', 'Perez', '11111111111', '113456455664', 'las pedras 14454', 'user'),
(31, 'fl@gmail.com', 'Aa123456', 'WIN_20230430_16_19_22_Pro.jpg', 'Franco', 'Ledezma', '15366415', '3864456123', 'Alberdi 123', 'user'),
(32, 'mdiaz@gmail.com', 'Aa123456', '', 'Martin', 'Diaz', '12345563', '386514521452', 'san lorenzo 3154', 'user'),
(33, 'wd@gmail.com', 'Aa123456', '', 'William', 'Doldan', '14563145', '386545123654', 'Alberdi 4561', 'user'),
(34, 'admin@gmail.com', 'Admin123', '', 'Administrador', 'Administrador', '123123123', '123123123', 'Administrador', 'user');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ap` (`producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
