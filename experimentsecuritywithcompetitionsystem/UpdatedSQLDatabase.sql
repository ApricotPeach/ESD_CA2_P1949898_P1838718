-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: competition_system_security_concept_db
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file` (
  `file_id` int NOT NULL AUTO_INCREMENT,
  `cloudinary_file_id` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `cloudinary_url` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `design_title` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `design_description` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `created_by_id` int DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES (100,'Design/eufexsx2ejhmekmawfkn','http://res.cloudinary.com/dit1949898/image/upload/v1608479025/Design/eufexsx2ejhmekmawfkn.png','rita design 1','rita design 1 description text 1 text 2 text 3 text 4 ....',101),(101,'Design/ycygszlxucpigzrg5acl','http://res.cloudinary.com/dit1949898/image/upload/v1608479028/Design/ycygszlxucpigzrg5acl.png','rita design 2','rita design 2 description text 1 text 2 text 3 text 4 ....',101),(102,'Design/i19kjlywxdbzklza44ri','http://res.cloudinary.com/dit1949898/image/upload/v1608479031/Design/i19kjlywxdbzklza44ri.png','rita design 3','rita design 3 description text 1 text 2 text 3 text 4 ....',101),(103,'Design/fhtcdncpg0ppuatcxs4o','http://res.cloudinary.com/dit1949898/image/upload/v1608479034/Design/fhtcdncpg0ppuatcxs4o.png','rita design 4','rita design 4 description text 1 text 2 text 3 text 4 ....',101),(104,'Design/jtmexpkuz31egrdfl7jd','http://res.cloudinary.com/dit1949898/image/upload/v1608479037/Design/jtmexpkuz31egrdfl7jd.png','rita design 5','rText 5',101),(105,'Design/zs1wmldc9vzy6hutuuvm','http://res.cloudinary.com/dit1949898/image/upload/v1608479039/Design/zs1wmldc9vzy6hutuuvm.png','rita design 6','rita design 6 description text 1 text 2 text 3 text 4 ....',101),(106,'Design/csqkdtjyky38ixei9dro','http://res.cloudinary.com/dit1949898/image/upload/v1608479042/Design/csqkdtjyky38ixei9dro.png','rita design 7','rita design 7 description text 1 text 2 text 3 text 4 ....',101),(107,'Design/vsomrejinssaxyyavyti','http://res.cloudinary.com/dit1949898/image/upload/v1608479044/Design/vsomrejinssaxyyavyti.png','rita design 8','rita design 8 description text 1 text 2 text 3 text 4 ....',101),(108,'Design/iopgq3lrp5nqvbzjtx6e','http://res.cloudinary.com/dit1949898/image/upload/v1608479047/Design/iopgq3lrp5nqvbzjtx6e.png','rita design 9','rita design 9 description text 1 text 2 text 3 text 4 ....',101),(109,'Design/hczmrsioeffb7ypzmukd','http://res.cloudinary.com/dit1949898/image/upload/v1608479049/Design/hczmrsioeffb7ypzmukd.png','rita design 10','rita design 10 description text 1 text 2 text 3 text 4 ....',101),(110,'Design/qkehmstin1atkaodmiyc','http://res.cloudinary.com/dit1949898/image/upload/v1608479052/Design/qkehmstin1atkaodmiyc.png','rita design 11','rita design 11 description text 1 text 2 text 3 text 4 ....',101),(111,'Design/abh9hpywhg3igatkhgph','http://res.cloudinary.com/dit1949898/image/upload/v1608479054/Design/abh9hpywhg3igatkhgph.png','rita design 12','rita design 12 description text 1 text 2 text 3 text 4 ....',101),(112,'Design/dvsyqrl9lzeilzxzxvz7','http://res.cloudinary.com/dit1949898/image/upload/v1608484813/Design/dvsyqrl9lzeilzxzxvz7.png','Design A','Design A',101),(113,'Design/kk9jmgv0gflc8t0vun5x','http://res.cloudinary.com/dit1949898/image/upload/v1609216925/Design/kk9jmgv0gflc8t0vun5x.png','test<script>alert(\"XSS\")</script>','test<script>alert(\"XSS\")</script>',101),(114,'Design/nsvtgkrchpcantiws10v','http://res.cloudinary.com/dit1949898/image/upload/v1609217759/Design/nsvtgkrchpcantiws10v.png','as','sdd',101),(115,'Design/ldvxryp9qcirbapdrokm','http://res.cloudinary.com/dit1949898/image/upload/v1609218023/Design/ldvxryp9qcirbapdrokm.png','as','sdd',104),(116,'Design/bpjrzhi9yyd2bcgw0fat','http://res.cloudinary.com/dit1949898/image/upload/v1609220173/Design/bpjrzhi9yyd2bcgw0fat.png','hello Flaw','hehehe',101),(117,'Design/idf3qcm6bsvxrgskm7s8','http://res.cloudinary.com/dit1949898/image/upload/v1609220590/Design/idf3qcm6bsvxrgskm7s8.png','105','105',105),(118,'Design/mwwqgqwyiqploqk7evlr','http://res.cloudinary.com/dit1949898/image/upload/v1609243725/Design/mwwqgqwyiqploqk7evlr.png','bob','bob design',100),(119,'Design/hulopmvmylf3ip2pqzso','http://res.cloudinary.com/dit1949898/image/upload/v1609243742/Design/hulopmvmylf3ip2pqzso.png','bob','bob design',100),(120,'Design/qcggc0wombtn8gvlpms2','http://res.cloudinary.com/dit1949898/image/upload/v1609425222/Design/qcggc0wombtn8gvlpms2.png','Testing for 105 ','106 send',106);
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `user_password` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `role_id` int NOT NULL,
  `invalidtoken` varchar(255) COLLATE latin1_general_ci DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (100,'bob','bob@designer.com','$2b$10$K.0HwpsoPDGaB/atFBmmXOGTw4ceeg33.WrxJx/FeC9.gCyYvIbs6',2,'1'),(101,'rita','rita@designer.com','$2b$10$K.0HwpsoPDGaB/atFBmmXOGTw4ceeg33.WrxJx/FeC9.gCyYvIbs6',2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTAxLCJpYXQiOjE2MDk1NjE5MTQsImV4cCI6MTYwOTY0ODMxNH0.FStmAHpkP18VUsnNA9EwuEG1lGBFJdiD-CynfBjFuaI'),(102,'robert','robert@admin.com','$2b$10$K.0HwpsoPDGaB/atFBmmXOGTw4ceeg33.WrxJx/FeC9.gCyYvIbs6',1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTAxLCJpYXQiOjE2MDk1NjI2NzksImV4cCI6MTYwOTY0OTA3OX0.Pr_5imE9v-t3vS3IoVy41RKrbIWyyoAW7xbzdQg5nlY'),(103,'braddy','braddy@designer.com','$2b$10$K.0HwpsoPDGaB/atFBmmXOGTw4ceeg33.WrxJx/FeC9.gCyYvIbs6',2,'1'),(104,'josh','josh@designer.com','$2b$10$K.0HwpsoPDGaB/atFBmmXOGTw4ceeg33.WrxJx/FeC9.gCyYvIbs6',2,'1'),(105,'john','john@designer.com','$2b$10$K.0HwpsoPDGaB/atFBmmXOGTw4ceeg33.WrxJx/FeC9.gCyYvIbs6',2,'1'),(106,'fred','fred@designer.com','$2b$10$K.0HwpsoPDGaB/atFBmmXOGTw4ceeg33.WrxJx/FeC9.gCyYvIbs6',2,'1'),(107,'ashley','ashley@designer.com','$2b$10$K.0HwpsoPDGaB/atFBmmXOGTw4ceeg33.WrxJx/FeC9.gCyYvIbs6',2,'1'),(108,'amy','amy@designer.com','$2b$10$K.0HwpsoPDGaB/atFBmmXOGTw4ceeg33.WrxJx/FeC9.gCyYvIbs6',2,'1'),(109,'anita','anita@designer.com','$2b$10$K.0HwpsoPDGaB/atFBmmXOGTw4ceeg33.WrxJx/FeC9.gCyYvIbs6',2,'1'),(110,'eddy','eddy@designer.com','$2b$10$K.0HwpsoPDGaB/atFBmmXOGTw4ceeg33.WrxJx/FeC9.gCyYvIbs6',2,'1'),(111,'larry','larry@designer.com','$2b$10$K.0HwpsoPDGaB/atFBmmXOGTw4ceeg33.WrxJx/FeC9.gCyYvIbs6',2,'1'),(112,'ahtan','ahtan@designer.com','$2b$10$K.0HwpsoPDGaB/atFBmmXOGTw4ceeg33.WrxJx/FeC9.gCyYvIbs6',2,'1'),(113,'joe','joe@admin.com','$2b$10$K.0HwpsoPDGaB/atFBmmXOGTw4ceeg33.WrxJx/FeC9.gCyYvIbs6',2,'1'),(114,'gabby','gabby@designer.com','$2b$10$K.0HwpsoPDGaB/atFBmmXOGTw4ceeg33.WrxJx/FeC9.gCyYvIbs6',2,'1'),(115,'test<script>alert(\"XSS\")</script>','test<script>alert(\"XSS\")</script>','$2b$10$Fn23Z99QsI5dRpPHUo3glu1QjECjSkep4wE8tHLHCWWPylMauctDC',2,'1'),(116,'123','123','$2b$10$6ar47DcmWcLDoc6UX2DKwesxmR0jBjxFXBoMZ6nXkXytF1JGxmbGe',2,'1'),(117,'ritaa<script>alert(\"XSS\")</script>','ritaa@designer.com<script>alert(\"XSS\")</script>','$2b$10$Z4XCmW3CDAmgjqOr/WW2W.gqXCFIRggDQKVZUc87rbRaZFad9dwsy',2,'1'),(118,'\'2qwdqwd\'','ritadesigner.com','$2b$10$M/i1hZ/Ga1avoaI8WFgHcO8GRkEKJNH7aOi/OvReX3QeUQFtwuIUy',2,'1'),(119,'ritaa<script>alert(\"XSS\")</script>','rita@designer.com<script>alert(\"XSS\")</script>','$2b$10$9mLhHz7NQXdgUq0JrZeGgetosnjvHv.RmoNNsbhMx.cp.rrLvhAQq',2,'1'),(120,'Jimmy Tan','jimmy@designer.com','$2b$10$brVyJvu43INuTPbAnSgbqesFXk2ddc9CQZ0YyEYO3Qv9UdP8T8qDK',2,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'competition_system_security_concept_db'
--

--
-- Dumping routines for database 'competition_system_security_concept_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-02 21:16:21
