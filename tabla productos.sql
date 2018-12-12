/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) DEFAULT NULL,
  `codigo_prod` int(10) unsigned DEFAULT NULL,
  `cantidad` int(11) unsigned DEFAULT NULL,
  `codig_categ` int(10) unsigned NOT NULL,
  `imagen` text,
  PRIMARY KEY (`id`),
  KEY `codig_p` (`codig_categ`),
  CONSTRAINT `FK_productos_productos_categorias` FOREIGN KEY (`codig_categ`) REFERENCES `productos_categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

DELETE FROM `productos`;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`id`, `nombre`, `codigo_prod`, `cantidad`, `codig_categ`, `imagen`) VALUES
	(2, 'Mochilas', 1002, 1000, 1, 'mochila.jpg'),
	(6, 'Lapices', 1006, 1200, 1, 'lapiz.jpg'),
	(7, 'Calculadoras', 1007, 3000, 1, 'calculadora.jpg'),
	(8, 'Sofas', 2001, 200, 2, 'sofa.jpg'),
	(9, 'Toyota', 3002, 500, 3, 'toyota.jpg'),
	(10, 'Volvo', 3003, 3600, 3, 'volvo.jpg'),
	(11, 'Ford', 3004, 300, 3, 'ford.jpg'),
	(13, 'Escritorios', 2001, 500, 2, 'escritorio.jpg'),
	(14, 'Sillas', 2001, 12300, 2, 'silla.jpg'),
	(16, 'rav', 3009, 15, 3, 'rav.jpg'),
	(18, 'Papeles Blancos', 1009, 123, 3, 'paginas.jpg'),
	(19, 'lapiz Mecanico', 1356, 5, 4, 'lapiz_meca.jpg');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
