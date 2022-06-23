-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para heladeria_y_pizzeria_la_65
DROP DATABASE IF EXISTS `heladeria_y_pizzeria_la_65`;
CREATE DATABASE IF NOT EXISTS `heladeria_y_pizzeria_la_65` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `heladeria_y_pizzeria_la_65`;

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT=' tabla clientes';

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.customers: ~5 rows (aproximadamente)
DELETE FROM `customers`;
INSERT INTO `customers` (`id`, `name`, `age`) VALUES
	(1, 'kenyer', 26),
	(2, 'sebastian mora', 29),
	(3, 'yacira ', 23),
	(4, 'eliana cardenas', 50),
	(5, 'chara sepulveda', 100);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.discoints
DROP TABLE IF EXISTS `discoints`;
CREATE TABLE IF NOT EXISTS `discoints` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` float unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT=' tabla  descuentos';

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.discoints: ~4 rows (aproximadamente)
DELETE FROM `discoints`;
INSERT INTO `discoints` (`id`, `name`, `value`) VALUES
	(1, 'dia de la independencia', 0.15),
	(2, 'halloween', 0.1),
	(3, 'amoy y amistad', 0.2),
	(4, 'año nuevo', 0.25);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` float unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT=' tabla productos';

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.products: ~5 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `price`) VALUES
	(1, 'pizza', 50000),
	(2, 'pollo', 80000),
	(3, 'helado', 18000),
	(4, 'perros calientes', 15000),
	(5, 'cerveza', 10000);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.sales
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `value` float unsigned NOT NULL,
  `cumsterd_id` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='tabla ventas';

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.sales: ~4 rows (aproximadamente)
DELETE FROM `sales`;
INSERT INTO `sales` (`id`, `date`, `value`, `cumsterd_id`) VALUES
	(1, '2022-06-10', 50000, 1),
	(2, '2021-06-10', 90000, 2),
	(3, '2022-06-17', 30000, 3),
	(4, '2022-06-17', 30000, 4),
	(5, '0000-00-00', 80000, 5);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.sales_products
DROP TABLE IF EXISTS `sales_products`;
CREATE TABLE IF NOT EXISTS `sales_products` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` smallint(6) unsigned NOT NULL,
  `product_id` smallint(6) unsigned NOT NULL,
  `quantity` int(11) unsigned NOT NULL,
  `value` float unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='todo sobre ventas y productos';

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.sales_products: ~5 rows (aproximadamente)
DELETE FROM `sales_products`;
INSERT INTO `sales_products` (`id`, `sale_id`, `product_id`, `quantity`, `value`) VALUES
	(1, 1, 1, 2, 50000),
	(2, 2, 2, 3, 80000),
	(3, 3, 3, 1, 18000),
	(4, 4, 4, 2, 15000),
	(5, 5, 5, 4, 10000);

-- Volcando estructura para tabla heladeria_y_pizzeria_la_65.sale_discoints
DROP TABLE IF EXISTS `sale_discoints`;
CREATE TABLE IF NOT EXISTS `sale_discoints` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` smallint(6) unsigned NOT NULL,
  `discoint_id` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='todo sobre ventas y sus descuentos';

-- Volcando datos para la tabla heladeria_y_pizzeria_la_65.sale_discoints: ~5 rows (aproximadamente)
DELETE FROM `sale_discoints`;
INSERT INTO `sale_discoints` (`id`, `sale_id`, `discoint_id`) VALUES
	(1, 1, 3),
	(2, 2, 1),
	(3, 3, 2),
	(4, 5, 4),
	(5, 4, 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
