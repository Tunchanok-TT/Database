CREATE DATABASE  IF NOT EXISTS `csgadgetdb` /*!40100 DEFAULT CHARACTER SET tis620 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `csgadgetdb`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: csgadgetdb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brand_id` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=tis620;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Sony'),(2,'Grado'),(3,'Marshall'),(4,'Bose'),(5,'JBL'),(6,'Sennheiser'),(7,'Moondrop'),(8,'Yuin'),(9,'Audio Technica'),(10,'Steelseries'),(11,'Beyerdynamic '),(12,'HyperX');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) NOT NULL,
  `category_icon` varchar(45) NOT NULL DEFAULT 'bi bi-headphones',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name_UNIQUE` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=tis620;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'หูฟัง Truewireless','bi bi-music-note-beamed'),(2,'หูฟัง Eadbud','bi bi-earbuds'),(3,'หูฟัง Full Size','bi bi-headphones'),(4,'หูฟัง Gaming','bi bi-headset'),(5,'ลำโพงพกพา','bi bi-boombox');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_title` varchar(200) DEFAULT NULL,
  `product_color_1_name` varchar(45) NOT NULL,
  `product_color_1_in_stock` int NOT NULL,
  `product_color_2_name` varchar(45) DEFAULT NULL,
  `product_color_2_in_stock` int DEFAULT '0',
  `product_color_3_name` varchar(45) DEFAULT NULL,
  `product_color_3_in_stock` int DEFAULT NULL,
  `product_price` int NOT NULL,
  `product_description` varchar(1000) NOT NULL,
  `product_category` int NOT NULL,
  `product_brand` int NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=tis620;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'หูฟังไร้สาย Sony WF-1000XM5','ดำ',100,'เงิน',90,'',0,9990,'หูฟังไร้สายตัดเสียงรบกวนจากทาง Sony ในรุ่น WF-1000XM5 เป็นหูฟังรุ่น Mark 5 โดยตัวหูฟังจะถูกออกแบบมาให้มีขนาดเล็กสวมใส่สบาย และมาพร้อม กับฟังก์ชันการใช้งานต่างๆ ที่โดดเด่น และที่ขาดไม่ได้คือฟังก์ชันการตัดเสียงรบกวนที่ดีที่สุดของทางแบรนด์ Sony\n\nในส่วนของการออกแบบนั้น Sony WF-1000XM5 เป็นหูฟัง In-ear ชนิด True Wireless ตัวบอดี้ของหูฟังถูกออกแบบตามหลักสรีรศาสตร์โดยใช้ข้อมูลจากรูปทรงของหูฟังที่รวบรวมมาตั้งแต่ปี 1982 ให้สามารถสวมใส่ได้อย่างกระชับและสบายหู โดยตัวหูฟังจะที่มีขนาดที่เล็กลงประมาณ 25% และมีน้ำหนักเบาลงประมาณ 20% เมื่อเทียบกับรุ่นก่อนหน้าโดยตัวหูฟังจะมาพร้อมกับสีสันให้เลือกด้วยกันสองสีได้แก่สีดำและสีเงิน',1,1),(2,'หูฟังไร้สาย Sennheiser Momentum True Wireless 3','Black',10,'Graphite',9,'White',10,7800,'น้ำเสียงของ Sennheiser นั้นเป็นที่รู้กันว่าให้โทนเสียงที่ฟังได้ง่ายฟังสบายโดยที่ยังคงให้รายละเอียดเสียงที่ดีเยี่ยมมาแต่ไหนแต่ไรทำให้แฟน ๆ ของทางแบรนด์หลายท่านไม่สามารถมูฟออนจากเสียงของ Sennheiser ได้เลยก็มีครับ \n\nเสียงต่ำ : โดยในย่านเสียงต่ำนั้นเสียงเบสจะมีมวลที่หนาติดนุ่มนิด ๆ แรงปะทะนั้นเรียกได้ว่ามาในระดับปานกลางโดดเด่นในย่าน Mid-Bass มาก ๆ ซึ่งสามารถเข้ากันได้ดีกับแนวเพลงหลาย ๆ แนว โดยเสียงเบสนั้นถูกวางตำแหน่งไว้ค่อนข้างลึกและมีขอบเขตที่ชัดเจนไม่ล้นขึ้นมาชิดกับเสียงนักร้องทำให้เสียงโดยรวมนั้นไม่บวมและถือว่าเป็นเบสที่มีคุณภาพทีเดียวครับ แต่ท่านใดที่ชอบฟังแนว EDM ที่ต้องการความหนักหน่วงมากกว่าความสมูทอาจจะต้องไปเพิ่มเบสในแอปลิเคชันอีกสักหน่อยครับ แต่ถ้าเป็นเพลงสไตล์ Pop, Jazz, R&B ก็ถือว่าเบสนั้นมีมาให้แบบเพียงพอไม่ขาดไม่เกินครับ ',1,6),(3,'หูฟังไร้สาย Sony WF-1000XM4','ดำ',9,'เงิน',8,'',0,6990,'เป็นหูฟัง in ear แบบ true wireless ที่เป็นรุ่นที่ 4 แล้วครับ โดยในรุ่นนี้จะออกแบบใหม่ทั้งในส่วนของตัวหูฟังและเคสสำหรับพกพา พร้อมฟังก์ชั่นใหม่ๆที่น่าสนใจหลายอย่างด้วยกัน\n\nในส่วนของการออกแบบนั้น Sony WF-1000XM4 นั้นเป็นหูฟัง in ear ชนิด true wireless ที่จะแยกออกจากกันอย่างอิสระ ไม่มีสายเชื่อมต่อใดๆครับ ตัวบอดี้ใช้วัสดุทำจากพลาสติกลักษณะด้าน ทำความสะอาดง่าย ออกแบบตามหลักสรีรศาสตร์ที่จะสวมใส่ได้อย่างพอดี ไม่รู้สึกเจ็บ และกระชับมากๆครับ ที่ตัวหูฟังนั้นจะไม่มีปุ่มกดใดๆ โดยจะควบคุมผ่านระบบสัมผัสที่หูฟังทั้งสองข้าง มาพร้อมกับเคสสำหรับพกพาและชาร์จแบตเตอรี่ในตัว ซึ่งตัวเคสจะรองรับการชาร์จแบตเตอรี่แบบไร้สาย',1,1),(4,'หูฟังไร้สาย Marshall Minor III','ดำ',15,'',0,'',0,4310,'Meet Minor III and experience Marshall signature sound without the clutter. Enjoy 25 hours of wireless playtime and the freedom of listening without wires with none of the compromise on sound. These wireless earbuds do all the heavy lifting for you, so all you have to do is grab your music and go.',1,3),(5,'หูฟังไร้สาย Bose QuietComfort Earbuds II','Triple Black',9,'Midnight Blue',9,'Soapstone',3,10990,'เป็นหูฟัง earbuds ชนิด true wireless ที่มีจุดเด่นอยู่ที่การตัดเสียงรบกวนที่ยอดเยี่ยม\n\nในส่วนของการออกแบบนั้น Bose QuietComfort Earbuds II จะมีดีไซน์ที่คล้ายกับรุ่นแรก โดยที่ด้านหน้าจะเรียวเล็กกว่า พร้อมกับพื้นผิวที่มีความขรุขระ ช่วยให้แตะสั่งงานได้ง่ายยิ่งขึ้น โดยตัวหูฟังจะเป็นลักษณะ earbuds และใช้ stability bands ช่วยยึดไม่ให้ตัวหูฟังหลุดร่วง โดยภายในกล่องจะมีตัวจุกและ stability bands ให้เลือกเปลี่ยนเพื่อความพอดีสูงสุด มาพร้อมกับเคสสำหรับจัดเก็บและชาร์จแบตเตอรี่ที่จะเป็นสีเดียวกันกับตัวหูฟังอีกด้วย',1,4),(6,'หูฟัง Moondrop Shiro-Yuki','White',50,'',0,'',0,490,'เป็นหูฟัง Earbud รุ่นล่าสุด และ เป็นรุ่นเริ่มต้นของ Moondrop ในเวลานี้ โดยใช้ Dynamic Driver เป็นตัวขับเสียง บอดี้ใสเคลียเห็นแผงวงจรภายใน สายของหูฟังเป็นทองแดงล้วนความยาว 1.2 M. หุ้มด้วยพลาสติกใส เพิ่มความแข็งแรงให้กับสายหูฟังได้ดีมากๆ ',2,7),(7,'หูฟัง Yuin Pk2','ดำ',3,'',0,'',0,1790,'หูฟังสุดยอดเอียร์บัดจากแบรนด์ Yuin ที่เป็นดาวค้างฟ้าไม่มีวันล่วงหล่นเพราะผ่านไปนานแค่ไหนก็ยังมีแต่คนถามถึงอยู่ตลอด จนขายดิบขายดีเป็นเทน้ำเทท่ากันไปแล้วไม่รู้กี่รอบ วันนี้มาต่อกันยาวๆไปเลยละกันครับกับรุ่น PK2 ที่ถือว่าได้รับความนิยมมากที่สุดในซีรี่ย์พีเคนี้แล้ว',2,8),(8,'หูฟัง Moondrop VX Classic','เงิน',7,'',0,'',0,2490,'หูฟังเอียร์บัด ถือเป็นหูฟังที่ให้การสวมสบายเมื่อใส่เป็นเวลานาน รู้สึกสบายไม่อึดอัดหรือเจ็บช่องหูครับ ตัวบอดีของ VX Classic นั้นทำจากทองเหลือง ขึ้นรูปเเน่นหนาเเข็งเเรง ชุบโครเมียม เนื้อผิวเนียนเรียบ สวยงามน้ำหนักเบา ทำให้สวมใส่สบายเเละได้นานไม่ล้าหู\n\nส่วนตัวสายเป็นทองเเดง OFC ลักษณะของตัวสายทรงกลมหนามีความยืดหยุ่นที่ดีครับ หัวเเจ็คเรียงเล็กใช้งานคล่องตัวเเถมยังเข้าหัวไว้เเน่นหนาเเข็งเเรงอีกด้วยครับ ด้านอุปกรณ์ที่เสริมมาไว้ให้ใช้งานก็มีทั้งซองผ้าเเละ ฟองน้ำเเบบครบถ้วน',2,7),(9,'หูฟัง Yuin Pk3','ดำ',8,'',0,'',0,1190,'ซึ่งรุ่นนี้เป็นรุ่นฮิตสามัญประจำบ้าน ด้วยบอดี้ที่มีขนาดเล็ก น้ำหนักเบา มีขนาดไม่ใหญ่มากทำให้สวมใส่ง่ายมากๆ\n\nสำหรับ Yuin PK3 จะมาในแพคเกจที่เรียกได้ว่าเบสิคมากๆครับ เพราะต้องการประหยัดต้นทุนในส่วนที่ไม่ค่อยจำเป็นแล้วมาเน้นในเรื่องคุณภาพเสียงนั่นเอง ตัวหูฟังนั้นจะดูคล้ายกับหูฟังราคาถูกทั่วๆไป จะมีเพียงสิ่งเดียวที่ทำให้รู้ว่าเป็นหูฟังจากทาง Yuin ก็คือลายสกรีนยี่ห้อ Yuin พร้อมทั้งชื่อรุ่นที่บริเวณก้านนั่นเอง',2,8),(10,'หูฟังไร้สาย Sony WH-1000XM5','ดำ',100,'เงิน',50,'ฟ้า',30,12002,'เทคโนโลยี Noise Cancelling ที่ดีที่สุดในโลกจาก SONY ที่ควบคุมโดยชิป SONY QN1 อันชาญฉลาด ประมวลผลและตัดเสียงรบกวนได้อย่างมีประสิทธิภาพ เงียบอย่างเป็นธรรมชาติ ไม่รู้สึกอึดอัด ให้คุณโฟกัสกับเสียงเพลงของคุณได้เสมือนอยู่ในโลกส่วนตัว เปิดประสบการณ์การฟังแบบ Noise Cancelling ไปอีกระดับ',3,1),(11,'หูฟังไร้สาย Bose QuietComfort 45','Black',8,'White Smoke',15,'',0,11900,'หูฟังไร้สายจากทาง Bose ในรุ่น QuietComfort 45 นั้นเป็นหูฟังไร้สายที่มาพร้อมกับระบบตัดเสียงรบกวน Active noise cancelling พร้อมดีไซน์แบบคลาสสิคและการควบคุมการใช้งานแบบกดปุ่ม\n\nในส่วนของการออกแบบนั้น Bose QuietComfort 45 จะเป็นหูฟัง full size ชนิดไร้สาย ตัวหูฟังจะมี ear cup ขนาดใหญ่ เมื่อสวมใส่จะครอบไปทั้งใบหู โดยฟองน้ำจะเป็น memory foam ที่มีความนุ่มนวล หุ้มด้วยหนังเทียมที่ช่วยกันเสียงรบกวนจากภายนอกได้ดี ส่วนที่ด้านซ้ายจะมีสวิตซ์เปิด-ปิด ส่วนปุ่มควบคุมต่างๆจะอยู่ที่ด้านขวา สามารถกดได้อย่างสะดวก โดยภายในกล่องจะมีเคสสำหรับพกพา และสาย USB สำหรับชาร์จแบตเตอรี่มาให้ด้วย',3,4),(12,'หูฟังไร้สาย Audio Technica ATH-M50xBT2','ดำ',5,'ส้ม',9,'Deep Sea',3,7960,'หูฟังจากทาง Audio Technica ในรุ่น ATH-M50xBT2 เป็นหูฟังแบบ full size ชนิดไร้สาย ที่อัปเกรดฟังก์ชันภายในให้ดีขึ้นกว่าเดิมจากเวอร์ชันก่อนหน้า โดยยังคงไว้ด้วยดีไซน์การออกแบบที่เหมือนเดิม และมาพร้อมกับแบตเตอรี่ที่สามารถใช้งานได้นานสูงสุด 50 ชั่วโมงเลยทีเดียว',3,9),(13,'หูฟัง Grado RS2x','Brown',8,'',0,'',0,22500,'Maple, Meet Hemp\n\nA family favorite, the RS2x has been completely redesigned to bring out the full potential of its maple and hemp wood. The housing s sleeve and ring are made from maple, while a hemp core keeps everything together. We build with wood for its warm and embracing tonal abilities, and the RS2x is an exceptional evolution to the RS2 line.',3,2),(14,'หูฟังเกมมิ่ง Beyerdynamic MMX300','ดำ',10,'',0,'',0,12490,'สำหรับ MMX300 เป็นหูฟังขนาด full size ครอบทั้งใบหู ตัวฟองน้ำหุ้มด้วยผ้าซึ่งมีความนุ่มนวล แถมยังสามารถระบายอากาศได้ดี เหมาะสำหรับใช้งานเป็นเวลานานเพราะว่าไม่กดทับใบหูแม้แต่น้อย มาพร้อมกับไมโครโฟนประสิทธิภาพสูงที่สามารถตัดเสียงรบกวนจากภายนอกได้อย่างดีเยี่ยม ช่วยให้เราสามารถสื่อสารกับเพื่อร่วมทีมได้อย่างคมชัด สามารถหมุนเก็บได้เมื่อไม่ใช้งาน ภายในกล่องจะมีสายมาให้ถึง 2 เส้นให้เลือกใช้งานได้ตามความเหมาะสม และยังมีเคสกันกระแทกสำหรับพกพามาให้อีกด้วย',4,11),(15,'หูฟังเกมมิ่ง HyperX Cloud II Wireless','ดำ-แดง',9,'',0,'',0,4890,'หูฟังเกมมิ่งจากทาง HyperX ในรุ่น Cloud II Wireless เป็นหูฟังเกมมิ่งแบบไร้สายที่เชื่อมต่อผ่าน USB Dongle Wireless 2.4GHz รองรับการใช้งานร่วมกับอุปกรณ์ที่หลากหลายและมาพร้อมแบตเตอรี่ที่สามารถใช้งานได้ทั้งวัน',4,12),(16,'หูฟังเกมมิ่ง JBL Quantum 810','ดำ',10,'',0,'',0,7493,'หูฟังจากทาง JBL ในรุ่น Quantum 810 เป็นหูฟังเกมมิ่งที่มีจุดเด่นอยู่ที่ระบบตัดเสียงรบกวน Active Noise Cancelling ที่จะตัดเสียงรบกวนที่ไม่จำเป็นออกไปทำให้คุณโฟกัสกับการเล่นเกมได้มากยิ่งขึ้น และยังรองรับการใช้งานไร้สายผ่าน USB Wireless Dongle 2.4GHz และ Bluetooth 5.2 ด้วย',4,5),(17,'หูฟังเกมมิ่ง Steelseries Arctis Nova Pro Wireless','ดำ',3,'',0,'',0,13500,'หูฟังจากทาง Steelseries ในรุ่น Arctis Nova Pro Wireless เป็นหูฟังเกมมิ่งชนิดไร้สายตัวท็อปของทางแบรนด์ที่มาพร้อมกับฟังก์ชันการใช้งานที่หลากหลายทั้งฟังก์ชันตัดเสียงรบกวน ANC, Transparency Mode หรือ 360 Spatial Audio และยังมาพร้อมกับแบตเตอรี่ที่สามารถใช้งานได้อย่างยาวนานสูงสุดถึง 36 ชั่วโมงอีกด้วย',4,10),(18,'ลำโพง Marshall Middleton','ดำ',10,'ครีม',9,'',0,12990,'ลำโพงจากทาง Marshall ในรุ่น Middleton เป็นลำโพงพกพารุ่นใหม่ล่าสุดจากทางแบรนด์ โดยในรุ่นนี้จะมีดีไซน์การออกแบบที่คล้ายๆกับรุ่นEmberton II แต่จะมีขนาดที่ใหญ่กว่า โดยจะมาพร้อมกับฟังก์ชัน Stack Mode และแบตเตอรี่ที่สามารถใช้งานได้นานสูงสุด 20 ชั่วโมง',5,3),(19,'ลำโพง Marshall Willen','Black and Brass',10,'Cream',9,'',0,3990,'ลำโพงจากทาง Marshall ในรุ่น Willen เป็นลำโพงพกพารุ่นน้องเล็กสุดของทางแบรนด์ครับ โดยในรุ่นนี้จะมาพร้อมกับสายรัดที่ด้านหลังตัวเครื่อง สำหรับรัดเข้ากับกระเป๋าหรือสิ่งของอื่นๆก็ได้ พร้อมแบตเตอรี่ที่ใช้งานได้ยาวนานสูงสุด 15 ชั่วโมง',5,3),(20,'ลำโพง JBL Flip 5','Black',10,'Blue',9,'Gray',8,4390,'สำหรับลำโพง JBL Flip 5 นั้นภายนอกจะมีความใกล้เคียงกับรุ่นก่อนหน้าครับ จุดที่แตกต่างก็คือในรุ่นนี้จะไม่มีฝาปิดช่อง USB แล้ว โดยจะเปลี่ยนไปใช้ USB-C ที่เสียบได้สองด้าน ช่วยเพิ่มความสะดวกครับ ส่วนช่อง AUX 3.5mm ที่เป็น in put นั้นถูกตัดออกไปเลย จึงทำให้ในรุ่นนี้จะต้องใช้งานผ่านการเชื่อมต่อ Bluetooth เท่านั้นครับ ตัวลำโพงเลือกใช้วัสดุเป็นพลาสติกที่ผ่านการ rubberize ช่วยให้จับได้อย่างถนัดมือ ส่วนตะแกรงลำโพงจะหุ้มด้วยผ้าที่ทำหน้าที่ไม่ให้น้ำซึมผ่านได้ครับ ปุ่มควบคุมต่างๆทั้ง เล่น-หยุด, ปรับระดับเสียง และปุ่ม Link ลำโพงหลายตัวเข้าด้วยกันครับ ภายในกล่องจะมาพร้อมกับสาย USB-C สำหรับชาร์จแบตเตอรี่',5,5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(150) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_role` varchar(100) NOT NULL,
  `user_address` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user1@gmail.com','$2a$10$oJGWANNtL5PCJXG6S.AV7.nEn9bRPQpCR6oaNX18zTa2ji33Ly8g6','customer','มหาวิทยาลัยราชภัฏสงขลา 160 หมู่ 4 ถนนกาญจนวนิช ตำบลเขารูปช้าง อำเภอเมือง จังหวัดสงขลา รหัสไปรษณีย์ 90000'),(2,'user2@gmail.com','$2a$10$oJGWANNtL5PCJXG6S.AV7.nEn9bRPQpCR6oaNX18zTa2ji33Ly8g6','customer','มหาวิทยาลัยราชภัฏสงขลา 160 หมู่ 4 ถนนกาญจนวนิช ตำบลเขารูปช้าง อำเภอเมือง จังหวัดสงขลา รหัสไปรษณีย์ 90000'),(3,'admin1@gmail.com','$2a$10$oJGWANNtL5PCJXG6S.AV7.nEn9bRPQpCR6oaNX18zTa2ji33Ly8g6','admin','มหาวิทยาลัยราชภัฏสงขลา 160 หมู่ 4 ถนนกาญจนวนิช ตำบลเขารูปช้าง อำเภอเมือง จังหวัดสงขลา รหัสไปรษณีย์ 90000'),(4,'admin2@gmail.com','$2a$10$oJGWANNtL5PCJXG6S.AV7.nEn9bRPQpCR6oaNX18zTa2ji33Ly8g6','admin','มหาวิทยาลัยราชภัฏสงขลา 160 หมู่ 4 ถนนกาญจนวนิช ตำบลเขารูปช้าง อำเภอเมือง จังหวัดสงขลา รหัสไปรษณีย์ 90000'),(9,'user3@gmail.com','$2a$10$.KpqJhyeuz0FOT92kDY0XO7eiAv6B5KpPfgfG7pdmPAzas/nNn8MK','customer',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-28  2:06:55
