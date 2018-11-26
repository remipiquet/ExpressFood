-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: expressfood
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adresse` (
  `adresse_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `voie` varchar(100) NOT NULL,
  `infos_sup` varchar(200) DEFAULT NULL,
  `code_postal` int(11) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  PRIMARY KEY (`adresse_id`),
  KEY `departement_idx` (`code_postal`),
  KEY `client_adresse_fk` (`id_client`),
  CONSTRAINT `client_adresse_fk` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
INSERT INTO `adresse` VALUES (1,1,'Dalton','Joe','26 Rue Violet','interphone 321',75015,'PARIS','48.8483149, 2.2933537000000115'),(2,3,'Saint-Pierre','Serge','52 Rue Condorcet',NULL,75009,'PARIS','48.88030209999999, 2.34318559999997'),(3,2,'Huard','Edith','19 Rue du Terrage','porte du fond à gauche',75010,'PARIS','48.8770665, 2.3628693000000567'),(4,4,'Meunier','Laurene','13 rue de la nativité','batiment A, 3eme étage à gauche',75012,'PARIS','48.8354524, 2.3862397999999985'),(5,6,'Couet','Frederique','22 rue de Picpus',NULL,75012,'PARIS','48.84585509999999, 2.3946591999999782'),(6,5,'Austin','Charlotte','8 rue du Général Renault','code 98B3',75011,'PARIS','48.8612032, 2.3785497000000078'),(7,7,'Moisse','Stephane','4 rue de Rivoli',NULL,75001,'Paris','48.8552932, 2.3613940000000184'),(8,8,'DUPUIS','Carole','35 Rue Vaneau',NULL,75007,'paris','48.8523161, 2.3191550000000234'),(9,9,'Gour','Magalie','4 Impasse de l\'Église','porte au fond de la cour',75015,'Paris','48.84334678492908, 2.2914316876220937'),(10,10,'Spons','Mathieu','11 boulevard de la Bastille','à côté de la capitainerie',75012,'PARIS','48.8477215, 2.36715920000006');
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `raison_sociale` varchar(100) DEFAULT NULL,
  `mail` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Dalton','Joe',NULL,'joe.dalton@daisytown.net','0297332211','joedalton','daisytown'),(2,'Huard','Edith',NULL,'huard.ed@gmail.com','06 55 74 89 65','Figirs82','eo8IsaeC5'),(3,'Saint-Pierre','Serge',NULL,'stpierresergio@orange.fr','788265445','sergiodu15','coucoulescopains'),(4,'Meunier','Laurene',NULL,'laurenemenier329@hotmail.fr','688573244','fifibrindacier','0nSen8aLeK000'),(5,'Couet','Frederique','Revue Politique et Territoire','fcouet@politiqueetterritoires.biz','632672155','fcouet','Simon15'),(6,'Austin','Charlotte',NULL,'chaustin@gmail.com','652331094','chachaA','Bee5xehahx'),(7,'Moisse','Stephane',NULL,'msg94150@caramail.fr','687549898','msg94150','motdepasse123'),(8,'DUPUIS','Carole',NULL,'caroleduipuis5','745458754','carolecarole','Owen1997'),(9,'Gour','Magalie',NULL,'magour21@gmail.com','621141417','Magour21','tropcool'),(10,'Spons','Mathieu',NULL,'grooveragga@wanadoo.fr','687452130','matspons','zizidane');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `nb_plats_1` smallint(6) DEFAULT NULL,
  `nb_plats_2` smallint(6) DEFAULT NULL,
  `nb_desserts_1` smallint(6) DEFAULT NULL,
  `nb_desserts_2` smallint(6) DEFAULT NULL,
  `prix` decimal(5,2) unsigned NOT NULL,
  `id_client` int(11) NOT NULL,
  PRIMARY KEY (`id_commande`),
  KEY `plats_du_jour_commande_fk` (`date`),
  KEY `client_commande_fk` (`id_client`),
  CONSTRAINT `client_commande_fk` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  CONSTRAINT `desserts_du_jour_commande_fk` FOREIGN KEY (`date`) REFERENCES `desserts_jour` (`date`),
  CONSTRAINT `plats_du_jour_commande_fk` FOREIGN KEY (`date`) REFERENCES `plats_jour` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
INSERT INTO `commande` VALUES (1,'2018-05-01',1,1,2,0,30.00,1),(2,'2018-05-02',3,2,4,1,75.00,2),(3,'2018-05-03',1,0,0,1,15.00,3),(4,'2018-05-04',7,9,6,10,240.00,5),(5,'2018-05-07',2,1,1,2,45.00,6),(6,'2018-05-07',1,3,2,2,60.00,8),(7,'2018-05-07',0,1,1,0,15.00,7),(8,'2018-05-08',3,0,2,1,45.00,9),(9,'2018-05-08',1,2,0,3,45.00,10),(10,'2018-05-09',2,0,1,1,30.00,1),(11,'2018-05-09',1,0,1,0,15.00,3);
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desserts_jour`
--

DROP TABLE IF EXISTS `desserts_jour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `desserts_jour` (
  `date` date NOT NULL,
  `dessert_1` varchar(100) NOT NULL,
  `dessert_2` varchar(100) NOT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desserts_jour`
--

LOCK TABLES `desserts_jour` WRITE;
/*!40000 ALTER TABLE `desserts_jour` DISABLE KEYS */;
INSERT INTO `desserts_jour` VALUES ('2018-05-01','Cheese cake','Crotte d\'âne'),('2018-05-02','Mousse au chocolat','Muffin pistache'),('2018-05-03','Verrine tapioca','Clafoutis aux raisins'),('2018-05-04','Gallette aux pommes','Briche de Pont-Aven'),('2018-05-05','Tarte au Rocquefort','Kouign-Amann'),('2018-05-06','Tiramisu exotique','Brioche perdue à la confiture d\'oignons'),('2018-05-07','Profiteroles chocolat','Muffin cerise'),('2018-05-08','Carrot Cake','Riz au lait'),('2018-05-09','Milk Shake banane','Tarte aux fraises'),('2018-05-10','Tarte choco-poire','Millefeuille au chocolat');
/*!40000 ALTER TABLE `desserts_jour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livraison`
--

DROP TABLE IF EXISTS `livraison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `livraison` (
  `id_commande` int(11) NOT NULL,
  `livraison_multiple` tinyint(4) DEFAULT NULL,
  `statut_livraison` varchar(45) DEFAULT NULL,
  `id_livreur` int(11) NOT NULL,
  PRIMARY KEY (`id_commande`,`id_livreur`),
  KEY `id_livreur1_idx` (`id_livreur`),
  CONSTRAINT `id_commande` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`),
  CONSTRAINT `id_livreur1` FOREIGN KEY (`id_livreur`) REFERENCES `livreur` (`id_livreur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livraison`
--

LOCK TABLES `livraison` WRITE;
/*!40000 ALTER TABLE `livraison` DISABLE KEYS */;
INSERT INTO `livraison` VALUES (1,0,'livree',1),(2,0,'livree',3),(3,0,'livree',2),(4,1,'livree',5),(5,0,'livree',4),(6,0,'livree',2),(7,0,'livree',3),(8,0,'livree',5),(9,0,'livree',1),(10,0,'en cours',2),(11,0,'en cours',4);
/*!40000 ALTER TABLE `livraison` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livreur`
--

DROP TABLE IF EXISTS `livreur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `livreur` (
  `id_livreur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `satut` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_livreur`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livreur`
--

LOCK TABLES `livreur` WRITE;
/*!40000 ALTER TABLE `livreur` DISABLE KEYS */;
INSERT INTO `livreur` VALUES (1,'Duval','Stéphanie',0),(2,'Acab','Roger',1),(3,'Norris','Bob',0),(4,'Zad','Camille',2),(5,'Grondin','Julie',2);
/*!40000 ALTER TABLE `livreur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plats_jour`
--

DROP TABLE IF EXISTS `plats_jour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `plats_jour` (
  `date` date NOT NULL,
  `plat_1` varchar(100) NOT NULL,
  `plat_2` varchar(100) NOT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plats_jour`
--

LOCK TABLES `plats_jour` WRITE;
/*!40000 ALTER TABLE `plats_jour` DISABLE KEYS */;
INSERT INTO `plats_jour` VALUES ('2018-05-01','Joues de porc au cidre de Broceliande','Travers d agneau au bec de lièvre'),('2018-05-02','Tarantule farcie sur son lit de cresson','Oeil de mouton avec son jus'),('2018-05-03','Oeuf de cent ans au vinaigre balsalmique','Cote de baleine frite'),('2018-05-04','Pattes de poulet marinées','Fromage de Sardaigne aux larves de mouches'),('2018-05-05','Brochettes d\'hippocampes et étoiles de mer','Foetus de canard en sauce'),('2018-05-06','Lézard séché, dés de pieds de sanglier','Ragout de marmotte à la bergamote'),('2018-05-07','Soupe de chien au wasabi','Cheese cake au fromage d\'ânnesse'),('2018-05-08','Steack de crocodile au gingembre','Brochettes de cervelle de singe'),('2018-05-09','Soupe aux oeufs de fourmi','Truite séchée sauce graisse de rennes'),('2018-05-10','Vers de soie farcis à la vapeur','Wrap de punaises et sauterelles');
/*!40000 ALTER TABLE `plats_jour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_livreur`
--

DROP TABLE IF EXISTS `position_livreur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `position_livreur` (
  `id_livreur` int(11) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `secteur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_livreur`),
  CONSTRAINT `livreur_position_livreur_fk` FOREIGN KEY (`id_livreur`) REFERENCES `livreur` (`id_livreur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_livreur`
--

LOCK TABLES `position_livreur` WRITE;
/*!40000 ALTER TABLE `position_livreur` DISABLE KEYS */;
INSERT INTO `position_livreur` VALUES (1,'48.862725','2.287592000000018',75016),(2,'48.8582527686421','2.3187914552612483',75007),(3,'48.8238206','2.3343955999999935',75014),(4,'48.8567355','2.3934642000000395',75011),(5,'48.8792538','2.384572800000001',75019);
/*!40000 ALTER TABLE `position_livreur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statut_commande`
--

DROP TABLE IF EXISTS `statut_commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `statut_commande` (
  `id_commande` int(11) NOT NULL,
  `livree` tinyint(1) NOT NULL,
  `reglee` tinyint(1) NOT NULL,
  `info_paiement` varchar(100) NOT NULL,
  PRIMARY KEY (`id_commande`),
  CONSTRAINT `commande_statut_commande_fk` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statut_commande`
--

LOCK TABLES `statut_commande` WRITE;
/*!40000 ALTER TABLE `statut_commande` DISABLE KEYS */;
INSERT INTO `statut_commande` VALUES (1,1,1,'CB en ligne'),(2,1,1,'Tickets restaurant + espèces sur place'),(3,1,1,'CB en ligne'),(4,1,1,'CB en ligne'),(5,1,1,'Espèces sur place'),(6,1,1,'CB en Ligne'),(7,1,1,'Tickets restaurant'),(8,1,1,'Espèces sur place'),(9,1,1,'Espèces sur place'),(10,0,1,'CB en ligne'),(11,0,0,'Tickets restaurant + espèces sur place');
/*!40000 ALTER TABLE `statut_commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'expressfood'
--
/*!50003 DROP PROCEDURE IF EXISTS `commandesalivrer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `commandesalivrer`()
BEGIN
			SELECT * 
            FROM statut_commande
			WHERE livree = '0'	
		;   	
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dispo_secteur` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dispo_secteur`()
BEGIN
			SELECT * FROM expressfood.livreur
			WHERE 
			id_livreur IN (
			SELECT id_livreur FROM position_livreur
			WHERE secteur > '75014'
			)
;  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dispo_secteur2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dispo_secteur2`(IN p_secteur INT)
BEGIN
			SELECT nom, prenom FROM expressfood.livreur
			WHERE
			id_livreur IN (
			SELECT id_livreur FROM position_livreur
			WHERE secteur >= p_secteur -1
			AND secteur <= p_secteur +2
			)
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `livraisons_en_cours` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `livraisons_en_cours`()
BEGIN
SELECT * FROM expressfood.commande
	WHERE 
    id_commande IN (
    SELECT id_commande FROM expressfood.statut_commande
    WHERE livree = '0'
	)
;  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `livraisons_livreur2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `livraisons_livreur2`()
BEGIN
SELECT * FROM expressfood.commande
WHERE
	id_commande IN (
		SELECT id_livreur FROM livreur
        WHERE id_livreur = '2'
	)
;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-01  9:36:34
