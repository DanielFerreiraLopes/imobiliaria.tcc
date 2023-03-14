/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 10.11.2-MariaDB : Database - imobiliaria.tcc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`imobiliaria.tcc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `imobiliaria.tcc`;

/*Table structure for table `imagens_imoveis` */

DROP TABLE IF EXISTS `imagens_imoveis`;

CREATE TABLE `imagens_imoveis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arquivo` varchar(100) DEFAULT NULL,
  `id_imovel` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_imagens_imovel` (`id_imovel`),
  CONSTRAINT `fk_imagens_imovel` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `imagens_imoveis` */

/*Table structure for table `imovel` */

DROP TABLE IF EXISTS `imovel`;

CREATE TABLE `imovel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quarto` int(11) DEFAULT NULL,
  `banheiro` int(11) DEFAULT NULL,
  `preco` decimal(10,0) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `cep` varchar(40) DEFAULT NULL,
  `descrição` varchar(500) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_imovel_usuario` (`id_usuario`),
  CONSTRAINT `fk_imovel_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `imovel` */

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `usuario` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
