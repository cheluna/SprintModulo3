-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sprint_modulo3
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `RUT` varchar(10) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `comuna` varchar(50) NOT NULL,
  `celular` varchar(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `RUT` (`RUT`),
  CONSTRAINT `FK_clientes_productos` FOREIGN KEY (`id_cliente`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Romina','Rodríguez','123658954','Gibraltar 7106','La Reina','56987478254'),(2,'Manuel','Massini','112354785','Las Hualtatas 542','Vitacura','56925473657'),(3,'María','Manríquez','185247896','San Diego 254','Santiago','56965841235'),(4,'Bernardo','Bernales','205894751','Martín Lopez 4332','La Pintana','56936365418'),(5,'Macarerna','Molinares','225475684','Antigonish 5584','La Florida','56912477895'),(6,'Paulo','Piñones','100245875','Camilo Henríquez 765','Recoleta','56956847898'),(7,'Catalina','Calderón','145879652','Camino el Alto 6987','Puente Alto','56954789652');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto_proveedor`
--

DROP TABLE IF EXISTS `contacto_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacto_proveedor` (
  `id_contacto` int NOT NULL AUTO_INCREMENT,
  `id_proveedor` int NOT NULL,
  `nombre_contacto` varchar(50) NOT NULL,
  `apellido_contacto` varchar(50) NOT NULL,
  `telefono1` varchar(11) NOT NULL,
  `telefono2` varchar(11) NOT NULL,
  `correo_electronico` varchar(50) NOT NULL,
  PRIMARY KEY (`id_contacto`),
  UNIQUE KEY `id_contacto` (`id_contacto`),
  KEY `FK_proveedor_contacto` (`id_proveedor`),
  CONSTRAINT `FK_proveedor_contacto` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto_proveedor`
--

LOCK TABLES `contacto_proveedor` WRITE;
/*!40000 ALTER TABLE `contacto_proveedor` DISABLE KEYS */;
INSERT INTO `contacto_proveedor` VALUES (1,1,'Javiera','Nuñez','5697651293','5698356173','javiera.nuñez@gmail.com'),(2,2,'Carmela','Diez','5698743516','5699456182','carmela.diez@gmail.com'),(3,3,'Josefina','Alarcón','5693416382','5698340187','josefina.alarcon@gmail.com'),(4,4,'Catalina','Iriarte','5699863481','5694560381','catalina.iriarte@gmail.com'),(5,5,'José','Errazuriz','5693459102','5697497132','jose.errazuriz@gmail.com'),(6,6,'Alma','Cortés','5693649102','5697560912','alma.cortes@gmail.com'),(7,7,'Jesús','Claro','5697840183','5692379184','jesus.claro@gmail.com'),(8,8,'José','Blanco','5697490123','5697591452','jose.blanco@gmail.com'),(9,9,'Javier','Antón','5695820192','5694859123','javier.anton@gmail.com'),(10,10,'Camilo','Portillo','5695481743','5698567192','camilo.portillo@gmail.com'),(11,11,'Isabel','Cerda','5697489234','5696479412','isabel.cerda@gmail.com'),(12,12,'Ismael','Fernández','5697582143','5696478392','ismael.fernandez@gmail.com'),(13,13,'Pablo','Castro','5697459132','5698564301','pablo.castro@gmail.com'),(14,14,'Paulina','Mancilla','5696589132','5697548132','paulina.mancilla@gmail.com'),(15,15,'Manuel','Contreras','565468192','5696489123','manuel.contreras@gmail.com'),(16,16,'Antonio','Solis','5695468192','5695478123','antonio.solis@gmail.com'),(17,17,'Carolina','Gutierrez','5695468192','5695368301','carolina.gutierrez@gmail.com'),(18,18,'Mariana','Cerda','5696578143','5697569154','mariana.cerda@gmail.com'),(19,19,'Victor','Galvez','5697568145','5697564104','victor.galvez@gmail.com'),(20,20,'Antonieta','Saldivar','5695478391','5694568301','antonieta.saldivar@gmail.com');
/*!40000 ALTER TABLE `contacto_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `stock` int NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `color` varchar(20) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `FK_producto_proveedor_id` (`proveedor`),
  KEY `FK_producto_proveedor_idx` (`proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Telefono_samsung',10,899000.00,'Electrónica y computación','Samsung','Negro'),(2,'poleron',20,20000.00,'Ropa casual','Levis','Azul'),(3,'candelabro',100,99900.00,'Decoración y diseño','Re Decora','Blanco'),(4,'xiaomi_mi10',30,699000.00,'Electrónica y computación','Huawei','Plata'),(5,'Horno',15,80000.00,'Electrodomésticos','Bosch','Rojo'),(6,'Zapatilla_nike',50,105000.00,'Ropa deportiva','Nike','Verde'),(7,'aspiradora',10,59900.00,'Electrodomésticos','Bosch','Negro'),(8,'suculenta',5,30000.00,'Hogar','Easy','verde'),(9,'mouse_gamer',40,50000.00,'Electrónica y computación','Sony','Gris'),(10,'pantalon_jeans',8,23900.00,'Ropa casual','Levis','Azul'),(11,'Telefono_huawei',19,899000.00,'Electrónica y computación','Huawei','Negro'),(12,'poleron_deportivo',50,29000.00,'Ropa deportiva','Adidas','celeste'),(13,'lampara_escritorio',60,29900.00,'Decoración y diseño','InterDesign','gris'),(14,'xiaomi_redmi',30,499000.00,'Electrónica y computación','Huawei','Plata'),(15,'hervidor',55,20000.00,'Electrodomésticos','Bosch','negro'),(16,'Zapatilla_adidas',18,120000.00,'Ropa deportiva','Adidas','amarillo'),(17,'lavadora',72,199900.00,'Electrodomésticos','Bosch','blanco'),(18,'set_de_tazas',105,50000.00,'Hogar','Easy','blanco'),(19,'teclado_gamer',40,90000.00,'Electrónica y computación','Samsung','negro'),(20,'short',120,19900.00,'Ropa deportiva','Nike','negro');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(50) NOT NULL,
  `nombre_rep_legal` varchar(50) NOT NULL,
  `apellido_rep_legal` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id_proveedor`),
  UNIQUE KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `FK_productos_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Apple','Carla','Soto','Electrónica y Computación'),(2,'Samsung','Javiera','Vásquez','Electrónica y Computación'),(3,'Casio','Carlos','Hernandez','Electrónica y Computación'),(4,'IBM','Patricia','Gómez','Electrónica y Computación'),(5,'Lenovo','Pedro','Hermosilla','Electrónica y Computación'),(6,'Huawei','Paula','Diaz','Electrónica y Computación'),(7,'Sony','Jose','Alemparte','Electrónica y Computación'),(8,'Beats','Lucía','Sepulveda','Tecnología y Audio'),(9,'Nike','Ana','Correa','Vestuario deportivo'),(10,'Bosch','Hector','Iturriaga','Electrodomésticos'),(11,'Levis','Juan','Arevalo','Vestuario casual'),(12,'Europlant','Jaime','Guzman','Jardín y decoración'),(13,'Rowenta','Alejandra','Niño','Electrodomésticos'),(14,'Adidas','María','Grau','Vestuario deportivo'),(15,'Guess','Carmen','García','Vestuario casual'),(16,'The North Face','Luis','Sepúlveda','Vestuario deportivo'),(17,'Re Decora','Marta','Lucio','Decoración y diseño'),(18,'InterDesign','Moisés','Larraín','Decoración y diseño'),(19,'Ashley Chile','Lourdes','Anaías','Decoración y diseño'),(20,'Easy','Domingo','Graneros','Hogar');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sprint_modulo3'
--

--
-- Dumping routines for database 'sprint_modulo3'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-11 20:13:05
