DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `Customers` (
  `CustomerName` varchar(255) DEFAULT NULL,

INSERT INTO `Customers` VALUES ('Cardinal','Tom B. Erichsen','Skagen 21','Stavanger','4006','Norway'),('Wilman Kala','Matti Karttunen','Keskuskatu 45','Helsinki','21240','Finland');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;

UNLOCK TABLES;