-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca_virtual
-- ------------------------------------------------------
-- Server version	5.6.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor` (
  `idAutor` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCompleto` varchar(200) DEFAULT NULL,
  `idTipoNacionalidad` varchar(10) DEFAULT NULL,
  `idTipoGenero` varchar(10) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  `aud_tipo` int(11) DEFAULT NULL,
  `aud_idUsuario` int(11) DEFAULT NULL,
  `aud_fecha_registro` date DEFAULT NULL,
  `aud_ip` varchar(60) DEFAULT NULL,
  `aud_fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`idAutor`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'William Shakespeare',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Jorge Guillén','1','1',0,3,0,'2017-02-22','1515','2017-02-24'),(3,'Nicole Ayllon','1','2',1,2,15,'2017-02-22','1515','2017-02-22'),(4,'Jorge Guillén','1','1',0,3,0,'2017-02-23','1515','2017-02-24'),(5,'Nicole','1','2',0,3,0,'2017-02-23',NULL,'2017-02-24'),(6,'Nicole','1','2',0,3,0,'2017-02-23',NULL,'2017-02-24'),(7,'The miane','1','1',0,3,0,'2017-02-24',NULL,'2017-02-24'),(8,'Gosu','1','1',0,3,0,'2017-02-24',NULL,'2017-02-24'),(9,'jajdlada','1','1',0,3,0,'2017-02-24',NULL,'2017-02-24');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliografia`
--

DROP TABLE IF EXISTS `bibliografia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bibliografia` (
  `idBibliografia` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `idTipoMaterialBibliografico` varchar(10) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `idEditorial` int(11) DEFAULT NULL,
  `nroEdicion` varchar(20) DEFAULT NULL,
  `nroPagina` varchar(20) NOT NULL,
  `anio` varchar(4) NOT NULL,
  `idTipoIdioma` varchar(10) DEFAULT NULL,
  `portada` varchar(120) DEFAULT NULL,
  `sinopsis` varchar(8000) NOT NULL,
  `situacion` int(11) NOT NULL,
  `estado` int(1) NOT NULL,
  `aud_tipo` int(11) DEFAULT NULL,
  `aud_idUsuario` int(11) DEFAULT NULL,
  `aud_fecha_registro` date DEFAULT NULL,
  `aud_ip` varchar(60) DEFAULT NULL,
  `aud_fecha_modificacion` date DEFAULT NULL,
  `idTipoSituacion` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idBibliografia`),
  KEY `FK_EditorialBibliografia` (`idEditorial`),
  CONSTRAINT `FK_EditorialBibliografia` FOREIGN KEY (`idEditorial`) REFERENCES `editorial` (`idEditorial`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliografia`
--

LOCK TABLES `bibliografia` WRITE;
/*!40000 ALTER TABLE `bibliografia` DISABLE KEYS */;
INSERT INTO `bibliografia` VALUES (1,'Amor','1','1',1,'1','1','2016','1','ada','adada',1,0,3,0,'2017-01-15','1','2017-02-21',NULL),(2,'Reconcilación','1','1',1,'1','1','2016','1','asda','adasda',1,0,3,0,'2017-02-10','1','2017-02-20',NULL),(3,'el amor','1','1515',NULL,'15','15','2017','1',NULL,'asdasf',1,1,NULL,1,'2017-02-19','1515',NULL,NULL),(4,'Hola ','1','1515',NULL,'1515','15','2017','1',NULL,'adasd',1,1,2,1,'2017-02-21','15','2017-02-21','1'),(5,'ASDA','1','1515',NULL,'15','15','2017','1',NULL,'ASDASF',1,1,NULL,1,'2017-02-21','1515',NULL,'1'),(6,'ada','1','15',1,'1','1','2016','1','asdas','qadad',1,0,3,0,NULL,'1515','2017-02-22','1'),(7,'Nicole','1','15',NULL,'15','15','2017','1',NULL,'asda',1,1,NULL,1515,'2017-02-21','1',NULL,'1'),(8,'Jorge','1','1515',NULL,'15','15','2017','1',NULL,'asdasd',1,1,NULL,1515,'2017-02-21','1',NULL,'1'),(9,'Jorge y Nicole','1','15',NULL,'15','15','2016','1',NULL,'True love',1,1,NULL,1,'2017-02-21','151515',NULL,'1'),(10,'LA VIDA','1','1515',NULL,'15','15','2016','1',NULL,'asdad',1,1,NULL,1,'2017-02-21','1515',NULL,'1'),(11,'Millonario','1','15',NULL,'1','15','2017','1',NULL,'asdas',1,1,NULL,1,'2017-02-21','1515',NULL,'1'),(12,'TE AMO','1','15',NULL,'15','15','2016','1',NULL,'asda',1,1,NULL,1515,'2017-02-21','1',NULL,'1'),(13,'guia','1','1515',NULL,'15','30','2017','1',NULL,'adasd',1,1,NULL,1,'2017-02-21','1515',NULL,'1'),(14,'Vida','1','1515',1,'15','150','2017','1',NULL,'asdafa',1,0,3,1,'2017-02-21','151515','2017-02-21','1'),(15,'Nicole Ayllon','1','1515',1,'15','15','2017','1',NULL,'ada',1,1,NULL,1,'2017-02-22','1515',NULL,'1'),(22,'Mi Odio','1','15515',2,'15','15','2017','1',NULL,'asdada',1,1,2,0,'2017-02-22',NULL,'2017-02-22','1');
/*!40000 ALTER TABLE `bibliografia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliografia_autor`
--

DROP TABLE IF EXISTS `bibliografia_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bibliografia_autor` (
  `idBibliografiaAutor` int(11) NOT NULL AUTO_INCREMENT,
  `idAutor` int(11) NOT NULL,
  `idBibliografia` int(11) NOT NULL,
  `estado` bit(1) NOT NULL,
  `aud_tipo` int(11) DEFAULT NULL,
  `aud_idUsuario` int(11) DEFAULT NULL,
  `aud_fecha` date DEFAULT NULL,
  `aud_ip` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idBibliografiaAutor`),
  KEY `FK_bibliografiaautordt` (`idAutor`),
  KEY `FK_bibliografia` (`idBibliografia`),
  CONSTRAINT `FK_bibliografia` FOREIGN KEY (`idBibliografia`) REFERENCES `bibliografia` (`idBibliografia`),
  CONSTRAINT `FK_bibliografia_autor` FOREIGN KEY (`idAutor`) REFERENCES `autor` (`idAutor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliografia_autor`
--

LOCK TABLES `bibliografia_autor` WRITE;
/*!40000 ALTER TABLE `bibliografia_autor` DISABLE KEYS */;
INSERT INTO `bibliografia_autor` VALUES (1,1,1,'',1,1,'2017-01-15','1515');
/*!40000 ALTER TABLE `bibliografia_autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento`
--

DROP TABLE IF EXISTS `documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documento` (
  `idDocumento` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `contenido` varchar(120) DEFAULT NULL,
  `idBlibliografia` int(11) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  `aud_tipo` int(11) DEFAULT NULL,
  `aud_idUsuario` int(11) DEFAULT NULL,
  `aud_fecha_registro` date DEFAULT NULL,
  `aud_ip` varchar(60) DEFAULT NULL,
  `aud_fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`idDocumento`),
  KEY `FK_documento` (`idBlibliografia`),
  CONSTRAINT `FK_documento` FOREIGN KEY (`idBlibliografia`) REFERENCES `bibliografia` (`idBibliografia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento`
--

LOCK TABLES `documento` WRITE;
/*!40000 ALTER TABLE `documento` DISABLE KEYS */;
/*!40000 ALTER TABLE `documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editorial`
--

DROP TABLE IF EXISTS `editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editorial` (
  `idEditorial` int(11) NOT NULL AUTO_INCREMENT,
  `situacion` int(1) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `aud_tipo` int(11) DEFAULT NULL,
  `aud_idUsuario` int(11) DEFAULT NULL,
  `aud_fecha_registro` date DEFAULT NULL,
  `aud_ip` varchar(60) DEFAULT NULL,
  `aud_fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`idEditorial`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (1,1,'',1,1,'2017-01-11','15',NULL),(2,1,'',1,1,'2017-01-15','15',NULL),(3,NULL,'',1,1,'2017-02-21','1515',NULL),(4,NULL,'',1,1,'2017-02-21','1515',NULL),(5,NULL,'',1,1515,'2017-02-21','1',NULL),(6,NULL,'',1,1,'2017-02-21','1515',NULL);
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejemplar`
--

DROP TABLE IF EXISTS `ejemplar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ejemplar` (
  `idEjemplar` int(11) NOT NULL AUTO_INCREMENT,
  `idBibliografia` int(11) DEFAULT NULL,
  `situacion` int(11) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `aud_tipo` int(11) DEFAULT NULL,
  `aud_idUsuario` int(11) DEFAULT NULL,
  `aud_fecha_registro` date DEFAULT NULL,
  `aud_ip` varchar(60) DEFAULT NULL,
  `aud_fecha_modificacion` date DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `idTipoSituacion` varchar(11) DEFAULT NULL,
  `idTipoEjemplar` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`idEjemplar`),
  KEY `FK_ejemplarb` (`idBibliografia`),
  CONSTRAINT `FK_ejemplarb` FOREIGN KEY (`idBibliografia`) REFERENCES `bibliografia` (`idBibliografia`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejemplar`
--

LOCK TABLES `ejemplar` WRITE;
/*!40000 ALTER TABLE `ejemplar` DISABLE KEYS */;
INSERT INTO `ejemplar` VALUES (1,1,1,'',1,1,'2017-02-05','1',NULL,'65461','1','1'),(2,1,1,'',1,1,'2017-01-15','1',NULL,'56789','1','2'),(3,NULL,NULL,'',NULL,1515,'2017-02-21','1',NULL,'79797','2','1'),(4,9,NULL,'',1,1,'2017-02-21','151515',NULL,'78979','1','1'),(5,10,NULL,'',1,1,'2017-02-21','1515',NULL,'797987','2','1'),(6,11,NULL,'',1,1,'2017-02-21','1515',NULL,'7897','1','1'),(7,12,NULL,'',1,1515,'2017-02-21','1',NULL,'797','2','2'),(8,13,NULL,'',1,1,'2017-02-21','1515',NULL,'978','1','2');
/*!40000 ALTER TABLE `ejemplar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maestro`
--

DROP TABLE IF EXISTS `maestro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maestro` (
  `idMaestro` int(11) NOT NULL AUTO_INCREMENT,
  `codTabla` varchar(50) NOT NULL,
  `codRegistro` varchar(10) NOT NULL,
  `nombreCorto` varchar(60) NOT NULL,
  `nombreLargo` varchar(400) DEFAULT NULL,
  `valor1` varchar(400) DEFAULT NULL,
  `valor2` varchar(400) DEFAULT NULL,
  `valor3` varchar(400) DEFAULT NULL,
  `valor4` varchar(400) DEFAULT NULL,
  `valor5` varchar(400) DEFAULT NULL,
  `valor6` varchar(400) DEFAULT NULL,
  `valor7` varchar(400) DEFAULT NULL,
  `valor8` varchar(400) DEFAULT NULL,
  `valor9` varchar(400) DEFAULT NULL,
  `valor10` varchar(400) DEFAULT NULL,
  `nombreCampo` varchar(8) DEFAULT NULL,
  `numOrden` tinyint(4) NOT NULL,
  `estado` char(1) NOT NULL,
  `audFechaCrea` datetime NOT NULL,
  `audFechaMod` datetime DEFAULT NULL,
  PRIMARY KEY (`idMaestro`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maestro`
--

LOCK TABLES `maestro` WRITE;
/*!40000 ALTER TABLE `maestro` DISABLE KEYS */;
INSERT INTO `maestro` VALUES (1,'tipoNacionalidad','0','TIPO NACIONALIDAD','TIPO NACIONALIDAD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(2,'tipoNacionalidad','1','ARGENTINA','ARGENTINA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(3,'tipoNacionalidad','2','ECUADOR','ECUADOR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(4,'tipoNacionalidad','3','COLOMBIA','COLOMBIA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(5,'tipoNacionalidad','4','PARAGUAY','PARAGUAY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(6,'tipoNacionalidad','5','URUGUAY','URUGUAY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(7,'tipoNacionalidad','6','PERU','PERU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(8,'tipoNacionalidad','7','ESTADOS UNIDOS','ESTADOS UNIDOS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(9,'tipoNacionalidad','8','MEXICO','MEXICO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(10,'tipoNacionalidad','9','CHILE','CHILE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(11,'tipoGenero','0','TIPO GENERO','TIPO GENERO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(12,'tipoGenero','1','MASCULINO','MASCULINO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(13,'tipoGenero','2','FEMENINO','FEMENINO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(14,'tipoMateriaBibliografico','0','TIPO MATERIAL','TIPO MATERIAL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(15,'tipoMateriaBibliografico','1','LIBRO','LIBRO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(16,'tipoMateriaBibliografico','2','REVISTA','REVISTA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(17,'tipoMateriaBibliografico','3','TESIS','TESIS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(18,'tipoMateriaBibliografico','4','OBRA','OBRA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00','2017-02-04 00:00:00'),(19,'tipoPerfil','0','TIPO DE PERFIL DE USUARIO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00',NULL),(20,'tipoPerfil','1','ADMINISTRADOR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00',NULL),(21,'tipoPerfil','2','ALUMNO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00',NULL),(22,'tipoPerfil','3','DOCENTE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00',NULL),(23,'tipoIdioma','0','TIPO DE IDIOMAS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-04 00:00:00',NULL),(24,'tipoIdioma','1','ESPAÑOL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-10 00:00:00',NULL),(25,'tipoEjemplar','0','TIPO DE EJEMPLAR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(26,'tipoEjemplar','1','ORIGINAL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(27,'tipoEjemplar','2','COPIA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(28,'tipoEjemplar','3','SEGUNDO PLANO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(29,'tipoIdioma','2','INGLES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(30,'situacionMaterialBibliografico','0','SITUACION ','SITUACION MATERIAL BIBLIOGRAFICO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(31,'situacionMaterialBibliografico','1','ACTIVO','ACTIVO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(32,'situacionMaterialBibliografico','2','INACTIVO','INACTIVO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(33,'tipoSituacionEjemplar','0','SITUACION EJEMPLAR','SITUACION EJEMPLAR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(34,'tipoSituacionEjemplar','1','DISPONIBLE','DISPONIBLE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(35,'tipoSituacionEjemplar','2','NO DISPONIBLE ','NO DISPONIBLE ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(36,'tipoUsuario','0','TIPO USUARIO ','TIPO USUARIO ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(37,'tipoUsuario ','1','DOCENTE','DOCENTE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(38,'tipoUsuario','2','ESTUDIANTE','ESTUDIANTE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(39,'tipoUusario','3','EGRESADO','EGRESADO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(40,'tipoUsuario','4','VISITANTE','VISITANTE','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(41,'tipoReserva','0','TIPO RESERVA ','TIPO RESERVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(42,'tipoReserva','1','EN SALA','EN SALA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(43,'situacionReserva','0','SITUACION RESERVA','SITUACION RESERVA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(44,'situacionReserva','1','PENDIENTE','PENDIENTE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(45,'situacionReserva','2','PRESTADO','PRESTADO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(46,'situacionReserva','3','ANULADO','ANULADO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(47,'anio','0','anio','anio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(48,'anio','1','enero','enero',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(49,'anio','2','febrero','febrero',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(50,'anio','3','marzo','marzo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(51,'anio','4','abril','abril',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(52,'anio','5','mayo','mayo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(53,'anio','6','junio','junio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(54,'anio','7','julio','julio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00'),(55,'anio','8','agosto','agosto',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1','2017-02-24 00:00:00','2017-02-24 00:00:00');
/*!40000 ALTER TABLE `maestro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET latin1 NOT NULL,
  `idTipoDocumento` varchar(10) CHARACTER SET latin1 NOT NULL,
  `nroDocumento` varchar(20) COLLATE latin1_german1_ci NOT NULL,
  `telefono` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `correo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `domicilio` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `idTipoGenero` varchar(10) COLLATE latin1_german1_ci NOT NULL,
  `codigo` varchar(20) CHARACTER SET latin1 NOT NULL,
  `idTipoPersona` varchar(10) CHARACTER SET latin1 NOT NULL,
  `situacion` int(11) NOT NULL,
  `estado` int(1) NOT NULL,
  `aud_tipo` int(11) DEFAULT NULL,
  `aud_idUsuario` int(11) DEFAULT NULL,
  `aud_fecha_registro` date DEFAULT NULL,
  `aud_ip` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `apellidoPaterno` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `apellidoMaterno` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `aud_fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Jorge Guillén','2','71947992','941500836','jguillen@hotmail.com','El Agustino','1','201311339','1',1,1,2,1,'2017-01-15','1651','Sierra','Ayllon',NULL),(2,'Nicole','1','71979882','92035008','nayllon@hotmail.com','El Agustino','2','2015313','2',1,1,2,0,'2017-01-15',NULL,'Sierra','Ayllon','2017-02-17'),(3,'Jorge Luis','1','15641','719979','jguillen@hotmail.com',NULL,'1','151515','1',1,1,2,0,'2017-02-15',NULL,'Guillen','Canchari','2017-02-22'),(4,'Daniel','0','56462','4781651','davila@hotmailc.om',NULL,'1','45497','1',1,1,NULL,0,'2017-02-16',NULL,'Avila','Mendez',NULL),(5,'Tv Xikita','0','7975013','7975013','jlizbeth@hotmail.com',NULL,'1','151521','1',1,1,NULL,0,'2017-02-16',NULL,'Posada','Torres',NULL),(6,'Paul','0','1651','987515','posco@hotmail.com',NULL,'1','7975013','1',1,1,NULL,0,'2017-02-16',NULL,'Osco','Pichicata',NULL),(7,'Kelly','0','56165','7985013','kcruz@hotmail.com',NULL,'2','65156','1',1,1,2,0,'2017-02-16',NULL,'De La Cruz','Jaurgeui','2017-02-17'),(8,'Daniel','0','719477998','7975013','davila@hotmail.com',NULL,'1','796665','1',1,1,NULL,0,'2017-02-17',NULL,'Avila','Mendez',NULL),(9,'Eduardo','0','719479955','7975013','ecruz@hotmail.com',NULL,'1','13463113','2',1,1,2,0,'2017-02-17',NULL,'De La Cruz','Jauregui','2017-02-17'),(10,'ad','1','1515','1515165','sdas',NULL,'1','15','1',1,1,NULL,1,'2017-02-21','1515','asda','asda',NULL);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserva` (
  `idPrestamo` int(11) NOT NULL AUTO_INCREMENT,
  `idEjemplar` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `res_fecha_inicio` date NOT NULL,
  `res_fecha_fin` date NOT NULL,
  `res_situacion` int(1) NOT NULL,
  `pres_fecha` date DEFAULT NULL,
  `pres_idUsuario` int(11) DEFAULT NULL,
  `pres_situacion` int(11) DEFAULT NULL,
  `dev_fecha` date DEFAULT NULL,
  `dev_idUsuario` int(11) DEFAULT NULL,
  `dev_tipo` int(11) DEFAULT NULL,
  `dev_penalidad` int(11) DEFAULT NULL,
  `dev_situacion` int(11) DEFAULT NULL,
  `aud_tipo` int(11) DEFAULT NULL,
  `aud_idUsuario` int(11) DEFAULT NULL,
  `aud_fecha` date DEFAULT NULL,
  `aud_ip` int(11) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idPrestamo`),
  KEY `FK_reservaUsuario` (`aud_idUsuario`),
  KEY `FK_UsuarioReserva` (`idUsuario`),
  KEY `FK_ejemplarReserva` (`idEjemplar`),
  CONSTRAINT `FK_UsuarioReserva` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `FK_ejemplarReserva` FOREIGN KEY (`idEjemplar`) REFERENCES `ejemplar` (`idEjemplar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(20) DEFAULT NULL,
  `clave` varchar(20) NOT NULL,
  `idTipoPerfil` varchar(10) NOT NULL,
  `idPersona` int(11) DEFAULT NULL,
  `aud_tipo` int(11) DEFAULT NULL,
  `aud_idUsuario` int(11) DEFAULT NULL,
  `aud_fecha_registro` date DEFAULT NULL,
  `aud_ip` varchar(60) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  `aud_fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `FK_usuario` (`idPersona`),
  CONSTRAINT `FK_usuario` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (6,'jguillen','12','1',3,2,0,'2017-02-10',NULL,1,'2017-02-22'),(7,'Nicole','15','1',2,2,0,'2017-02-10',NULL,1,'2017-02-17'),(8,'nayllon','15','1',3,3,0,'2017-02-15','1515',0,'2017-02-16'),(9,'davila','123','1',4,3,0,'2017-02-16',NULL,0,'2017-02-16'),(10,'jposadas','123','1',5,3,0,'2017-02-16',NULL,0,'2017-02-16'),(11,'posco','123','1',6,3,0,'2017-02-16',NULL,0,'2017-02-16'),(12,'kcruz','12','1',7,2,0,'2017-02-16',NULL,1,'2017-02-17'),(13,'davila','123','1',8,1,0,'2017-02-17',NULL,1,NULL),(14,'ecruz','123','1',9,2,0,'2017-02-17',NULL,1,'2017-02-17'),(15,'adasda','1515','1',10,1,1,'2017-02-21','1515',1,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `uvw_ejemplar`
--

DROP TABLE IF EXISTS `uvw_ejemplar`;
/*!50001 DROP VIEW IF EXISTS `uvw_ejemplar`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `uvw_ejemplar` AS SELECT 
 1 AS `idEjemplar`,
 1 AS `idBibliografia`,
 1 AS `idTipoSituacion`,
 1 AS `NombreSituacion`,
 1 AS `idTipoEjemplar`,
 1 AS `NombreEjemplar`,
 1 AS `codigo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `uvw_material_bibliografico`
--

DROP TABLE IF EXISTS `uvw_material_bibliografico`;
/*!50001 DROP VIEW IF EXISTS `uvw_material_bibliografico`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `uvw_material_bibliografico` AS SELECT 
 1 AS `idBibliografia`,
 1 AS `titulo`,
 1 AS `idTipoMaterialBibliografico`,
 1 AS `codigo`,
 1 AS `nroEdicion`,
 1 AS `nroPagina`,
 1 AS `anio`,
 1 AS `idTipoIdioma`,
 1 AS `portada`,
 1 AS `sinopsis`,
 1 AS `situacion`,
 1 AS `idTipoSituacion`,
 1 AS `estado`,
 1 AS `cantEjemplares`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `uvw_usuario_persona`
--

DROP TABLE IF EXISTS `uvw_usuario_persona`;
/*!50001 DROP VIEW IF EXISTS `uvw_usuario_persona`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `uvw_usuario_persona` AS SELECT 
 1 AS `idUsuario`,
 1 AS `nombreUsuario`,
 1 AS `clave`,
 1 AS `idTipoPerfil`,
 1 AS `NombrePerfil`,
 1 AS `idPersona`,
 1 AS `nombreCompleto`,
 1 AS `idTipoDocumento`,
 1 AS `telefono`,
 1 AS `nroDocumento`,
 1 AS `correo`,
 1 AS `domicilio`,
 1 AS `idTipoGenero`,
 1 AS `codigo`,
 1 AS `idTipoPersona`,
 1 AS `situacion`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'biblioteca_virtual'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_AUTOR_ACTUALIZAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AUTOR_ACTUALIZAR`(
IN  p_idAutor INT(11),
IN  p_nombreCompleto VARCHAR(200),
IN  p_idTipoNacionalidad VARCHAR(11),
IN  p_idTipoGenero VARCHAR(11),
IN  p_aud_idUsuario INT(11),
IN	p_aud_ip VARCHAR(60)
)
BEGIN

UPDATE autor
SET
nombreCompleto = p_nombreCompleto, 
idTipoNacionalidad = p_idTipoNacionalidad, 
idTipoGenero = p_idTipoGenero, 
aud_tipo = 2, 
aud_idUsuario = p_aud_idUsuario, 
aud_ip = p_aud_ip, 
aud_fecha_modificacion = NOW()
WHERE
idAutor = p_idAutor
AND estado = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AUTOR_BUSCARXID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AUTOR_BUSCARXID`(
IN p_idAutor INT(11)
)
BEGIN
SELECT
idAutor, 
nombreCompleto, 
idTipoNacionalidad, 
idTipoGenero
FROM autor
where idAutor = p_idAutor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AUTOR_ELIMINAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AUTOR_ELIMINAR`(
IN p_idAutor INT(11),
IN p_aud_idUsuario INT (11)
)
BEGIN

UPDATE autor
SET

estado = 0,
aud_fecha_modificacion = NOW(),
aud_idUsuario = p_aud_idUsuario,
aud_tipo = 3

WHERE 
 idAutor = p_idAutor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AUTOR_INSERTAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AUTOR_INSERTAR`(
OUT p_idAutor INT(11),
IN  p_nombreCompleto VARCHAR(200),
IN  p_idTipoNacionalidad varchar(11),
IN  p_idTipoGenero varchar(11),
IN  p_aud_idUsuario INT(11),
IN	p_aud_ip VARCHAR(60))
BEGIN
INSERT INTO autor
(
nombreCompleto, 
idTipoNacionalidad, 
idTipoGenero, 
estado, 
aud_tipo, 
aud_idUsuario, 
aud_fecha_registro, 
aud_ip)
VALUES
(p_nombreCompleto,
p_idTipoNacionalidad,
p_idTipoGenero,
1,
1,
p_aud_idUsuario,
NOW(),
p_aud_ip);
SET p_idAutor = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AUTOR_LISTAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AUTOR_LISTAR`(
IN p_nombreCompleto VARCHAR(200)
)
BEGIN
SELECT 
idAutor, 
nombreCompleto,
idTipoNacionalidad, 
idTipoGenero, 
estado,
aud_tipo, 
aud_idUsuario, 
aud_ip, 
aud_fecha_registro
FROM autor
WHERE
(p_nombreCompleto IS NOT NULL 
AND autor.nombreCompleto like concat('%',p_nombreCompleto,'%'))
AND estado = 1
order by idAutor;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BIBLIOGRAFIA_ACTUALIZAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BIBLIOGRAFIA_ACTUALIZAR`(
IN  p_idBibliografia INT(11),
in  p_titulo VARCHAR(200),
IN  p_idTipoMaterialBibliografico VARCHAR(10),
IN  p_nroEdicion VARCHAR(20),
IN  p_anio  VARCHAR(4),
IN  p_idTipoIdioma VARCHAR(10),
IN  p_codigo VARCHAR(20),
IN  p_idTipoSituacion VARCHAR(10),
IN  p_sinopsis  VARCHAR(8000),
IN  p_nroPagina VARCHAR(20),
IN  p_idEditorial   INT(11),
IN	p_aud_idUsuario  INT(11),
IN  p_aud_ip	VARCHAR(60)
)
BEGIN
UPDATE bibliografia
SET 
titulo = p_titulo,
idTipoMaterialBibliografico = p_idTipoMaterialBibliografico,
nroEdicion = p_nroEdicion,
anio = p_anio,
idTipoIdioma = p_idTipoIdioma,
codigo = p_codigo,
idTipoSituacion = p_idTipoSituacion,
sinopsis = p_sinopsis,
idEditorial = p_idEditorial,
nroPagina = p_nroPagina,
aud_tipo = 2,
aud_idUsuario = p_aud_idUsuario,
aud_fecha_modificacion = NOW(),
aud_ip = p_aud_ip
WHERE idBibliografia = p_idBibliografia
AND
estado = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BIBLIOGRAFIA_BUSCARXID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BIBLIOGRAFIA_BUSCARXID`(
IN p_idBibliografia INT(11)
)
BEGIN
SELECT
idBibliografia,
titulo,
idTipoMaterialBibliografico,
idEditorial,
nroEdicion,
anio,
idTipoIdioma,
codigo,
idTipoSituacion,
sinopsis,
nroPagina,
situacion
FROM bibliografia
WHERE idBibliografia = p_idBibliografia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BIBLIOGRAFIA_ELIMINAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BIBLIOGRAFIA_ELIMINAR`(
IN p_idBibliografia INT(11),
IN p_aud_idUsuario INT(11)
)
BEGIN

update bibliografia
SET

estado = 0,
aud_fecha_modificacion = NOW(),
aud_idUsuario =  p_aud_idUsuario,
aud_tipo = 3
WHERE
	idBibliografia = p_idBibliografia;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BIBLIOGRAFIA_INSERTAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BIBLIOGRAFIA_INSERTAR`(

OUT p_idBibliografia INT(11),
in  p_titulo VARCHAR(200),
IN  p_idTipoMaterialBibliografico VARCHAR(10),
IN  p_nroEdicion VARCHAR(20),
IN  p_anio VARCHAR(5),
IN  p_idTipoIdioma VARCHAR(10),
IN  p_codigo VARCHAR(20),
IN  p_idTipoSituacion VARCHAR(10),
IN  p_sinopsis  VARCHAR(8000),
IN  p_nroPagina VARCHAR(20),
IN  p_idEditorial   INT(11),
IN	p_aud_idUsuario  INT(11),
IN  p_aud_ip	VARCHAR(60)
)
BEGIN
INSERT INTO bibliografia
(
titulo,
idTipoMaterialBibliografico,
nroEdicion,
anio,
idTipoIdioma,
codigo,
idTipoSituacion,
sinopsis,
nroPagina,
idEditorial,
aud_idUsuario,
aud_fecha_registro,
aud_ip,
estado,
situacion
)
VALUES
(
p_titulo,
p_idTipoMaterialBibliografico,
p_nroEdicion,
p_anio,
p_idTipoIdioma,
p_codigo,
p_idTipoSituacion,
p_sinopsis,
p_nroPagina,
p_idEditorial,
p_aud_idUsuario,
NOW(),
p_aud_ip,
1,
1);
SET  p_idBibliografia = LAST_INSERT_ID();

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BIBLIOGRAFIA_LISTAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BIBLIOGRAFIA_LISTAR`(
IN p_idTipoMaterialBibliografico INT(11),
IN p_titulo VARCHAR(100)

)
BEGIN
SELECT
idBibliografia,
titulo, 
idTipoMaterialBibliografico, 
codigo, 
nroEdicion, 
nroPagina, 
anio, 
portada, 
idTipoIdioma, 
sinopsis, 
situacion, 
cantEjemplares

FROM uvw_material_bibliografico
WHERE 
    (p_idTipoMaterialBibliografico IS NOT NULL
    AND
    (p_idTipoMaterialBibliografico = 0 
    OR idTipoMaterialBibliografico = p_idTipoMaterialBibliografico))
    AND titulo like CONCAT('%',p_titulo,'%')
    AND estado = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DOCUMENTO_ACTUALIZAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DOCUMENTO_ACTUALIZAR`(
IN p_idDocumento INT(11),
IN p_contenido VARCHAR(180),
IN p_descripcion VARCHAR(50),
IN  p_aud_idUsuario INT(11),
IN	p_aud_ip VARCHAR(60)
)
BEGIN
UPDATE documento
SET
contenido = p_contenido,
descripcion = p_descripcion,
aud_tipo = 2, 
aud_idUsuario = p_aud_idUsuario, 
aud_ip = p_aud_ip, 
aud_fecha_modificacion = NOW()
WHERE
idDocumento = p_idDocumento
AND
estado = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DOCUMENTO_BUSCARXID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DOCUMENTO_BUSCARXID`(
IN p_idDocumento INT(11)
)
BEGIN
SELECT
idDocumento,
contenido,
descripcion
FROM documento
where idDocumento = p_idDocumento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DOCUMENTO_ELIMINAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DOCUMENTO_ELIMINAR`(
IN p_idDocumento INT(11),
IN p_aud_idUsuario INT (11)
)
BEGIN
UPDATE documento
SET

estado = 0,
aud_fecha_modificacion = NOW(),
aud_idUsuario = p_aud_idUsuario,
aud_tipo = 3

WHERE 
 iDocumento = p_idDocumento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DOCUMENTO_INSERTAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_DOCUMENTO_INSERTAR`(
OUT p_idDocumento INT(11),
IN  p_contenido VARCHAR(180),
IN  p_descripcion VARCHAR(50),
IN  p_aud_idUsuario INT(11),
IN	p_aud_ip VARCHAR(60)
)
BEGIN
INSERT INTO documento
(
contenido,
descripcion,	
estado,
aud_tipo, 
aud_idUsuario, 
aud_fecha_registro, 
aud_ip
)
VALUES
(
p_contenido,
p_descripcion,
1,
1,
p_aud_idUsuario,
NOW(),
p_aud_ip
);
SET p_idDocumento = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EJEMPLAR_ACTUALIZAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`shareduser`@`%` PROCEDURE `SP_EJEMPLAR_ACTUALIZAR`(
IN  p_idEjemplar INT(11),
IN  p_codigo  VARCHAR(45),
IN  p_idTipoEjemplar VARCHAR(11),
IN  p_idTipoSituacion VARCHAR(11),
IN  p_aud_idUsuario INT(11),
IN	p_aud_ip VARCHAR(60)
)
BEGIN

UPDATE ejemplar
SET
codigo = p_codigo,
idTipoEjemplar = p_idTipoEjemplar,
idTipoSituacion = p_idTipoSituacion,
aud_tipo = 2, 
aud_idUsuario = p_aud_idUsuario, 
aud_ip = p_aud_ip, 
aud_fecha_modificacion = NOW()
WHERE
idEjemplar = p_idEjemplar
AND estado = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EJEMPLAR_BUSCARXID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`shareduser`@`%` PROCEDURE `SP_EJEMPLAR_BUSCARXID`(
IN p_idEjemplar INT(11)
)
BEGIN
SELECT
idEjemplar,
idTipoEjemplar,
idTipoSituacion,
idBibliografia
FROM ejemplar
WHERE idEjemplar = p_idEjemplar;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EJEMPLAR_ELIMINAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`shareduser`@`%` PROCEDURE `SP_EJEMPLAR_ELIMINAR`(
IN p_idEjemplar INT(11),
IN p_aud_idUsuario INT(11)
)
BEGIN

update ejemplar
SET

estado = 0,
aud_fecha_modificacion = NOW(),
aud_idUsuario = p_aud_idUsuario,
aud_tipo = 3

WHERE idEjemplar = p_idEjemplar;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EJEMPLAR_INSERTAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`shareduser`@`%` PROCEDURE `SP_EJEMPLAR_INSERTAR`(
OUT p_idEjemplar INT(11),
IN  p_codigo  VARCHAR(45),
IN  p_idTipoEjemplar VARCHAR(11),
IN  p_idTipoSituacion VARCHAR(11),
IN  p_aud_idUsuario INT(11),
IN	p_aud_ip VARCHAR(60),
IN  p_idBibliografia INT(11)
)
BEGIN
INSERT INTO ejemplar
(
codigo,
idTipoEjemplar,
idTipoSituacion,
estado,
aud_tipo,
aud_idUsuario,
aud_fecha_registro,
aud_ip,
idBibliografia
)
VALUES
(
p_codigo,
p_idTipoEjemplar,
p_idTipoSituacion,
1,
1,
p_aud_idUsuario,
NOW(),
p_aud_ip,
p_idBibliografia
);
SET p_idEjemplar = LAST_INSERT_ID();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EJEMPLAR_LISTAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EJEMPLAR_LISTAR`(
IN p_idBibliografia INT(11)
)
BEGIN
SELECT 
idEjemplar
codigo, 
idTipoEjemplar,
idTipoSituacion,
idBibliografia
from uvw_ejemplar
where idBibliografia = p_idBibliografia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_USUARIO_BUSCARXID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_USUARIO_BUSCARXID`(
IN p_idUsuario INT(11)
)
BEGIN 
SELECT
idUsuario,
nombreUsuario, 
clave, 
idTipoPerfil,
 idPersona
 FROM usuario
 WHERE idUsuario = p_idUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_USUARIO_ELIMINAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_USUARIO_ELIMINAR`(
IN p_idUsuario int(11),
IN p_aud_idUsuario INT(11)
)
BEGIN

UPDATE usuario 
SET

estado = 0,
aud_fecha_modificacion = NOW(),
aud_idUsuario =  p_aud_idUsuario,
aud_tipo = 3
WHERE
	idUsuario = p_idUsuario;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_USUARIO_LISTAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_USUARIO_LISTAR`(
IN p_idTipoPerfil VARCHAR(10), 
IN p_nombreUsuario VARCHAR(100)
)
BEGIN
SELECT 
idUsuario,
nombreUsuario, 
clave, 
idTipoPerfil,
 NombrePerfil, 
 idPersona,
 nombreCompleto, 
 idTipoDocumento, 
 telefono,
 nroDocumento,
 correo, 
 domicilio, 
 idTipoGenero, 
 codigo, 
 clave
 idTipoPersona, 
 situacion
FROM uvw_usuario_persona
where 
	   (p_idTipoPerfil IS NOT NULL 
       AND
       (
		p_idTipoPerfil = '0' OR idTipoPerfil = p_idTipoPerfil)
       )
AND   (p_nombreUsuario IS NOT NULL
	  AND nombreUsuario like CONCAT('%',p_nombreUsuario,'%'))
      AND estado = 1
      order by idUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_USUARIO_PERSONA_ACTUALIZAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_USUARIO_PERSONA_ACTUALIZAR`(
IN  p_idPersona  INT(11),
IN  p_nombre VARCHAR (100),
IN  p_apellidoPaterno VARCHAR (100),
IN  p_apellidoMaterno VARCHAR (100),
IN  p_codigo INT(11),
IN  p_idTipoDocumento VARCHAR(10),
IN  p_nroDocumento  VARCHAR(20),
IN  p_correo  VARCHAR(50),
IN  p_idTipoPersona VARCHAR(10),
IN  p_idTipoGenero  VARCHAR(10),
IN  p_telefono  VARCHAR(20),

IN  p_idUsuario INT(11),
IN  p_nombreUsuario VARCHAR(100),
IN  p_clave VARCHAR(20),
IN  p_idTipoPerfil VARCHAR(10),
IN	p_aud_idUsuario  INT(11),
IN  p_aud_ip	VARCHAR(60)
)
BEGIN
UPDATE persona
SET
nombre = p_nombre,
apellidoPaterno = p_apellidoPaterno,
apellidoMaterno = p_apellidoMaterno,
codigo = p_codigo,
idTipoDocumento = p_idTipoDocumento,
nroDocumento = p_nroDocumento,
correo = p_correo,
idTipoPersona = p_idTipoPersona,
idTipoGenero = p_idTipoGenero,
telefono = p_telefono,
aud_tipo = 2, 
aud_idUsuario = p_aud_idUsuario, 
aud_fecha_modificacion = NOW(), 
aud_ip = p_aud_ip
AND estado = 1
WHERE idPersona = p_idPersona;
UPDATE usuario
SET
 nombreUsuario = p_nombreUsuario,
 clave = p_clave, 
 idTipoPerfil = p_idTipoPerfil, 
 aud_tipo = 2, 
 aud_idUsuario = p_aud_idUsuario, 
 aud_fecha_modificacion = NOW(), 
 aud_ip = p_aud_ip
 WHERE 
 idUsuario = p_idUsuario
 AND estado = 1;
 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_USUARIO_PERSONA_INSERTAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_USUARIO_PERSONA_INSERTAR`(
OUT p_idPersona  INT(11),
IN  p_nombre VARCHAR (100),
IN  p_apellidoPaterno VARCHAR (100),
IN  p_apellidoMaterno VARCHAR (100),
IN  p_codigo INT(11),
IN  p_idTipoDocumento VARCHAR(10),
IN  p_nroDocumento  VARCHAR(20),
IN  p_correo  VARCHAR(50),
IN  p_idTipoPersona VARCHAR(10),
IN  p_idTipoGenero  VARCHAR(10),
IN  p_telefono  VARCHAR(20),

OUT p_idUsuario INT(11),
IN  p_nombreUsuario VARCHAR(100),
IN  p_clave VARCHAR(20),
IN  p_idTipoPerfil VARCHAR(10),
IN	p_aud_idUsuario  INT(11),
IN  p_aud_ip	VARCHAR(60)
)
BEGIN
INSERT INTO persona
(
nombre,
apellidoPaterno,
apellidoMaterno,
codigo,
idTipoDocumento,
nroDocumento,
correo,
idTipoPersona,
idTipoGenero,
telefono,
aud_idUsuario, 
aud_fecha_registro, 
aud_ip,
estado,
situacion)
VALUES
(
p_nombre,
p_apellidoPaterno,
p_apellidoMaterno,
p_codigo,
p_idTipoDocumento,
p_nroDocumento,
p_correo,
p_idTipoPersona,
p_idTipoGenero,
p_telefono,
p_aud_idUsuario,
NOW(),
p_aud_ip,
1,
1); 
SET p_idPersona = LAST_INSERT_ID();

INSERT INTO usuario
 (
 nombreUsuario,
 clave, 
 idTipoPerfil, 
 idPersona, 
 aud_tipo, 
 aud_idUsuario, 
 aud_fecha_registro, 
 aud_ip,
 estado)
VALUES
(
p_nombreUsuario,
p_clave,
p_idTipoPerfil,
p_idPersona,
1,
p_aud_idUsuario,
NOW(),
p_aud_ip,
1);
SET p_idUsuario = LAST_INSERT_ID();

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `uvw_ejemplar`
--

/*!50001 DROP VIEW IF EXISTS `uvw_ejemplar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `uvw_ejemplar` AS select `eje`.`idEjemplar` AS `idEjemplar`,`eje`.`idBibliografia` AS `idBibliografia`,`eje`.`idTipoSituacion` AS `idTipoSituacion`,(select `maestro`.`nombreCorto` from `maestro` where ((`maestro`.`codTabla` = 'tipoSituacionEjemplar') and (`maestro`.`codRegistro` = `eje`.`idTipoSituacion`))) AS `NombreSituacion`,`eje`.`idTipoEjemplar` AS `idTipoEjemplar`,(select `maestro`.`nombreCorto` from `maestro` where ((`maestro`.`codTabla` = 'tipoEjemplar') and (`maestro`.`codRegistro` = `eje`.`idTipoEjemplar`))) AS `NombreEjemplar`,`eje`.`codigo` AS `codigo` from `ejemplar` `eje` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `uvw_material_bibliografico`
--

/*!50001 DROP VIEW IF EXISTS `uvw_material_bibliografico`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `uvw_material_bibliografico` AS select `bib`.`idBibliografia` AS `idBibliografia`,`bib`.`titulo` AS `titulo`,`bib`.`idTipoMaterialBibliografico` AS `idTipoMaterialBibliografico`,`bib`.`codigo` AS `codigo`,`bib`.`nroEdicion` AS `nroEdicion`,`bib`.`nroPagina` AS `nroPagina`,`bib`.`anio` AS `anio`,`bib`.`idTipoIdioma` AS `idTipoIdioma`,`bib`.`portada` AS `portada`,`bib`.`sinopsis` AS `sinopsis`,`bib`.`situacion` AS `situacion`,`bib`.`idTipoSituacion` AS `idTipoSituacion`,`bib`.`estado` AS `estado`,(select count(`e`.`idEjemplar`) from `ejemplar` `e` where (`e`.`idBibliografia` = `bib`.`idBibliografia`)) AS `cantEjemplares` from (`bibliografia` `bib` join `editorial` `edi` on((`bib`.`idEditorial` = `edi`.`idEditorial`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `uvw_usuario_persona`
--

/*!50001 DROP VIEW IF EXISTS `uvw_usuario_persona`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `uvw_usuario_persona` AS select `usu`.`idUsuario` AS `idUsuario`,`usu`.`nombreUsuario` AS `nombreUsuario`,`usu`.`clave` AS `clave`,`usu`.`idTipoPerfil` AS `idTipoPerfil`,(select `maestro`.`nombreCorto` from `maestro` where ((`maestro`.`codTabla` = 'tipoPerfil') and (`maestro`.`codRegistro` = `usu`.`idTipoPerfil`))) AS `NombrePerfil`,`usu`.`idPersona` AS `idPersona`,concat(`per`.`nombre`,' ',`per`.`apellidoPaterno`,' ',`per`.`apellidoMaterno`) AS `nombreCompleto`,`per`.`idTipoDocumento` AS `idTipoDocumento`,`per`.`telefono` AS `telefono`,`per`.`nroDocumento` AS `nroDocumento`,`per`.`correo` AS `correo`,`per`.`domicilio` AS `domicilio`,`per`.`idTipoGenero` AS `idTipoGenero`,`per`.`codigo` AS `codigo`,`per`.`idTipoPersona` AS `idTipoPersona`,`per`.`situacion` AS `situacion`,`usu`.`estado` AS `estado` from (`usuario` `usu` join `persona` `per` on((`usu`.`idPersona` = `per`.`idPersona`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-28  9:32:10
