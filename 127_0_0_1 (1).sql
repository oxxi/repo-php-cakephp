-- phpMyAdmin SQL Dump
-- version 4.0.3
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-09-2013 a las 05:33:09
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.5.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `appdb`
--
CREATE DATABASE IF NOT EXISTS `appdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `appdb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodegas`
--

CREATE TABLE IF NOT EXISTS `bodegas` (
  `idbodega` int(11) NOT NULL,
  `detalle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbodega`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE IF NOT EXISTS `inventario` (
  `idproducto` int(11) NOT NULL,
  `precio_costo` double DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `idbodega` int(11) DEFAULT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `idproducto` int(11) NOT NULL,
  `nombre_producto` varchar(45) DEFAULT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nombreusuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nombreusuario`, `password`, `correo`) VALUES
(1, 'jose', '96917805fd060e3766a9a1b834639d35', 'jose@gmail.com');
--
-- Base de datos: `cakepractica2`
--
CREATE DATABASE IF NOT EXISTS `cakepractica2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cakepractica2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` tinytext NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `teacher_id`) VALUES
(1, 'Curos Php I', 'introduccion a php ', 1),
(7, 'Python', 'introduccion', 6),
(5, 'Curso de JavaScript', 'introduccion conceptos de javascript', 2),
(6, 'Curso de C++', 'introduccion a c++', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `name`, `last_name`) VALUES
(1, 'Luis', 'Almendares'),
(2, 'Carlos', 'Maradiaga'),
(3, 'Daniela ', 'Centeno'),
(4, 'Melissa ', 'Vallecillo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students_courses`
--

CREATE TABLE IF NOT EXISTS `students_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `cv` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `last_name`, `cv`) VALUES
(1, 'Jose', 'Ramos', 'lorem lorem lorem'),
(2, 'Fabian ', 'Medina', ''),
(3, 'Hector ', 'Berrios', ''),
(4, 'Rosmery ', 'Corrales', ''),
(5, 'otro', 'otro', ''),
(6, 'Voldemort', 'Voldemort', 'aas');
--
-- Base de datos: `dbcake`
--
CREATE DATABASE IF NOT EXISTS `dbcake` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dbcake`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Group', 1, NULL, 1, 2),
(2, NULL, 'Group', 2, NULL, 5, 8),
(3, NULL, 'Group', 3, NULL, 9, 12),
(4, 1, 'User', 1, NULL, 2, 3),
(5, 2, 'User', 5, NULL, 6, 7),
(6, 3, 'User', 3, NULL, 10, 11),
(7, NULL, 'User', 2, '', 13, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) unsigned NOT NULL,
  `aco_id` int(10) unsigned NOT NULL,
  `_create` char(2) NOT NULL DEFAULT '0',
  `_read` char(2) NOT NULL DEFAULT '0',
  `_update` char(2) NOT NULL DEFAULT '0',
  `_delete` char(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `group_id`, `created`, `modified`) VALUES
(1, 'jose', 'a8bcc2fb711025bc6543b0bf9c4fe2e906f5ca7a', 0, '2013-08-21 07:44:31', '2013-08-21 07:44:31'),
(2, 'manuel', 'a8bcc2fb711025bc6543b0bf9c4fe2e906f5ca7a', 0, '2013-08-23 05:58:38', '2013-08-23 05:58:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `part_no` varchar(12) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
--
-- Base de datos: `dbcrud`
--
CREATE DATABASE IF NOT EXISTS `dbcrud` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dbcrud`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso_detalles`
--

CREATE TABLE IF NOT EXISTS `acceso_detalles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acceso_id` int(11) NOT NULL,
  `detalle` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesos`
--

CREATE TABLE IF NOT EXISTS `accesos` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `perfile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `accesos`
--

INSERT INTO `accesos` (`id`, `name`, `perfile_id`) VALUES
(1, 'Ventas', 1),
(2, 'Admistracion', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE IF NOT EXISTS `perfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Ventas'),
(3, 'Doctor'),
(4, 'asdasd'),
(5, 'asdasd'),
(6, 'asdasd'),
(7, 'Admin'),
(8, 'asdasd'),
(9, 'asdasd'),
(10, ''),
(11, ''),
(12, ''),
(13, ''),
(14, ''),
(15, ''),
(16, ''),
(17, ''),
(18, ''),
(19, '22'),
(20, ''),
(21, ''),
(22, ''),
(23, ''),
(24, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created`, `modified`) VALUES
(1, 'jose', 'a8bcc2fb711025bc6543b0bf9c4fe2e906f5ca7a', '2013-08-23 01:50:18', '2013-08-23 01:50:18'),
(2, 'demo', 'cd336e625fa941afe53501ba6e29d58f58f5e47b', '2013-08-23 01:51:26', '2013-08-23 01:51:26'),
(3, 'manuel', 'a8bcc2fb711025bc6543b0bf9c4fe2e906f5ca7a', '2013-08-23 05:42:29', '2013-08-23 05:42:29'),
(4, 'nuevo', '7ee242c2e5750d03cc17048f2cefa7de6de47651', '2013-08-23 07:26:20', '2013-08-23 07:26:20'),
(5, 'demo2', 'cd336e625fa941afe53501ba6e29d58f58f5e47b', '2013-08-23 09:33:59', '2013-08-23 09:33:59'),
(6, 'prueba', '7504c31a3adbab7d2b0a61881795f3b0d0482f43', '2013-08-29 07:52:11', '2013-08-29 07:52:11');
--
-- Base de datos: `dbfiat`
--
CREATE DATABASE IF NOT EXISTS `dbfiat` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dbfiat`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega`
--

CREATE TABLE IF NOT EXISTS `bodega` (
  `id_bodega` int(11) NOT NULL,
  `nombre_bodega` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_bodega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE IF NOT EXISTS `cargos` (
  `id_cargo` int(11) NOT NULL,
  `detalle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cate_productos`
--

CREATE TABLE IF NOT EXISTS `cate_productos` (
  `id_cate_productos` int(11) NOT NULL,
  `detalle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_cate_productos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` bigint(20) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `id_telefono` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`,`id_telefono`),
  KEY `fk_clientes_telefonos1_idx` (`id_telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE IF NOT EXISTS `detalle_factura` (
  `id_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  PRIMARY KEY (`id_factura`,`id_producto`),
  KEY `fk_detalle_factura_facturacion1_idx` (`id_factura`),
  KEY `fk_detalle_factura_inventario1_idx` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_telefonos`
--

CREATE TABLE IF NOT EXISTS `detalle_telefonos` (
  `numero_telefono` int(11) NOT NULL,
  `id_telefono` int(11) NOT NULL,
  PRIMARY KEY (`numero_telefono`,`id_telefono`),
  KEY `fk_detalle_telefonos_telefonos1_idx` (`id_telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE IF NOT EXISTS `empleados` (
  `id_empleados` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `id_cargo` int(11) NOT NULL,
  `id_telefono` int(11) NOT NULL,
  PRIMARY KEY (`id_empleados`,`id_cargo`,`id_telefono`),
  KEY `fk_empleados_cargos1_idx` (`id_cargo`),
  KEY `fk_empleados_telefonos1_idx` (`id_telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `rtn` bigint(20) NOT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `logo` binary(1) DEFAULT NULL,
  `impuesto` int(11) DEFAULT NULL,
  PRIMARY KEY (`rtn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_usuario`
--

CREATE TABLE IF NOT EXISTS `estado_usuario` (
  `id_estado_usuario` int(11) NOT NULL,
  `detalle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_estado_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion`
--

CREATE TABLE IF NOT EXISTS `facturacion` (
  `id_factura` int(11) NOT NULL,
  `fecha_factura` date DEFAULT NULL,
  `subtotal` decimal(2,0) DEFAULT NULL,
  `impuesto` decimal(2,0) DEFAULT NULL,
  `id_tipo_factura` int(11) NOT NULL,
  `id_cliente` bigint(20) NOT NULL,
  PRIMARY KEY (`id_factura`,`id_tipo_factura`,`id_cliente`),
  KEY `fk_facturacion_tipo_factura1_idx` (`id_tipo_factura`),
  KEY `fk_facturacion_clientes1_idx` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuesto_producto`
--

CREATE TABLE IF NOT EXISTS `impuesto_producto` (
  `id_impuest` int(11) NOT NULL,
  `detalle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_impuest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE IF NOT EXISTS `inventario` (
  `id_producto` int(11) NOT NULL,
  `precio_costo` double DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `stock_minimo` int(11) DEFAULT NULL,
  `impuesto` double DEFAULT NULL,
  `id_bodega` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`,`id_bodega`),
  KEY `fk_inventario_bodega1_idx` (`id_bodega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_acceso`
--

CREATE TABLE IF NOT EXISTS `nivel_acceso` (
  `id_nivel_acceso` int(11) NOT NULL,
  `detalle` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_nivel_acceso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE IF NOT EXISTS `perfiles` (
  `id_perfiles` int(11) NOT NULL,
  `id_nivel_acceso` int(11) NOT NULL,
  PRIMARY KEY (`id_perfiles`,`id_nivel_acceso`),
  KEY `fk_perfiles_nivel_acceso1_idx` (`id_nivel_acceso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(45) DEFAULT NULL,
  `id_cate_productos` int(11) NOT NULL,
  `id_impuest` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`,`id_cate_productos`,`id_impuest`),
  KEY `fk_productos_cate_productos1_idx` (`id_cate_productos`),
  KEY `fk_productos_impuesto_producto1_idx` (`id_impuest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonos`
--

CREATE TABLE IF NOT EXISTS `telefonos` (
  `id_telefono` int(11) NOT NULL,
  `id_tipo_telefono` int(11) NOT NULL,
  PRIMARY KEY (`id_telefono`,`id_tipo_telefono`),
  KEY `fk_telefonos_tipo_telefono1_idx` (`id_tipo_telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_factura`
--

CREATE TABLE IF NOT EXISTS `tipo_factura` (
  `id_tipo_factura` int(11) NOT NULL,
  `detalle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_telefono`
--

CREATE TABLE IF NOT EXISTS `tipo_telefono` (
  `id_tipo_telefono` int(11) NOT NULL,
  `detalle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(45) DEFAULT NULL,
  `contrasena` varchar(32) DEFAULT NULL,
  `estado_usuario` varchar(45) DEFAULT NULL,
  `id_perfiles` int(11) NOT NULL,
  `id_estado_usuario` int(11) NOT NULL,
  `id_empleados` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_perfiles`,`id_estado_usuario`,`id_empleados`),
  KEY `fk_usuario_perfiles1_idx` (`id_perfiles`),
  KEY `fk_usuario_estado_usuario1_idx` (`id_estado_usuario`),
  KEY `fk_usuario_empleados1_idx` (`id_empleados`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `fk_clientes_telefonos1` FOREIGN KEY (`id_telefono`) REFERENCES `telefonos` (`id_telefono`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `fk_detalle_factura_facturacion1` FOREIGN KEY (`id_factura`) REFERENCES `facturacion` (`id_factura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_factura_inventario1` FOREIGN KEY (`id_producto`) REFERENCES `inventario` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_telefonos`
--
ALTER TABLE `detalle_telefonos`
  ADD CONSTRAINT `fk_detalle_telefonos_telefonos1` FOREIGN KEY (`id_telefono`) REFERENCES `telefonos` (`id_telefono`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `fk_empleados_cargos1` FOREIGN KEY (`id_cargo`) REFERENCES `cargos` (`id_cargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_empleados_telefonos1` FOREIGN KEY (`id_telefono`) REFERENCES `telefonos` (`id_telefono`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD CONSTRAINT `fk_facturacion_clientes1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_facturacion_tipo_factura1` FOREIGN KEY (`id_tipo_factura`) REFERENCES `tipo_factura` (`id_tipo_factura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `fk_inventario_bodega1` FOREIGN KEY (`id_bodega`) REFERENCES `bodega` (`id_bodega`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inventario_productos1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD CONSTRAINT `fk_perfiles_nivel_acceso1` FOREIGN KEY (`id_nivel_acceso`) REFERENCES `nivel_acceso` (`id_nivel_acceso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_productos_cate_productos1` FOREIGN KEY (`id_cate_productos`) REFERENCES `cate_productos` (`id_cate_productos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_productos_impuesto_producto1` FOREIGN KEY (`id_impuest`) REFERENCES `impuesto_producto` (`id_impuest`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `telefonos`
--
ALTER TABLE `telefonos`
  ADD CONSTRAINT `fk_telefonos_tipo_telefono1` FOREIGN KEY (`id_tipo_telefono`) REFERENCES `tipo_telefono` (`id_tipo_telefono`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_empleados1` FOREIGN KEY (`id_empleados`) REFERENCES `empleados` (`id_empleados`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_estado_usuario1` FOREIGN KEY (`id_estado_usuario`) REFERENCES `estado_usuario` (`id_estado_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_perfiles1` FOREIGN KEY (`id_perfiles`) REFERENCES `perfiles` (`id_perfiles`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Base de datos: `mamepsa`
--
CREATE DATABASE IF NOT EXISTS `mamepsa` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mamepsa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `cif` varchar(15) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `tfno1` varchar(15) DEFAULT NULL,
  `tfno2` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`cif`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coches`
--

CREATE TABLE IF NOT EXISTS `coches` (
  `matricula` varchar(10) NOT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `modelo` varchar(15) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `dni` varchar(15) NOT NULL,
  PRIMARY KEY (`matricula`,`dni`),
  KEY `fk_Coches_Trabajadores1_idx` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE IF NOT EXISTS `servicios` (
  `numero` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `comentarios` varchar(45) DEFAULT NULL,
  `dni` varchar(15) NOT NULL,
  `cif` varchar(15) NOT NULL,
  PRIMARY KEY (`numero`,`dni`,`cif`),
  KEY `fk_Servicios_Trabajadores_idx` (`dni`),
  KEY `fk_Servicios_Clientes1_idx` (`cif`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

CREATE TABLE IF NOT EXISTS `trabajadores` (
  `dni` varchar(15) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `sueldo` double DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `coches`
--
ALTER TABLE `coches`
  ADD CONSTRAINT `fk_Coches_Trabajadores1` FOREIGN KEY (`dni`) REFERENCES `trabajadores` (`dni`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `fk_Servicios_Clientes1` FOREIGN KEY (`cif`) REFERENCES `clientes` (`cif`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Servicios_Trabajadores` FOREIGN KEY (`dni`) REFERENCES `trabajadores` (`dni`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Base de datos: `misterso_scif`
--
CREATE DATABASE IF NOT EXISTS `misterso_scif` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `misterso_scif`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accion_bitacora`
--

CREATE TABLE IF NOT EXISTS `accion_bitacora` (
  `codigo_accion` int(2) NOT NULL,
  `descripcion` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`codigo_accion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE IF NOT EXISTS `bitacora` (
  `identificador` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(3) unsigned zerofill NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `codigo_tabla` int(2) DEFAULT NULL,
  `codigo_accion` int(2) NOT NULL,
  `codigo_campo` int(3) DEFAULT NULL,
  `valor_nuevo` varchar(60) DEFAULT NULL,
  `valor_anterior` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`identificador`),
  KEY `bitacora_acciones` (`codigo_accion`),
  KEY `bitacora_campos` (`codigo_campo`),
  KEY `bitacora_tablatablas` (`codigo_tabla`),
  KEY `bitacora_usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodegas`
--

CREATE TABLE IF NOT EXISTS `bodegas` (
  `codigo_bodega` int(1) NOT NULL,
  `direccion_bodega` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`codigo_bodega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campos`
--

CREATE TABLE IF NOT EXISTS `campos` (
  `codigo_campo` int(3) NOT NULL,
  `nombre_campo` varchar(40) NOT NULL,
  `codigo_tabla` int(2) NOT NULL,
  PRIMARY KEY (`codigo_campo`),
  KEY `campos_tablas` (`codigo_tabla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE IF NOT EXISTS `cargos` (
  `codigo_cargo` int(2) NOT NULL,
  `descripcion_cargo` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`codigo_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_cliente`
--

CREATE TABLE IF NOT EXISTS `categorias_cliente` (
  `codigo_categoria` int(2) NOT NULL,
  `descripcion` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`codigo_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_producto`
--

CREATE TABLE IF NOT EXISTS `categorias_producto` (
  `categoria_producto` int(2) NOT NULL,
  `descripcion` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`categoria_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_proveedor`
--

CREATE TABLE IF NOT EXISTS `categorias_proveedor` (
  `categoria_proveedor` int(1) NOT NULL,
  `descripcion` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`categoria_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `rtn_id_cliente` varchar(14) NOT NULL,
  `nombre_cliente` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `direccion_cliente` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `codigo_categoria` int(2) NOT NULL,
  `codigo_identificacion` int(1) NOT NULL,
  `balance_previo` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`rtn_id_cliente`),
  KEY `clientes_categoriasclientes` (`codigo_categoria`),
  KEY `clientes_tipo_identificacion` (`codigo_identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_contactos`
--

CREATE TABLE IF NOT EXISTS `clientes_contactos` (
  `rtn_id_cliente` varchar(14) NOT NULL,
  `codigo_telefono` int(5) NOT NULL,
  `nombre_contacto` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`rtn_id_cliente`,`codigo_telefono`),
  KEY `clientescontactos_clientes` (`rtn_id_cliente`),
  KEY `clientescontacto_telefonos` (`codigo_telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companias_telefonicas`
--

CREATE TABLE IF NOT EXISTS `companias_telefonicas` (
  `codigo_compania_telefonica` int(3) NOT NULL,
  `nombre_compania` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`codigo_compania_telefonica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concepto_proveedor`
--

CREATE TABLE IF NOT EXISTS `concepto_proveedor` (
  `codigo_concepto` int(2) NOT NULL,
  `descripcion_concepto` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`codigo_concepto`),
  KEY `codigo_concepto` (`codigo_concepto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contadores`
--

CREATE TABLE IF NOT EXISTS `contadores` (
  `codigo_tabla` int(2) NOT NULL,
  `valor_contador` int(7) NOT NULL,
  PRIMARY KEY (`codigo_tabla`),
  KEY `contadores_tablatablas` (`codigo_tabla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizaciones`
--

CREATE TABLE IF NOT EXISTS `cotizaciones` (
  `no_cotizacion` int(5) unsigned zerofill NOT NULL,
  `fecha_cotizacion` datetime NOT NULL,
  `rtn_id_cliente` varchar(14) NOT NULL,
  `validez_cotizacion` int(2) NOT NULL,
  `id_empleado` bigint(13) unsigned zerofill NOT NULL,
  `subtotal` double NOT NULL,
  `impuesto` double NOT NULL,
  `flete` double NOT NULL,
  PRIMARY KEY (`no_cotizacion`),
  KEY `cotizaciones_clientes` (`rtn_id_cliente`),
  KEY `cotizaciones_empleados` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_cotizacion`
--

CREATE TABLE IF NOT EXISTS `detalle_cotizacion` (
  `no_cotizacion` int(5) unsigned zerofill NOT NULL,
  `codigo_producto` int(5) unsigned zerofill NOT NULL,
  `cantidad` int(4) NOT NULL,
  `precio_venta` double NOT NULL,
  PRIMARY KEY (`no_cotizacion`,`codigo_producto`),
  KEY `detallecotizacion_cotizaciones` (`no_cotizacion`),
  KEY `detallecotizacion_productos` (`codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_devolucion_venta`
--

CREATE TABLE IF NOT EXISTS `detalle_devolucion_venta` (
  `no_devolucion` int(5) unsigned zerofill NOT NULL,
  `codigo_producto` int(5) unsigned zerofill NOT NULL,
  `cantidad` int(4) NOT NULL,
  PRIMARY KEY (`no_devolucion`,`codigo_producto`),
  KEY `detalledevocuionventa_productos` (`codigo_producto`),
  KEY `detalledevolucionventa_devolucionesventa` (`no_devolucion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_entrada`
--

CREATE TABLE IF NOT EXISTS `detalle_entrada` (
  `no_entrada` int(6) unsigned zerofill NOT NULL,
  `codigo_producto` int(5) unsigned zerofill NOT NULL,
  `cantidad` double NOT NULL,
  PRIMARY KEY (`no_entrada`,`codigo_producto`),
  KEY `detalleentrada_productos` (`codigo_producto`),
  KEY `detalleentrada_entradainventario` (`no_entrada`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE IF NOT EXISTS `detalle_factura` (
  `no_factura` int(6) unsigned zerofill NOT NULL,
  `codigo_producto` int(5) unsigned zerofill NOT NULL,
  `cantidad` int(4) NOT NULL,
  `precio_venta` double NOT NULL,
  PRIMARY KEY (`no_factura`,`codigo_producto`),
  KEY `detallefactura_facturas` (`no_factura`),
  KEY `detallefactura_productos` (`codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_nivel_acceso`
--

CREATE TABLE IF NOT EXISTS `detalle_nivel_acceso` (
  `codigo_nivel_acceso` int(3) NOT NULL,
  `descripcion` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`codigo_nivel_acceso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_orden_compra`
--

CREATE TABLE IF NOT EXISTS `detalle_orden_compra` (
  `no_orden_compra` int(6) unsigned zerofill NOT NULL,
  `codigo_producto` int(5) unsigned zerofill NOT NULL,
  `cantidad` int(4) NOT NULL,
  `precio_costo` double NOT NULL,
  PRIMARY KEY (`no_orden_compra`,`codigo_producto`),
  KEY `detalleordencompra_ordencompra` (`no_orden_compra`),
  KEY `detalleordencompra_productos` (`codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos_clientes`
--

CREATE TABLE IF NOT EXISTS `detalle_pedidos_clientes` (
  `no_pedido` int(6) unsigned zerofill NOT NULL,
  `codigo_producto` int(5) unsigned zerofill NOT NULL,
  `cantidad` int(4) NOT NULL,
  `precio_venta` double NOT NULL,
  PRIMARY KEY (`no_pedido`,`codigo_producto`),
  KEY `detallepedido_pedidos` (`no_pedido`),
  KEY `detallepedido_productos` (`codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_recibo`
--

CREATE TABLE IF NOT EXISTS `detalle_recibo` (
  `no_factura` int(6) unsigned zerofill NOT NULL DEFAULT '000000',
  `no_recibo` int(7) unsigned zerofill NOT NULL,
  `valor_pago` double NOT NULL,
  `no_factura_proveedor` int(6) unsigned zerofill NOT NULL DEFAULT '000000',
  PRIMARY KEY (`no_factura`,`no_recibo`,`no_factura_proveedor`),
  KEY `detallerecibo_facturas` (`no_factura`),
  KEY `detallerecibo_recibos` (`no_recibo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_regalias`
--

CREATE TABLE IF NOT EXISTS `detalle_regalias` (
  `no_regalia` int(5) unsigned zerofill NOT NULL,
  `codigo_producto` int(5) unsigned zerofill NOT NULL,
  `cantidad` int(1) NOT NULL,
  `costo` double NOT NULL,
  PRIMARY KEY (`no_regalia`,`codigo_producto`),
  KEY `detalleregalia_productos` (`codigo_producto`),
  KEY `detalleregalia_regalias` (`no_regalia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_traslado`
--

CREATE TABLE IF NOT EXISTS `detalle_traslado` (
  `no_traslado` int(5) unsigned zerofill NOT NULL,
  `codigo_producto` int(5) unsigned zerofill NOT NULL,
  `cantidad` int(4) NOT NULL,
  PRIMARY KEY (`no_traslado`,`codigo_producto`),
  KEY `codigo_producto` (`codigo_producto`),
  KEY `codigo_traslado` (`no_traslado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devoluciones_venta`
--

CREATE TABLE IF NOT EXISTS `devoluciones_venta` (
  `no_devolucion` int(5) unsigned zerofill NOT NULL,
  `no_factura` int(6) unsigned zerofill NOT NULL,
  `fecha` date NOT NULL,
  `estado_devolucion_venta` tinyint(1) NOT NULL,
  `no_documento` int(6) unsigned zerofill NOT NULL,
  `impuesto` double NOT NULL,
  `subtotal` double NOT NULL,
  PRIMARY KEY (`no_devolucion`),
  KEY `devolucionventa_documentos` (`no_documento`),
  KEY `devolucionventa_facturas` (`no_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE IF NOT EXISTS `documento` (
  `no_documento` int(6) unsigned zerofill NOT NULL,
  `tipo_documento` int(1) NOT NULL,
  `no_factura` int(6) unsigned zerofill DEFAULT NULL,
  `subtotal` double NOT NULL,
  `impuesto` double NOT NULL,
  `flete` double NOT NULL,
  `fecha` date NOT NULL,
  `codigo_justificacion` int(2) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `no_factura_proveedor` int(6) unsigned zerofill DEFAULT NULL,
  `estado_documento` int(1) NOT NULL,
  PRIMARY KEY (`no_documento`,`tipo_documento`),
  KEY `documento_facturas` (`no_factura`),
  KEY `documento_justificaciondocumento` (`codigo_justificacion`),
  KEY `documento_tipodocumento` (`tipo_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE IF NOT EXISTS `empleados` (
  `id_empleado` bigint(13) unsigned zerofill NOT NULL,
  `nombre_empleado` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `direccion_empleado` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email_empleado` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_usuario` int(3) unsigned zerofill NOT NULL,
  `codigo_cargo` int(3) NOT NULL,
  `codigo_sexo` int(1) NOT NULL,
  `codigo_estado_civil` int(1) NOT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `empleados_cargos` (`codigo_cargo`),
  KEY `empleados_estadocivil` (`codigo_estado_civil`),
  KEY `empleados_sexo` (`codigo_sexo`),
  KEY `empleados_usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados_telefono`
--

CREATE TABLE IF NOT EXISTS `empleados_telefono` (
  `id_empleado` bigint(13) unsigned zerofill NOT NULL,
  `codigo_telefono` int(5) NOT NULL,
  PRIMARY KEY (`id_empleado`,`codigo_telefono`),
  KEY `empleadostelefonos_empleados` (`id_empleado`),
  KEY `empleadostelefonos_telefonos` (`codigo_telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `rtn_empresa` bigint(14) unsigned zerofill NOT NULL,
  `nombre_empresa` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `direccion_empresa` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email_empresa` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tel1` int(8) NOT NULL,
  `tel2` int(8) DEFAULT NULL,
  `tel3` int(8) DEFAULT NULL,
  `logo` longblob,
  PRIMARY KEY (`rtn_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada_inventario`
--

CREATE TABLE IF NOT EXISTS `entrada_inventario` (
  `no_entrada` int(6) unsigned zerofill NOT NULL,
  `justificacion_entrada` varchar(60) CHARACTER SET utf8 NOT NULL,
  `fecha_entrada` date NOT NULL,
  PRIMARY KEY (`no_entrada`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

CREATE TABLE IF NOT EXISTS `estado_civil` (
  `codigo_estado_civil` int(1) NOT NULL,
  `descripcion_estado_civil` varchar(11) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`codigo_estado_civil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_facturas`
--

CREATE TABLE IF NOT EXISTS `estado_facturas` (
  `codigo_estado_factura` int(1) NOT NULL,
  `descripcion` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`codigo_estado_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_orden_compra`
--

CREATE TABLE IF NOT EXISTS `estado_orden_compra` (
  `estado_orden_compra` int(1) NOT NULL,
  `descripcion` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`estado_orden_compra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_usuario`
--

CREATE TABLE IF NOT EXISTS `estado_usuario` (
  `estado_usuario` int(1) NOT NULL,
  `descripcion_estado` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`estado_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE IF NOT EXISTS `facturas` (
  `no_factura` int(6) unsigned zerofill NOT NULL,
  `rtn_id_cliente` varchar(14) NOT NULL,
  `id_empleado` bigint(13) unsigned zerofill NOT NULL,
  `codigo_tipo_factura` int(1) NOT NULL,
  `fecha` date NOT NULL,
  `flete` double NOT NULL,
  `impuesto` double NOT NULL,
  `subtotal` double NOT NULL,
  `codigo_estado_factura` int(1) NOT NULL,
  `no_pedido` int(6) NOT NULL,
  `codigo_bodega` int(1) NOT NULL,
  PRIMARY KEY (`no_factura`),
  KEY `facturas_bodegas` (`codigo_bodega`),
  KEY `facturas_clientes` (`rtn_id_cliente`),
  KEY `facturas_estadosfacturas` (`codigo_estado_factura`),
  KEY `facturas_tipofactura` (`codigo_tipo_factura`),
  KEY `id_empleado` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_credito`
--

CREATE TABLE IF NOT EXISTS `facturas_credito` (
  `no_factura` int(6) unsigned zerofill NOT NULL,
  `plazo_pago` int(3) NOT NULL,
  PRIMARY KEY (`no_factura`),
  KEY `facturascredito_facturas` (`no_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_credito_proveedor`
--

CREATE TABLE IF NOT EXISTS `facturas_credito_proveedor` (
  `no_factura_proveedor` int(6) NOT NULL,
  `plazo_pago_proveedor` int(3) NOT NULL,
  PRIMARY KEY (`no_factura_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_proveedor`
--

CREATE TABLE IF NOT EXISTS `facturas_proveedor` (
  `no_factura_proveedor` int(6) unsigned zerofill NOT NULL,
  `id_rtn_proveedor` varchar(14) NOT NULL,
  `codigo_tipo_factura` int(1) unsigned zerofill NOT NULL,
  `fecha_factura_proveedor` date NOT NULL,
  `total` double NOT NULL,
  `flete` double NOT NULL,
  `impuesto` double NOT NULL,
  `codigo_concepto` int(2) NOT NULL,
  `codigo_estado_factura_prov` int(1) NOT NULL,
  `TC` double DEFAULT NULL,
  PRIMARY KEY (`no_factura_proveedor`,`id_rtn_proveedor`),
  KEY `facturasProveedor_concepto` (`codigo_concepto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuesto`
--

CREATE TABLE IF NOT EXISTS `impuesto` (
  `codigo_impuesto` int(1) NOT NULL,
  `porcentaje_impuesto` int(2) NOT NULL,
  PRIMARY KEY (`codigo_impuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intentos_fallidos`
--

CREATE TABLE IF NOT EXISTS `intentos_fallidos` (
  `n_intentos` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE IF NOT EXISTS `inventario` (
  `codigo_bodega` int(1) NOT NULL,
  `codigo_producto` int(5) unsigned zerofill NOT NULL,
  `stock` int(4) DEFAULT NULL,
  `stock_minimo` int(2) NOT NULL,
  `ganancia` int(3) NOT NULL,
  `precio_venta_sugerido` double DEFAULT NULL,
  `precio_costo` double DEFAULT NULL,
  PRIMARY KEY (`codigo_bodega`,`codigo_producto`),
  KEY `invetario_bodegas` (`codigo_bodega`),
  KEY `invetario_productos` (`codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `justificacion_documento`
--

CREATE TABLE IF NOT EXISTS `justificacion_documento` (
  `codigo_justificacion` int(2) NOT NULL,
  `descripcion_justificacion` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`codigo_justificacion`),
  KEY `justificaciondocumento_documento` (`codigo_justificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos_inventario`
--

CREATE TABLE IF NOT EXISTS `movimientos_inventario` (
  `codigo_movimiento` int(1) NOT NULL,
  `descripcion` varchar(22) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`codigo_movimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles_acceso`
--

CREATE TABLE IF NOT EXISTS `niveles_acceso` (
  `id_usuario` int(3) unsigned zerofill NOT NULL,
  `codigo_nivel_acceso` int(3) NOT NULL,
  PRIMARY KEY (`id_usuario`,`codigo_nivel_acceso`),
  KEY `nivelacceso_detallenivelacceso` (`codigo_nivel_acceso`),
  KEY `nivelesacceso_idusuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes_compra`
--

CREATE TABLE IF NOT EXISTS `ordenes_compra` (
  `no_orden_compra` int(6) unsigned zerofill NOT NULL,
  `id_rtn_proveedor` varchar(14) NOT NULL,
  `fecha` date NOT NULL,
  `estado_orden_compra` int(1) NOT NULL,
  `flete_compra` double NOT NULL,
  PRIMARY KEY (`no_orden_compra`),
  KEY `ordencompra_estadoordencompra` (`estado_orden_compra`),
  KEY `ordenescompra_proveedores` (`id_rtn_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_clientes`
--

CREATE TABLE IF NOT EXISTS `pedidos_clientes` (
  `no_pedido` int(6) unsigned zerofill NOT NULL,
  `rtn_id_cliente` varchar(14) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`no_pedido`),
  KEY `pedido_clientes` (`rtn_id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `codigo_producto` int(5) unsigned zerofill NOT NULL,
  `descripcion_producto` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `codigo_impuesto` int(1) NOT NULL,
  `categoria_producto` int(2) NOT NULL,
  PRIMARY KEY (`codigo_producto`),
  KEY `productos_categoria` (`categoria_producto`),
  KEY `productos_impuesto` (`codigo_impuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_proveedores`
--

CREATE TABLE IF NOT EXISTS `productos_proveedores` (
  `codigo_producto` int(5) unsigned zerofill NOT NULL,
  `id_rtn_proveedor` varchar(14) NOT NULL,
  `precio_costo` double NOT NULL,
  PRIMARY KEY (`codigo_producto`,`id_rtn_proveedor`),
  KEY `productosproveedores_productos` (`codigo_producto`),
  KEY `productosproveedores_proveedores` (`id_rtn_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE IF NOT EXISTS `proveedores` (
  `id_rtn_proveedor` varchar(14) NOT NULL,
  `codigo_identificacion` int(1) NOT NULL,
  `categoria_proveedor` int(1) NOT NULL,
  `nombre_proveedor` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `direccion_proveedor` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_rtn_proveedor`),
  KEY `proveedores_categoriaproveedores` (`categoria_proveedor`),
  KEY `proveedores_tipo_identificacion` (`codigo_identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_contactos`
--

CREATE TABLE IF NOT EXISTS `proveedores_contactos` (
  `id_rtn_proveedor` varchar(14) NOT NULL,
  `codigo_telefono` int(5) NOT NULL,
  `nombre_contacto` varchar(45) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_rtn_proveedor`,`codigo_telefono`),
  KEY `proveedorescontactos_proveedores` (`id_rtn_proveedor`),
  KEY `proveedorescontactos_telefonos` (`codigo_telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibos`
--

CREATE TABLE IF NOT EXISTS `recibos` (
  `no_recibo` int(7) unsigned zerofill NOT NULL,
  `fecha_pago` date NOT NULL,
  `monto` double NOT NULL,
  `rtn_id_cliente` varchar(14) DEFAULT NULL,
  `estado_recibo` tinyint(1) NOT NULL,
  `id_rtn_proveedor` varchar(14) DEFAULT NULL,
  `recibo_referencia` int(7) unsigned zerofill DEFAULT NULL,
  `descripcion_recibo` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`no_recibo`),
  KEY `recibos_clientes` (`rtn_id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regalias`
--

CREATE TABLE IF NOT EXISTS `regalias` (
  `no_regalia` int(5) unsigned zerofill NOT NULL,
  `id_empleado` bigint(13) unsigned zerofill NOT NULL,
  `codigo_bodega` int(1) NOT NULL,
  `justificacion` varchar(120) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `fecha_regalia` date NOT NULL,
  PRIMARY KEY (`no_regalia`),
  KEY `regalias_bodegas` (`codigo_bodega`),
  KEY `regalias_empleados` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE IF NOT EXISTS `sexo` (
  `codigo_sexo` int(1) NOT NULL,
  `descripcion_sexo` varchar(9) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`codigo_sexo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablas`
--

CREATE TABLE IF NOT EXISTS `tablas` (
  `codigo_tabla` int(2) NOT NULL,
  `nombre_tabla` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`codigo_tabla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonos`
--

CREATE TABLE IF NOT EXISTS `telefonos` (
  `codigo_telefono` int(5) NOT NULL,
  `telefono` int(8) NOT NULL,
  `codigo_compania_telefonica` int(3) NOT NULL,
  PRIMARY KEY (`codigo_telefono`),
  KEY `telefonos_companiatelefonica` (`codigo_compania_telefonica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE IF NOT EXISTS `tipo_documento` (
  `tipo_documento` int(1) NOT NULL,
  `descripcion` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`tipo_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_factura`
--

CREATE TABLE IF NOT EXISTS `tipo_factura` (
  `codigo_tipo_factura` int(1) NOT NULL,
  `descripcion` varchar(7) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`codigo_tipo_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=dec8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_identificacion`
--

CREATE TABLE IF NOT EXISTS `tipo_identificacion` (
  `codigo_identificacion` int(1) NOT NULL,
  `descripcion_identificacion` varchar(20) NOT NULL,
  PRIMARY KEY (`codigo_identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones_inventario`
--

CREATE TABLE IF NOT EXISTS `transacciones_inventario` (
  `codigo_bodega` int(1) NOT NULL,
  `fecha_transaccion` datetime NOT NULL,
  `codigo_movimiento` int(1) NOT NULL,
  `codigo_producto` int(5) unsigned zerofill NOT NULL,
  `cantidad` int(4) DEFAULT NULL,
  `no_documento` int(6) unsigned zerofill DEFAULT NULL,
  `nuevo_precio` double DEFAULT NULL,
  `tipo_documento` int(1) DEFAULT NULL,
  PRIMARY KEY (`codigo_bodega`,`fecha_transaccion`,`codigo_producto`),
  KEY `transacciones_bodegas` (`codigo_bodega`),
  KEY `transacciones_movimientoinventario` (`codigo_movimiento`),
  KEY `transacciones_productos` (`codigo_producto`),
  KEY `transacciones_productos_documentos` (`no_documento`),
  KEY `transacciones_tipo_doc_tipo_doc` (`tipo_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=dec8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transportistas`
--

CREATE TABLE IF NOT EXISTS `transportistas` (
  `id_transportista` int(11) NOT NULL,
  `id_empleado` bigint(13) unsigned zerofill DEFAULT NULL,
  `id_rtn_proveedor` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`id_transportista`),
  KEY `transportista_empleado` (`id_empleado`),
  KEY `traslado_empleados` (`id_empleado`),
  KEY `transportistas_empleados` (`id_empleado`),
  KEY `transportista_proveedor` (`id_rtn_proveedor`),
  KEY `traslado_proveedor` (`id_rtn_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traslados_bodegas`
--

CREATE TABLE IF NOT EXISTS `traslados_bodegas` (
  `no_traslado` int(5) unsigned zerofill NOT NULL,
  `codigo_bodega_origen` int(1) NOT NULL,
  `codigo_bodega_destino` int(1) NOT NULL,
  `fecha_estimada_llegada` date NOT NULL,
  `id_transportista` int(11) NOT NULL,
  PRIMARY KEY (`no_traslado`),
  KEY `trasladosbodegas_bodegasdestino` (`codigo_bodega_destino`),
  KEY `trasladosbodegas_bodegasorigen` (`codigo_bodega_origen`),
  KEY `trasladosbodegas_transportistas` (`id_transportista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(3) unsigned zerofill NOT NULL,
  `nombre_usuario` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `contrasena` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `estado_usuario` int(2) NOT NULL,
  `fecha_ultima_contrasena` date NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `usuarios_estadousuario` (`estado_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_reporte_ventas`
--
CREATE TABLE IF NOT EXISTS `vista_reporte_ventas` (
`no_factura` int(6) unsigned zerofill
,`rtn_id_cliente` varchar(14)
,`id_empleado` bigint(13) unsigned zerofill
,`codigo_tipo_factura` int(1)
,`fecha` date
,`flete` double
,`impuesto` double
,`subtotal` double
,`codigo_estado_factura` int(1)
,`no_pedido` int(6)
,`codigo_bodega` int(1)
,`rtn_id_cliente01` varchar(14)
,`nombre_cliente` varchar(45)
,`direccion_cliente` varchar(60)
,`email` varchar(45)
);
-- --------------------------------------------------------

--
-- Estructura para la vista `vista_reporte_ventas`
--
DROP TABLE IF EXISTS `vista_reporte_ventas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_reporte_ventas` AS select `facturas`.`no_factura` AS `no_factura`,`facturas`.`rtn_id_cliente` AS `rtn_id_cliente`,`facturas`.`id_empleado` AS `id_empleado`,`facturas`.`codigo_tipo_factura` AS `codigo_tipo_factura`,`facturas`.`fecha` AS `fecha`,`facturas`.`flete` AS `flete`,`facturas`.`impuesto` AS `impuesto`,`facturas`.`subtotal` AS `subtotal`,`facturas`.`codigo_estado_factura` AS `codigo_estado_factura`,`facturas`.`no_pedido` AS `no_pedido`,`facturas`.`codigo_bodega` AS `codigo_bodega`,`clientes`.`rtn_id_cliente` AS `rtn_id_cliente01`,`clientes`.`nombre_cliente` AS `nombre_cliente`,`clientes`.`direccion_cliente` AS `direccion_cliente`,`clientes`.`email` AS `email` from (`facturas` left join `clientes` on((`facturas`.`rtn_id_cliente` = `clientes`.`rtn_id_cliente`)));

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_entrada`
--
ALTER TABLE `detalle_entrada`
  ADD CONSTRAINT `detalle_entrada_ibfk_1` FOREIGN KEY (`no_entrada`) REFERENCES `entrada_inventario` (`no_entrada`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_recibo`
--
ALTER TABLE `detalle_recibo`
  ADD CONSTRAINT `detalle_recibo_ibfk_1` FOREIGN KEY (`no_recibo`) REFERENCES `recibos` (`no_recibo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_recibo_ibfk_2` FOREIGN KEY (`no_factura`) REFERENCES `facturas` (`no_factura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `devoluciones_venta`
--
ALTER TABLE `devoluciones_venta`
  ADD CONSTRAINT `devoluciones_venta_ibfk_1` FOREIGN KEY (`no_factura`) REFERENCES `facturas` (`no_factura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `devoluciones_venta_ibfk_2` FOREIGN KEY (`no_documento`) REFERENCES `documento` (`no_documento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `documento_ibfk_1` FOREIGN KEY (`no_factura`) REFERENCES `facturas` (`no_factura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `documento_ibfk_2` FOREIGN KEY (`tipo_documento`) REFERENCES `tipo_documento` (`tipo_documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `documento_ibfk_3` FOREIGN KEY (`codigo_justificacion`) REFERENCES `justificacion_documento` (`codigo_justificacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`),
  ADD CONSTRAINT `facturas_ibfk_2` FOREIGN KEY (`rtn_id_cliente`) REFERENCES `clientes` (`rtn_id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_producto`) REFERENCES `categorias_producto` (`categoria_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`codigo_impuesto`) REFERENCES `impuesto` (`codigo_impuesto`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
