CREATE DATABASE  IF NOT EXISTS `foodsaverdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `foodsaverdb`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: foodsaverdb
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `alimentos`
--

DROP TABLE IF EXISTS `alimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alimentos` (
  `id_alimento` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id_alimento`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alimentos`
--

LOCK TABLES `alimentos` WRITE;
/*!40000 ALTER TABLE `alimentos` DISABLE KEYS */;
INSERT INTO `alimentos` VALUES (1,'Arroz','Granos'),(2,'Frijoles','Granos'),(3,'Lentejas','Granos'),(4,'Garbanzos','Granos'),(5,'Avena','Cereales'),(6,'Maíz','Granos'),(7,'Huevos','Proteína'),(8,'Pollo','Proteína'),(9,'Carne de res','Proteína'),(10,'Cerdo','Proteína'),(11,'Pescado','Proteína'),(12,'Atún en lata','Proteína'),(13,'Tomate','Verduras'),(14,'Cebolla larga','Verduras'),(15,'Cebolla cabezona','Verduras'),(16,'Ajo','Verduras'),(17,'Zanahoria','Verduras'),(18,'Espinaca','Verduras'),(19,'Cilantro','Verduras'),(20,'Pimentón','Verduras'),(21,'Lechuga','Verduras'),(22,'Papa pastusa','Tubérculos'),(23,'Papa criolla','Tubérculos'),(24,'Yuca','Tubérculos'),(25,'Plátano maduro','Frutas'),(26,'Plátano verde','Frutas'),(27,'Aguacate','Frutas'),(28,'Limón','Frutas'),(29,'Banano','Frutas'),(30,'Manzana','Frutas'),(31,'Leche','Lácteos'),(32,'Kumis','Lácteos'),(33,'Queso campesino','Lácteos'),(34,'Mantequilla','Lácteos'),(35,'Yogur','Lácteos'),(36,'Aceite','Grasas'),(37,'Sal','Condimentos'),(38,'Azúcar','Endulzantes'),(39,'Panela','Endulzantes'),(40,'Harina de trigo','Despensa'),(41,'Harina de maíz','Despensa'),(42,'Pasta','Despensa');
/*!40000 ALTER TABLE `alimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta_ingredientes`
--

DROP TABLE IF EXISTS `receta_ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receta_ingredientes` (
  `id_receta` int NOT NULL,
  `id_alimento` int NOT NULL,
  PRIMARY KEY (`id_receta`,`id_alimento`),
  KEY `id_alimento` (`id_alimento`),
  CONSTRAINT `receta_ingredientes_ibfk_1` FOREIGN KEY (`id_receta`) REFERENCES `recetas` (`id_receta`) ON DELETE CASCADE,
  CONSTRAINT `receta_ingredientes_ibfk_2` FOREIGN KEY (`id_alimento`) REFERENCES `alimentos` (`id_alimento`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta_ingredientes`
--

LOCK TABLES `receta_ingredientes` WRITE;
/*!40000 ALTER TABLE `receta_ingredientes` DISABLE KEYS */;
INSERT INTO `receta_ingredientes` VALUES (2,1),(21,1),(25,1),(30,1),(35,1),(41,1),(43,1),(44,1),(3,2),(21,2),(4,3),(40,3),(41,3),(39,4),(42,4),(49,5),(50,5),(1,7),(11,7),(14,7),(16,7),(17,7),(18,7),(19,7),(20,7),(21,7),(22,7),(31,7),(38,7),(2,8),(10,8),(23,8),(24,8),(25,8),(26,8),(27,8),(28,8),(42,8),(5,9),(29,9),(30,9),(31,9),(32,9),(33,9),(36,11),(37,11),(8,12),(34,12),(35,12),(38,12),(1,13),(2,13),(8,13),(9,13),(10,13),(12,13),(20,13),(24,13),(27,13),(28,13),(29,13),(31,13),(36,13),(40,13),(42,13),(45,13),(48,13),(1,14),(9,14),(10,14),(14,14),(26,14),(27,14),(31,14),(36,14),(40,14),(45,14),(2,15),(8,15),(12,15),(24,15),(29,15),(30,15),(34,15),(35,15),(41,15),(42,15),(2,16),(5,16),(9,16),(23,16),(25,16),(37,16),(3,17),(4,17),(32,17),(39,17),(11,18),(4,19),(10,19),(14,19),(26,19),(2,20),(12,21),(28,21),(4,22),(5,22),(10,22),(13,22),(14,22),(26,22),(29,22),(32,22),(39,22),(40,22),(46,22),(10,24),(24,24),(36,24),(45,24),(3,25),(47,25),(9,26),(37,26),(12,28),(15,28),(28,28),(34,28),(48,28),(6,29),(13,31),(49,31),(50,31),(6,32),(7,33),(7,34),(13,34),(22,34),(33,34),(1,36),(2,36),(5,36),(9,36),(11,36),(16,36),(17,36),(19,36),(20,36),(21,36),(23,36),(25,36),(27,36),(30,36),(31,36),(35,36),(37,36),(38,36),(41,36),(43,36),(44,36),(45,36),(46,36),(47,36),(1,37),(2,37),(3,37),(4,37),(5,37),(7,37),(8,37),(9,37),(10,37),(11,37),(12,37),(13,37),(14,37),(16,37),(17,37),(18,37),(19,37),(20,37),(21,37),(22,37),(23,37),(24,37),(25,37),(26,37),(27,37),(28,37),(29,37),(30,37),(31,37),(32,37),(33,37),(34,37),(35,37),(36,37),(37,37),(38,37),(39,37),(40,37),(41,37),(42,37),(43,37),(44,37),(45,37),(46,37),(6,38),(48,38),(49,38),(15,39),(50,39),(38,40),(7,41),(22,41),(33,41),(8,42),(44,42);
/*!40000 ALTER TABLE `receta_ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetas`
--

DROP TABLE IF EXISTS `recetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recetas` (
  `id_receta` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_receta`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetas`
--

LOCK TABLES `recetas` WRITE;
/*!40000 ALTER TABLE `recetas` DISABLE KEYS */;
INSERT INTO `recetas` VALUES (22,'Arepa con Mantequilla y Huevo'),(7,'Arepas con Queso'),(43,'Arroz Blanco'),(25,'Arroz Blanco con Pollo Asado'),(35,'Arroz con Atún'),(30,'Arroz con Carne Molida'),(44,'Arroz con Fideos'),(41,'Arroz con Lentejas'),(2,'Arroz con Pollo'),(34,'Atún con Cebolla y Limón'),(50,'Avena Caliente con Panela'),(49,'Avena en Hojuelas con Leche'),(6,'Batido de Kumis y Banano'),(31,'Bistec a Caballo'),(14,'Caldo de Papa con Huevo'),(21,'Calentado de Frijoles con Huevo'),(33,'Carne a la Plancha con Arepa'),(5,'Carne Asada con Papa'),(29,'Carne Sudada con Papa'),(38,'Croquetas de Atún'),(12,'Ensalada Básica'),(28,'Ensalada con Pollo'),(3,'Frijoles Tradicionales'),(42,'Garbanzos con Pollo'),(18,'Huevos Cocidos'),(20,'Huevos con Tomate'),(17,'Huevos Fritos'),(1,'Huevos Pericos'),(16,'Huevos Revueltos Simples'),(48,'Jugo de Tomate Fresco'),(40,'Lentejas Guisadas con Papa'),(15,'Limonada de Panela'),(46,'Papas Fritas'),(8,'Pasta con Atún'),(9,'Patacones con Hogao'),(37,'Pescado a la Plancha con Patacón'),(36,'Pescado Sudado con Yuca'),(23,'Pollo a la Plancha'),(27,'Pollo Desmechado con Hogao'),(24,'Pollo Sudado con Yuca'),(13,'Puré de Papa'),(32,'Sopa de Carne con Zanahoria y Papa'),(39,'Sopa de Garbanzos'),(4,'Sopa de Lentejas'),(26,'Sopa de Pollo con Papa'),(10,'Sudado de Pollo'),(47,'Tajadas de Plátano Maduro'),(11,'Tortilla de Espinaca'),(19,'Tortilla de Huevo Básica'),(45,'Yuca Cocida con Hogao');
/*!40000 ALTER TABLE `recetas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-18 20:43:35
