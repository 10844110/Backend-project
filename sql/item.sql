-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: item
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `buycar`
--

DROP TABLE IF EXISTS `buycar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buycar` (
  `ordernum` int NOT NULL AUTO_INCREMENT,
  `idnum` int NOT NULL,
  `person` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `quan` varchar(45) NOT NULL,
  `buy` varchar(45) NOT NULL,
  `memmail` varchar(100) NOT NULL,
  PRIMARY KEY (`ordernum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buycar`
--

LOCK TABLES `buycar` WRITE;
/*!40000 ALTER TABLE `buycar` DISABLE KEYS */;
/*!40000 ALTER TABLE `buycar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `good`
--

DROP TABLE IF EXISTS `good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `good` (
  `idnum` int NOT NULL AUTO_INCREMENT,
  `person` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `quan` varchar(45) NOT NULL,
  `salenum` varchar(45) NOT NULL,
  `intro` varchar(45) NOT NULL,
  `story` varchar(100) NOT NULL,
  `pic` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `number` varchar(45) NOT NULL,
  `goodcol` varchar(45) NOT NULL,
  `skill1` varchar(45) NOT NULL,
  `power1` varchar(45) NOT NULL,
  `skill2` varchar(45) NOT NULL,
  `power2` varchar(45) NOT NULL,
  `skill3` varchar(45) NOT NULL,
  `power3` varchar(45) NOT NULL,
  `skill4` varchar(45) NOT NULL,
  `power4` varchar(45) NOT NULL,
  `skill5` varchar(45) NOT NULL,
  `power5` varchar(45) NOT NULL,
  `add` varchar(45) NOT NULL,
  `num` int DEFAULT NULL,
  `news` int NOT NULL,
  `new person` int NOT NULL,
  `ranked` int NOT NULL,
  `launch` varchar(45) NOT NULL,
  PRIMARY KEY (`idnum`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good`
--

LOCK TABLES `good` WRITE;
/*!40000 ALTER TABLE `good` DISABLE KEYS */;
INSERT INTO `good` VALUES (1,'最強盾手','49999','14','0','「放心吧！我會保護好你們。」','他是團隊中的最強盾手，也是bass手，他和團隊是5人的小冒險傭兵團， 邊旅行邊作為樂隊活動，作為團長，他備受團員的愛戴。','image/goods/1.png','America','person1','person7','體能',' 80%','智慧','  60%','金錢','  50%','威信','  80%','戰力','  70%','500',NULL,0,0,0,'v'),(2,'神祕殺手','39999','18','0','「你的項上人頭，我帶走了。」','他是蒙面的神祕殺手，身手高超，沒人見過他的真面目，視人命為草芥， 只要錢夠，誰都能殺，真實身分是一名早餐店的老闆，是個有兩副面孔的狠人。','image/goods/2.png','America','person2','person8','體能','  85%','智慧','  70%','金錢',' 70%','威信',' 30%','戰力','  70%','500',NULL,0,0,0,'v'),(3,'弓箭手','29999','18','0','「正中靶心？那不是超簡單的事嗎？」','她是百發百中的弓箭手，和青梅竹馬的兩位朋友組成了冒險團，做為團隊中唯一的女性， 她受到團員們的保護，和朋友們正一起快樂的冒險著。','image/goods/3.png','America','person3','person9','體能',' 60%','智慧',' 50%','金錢',' 40%','威信',' 40%','戰力',' 70%','500',NULL,0,0,0,'v'),(4,'中世紀國王','49999','19','0','「我想要的，就必須得到。」','他是中世紀的國王，旗下有99位騎士，極度好戰，最大的興趣是擴張領地， 吞併他國，有一妻一子，妻子是隔壁國家的公主，因為政治聯姻而結婚，兒子今年八歲。','image/goods/4.png','Europe','person1','person1','體能',' 70%','智慧','  70%','金錢','  90%','威信','  85%','戰力','  90%','500',NULL,0,0,0,'v'),(5,'戰士','39999','17','0','「我會用盡全力守護我的摯愛。」','他是羅馬帝國的戰士，忠心愛國，可以為了守護加國付出性命，妻子非常漂亮， 但是是一名普通農婦，兩人從小青梅竹馬，現有一名5歲的女兒。','image/goods/5.png','Europe','person2','person2','體能','  90%','智慧','  60%','金錢',' 40%','威信',' 50%','戰力','  90%','500',NULL,0,0,0,'v'),(6,'神偷大盜','29999','15','0','「力量就是一切。」','他是一名神偷大盜，只要是他想要的，就可以得到，因此本就是孤兒的他無拘無束， 沒有家世，沒有真心相交的朋友，非常愛喝酒。','image/goods/6.png','Europe','person3','person3','體能','  80%','智慧','  80%','金錢','  70%','威信','  20%','戰力','  70%','500',NULL,0,0,0,'v'),(7,'江湖劍客','39999','11','0','「只願歲月靜好，山河安穩。」','他是行走江湖的劍客，為人豪爽且富有正義感，目標是成為天下第一的劍客， 目前正為了達成目標而在江湖中歷練。','image/goods/7.png','China','person1','person4','體能','  70%','智慧','  50%','金錢','  20%','威信','  40%','戰力','  60%','500',NULL,0,0,0,'v'),(8,'宰相千金','39999','15','0','「為何女子就應當要聽男子的話？」','她是當朝宰相的嫡長女，飽讀詩書，非常有自己的想法，和將軍家的兒子有一只婚約， 但並不想嫁給他，目前正計畫如何逃婚。','image/goods/8.png','China','person2','person5','體能','  20%','智慧','  90%','金錢','  80%','威信','  60%','戰力','  10%','500',NULL,0,0,0,'v'),(9,'魔族少主','49999','11','0','「只要有酒，我就能活下去。」','他是魔族的少主，武功高強，嗜酒如命，但和多數魔族不同，並不以屠戮生命為樂， 最近看上了江湖第一大派的千金，正想著如何把對方拐回魔族。','image/goods/9.png','China','person3','person6','體能','  95%','智慧','  60%','金錢','  70%','威信','  85%','戰力','  90%','500',NULL,0,0,0,'v');
/*!40000 ALTER TABLE `good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestbook`
--

DROP TABLE IF EXISTS `guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guestbook` (
  `GBid` tinyint NOT NULL AUTO_INCREMENT,
  `GBname` varchar(45) NOT NULL,
  `GBstar` varchar(45) NOT NULL,
  `GBtext` varchar(45) NOT NULL,
  `GBdatetime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`GBid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestbook`
--

LOCK TABLES `guestbook` WRITE;
/*!40000 ALTER TABLE `guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `memnum` int NOT NULL AUTO_INCREMENT,
  `id` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  PRIMARY KEY (`memnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `Order` int NOT NULL AUTO_INCREMENT,
  `ordernum` int DEFAULT NULL,
  `idnum` int DEFAULT NULL,
  `person` varchar(45) DEFAULT NULL,
  `memmail` varchar(80) NOT NULL,
  `price` int DEFAULT NULL,
  `quan` varchar(45) NOT NULL,
  `buy` varchar(45) NOT NULL,
  `sendname` varchar(45) NOT NULL,
  `address` varchar(80) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `totalprice` varchar(45) DEFAULT NULL,
  `orderdate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `idnum` int NOT NULL,
  `person` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `quan` varchar(45) NOT NULL,
  `salenum` varchar(45) NOT NULL,
  `num` int DEFAULT NULL,
  PRIMARY KEY (`idnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (10,'體能','500','40','0',NULL),(11,'智慧','500','80','0',NULL),(12,'金錢','500','70','0',NULL),(13,'威信','500','64','0',NULL),(14,'戰力','500','93','0',NULL);
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userid` varchar(45) NOT NULL,
  `userpwd` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('user44110','asd123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-16 23:25:20
