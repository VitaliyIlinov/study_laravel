-- MySQL dump 10.13  Distrib 8.0.12, for Linux (x86_64)
--
-- Host: localhost    Database: study
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Solid',0,1,0,'2020-12-06 21:12:49','2020-12-06 21:12:49');
INSERT INTO `categories` VALUES (7,'Php',0,1,0,'2020-12-06 21:12:49','2020-12-06 21:12:49');
INSERT INTO `categories` VALUES (8,'Class,object,oop',7,1,0,'2020-12-06 21:12:49','2020-12-06 21:12:49');
INSERT INTO `categories` VALUES (10,'Question - answer',7,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (11,'Mysql',0,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (12,'Engine',11,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (13,'Indexes',11,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (14,'Relation type',11,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (15,'Query',11,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (16,'Joins',11,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (17,'Useful info',11,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (18,'Git',0,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (19,'Rebase',18,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (20,'Merge',18,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (21,'Cherry_pick',18,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (22,'Command line',0,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (23,'Chmod',22,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (24,'Docker',0,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (25,'Main',24,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (26,'Pattern',0,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (27,'What is pattern',26,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (28,'Why learn patterns',26,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (29,'Criticism',26,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (30,'Classification',26,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (31,'Creational patterns',30,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (32,'Factory method',31,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (33,'Abstract factory',31,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (34,'Builder',31,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (35,'Singleton',31,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (36,'Structural patterns',30,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configs`
--

DROP TABLE IF EXISTS `configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `configs_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configs`
--

LOCK TABLES `configs` WRITE;
/*!40000 ALTER TABLE `configs` DISABLE KEYS */;
INSERT INTO `configs` VALUES (1,'Mr. Lucas Mante IV','Autem.','Et tempore sapiente tempore. Officia ullam quis consequatur. Qui sint magni id et reiciendis nemo accusantium dignissimos.','2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `configs` VALUES (2,'Marley Erdman','Id qui.','Voluptatibus et rerum fuga velit. Harum aliquid id possimus ratione voluptas. Eveniet et blanditiis id quae quam totam commodi repellendus. Maiores deleniti quia itaque sed repellat et.','2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `configs` VALUES (7,'Dr. Katelyn Mitchell Jr.','Veritatis.','Voluptate voluptas corrupti quia soluta quis quos. Facere non dolorem quia eum exercitationem. Et sit beatae unde soluta.','2020-12-06 21:12:50','2020-12-06 21:12:50');
/*!40000 ALTER TABLE `configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infos`
--

DROP TABLE IF EXISTS `infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `infos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `category_id` bigint(20) unsigned NOT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `infos_category_id_foreign` (`category_id`),
  CONSTRAINT `infos_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infos`
--

LOCK TABLES `infos` WRITE;
/*!40000 ALTER TABLE `infos` DISABLE KEYS */;
INSERT INTO `infos` VALUES (1,'Single responsibility','<p>Принцип единственной ответственности гласит — «На каждый объект должна быть возложена одна единственная обязанность». Т.е. другими словами — Один класс должен решать только какую-то одну задачу.</p><p>Рассмотрим описание класса для представления заказа в интернет-магазине: <a href=\"https://habr.com/ru/post/208442/\">Habr»</a></p><pre><code class=\"language-php\">class OrderWrong\r\n{\r\n    public function calculateTotalSum(){/*...*/}\r\n    public function getItems(){/*...*/}\r\n    public function getItemCount(){/*...*/}\r\n    public function addItem($item){/*...*/}\r\n    public function deleteItem($item){/*...*/}\r\n\r\n    public function printOrder(){/*...*/}\r\n    public function showOrder(){/*...*/}\r\n\r\n    public function load(){/*...*/}\r\n    public function save(){/*...*/}\r\n    public function update(){/*...*/}\r\n    public function delete(){/*...*/}\r\n}\r\n\r\n/**\r\n * Как можно увидеть, данный класс выполняет операций для 3 различный типов задач:\r\n *  - работа с самим заказом\r\n *  - отображение заказа\r\n *  - работа с хранилищем данных/\r\n * К чему это может привести?\r\n * Приводит это к тому, что в случае, если мы хотим внести изменения в методы печати или работы хранилища, мы изменяем\r\n * сам класс заказа, что может привести к его неработоспособности. Решить эту проблему стоит разделением данного класса\r\n * на 3 отдельных класса, каждый из которых будет заниматься своей задачей\r\n *     - Работа с хранилищем\r\n *     - печать\r\n *     - получение инфы\r\n */\r\nclass Order\r\n{\r\n    public function calculateTotalSum(){/*...*/}\r\n    public function getItems(){/*...*/}\r\n    public function getItemCount(){/*...*/}\r\n    public function addItem($item){/*...*/}\r\n    public function deleteItem($item){/*...*/}\r\n}\r\n\r\nclass OrderRepository\r\n{\r\n    public function load($orderID){/*...*/}\r\n    public function save($order){/*...*/}\r\n    public function update($order){/*...*/}\r\n    public function delete($order){/*...*/}\r\n}\r\n\r\nclass OrderViewer\r\n{\r\n    public function printOrder($order){/*...*/}\r\n    public function showOrder($order){/*...*/}\r\n}\r\n/**\r\n * Теперь каждый класс занимается своей конкретной задачей и для каждого класса есть только 1 причина для его изменения.\r\n */    </code></pre>',1,1,19,'2020-12-06 21:12:49','2021-02-08 23:09:13');
INSERT INTO `infos` VALUES (3,'Open closed','<p>Программные сущности (классы, модули, функции) должны быть открыты для расширения, но закрыты для модификации.На более простых словах это можно описать так — все классы, функции и т.д. должны проектироваться так, чтобы для изменения их поведения, нам не нужно было изменять их исходный код.</p><p>Рассмотрим пример: <a href=\"https://medium.com/webbdev/solid-4ffc018077da\">medium»</a></p><p>Представим, что у нас есть магазин. Мы даём клиентам скидку в 20%, используя такой класс :</p><pre><code class=\"language-php\">\r\n            \r\n\r\n/**\r\n * Такой подход нарушает принцип открытости-закрытости. Как видно, здесь, если нам надо дать некоей группе клиентов\r\n * особую скидку, приходится добавлять в класс новый код.\r\n */\r\nclass DiscountWRONG\r\n{\r\n    private $price;\r\n\r\n    private $userRole;\r\n\r\n    public function giveDiscount()\r\n    {\r\n        if ($this-&gt;userRole == \'default\') {\r\n            return $this-&gt;price * 0.2;\r\n        }\r\n        if ($this-&gt;userRole == \'vip\') {\r\n            return $this-&gt;price * 0.4;\r\n        }\r\n    }\r\n}\r\n\r\n/**\r\n * Для того чтобы переработать этот код в соответствии с принципом открытости-закрытости, добавим в проект новый класс,\r\n * расширяющий класс Discount\r\n * Тут используется расширение возможностей классов, а не их модификация.\r\n */\r\nabstract class discount\r\n{\r\n    protected $price;\r\n\r\n    /**\r\n     * discount constructor.\r\n     * @param $price\r\n     */\r\n    public function __construct($price)\r\n    {\r\n        $this-&gt;price = $price;\r\n    }\r\n\r\n    abstract function getDiscount();\r\n}\r\n\r\nclass Vip extends discount\r\n{\r\n    function getDiscount()\r\n    {\r\n        return $this-&gt;price * 0.4;\r\n    }\r\n}\r\n\r\nclass Defaul extends discount\r\n{\r\n    function getDiscount()\r\n    {\r\n        return $this-&gt;price * 0.2;\r\n    }\r\n}        </code></pre><p>Рассмотрим еще один пример: <a href=\"https://habr.com/ru/post/208442/\">Habr»</a></p><pre><code class=\"language-php\">\r\n            \r\n\r\nclass OrderRepositoryWRONG\r\n{\r\n    public function load($orderID)\r\n    {\r\n        $pdo = new PDO($this-&gt;config-&gt;getDsn(), $this-&gt;config-&gt;getDBUser(), $this-&gt;config-&gt;getDBPassword());\r\n        $statement = $pdo-&gt;prepare(\'SELECT * FROM `orders` WHERE id=:id\');\r\n        $statement-&gt;execute([\':id\' =&gt; $orderID]);\r\n        return $query-&gt;fetchObject(\'Order\');\r\n    }\r\n\r\n    public function save($order)\r\n    {/*...*/\r\n    }\r\n\r\n    public function update($order)\r\n    {/*...*/\r\n    }\r\n\r\n    public function delete($order)\r\n    {/*...*/\r\n    }\r\n}\r\n\r\n/**\r\n * В данном случае хранилищем у нас является база данных. например, MySQL. Но вдруг мы захотели подгружать наши данные\r\n * о заказах, например, через API стороннего сервера, который, допустим, берёт данные из 1С. Какие изменения нам надо\r\n * будет внести? Есть несколько вариантов, например, непосредственно изменить методы класса OrderRepository, но этот не\r\n * соответствует принципу открытости/закрытости, так как класс закрыт для модификации, да и внесение изменений в уже\r\n * хорошо работающий класс нежелательно. Значит, можно наследоваться от класса OrderRepository и переопределить все\r\n * методы, но это решение не самое лучше, так как при добавлении метода в OrderRepository нам придётся добавить\r\n * аналогичные методы во все его наследники. Поэтому для выполнения принципа открытости/закрытости лучше применить\r\n * следующее решение — создать интерфейc IOrderSource, который будет реализовываться соответствующими классами\r\n * MySQLOrderSource, ApiOrderSource и так далее.\r\n */\r\ninterface IOrderSource\r\n{\r\n    public function load($orderID);\r\n\r\n    public function save($order);\r\n\r\n    public function update($order);\r\n\r\n    public function delete($order);\r\n}\r\n\r\nclass MySQLOrderSource implements IOrderSource\r\n{\r\n    public function load($orderID)\r\n    {\r\n    }\r\n\r\n    public function save($order)\r\n    {/*...*/\r\n    }\r\n\r\n    public function update($order)\r\n    {/*...*/\r\n    }\r\n\r\n    public function delete($order)\r\n    {/*...*/\r\n    }\r\n}\r\n\r\nclass ApiOrderSource implements IOrderSource\r\n{\r\n    public function load($orderID)\r\n    {/*...*/\r\n    }\r\n\r\n    public function save($order)\r\n    {/*...*/\r\n    }\r\n\r\n    public function update($order)\r\n    {/*...*/\r\n    }\r\n\r\n    public function delete($order)\r\n    {/*...*/\r\n    }\r\n}\r\n\r\nclass OrderRepository\r\n{\r\n    /**\r\n     * @var IOrderSource\r\n     */\r\n    private $source;\r\n\r\n    public function setSource(IOrderSource $source)\r\n    {\r\n        $this-&gt;source = $source;\r\n    }\r\n\r\n    public function load($orderID)\r\n    {\r\n        return $this-&gt;source-&gt;load($orderID);\r\n    }\r\n\r\n    public function save($order)\r\n    {\r\n        return $this-&gt;source-&gt;load($order);\r\n    }\r\n\r\n    public function update($order)\r\n    {\r\n        return $this-&gt;source-&gt;load($order);\r\n    }\r\n}\r\n/**\r\n * Таким образом, мы можем изменить источник и соответственно поведение для класса OrderRepository, установив нужный\r\n * нам класс реализующий IOrderSource, без изменения класса OrderRepository.\r\n */        </code></pre>',1,1,9,'2020-12-06 21:12:49','2021-02-08 23:10:54');
INSERT INTO `infos` VALUES (7,'Barbara Liskov','<p>Объекты в программе могут быть заменены их наследниками без изменения свойств программы». Своими словами я бы это сказал так</p><p>Поведение наследуемых классов не должно противоречить поведению, заданному базовым классом, то есть результат выполнения кода должен быть предсказуем и не изменять свойств метод.</p><p>Источники» <a href=\"https://habr.com/ru/post/208442/\">Habr</a> <a href=\"http://simple-training.com/solid-in-php/solid-3-liskovs-substitution-principle/\">simple-training</a> Рассмотрим пример:</p><pre><code class=\"language-php\">\r\n\r\nclass Bird\r\n{\r\n    public function fly()\r\n    {\r\n        $flySpeed = 10;\r\n        return $flySpeed;\r\n    }\r\n}\r\n\r\n/**\r\n * Дочерний класс от Bird.\r\n * Не изменяет поведение, но дополняет.\r\n * Не нарушает принцип\r\n */\r\nclass Duck extends Bird\r\n{\r\n    public function fly()\r\n    {\r\n        $flySpeed = 8;\r\n        return $flySpeed;\r\n    }\r\n\r\n    public function swim()\r\n    {\r\n        $swimSpeed = 2;\r\n        return $swimSpeed;\r\n    }\r\n}\r\n\r\n/**\r\n * Дочерний класс от Bird.\r\n * Изменяет поведение.\r\n * Нарушает принцип LSP\r\n */\r\nclass Penguin extends Bird\r\n{\r\n    public function fly()\r\n    {\r\n        //die(\'i can`t fly (((\');  // не типичное поведение - die или exception\r\n        return \'i can`t fly (((\'; // не типичное поведение - возвращаем string, а не integer\r\n    }\r\n\r\n    public function swim()\r\n    {\r\n        $swimSpeed = 4;\r\n        return $swimSpeed;\r\n    }\r\n}\r\n\r\nclass BirdRun\r\n{\r\n    private $bird;\r\n\r\n    public function __construct(Bird $bird)\r\n    {\r\n        $this-&gt;bird = $bird;\r\n    }\r\n\r\n    public function run()\r\n    {\r\n        $flySpeed = $this-&gt;bird-&gt;fly();\r\n        // ...\r\n    }\r\n}\r\n\r\n$bird = new Bird();\r\n//$bird = new Duck();\r\n//$bird = new Penguin();\r\n$birdRun = new BirdRun($bird);\r\n$birdRun-&gt;run();    </code></pre>',1,1,19,'2020-12-06 21:12:49','2021-02-08 23:12:02');
INSERT INTO `infos` VALUES (9,'Interface segregation','<p>Этот принцип направлен на устранение недостатков, связанных с реализацией больших интерфейсов.</p><p>Данный принцип гласит, что «Много специализированных интерфейсов лучше, чем один универсальный»</p><p>Соблюдение этого принципа необходимо для того, чтобы классы-клиенты использующий/реализующий интерфейс знали только о тех методах, которые они используют, что ведёт к уменьшению количества неиспользуемого кода</p><p>Источники» <a href=\"https://habr.com/ru/post/208442/\">Habr</a> Рассмотрим пример:</p><pre><code class=\"language-php\">\r\ninterface IItemWrong\r\n{\r\n    public function applyDiscount($discount);\r\n\r\n    public function applyPromocode($promocode);\r\n\r\n    public function setColor($color);\r\n\r\n    public function setSize($size);\r\n\r\n    public function setCondition($condition);\r\n\r\n    public function setPrice($price);\r\n}\r\n\r\n/**\r\n * Данный интефейс плох тем, что он включает слишком много методов. А что, если наш класс товаров не может иметь скидок\r\n * или промокодов, либо для него нет смысла устанавливать материал из которого сделан (например, для книг). Таким\r\n * образом, чтобы не реализовывать в каждом классе неиспользуемые в нём методы, лучше разбить интерфейс на несколько\r\n * мелких и каждым конкретным классом реализовывать нужные интерфейсы.\r\n */\r\ninterface IItem\r\n{\r\n    public function setCondition($condition);\r\n\r\n    public function setPrice($price);\r\n}\r\n\r\ninterface IClothes\r\n{\r\n    public function setColor($color);\r\n\r\n    public function setSize($size);\r\n\r\n    public function setMaterial($material);\r\n}\r\n\r\ninterface IDiscountable\r\n{\r\n    public function applyDiscount($discount);\r\n\r\n    public function applyPromocode($promocode);\r\n}\r\n\r\nclass Book implements IItem, IDiscountable\r\n{\r\n    public function setCondition($condition){/*...*/}\r\n\r\n    public function setPrice($price){/*...*/}\r\n\r\n    public function applyDiscount($discount){/*...*/}\r\n\r\n    public function applyPromocode($promocode){/*...*/}\r\n}\r\n\r\nclass KidsClothes implements IItem, IClothes\r\n{\r\n    public function setCondition($condition){/*...*/}\r\n\r\n    public function setPrice($price){/*...*/}\r\n\r\n    public function setColor($color){/*...*/}\r\n\r\n    public function setSize($size){/*...*/}\r\n\r\n    public function setMaterial($material){/*...*/}\r\n}    </code></pre>',1,1,19,'2020-12-06 21:12:49','2021-02-08 23:13:24');
INSERT INTO `infos` VALUES (12,'Dependency inversion','<p>Высокоуровневые модули не должны зависеть от низкоуровневых. Оба вида модулей должны зависеть от абстракций.</p><p>Абстракции не должны зависеть от подробностей. Подробности должны зависеть от абстракций.</p><p>Проще говоря: зависьте от абстракций, а не от чего-то конкретного.</p><p>Применяя этот принцип, одни модули можно легко заменять другими, всего лишь меняя модуль зависимости, и тогда никакие перемены в низкоуровневом модуле не повлияют на высокоуровневый.</p><p>Источники» <a href=\"https://habr.com/ru/company/mailru/blog/412699/\">https://habr.com/ru/company/mailru/blog/412699/</a> <a href=\"https://habr.com/ru/post/208442/\">https://habr.com/ru/post/208442/</a> Рассмотрим пример:</p><pre><code class=\"language-php\">\r\n\r\nclass MySQLConnectionWrong\r\n{\r\n    /**\r\n     * db connection\r\n     */\r\n    public function connect()\r\n    {\r\n        var_dump(\'MYSQL Connection\');\r\n    }\r\n}\r\n\r\nclass PasswordReminderWrong\r\n{\r\n    /**\r\n     * @var MySQLConnectionWrong\r\n     */\r\n    private $dbConnection;\r\n\r\n    public function __construct(MySQLConnectionWrong $dbConnection)\r\n    {\r\n        $this-&gt;dbConnection = $dbConnection;\r\n    }\r\n}\r\n\r\n/**\r\n * В приведённом коде, невзирая на то, что класс MySQLConnection был внедрён в класс PasswordReminder, последний\r\n * зависит от MySQLConnection. Более высокуровневый PasswordReminder не должен зависеть от более низкуровневого модуля\r\n * MySQLConnection.\r\n *\r\n * Если нам нужно изменить подключение с MySQLConnection на MongoDBConnection, то придётся менять прописанное в коде\r\n * внедрение конструктора в класс PasswordReminder.\r\n * Класс PasswordReminder должен зависеть от абстракций, а не от чего-то конкретного.\r\n */\r\ninterface ConnectionInterface\r\n{\r\n    public function connect();\r\n}\r\n\r\nclass DbConnection implements ConnectionInterface\r\n{\r\n    /**\r\n     * db connection\r\n     */\r\n    public function connect()\r\n    {\r\n        var_dump(\'MYSQL Connection\');\r\n    }\r\n}\r\n\r\nclass PasswordReminder\r\n{\r\n    /**\r\n     * @var ConnectionInterface\r\n     */\r\n\r\n    private $dbConnection;\r\n\r\n    public function __construct(ConnectionInterface $dbConnection)\r\n    {\r\n        $this-&gt;dbConnection = $dbConnection;\r\n    }\r\n}\r\n\r\n/**\r\n * Здесь нам нужно изменить подключение с MySQLConnection на MongoDBConnection. Нам не нужно менять внедрение\r\n * конструктора в класс PasswordReminder, потому что в данном случае класс PasswordReminder зависит только от\r\n * абстракции.\r\n */\r\n\r\nclass CustomerWrong\r\n{\r\n    private $currentOrder = null;\r\n\r\n    public function buyItems()\r\n    {\r\n        if (is_null($this-&gt;currentOrder)) {\r\n            return false;\r\n        }\r\n\r\n        $processor = new OrderProcessorWrong();\r\n        return $processor-&gt;checkout($this-&gt;currentOrder);\r\n    }\r\n\r\n    public function addItem($item)\r\n    {\r\n        if (is_null($this-&gt;currentOrder)) {\r\n            $this-&gt;currentOrder = new Order();\r\n        }\r\n        return $this-&gt;currentOrder-&gt;addItem($item);\r\n    }\r\n\r\n    public function deleteItem($item)\r\n    {\r\n        if (is_null($this-&gt;currentOrder)) {\r\n            return false;\r\n        }\r\n        return $this-&gt;currentOrder-&gt;deleteItem($item);\r\n    }\r\n}\r\n\r\nclass OrderProcessorWrong\r\n{\r\n    public function checkout($order)\r\n    {/*...*/\r\n    }\r\n}\r\n\r\n/**\r\n * Всё кажется вполне логичным и закономерным. Но есть одна проблема — класс Customer зависит от класса OrderProcessor\r\n * (мало того, не выполняется и принцип открытости/закрытости). Для того, чтобы избавится от зависимости от конкретного\r\n * класса, надо сделать так чтобы Customer зависел от абстракции, т.е. от интерфейса IOrderProcessor. Данную\r\n * зависимость можно внедрить через сеттеры, параметры метода, или Dependency Injection контейнера. Я решил остановится\r\n * на 2 методе и получил следующий код.\r\n */\r\n\r\ninterface IOrderProcessor\r\n{\r\n    public function checkout($order);\r\n}\r\n\r\nclass OrderProcessor implements IOrderProcessor\r\n{\r\n    public function checkout($order)\r\n    {/*...*/\r\n    }\r\n}\r\n\r\nclass Customer\r\n{\r\n    private $currentOrder = null;\r\n\r\n    public function buyItems(IOrderProcessor $processor)\r\n    {\r\n        if (is_null($this-&gt;currentOrder)) {\r\n            return false;\r\n        }\r\n\r\n        return $processor-&gt;checkout($this-&gt;currentOrder);\r\n    }\r\n\r\n    public function addItem($item)\r\n    {\r\n        if (is_null($this-&gt;currentOrder)) {\r\n            $this-&gt;currentOrder = new Order();\r\n        }\r\n        return $this-&gt;currentOrder-&gt;addItem($item);\r\n    }\r\n\r\n    public function deleteItem($item)\r\n    {\r\n        if (is_null($this-&gt;currentOrder)) {\r\n            return false;\r\n        }\r\n        return $this-&gt;currentOrder-&gt;deleteItem($item);\r\n    }\r\n}\r\n/**\r\n * Таким образом, класс Customer теперь зависит только от абстракции, а конкретную реализацию, т.е. детали, ему не так\r\n * важны.\r\n */    </code></pre>',1,1,4,'2020-12-06 21:12:49','2021-02-08 23:14:52');
INSERT INTO `infos` VALUES (13,'Принципы ООП','<p>Основные принципы ООП, которыми являются <i><strong>инкапсуляция, наследование и полиморфизм</strong></i></p><ul><li><i><strong>инкапсуляция</strong></i> - это свойство объекта/класса регулировать доступ к определенным своим компонентам извне самого объекта/класса.</li><li><i><strong>Наследование</strong></i> - это свойство классов расширяться.</li><li><i><strong>Полиморфизм</strong></i> - это следствие наследования. Это свойство унаследованных классов иметь одинаковые методы, которые будут работать по-разному в контексте объектов. Например, у нас есть класс фигура и классы квадрат, треугольник и трапеция - унаследованные от фигуры. Каждая фигура содержит функционал для вычисления площади, но у каждой фигуры он свой.</li></ul><pre><code class=\"language-php\">\r\n        abstract class Publication {\r\n            // определяем правило, что все публикации должны печататься, т.е. иметь метод do_print()\r\n            abstract protected function do_print();\r\n            // испольузем final чтобы инкапсулировать логику работы данного метода\r\n            final protected function getClassName(){ return __CLASS__; }\r\n        }\r\n\r\n        class News extends Publication {\r\n           // переопределяем абстрактный метод печати\r\n           public function do_print() {\r\n               echo \'Новость\';\r\n           }\r\n        }\r\n        class Announcement extends Publication {\r\n            // переопределяем абстрактный метод печати\r\n            public function do_print() {\r\n                echo \'Объявление\';\r\n            }\r\n        }\r\n\r\n        //Наполняем массив публикаций объектами, производными от Publication\r\n        $publications[] = new News();\r\n        $publications[] = new Announcement();\r\n        // пример полиморфизма:\r\n        foreach ($publications as $publication) {\r\n            if ($publication instanceof Publication) { // Если мы работаем с наследниками Publication\r\n                $publication-&gt;do_print(); // то мы можем смело выводить данные на печать\r\n            } else {\r\n                //исключение или обработка ошибки\r\n            }\r\n        }\r\n        function printPublicationName(Publication $publication){\r\n            // пример использования метода, который инкапсулирован:\r\n            $publication-&gt;getClassName();\r\n        }\r\n        printPublicationName(new News());\r\n        printPublicationName(new Announcement());\r\n    </code></pre>',1,8,10,'2020-12-06 21:12:49','2021-02-08 23:17:19');
INSERT INTO `infos` VALUES (15,'KISS&&DRY','<p><span style=\"background-color:rgb(248,249,250);color:rgb(33,37,41);\">Источники» </span><a href=\"https://ru.wikipedia.org/wiki/KISS_(%D0%BF%D1%80%D0%B8%D0%BD%D1%86%D0%B8%D0%BF)\">wikipedia</a></p><h2>KISS (принцип)</h2><p><strong>KISS(«Keep it simple, stupid»)</strong> - принцип проектирвоания. Принцип KISS утверждает, что большинство систем работают лучше всего, если они остаются простыми, а не усложняются. Поэтому в области проектирования простота должна быть одной из ключевых целей, и следует избегать ненужной сложности.</p><ul><li>Разбивайте задачи на подзадачи которые не должны по вашему мнению длиться более 4-12 часов написания кода</li><li>Разбивайте задачу на множество более маленьких задач, каждая задача должна решаться одним или парой классов</li><li>Сохраняйте ваши методы маленькими. Каждый метод должен состоять не более чем из 30-40 строк. Каждый метод должен решать одну маленькую задачу, а не множество случаев. Если в вашем методе множество условий, разбейте его на несколько. Это повысит читаемость, позволит легче поддерживать код и быстрее находить ошибки в нём. Вы полюбите улучшать код.</li><li>Сохраняйте ваши классы маленькими. Здесь применяется та же техника что и с методами.</li><li>Придумайте решение задачи сначала, потом напишите код. Никогда не поступайте иначе. Многие разработчики придумывают решение задачи во время написания кода и в этом нет ничего плохого. Вы можете делать так и при этом придерживаться выше обозначенного правила. Если вы можете в уме разбивать задачу на более мелкие части, когда вы пишете код, делайте это любыми способами. И не бойтесь переписывать код ещё и ещё и ещё… В счёт не идёт число строк, до тех пор пока вы считаете что можно ещё меньше/ещё лучше.</li><li>Не бойтесь избавляться от кода. Изменение старого кода и написание нового решения два очень важных момента. Если вы столкнулись с новыми требованиями, или не были оповещены о них ранее, тогда порой лучше придумать новое более изящное решение решающее и старые и новые задачи.</li></ul><h2>Don’t repeat yourself, DRY</h2><p><strong>Don’t repeat yourself, DRY</strong> - это принцип разработки программного обеспечения, нацеленный на снижение повторения информации различного рода, особенно в системах со множеством слоёв абстрагирования. Принцип DRY формулируется как: «Каждая часть знания должна иметь единственное, непротиворечивое и авторитетное представление в рамках системы»</p>',1,7,14,'2020-12-06 21:12:50','2021-02-08 23:19:09');
INSERT INTO `infos` VALUES (16,'Class,object,oop title info','Rem et quo sit. Eveniet sit et temporibus voluptatem rerum maxime. Praesentium vel voluptatum mollitia in perferendis. Dolores eveniet repudiandae delectus rerum voluptatem atque. Velit perferendis error rem perspiciatis. Aut voluptas esse cumque ut voluptates. Laudantium hic assumenda sequi quisquam. Voluptas eum fugiat in nihil magni quos quas nostrum. Quos est alias voluptates cumque ea incidunt dolores vel. Accusamus nostrum iure quidem eos.',1,8,19,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (19,'Question - answer title info','Dicta eveniet eaque illum. Non porro qui doloremque sed accusantium. Eos aut eveniet sit ea blanditiis architecto esse ea. Reprehenderit sed dolor officia aut id et soluta. Veritatis numquam pariatur tempore quia error blanditiis. Ea rerum deleniti et. Quaerat enim assumenda quia rerum voluptas aspernatur amet cupiditate. Sint facere aliquam sed. Illo velit at sed vel.',1,10,10,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (20,'Question - answer title info','Voluptate eos exercitationem eligendi exercitationem. Facere maxime ut et. Vero ut atque adipisci placeat quia. Sunt temporibus dolor ipsa saepe ut laborum. Porro sint aut voluptatibus et eum quisquam. Ea fuga illum quia praesentium praesentium architecto voluptas sapiente. Eius voluptatem exercitationem excepturi inventore. Pariatur pariatur fugiat sit enim provident sit. In illo nihil laboriosam. Non fugit et officiis ut rerum culpa.',1,10,16,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (21,'Mysql title info','Distinctio reiciendis eligendi numquam dolorum voluptatem. Commodi rerum quam repellat ipsam facilis. Aliquam ex non quia perferendis praesentium. Perspiciatis ullam pariatur ipsa aperiam. Quam non unde ipsam quibusdam. Provident rerum est ex dignissimos sit iusto aut architecto. Molestiae rerum laboriosam atque cum. Veritatis sed itaque molestiae et aliquam quia consequatur vitae. Saepe consequuntur autem ex nostrum praesentium.',1,11,9,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (22,'Mysql title info','Nihil eos ad nihil totam non consequatur id. Laborum ab id reprehenderit. Eligendi incidunt recusandae ab. Et libero odio similique cupiditate ut nulla. Nihil aliquid ab voluptates ipsa. Minima excepturi deserunt repudiandae tempore totam illo unde. Accusamus sint fugiat quo nihil sunt voluptatem est nihil. Reprehenderit dolorem facilis animi. Blanditiis aliquid ullam accusamus asperiores sint iste facere. Necessitatibus vel qui et ut. Et neque laudantium et laudantium vel officiis.',1,11,7,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (23,'Engine title info','Et consectetur necessitatibus aliquid sit error. Corporis impedit aut distinctio harum tenetur culpa autem. In molestiae quia temporibus sint. Aperiam qui mollitia voluptatem veniam minima culpa est pariatur. Quia laboriosam dolore suscipit autem ratione. Dolorem minus molestias nam ut. Sed occaecati eum ab dolor quos quaerat dolores.',1,12,12,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (24,'Engine title info','Omnis porro at vel. Libero ut sapiente sunt placeat et ipsam expedita. Officiis veniam vero eos consequatur dolores. Ipsa omnis tempora quia blanditiis sunt. Sapiente quas quia ab aliquam illum omnis ipsam incidunt. Quo commodi fugit et dignissimos. Perferendis nihil fuga exercitationem eum consequuntur quam exercitationem aperiam. Qui autem beatae adipisci optio facere in.',1,12,3,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (25,'Indexes title info','Ullam vero dicta ut porro in repudiandae. Placeat dolorum quisquam ex consequatur laborum voluptate. Et ad assumenda laborum nobis voluptatum qui. Facere qui suscipit porro sed officiis cupiditate qui. Doloremque dicta ut eligendi ipsam. Temporibus architecto temporibus quisquam officia et. Occaecati aut perspiciatis libero laudantium repellat ut similique autem. Non repudiandae consequatur quam.',1,13,17,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (26,'Indexes title info','Libero omnis molestiae ab molestias hic vero porro. Cupiditate aspernatur voluptas et enim velit officiis nisi. Est vero voluptas reiciendis quis fuga repudiandae possimus. Necessitatibus reprehenderit numquam ipsum. Est voluptatem culpa velit cumque nemo. Ut est ab dicta rerum placeat. Aut minima eligendi quisquam nostrum atque sint. Optio quo nisi delectus ad reprehenderit. Et nisi omnis earum. Temporibus nulla sed libero sed et impedit.',1,13,8,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (27,'Relation type title info','Voluptatem veniam quasi omnis qui quam. Ea est mollitia nihil odit. Sunt aut ad magni fugiat exercitationem et. Sed ipsum quos quis magni amet. Inventore autem voluptatem eos doloribus. Non non atque et libero vel consequuntur natus. Ut animi officiis doloremque corporis. Voluptates nemo aperiam voluptas commodi. Doloremque pariatur eveniet optio. Rerum inventore corrupti numquam harum. Aut eum et ad qui animi.',1,14,12,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (28,'Relation type title info','Earum veniam unde ut deserunt itaque. At rem rem laudantium. Earum est natus possimus reprehenderit velit eveniet enim. Eum enim ab debitis ipsa expedita ad voluptas. Velit tempora recusandae autem. Nisi eligendi in dicta repellendus aut cum. Voluptas et amet neque. Sunt cupiditate dolorum excepturi. Delectus et autem voluptas dicta beatae facilis ratione. Delectus ad ut quis assumenda architecto quam. Tempore minus hic recusandae et.',1,14,4,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (29,'Query title info','Neque repellat sunt voluptas qui sunt assumenda. Aut voluptas aut maxime alias quas sunt et. Non ad voluptas quos eum quod hic. Animi minus dolore delectus quia. Esse inventore voluptatem non non a. Labore alias sed explicabo. Possimus corporis debitis voluptas. Expedita inventore magni aliquam enim beatae expedita. Ipsam ea sint qui sed. Est quia soluta blanditiis aspernatur aut sit.',1,15,6,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (30,'Query title info','Sunt suscipit voluptates ea occaecati et omnis explicabo. Sequi illo rerum debitis explicabo. Minus tempore aut fugiat hic velit. Et et ut non excepturi. Quas quidem rerum vel nisi rerum rerum. Et aliquid aperiam vel optio. Consequatur nesciunt excepturi et ut excepturi dolor. Aliquid et voluptatum ea perspiciatis sapiente sed provident.',1,15,20,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (31,'Joins title info','Officia itaque molestias sapiente eos recusandae. Dolorem impedit omnis aut ad. Et praesentium sunt sint error esse minima. Dignissimos inventore consequatur iure deserunt et excepturi et et. Quos consequuntur nesciunt qui necessitatibus est temporibus. Dignissimos qui eos ipsa et porro est molestiae. Sit ut totam temporibus quia culpa.',1,16,6,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (32,'Joins title info','Expedita repellat totam et aliquam laudantium ut sed necessitatibus. Odio modi sint qui et at delectus illum. Ex esse nam eaque qui assumenda cupiditate omnis. Qui eum officia tenetur sit. Et consequatur ut fuga id facilis nulla sequi. Non nostrum consequatur reprehenderit voluptas. Esse sed alias enim et. Impedit eum dolorem quis. Assumenda rem delectus nulla. Sunt error rerum earum non.',1,16,7,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (33,'Useful info title info','Nisi cupiditate iste consequatur eos ut facilis necessitatibus. Qui minus quod aut quia. Atque repudiandae qui molestiae dolor rerum voluptate doloribus. Cumque cumque nihil voluptas doloremque laborum neque saepe occaecati. Harum illo doloribus et minus consequuntur molestiae. Nobis debitis expedita et quod. Voluptates quae voluptate voluptatem. Fugit officiis laudantium qui et. Dolorum eius beatae est aspernatur necessitatibus rerum.',1,17,3,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (34,'Useful info title info','Assumenda dolorem in ut voluptatibus. Quidem aut voluptatem natus repellendus. Officiis reiciendis illum nobis nesciunt necessitatibus consequatur sed. Quidem eos labore iusto sunt qui. Consequatur quidem similique dolor ea eaque veritatis et. Exercitationem debitis rerum aut voluptatem. Aut reprehenderit nostrum eveniet voluptatibus architecto.',1,17,4,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (35,'Git title info','Incidunt quia earum labore eius asperiores. Repellat nihil nisi natus. Quis omnis laboriosam accusantium est voluptatum aut. Aut magni ex ab dignissimos amet aut. Quis quae et consequatur molestiae ullam incidunt ut doloremque. Aut maxime cumque quia deleniti. Quo quod cumque amet necessitatibus est deleniti. Labore aut ullam est praesentium. Qui adipisci suscipit mollitia natus iure velit ut.',1,18,7,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (36,'Git title info','Accusantium dolores molestiae illo. Earum sint cumque occaecati. Maiores iste omnis dolor adipisci vel ut. Quaerat sed perferendis dolores quibusdam nihil voluptatibus. Qui modi aut ipsum neque ut et quae. Sed dolorum ut provident dignissimos id. Expedita consectetur culpa est rerum impedit. Odit perspiciatis velit deserunt eum.',1,18,18,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (37,'Rebase title info','Esse in omnis alias sapiente. Reprehenderit ea voluptas aut hic enim. Quis est molestias nesciunt. Inventore veniam omnis officiis molestiae. Eius vel vel et eveniet nihil. Voluptates ipsam esse et. Voluptas aut velit rerum nisi esse voluptatem. Incidunt dolores cumque quod necessitatibus blanditiis rerum excepturi officia.',1,19,1,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (38,'Rebase title info','Consequatur dolorem eum quasi occaecati. Eum neque dolor quisquam illo. Expedita architecto sunt sequi fugit et vel voluptatibus. Consequatur optio officiis vel quam. Dicta et itaque consequatur culpa. Reprehenderit quo dicta ea consectetur. Doloremque natus aut voluptas cum esse sit et. Quis hic officiis eum vero et. Totam cumque ipsum et molestias aut. Suscipit dicta nihil enim dolor. Saepe ipsa nemo dignissimos corrupti maiores voluptatum labore itaque.',1,19,11,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (39,'Merge title info','Assumenda voluptatem labore minus velit officia. Consequuntur ipsum dignissimos repellendus magnam deserunt rem. Temporibus consequatur hic voluptatum velit est. Minus molestiae nesciunt qui laudantium. Atque sit omnis molestiae et. Nisi quasi sit repellendus hic voluptatem eligendi et. Dignissimos sed expedita officiis nemo accusantium sunt.',1,20,1,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (40,'Merge title info','Dolores in omnis nobis consequuntur sint eaque est. Aut veniam veritatis reiciendis. Ea tempora quia molestiae similique. Ea mollitia ipsam eaque commodi quia tempora voluptatibus. Quas molestias porro non officia labore. Iusto doloribus tempora voluptatem non nesciunt. Autem deserunt doloribus vel et quos. Ad quae quasi et repellat cum voluptatibus aliquid vel.',1,20,10,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (41,'Cherry_pick title info','Voluptatem blanditiis nisi perferendis perferendis cum adipisci. Nihil repellat consequuntur consequatur placeat consectetur enim. Ad minima magni aut. Odio necessitatibus commodi voluptas fugiat alias et repellendus. Iure fugiat voluptas nesciunt nam nobis ad temporibus. Incidunt consequuntur accusantium porro accusamus est et quod. Quasi pariatur debitis omnis corrupti voluptas. Aut blanditiis doloremque laborum reprehenderit necessitatibus. Earum hic exercitationem ipsam facere.',1,21,10,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (42,'Cherry_pick title info','Maiores facere non nihil sapiente modi quia. Voluptates mollitia similique dolores vel quia qui tempora. Dolorem voluptatem rerum a suscipit magni dolorem in. Illo aut voluptatum officia temporibus. Occaecati quia aspernatur perspiciatis ut voluptatibus dolore. Nemo error non natus ex accusamus at porro enim. Aspernatur praesentium atque odio atque eius. Reiciendis sit aut optio delectus. Quo laborum accusantium dolorem eos debitis labore. Saepe ut voluptas non aliquam est at atque.',1,21,13,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (43,'Command line title info','Aspernatur atque tenetur fuga est. Dolorum inventore assumenda eum rem repudiandae amet est. Consequatur alias voluptate tenetur qui non cupiditate dolores. Et ratione quis facere sit et quia. Sint consequatur voluptatem dolore assumenda. Soluta impedit aut consequuntur saepe. Eum laboriosam quo dignissimos sed fugit. Illo aliquam minus nobis minus et. Ut est ab aliquam rerum. Omnis non id numquam eum mollitia magni possimus. Qui inventore quasi voluptatum dignissimos esse.',1,22,13,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (44,'Command line title info','Rerum qui voluptatem ipsa dolore. Pariatur quibusdam alias sunt est repudiandae omnis. Fugit vitae rerum natus est consequuntur et ut temporibus. Sed animi quis doloribus. Ullam numquam mollitia deleniti ducimus non. Et sit suscipit officia expedita quam mollitia. Dicta nemo voluptatum nam voluptatem iste tenetur. Explicabo nulla et consequatur inventore minus facere non. Error sed dicta laboriosam rem. Veniam debitis et minus et cumque dolor. Saepe dolorem et qui corrupti odio.',1,22,15,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (45,'Chmod title info','Ipsum numquam tenetur delectus voluptas. Aliquam quia ut rem et. Ea quia qui ut occaecati officia aut. Consequatur impedit ex corporis. Culpa omnis a et et dolor minima autem vel. Molestias quia ullam ut qui voluptatem. Omnis molestias iusto exercitationem iure provident non accusamus. Fugit consequatur aut adipisci ipsam enim. Voluptas fugit fugit voluptas sequi.',1,23,10,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (46,'Chmod title info','Alias modi earum sint doloremque iste. Autem debitis tempore incidunt assumenda qui dicta consectetur. Repudiandae nam magnam dicta ipsum minima sint. Aut reprehenderit assumenda laborum facere. Ipsa eius et accusantium in praesentium rerum. Laboriosam necessitatibus voluptas id esse et. Voluptates nisi pariatur et et fuga quo. Ut voluptas est est tempore non voluptatem. Impedit modi sint ex neque quae quas. Impedit quo provident fugiat recusandae delectus aut.',1,23,12,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (47,'Docker title info','Ad iure qui ipsum vel. Et est rerum quis porro. Et atque dolore laboriosam corrupti est consequuntur. Aut sint harum qui recusandae. Quia aut architecto quo assumenda. Provident rerum sunt quaerat aperiam molestiae voluptas. Expedita recusandae et nostrum possimus. Fuga laudantium corporis voluptas animi nulla esse ut. Debitis non earum necessitatibus voluptatum a possimus.',1,24,2,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (48,'Docker title info','Blanditiis commodi sunt dolores velit enim quos. Doloremque doloribus hic aspernatur culpa. Non aspernatur nemo molestias accusantium. Corrupti debitis eius ut. Ut libero quia qui iure dolores maxime aut. Veniam deserunt dolor id maiores voluptate dolore eius. In numquam nobis aut delectus sint. Minus rerum exercitationem quaerat autem maxime inventore. Eum eos hic quae odio. Tenetur quos ut sed commodi labore laborum et. Sit et et sint debitis repellendus iste.',1,24,7,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (49,'Main title info','Enim praesentium qui quo. Nulla et enim facere voluptatibus debitis et fuga. Quia excepturi ipsam est dolore. Suscipit amet occaecati quidem vel beatae itaque excepturi. Voluptatum culpa dolores laboriosam earum eaque sint vel. Rem expedita et placeat assumenda. Voluptas incidunt et occaecati voluptas maxime provident. Nobis deserunt commodi error consequatur ad. Excepturi nihil ipsa et.',1,25,13,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (50,'Main title info','Numquam sint amet quas qui et. Error qui temporibus veniam facere. Sint quaerat velit ut labore. Dolorem possimus fugit itaque ut inventore impedit cumque. Consequuntur ut nihil culpa. Dolorem qui dolorem sunt qui cum. Id quasi sint consequatur neque rerum quas aliquid accusamus. Voluptas consequuntur maxime ipsa mollitia fugiat blanditiis et error. Sunt corrupti quae sed cum tempore.',1,25,14,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (51,'Pattern title info','Laborum sit non distinctio facilis architecto. Animi pariatur cum expedita ut. Quo aspernatur illum assumenda voluptas laudantium quisquam illo. Quibusdam aut sit sit ea. Vel et quo accusantium fugit aut. Nulla ab a quidem quia et. Iusto quaerat vitae nobis qui amet ullam tempore libero. Quibusdam molestias maxime aut dolorem.',1,26,8,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (52,'Pattern title info','Laudantium totam unde ipsam harum doloribus. Eos dolores numquam aperiam dolores aut et saepe tenetur. Libero optio inventore qui vero aut hic. Illo doloremque asperiores sed similique. Repudiandae aliquid quia ut eius nihil repudiandae consequatur. Vero nihil sint labore qui voluptatem. Temporibus harum laborum eum tenetur distinctio delectus. Ad officia eos et. Rerum eaque rem fugiat non et neque assumenda aspernatur. Corrupti alias modi ratione.',1,26,9,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (53,'What is pattern title info','Quia necessitatibus debitis pariatur dolorem maiores dignissimos id. Veniam odit sint rerum numquam dolores nam. Adipisci ab totam mollitia voluptates voluptatem laudantium atque. Qui a et voluptatem culpa vel aut ea dicta. Et fuga et quia ut qui. Sit amet et velit aliquam. Cupiditate nam voluptates officiis autem animi. Optio atque explicabo officiis ut enim eos. Sit sit perspiciatis ut dolorem excepturi. Soluta aliquid ab illum nobis impedit. Ut sunt deleniti non ipsam.',1,27,13,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (54,'What is pattern title info','Nostrum architecto fuga illo autem. Vel doloribus voluptatem voluptatem non repellendus qui. Cupiditate autem minima est nostrum nulla sint et. Necessitatibus qui ut possimus pariatur ut fuga illo asperiores. Velit ipsam magnam accusamus qui voluptatem deserunt natus. Aut cupiditate exercitationem accusantium at. Necessitatibus asperiores voluptatem provident nisi beatae soluta. Nesciunt omnis et possimus quia accusantium dolorem quia. Repudiandae vero et nam nihil eos.',1,27,13,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (55,'Why learn patterns title info','Quia velit et vitae totam optio et eos ipsa. Similique et omnis eveniet voluptates et sit cumque. Et qui et ipsam occaecati ut aut nostrum. Voluptatem cupiditate voluptatum maiores recusandae omnis beatae. Commodi provident quae libero. Earum suscipit consequatur soluta maiores cumque. Dolor ut distinctio molestiae quia aut. Animi quis ut molestiae sit exercitationem. Qui molestiae suscipit odio aut sint. Ut delectus molestiae omnis cupiditate enim et. Et ut et modi hic.',1,28,16,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (56,'Why learn patterns title info','Est voluptatem rem id quasi. Occaecati voluptatem quibusdam ipsa ea fugiat modi a. Suscipit quam provident ullam corrupti sit impedit sit. Mollitia omnis dolorem quia itaque sed. Officiis est repellendus in laborum nam aliquam. Aut eaque pariatur maiores. Voluptatibus voluptatem consequatur ea est esse odit veniam. Aperiam enim necessitatibus odio doloribus. Perferendis nihil repellendus natus vel consequatur numquam. Esse sit et dolores nulla molestias sed. Dolores et consequatur possimus.',1,28,20,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (57,'Criticism title info','Voluptates odio nesciunt officia. Dolorum occaecati ea quae et modi repellendus. Maiores iure sit eos. Voluptatum error ea maiores facere. Dolorem cupiditate quo at quisquam maiores qui. Similique velit rerum suscipit voluptatem. Quia quaerat mollitia atque possimus eum ut. Possimus ex autem quibusdam. Aut dignissimos voluptas velit sit. Praesentium qui eligendi est saepe eum facere cum.',1,29,20,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (58,'Criticism title info','Laudantium est officiis dolor omnis. Omnis dolor excepturi molestias dolore. Nulla voluptatem voluptas ipsum quis similique aut. Non in mollitia non sint quas similique et velit. Ut sunt exercitationem a incidunt laudantium quam deserunt. Et vel laboriosam voluptas vel asperiores tempore voluptatibus. Non fugit harum iste provident cupiditate cum corporis. Vero aperiam rerum cumque illum beatae et eum laborum. Saepe quae harum tempore et reprehenderit. Eum quia qui et sit.',1,29,1,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (59,'Classification title info','Reprehenderit distinctio quis dolorem. Omnis aut et eos modi fugit repellendus. Veritatis nam possimus molestiae architecto eum eos. Omnis adipisci fuga vel minus distinctio incidunt ipsam. Tempora labore deleniti non temporibus. Ea nam vitae sit aspernatur quia nesciunt. Dolorum repudiandae modi voluptate et. Necessitatibus aspernatur excepturi illo necessitatibus. Esse odio et maxime dolorem. Voluptas quaerat et quidem sit qui vel.',1,30,18,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (60,'Classification title info','Aut quia nisi iure cupiditate omnis dolore dolorum. Omnis odit iusto sequi consequatur. Velit voluptatem fuga repellendus saepe non expedita et. Aspernatur et molestias deserunt occaecati laboriosam quis in. Aspernatur placeat eum vero. Corporis eum laborum et itaque ea omnis nisi. Vel quaerat dolor dignissimos consequatur consectetur cumque quia.',1,30,1,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (61,'Creational patterns title info','Ratione necessitatibus modi ut est explicabo nisi. Quo quos non dignissimos facilis. Sint totam voluptatibus inventore. Ipsa odit est eum. Sint enim nihil labore et. Assumenda voluptatibus labore blanditiis omnis vero rerum. Nihil tempore similique ratione autem occaecati et. Tempora iure velit id quo dignissimos. Provident sint neque iusto repellat.',1,31,16,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (62,'Creational patterns title info','Provident et dolor sint animi iste. Voluptatibus laudantium perspiciatis consequuntur nihil consequatur sit. Aut ut aspernatur voluptates voluptatem dolores. Et voluptas ut voluptate est est ut provident. Debitis amet sunt cum et. Rerum labore consequuntur omnis culpa aut et sed. Consequuntur rerum et suscipit at. Ut voluptas et dolore ducimus dicta quia. Totam earum quaerat dicta non cumque itaque voluptas. Doloremque enim sunt minus ea laboriosam.',1,31,14,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (63,'Factory method title info','Enim et corporis velit officia sint doloremque aut. Porro sint quos explicabo modi. Doloribus adipisci id velit. Tempore culpa est non consectetur repellendus corporis. Non nesciunt aut et et odit dolore magnam. Optio blanditiis nobis consectetur est. Est rerum eum sequi necessitatibus doloribus sequi. Voluptas aut nam exercitationem et aspernatur. Quas blanditiis iusto eum et hic ipsam pariatur.',1,32,15,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (64,'Factory method title info','Sunt molestiae beatae quasi et. Voluptatem ex impedit neque voluptates. Consequatur laudantium dolorem vel vel illo aliquam error. Quidem minus atque qui qui quod nobis. Fuga reiciendis enim pariatur accusamus alias odio aperiam. Sed rerum est repellat sint a. Corporis consequatur rerum error repudiandae iure. Quod iure perspiciatis eaque. Voluptatibus nihil accusamus quas magnam inventore. Qui praesentium itaque architecto consequatur. Nostrum a quisquam eligendi suscipit.',1,32,4,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (65,'Abstract factory title info','Perferendis earum doloremque aut debitis. Eaque illo est voluptate voluptatem qui. Cumque vero sunt ipsam quisquam. Fugit autem eveniet voluptas consequuntur eligendi numquam. Quia provident hic at esse quis sunt. Eos odio at cupiditate sit architecto voluptas ullam. Dignissimos repudiandae rem illum quia natus eos ratione. Quis officia dolores non. Voluptatem cum nisi excepturi vel. Rem explicabo voluptatem perspiciatis doloribus eos commodi.',1,33,7,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (66,'Abstract factory title info','Placeat illum enim reprehenderit corporis similique non odio. Laboriosam laudantium est excepturi molestiae. Ab saepe deserunt quasi libero deserunt tempora non. Architecto neque eos rerum. Sunt ut optio nihil eum explicabo inventore in. Blanditiis neque corporis enim deserunt. Recusandae omnis qui minus quia ullam. Et qui est quia. Sit sed labore repellendus deleniti optio non. Eos repellendus sit distinctio sint. Eos qui saepe repellat saepe.',1,33,3,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (67,'Builder title info','Blanditiis iusto ut sequi. Et nihil pariatur consequuntur. Ut ut voluptates nobis deleniti. Ut dolores eum alias non velit. Qui amet hic dolorem ex natus tempora. Corrupti nostrum harum et. Quia ut cupiditate quasi itaque. Cumque dolorum iste ipsa eius illum. Asperiores unde culpa at hic soluta aliquam ut quo.',1,34,12,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (68,'Builder title info','Voluptas velit ullam vero quas praesentium. Temporibus assumenda at maiores alias modi non sequi. Cupiditate dolor vel quas fugiat vitae. Officia ipsum doloribus optio ut. Velit rem est consequatur necessitatibus et. Veritatis cupiditate nulla officia praesentium commodi tempora. Facilis et et sed velit sunt rerum.',1,34,5,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (69,'Singleton title info','Non optio maiores et in. Ut ullam et est similique praesentium sint animi. Ut repellendus et amet mollitia ullam. Fuga distinctio vitae illo. Et voluptatem eius rerum animi itaque. Tempore sit odit alias officia rerum quis veniam. Molestiae laudantium sed ducimus. Omnis eos voluptates quaerat aut voluptatem ipsa quia. Ducimus molestias hic necessitatibus.',1,35,6,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (70,'Singleton title info','Repellendus recusandae ipsa non reiciendis est et. Repellat ad velit est voluptate corporis. Dolor animi aut aut perspiciatis odio. Magnam fuga maxime voluptatum animi minus molestiae natus. Esse facere totam cum ipsa. Consequatur magnam laborum fugiat ut porro laboriosam eius. Enim libero nihil animi incidunt quod molestiae consequuntur. Autem voluptatem voluptatem illum harum.',1,35,1,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (71,'Structural patterns title info','Minima unde et rerum reiciendis nihil optio. Ipsa quas doloremque quas quod. Corrupti quam dolorem blanditiis molestiae qui. Facere sint dolorem dolorem eos cum. Dolores voluptatibus aliquid ad quia distinctio ab. Facere est error id tenetur consequatur quaerat consequatur. Sed rerum distinctio aut necessitatibus. Quis facilis voluptas rerum ex.',1,36,8,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `infos` VALUES (72,'Structural patterns title info','Quibusdam beatae quisquam libero voluptas veniam tenetur tempora. Voluptatibus culpa suscipit unde. Dolorem deleniti inventore sed et est sit. Voluptas eligendi amet corrupti minus ut quia qui dolorem. Ut eaque quia voluptatibus accusantium ratione qui officiis. Adipisci qui sit quidem quis ut. Aut delectus autem suscipit ut expedita. Impedit eum eligendi nam qui qui modi laborum.',1,36,20,'2020-12-06 21:12:50','2020-12-06 21:12:50');
/*!40000 ALTER TABLE `infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1);
INSERT INTO `migrations` VALUES (2,'2019_08_19_000000_create_failed_jobs_table',1);
INSERT INTO `migrations` VALUES (3,'2020_08_17_075421_create_categories_table',1);
INSERT INTO `migrations` VALUES (4,'2020_08_17_081111_create_infos_table',1);
INSERT INTO `migrations` VALUES (5,'2020_09_28_114454_create_configs_table',1);
INSERT INTO `migrations` VALUES (6,'2020_12_03_195058_create_todo_lists_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_lists`
--

DROP TABLE IF EXISTS `todo_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `todo_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `label` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_lists`
--

LOCK TABLES `todo_lists` WRITE;
/*!40000 ALTER TABLE `todo_lists` DISABLE KEYS */;
INSERT INTO `todo_lists` VALUES (11,'Add count info for each  category',0,'category',1,'2021-02-08 23:22:06','2021-02-10 21:40:01');
INSERT INTO `todo_lists` VALUES (12,'Add list for info by category(for sort and moving to another category)',0,'category',2,'2021-02-08 23:25:14','2021-02-10 21:40:01');
INSERT INTO `todo_lists` VALUES (13,'add ability for change editor in article(codemiror, simple texarea or ck_editor)',0,'editor',3,'2021-02-08 23:41:27','2021-02-10 21:40:01');
INSERT INTO `todo_lists` VALUES (14,'category,todo,table_list(save,del,edit) refactor  function',0,'JS',NULL,'2021-02-10 23:08:59','2021-02-10 23:08:59');
INSERT INTO `todo_lists` VALUES (15,'table.js :fix animate.css',0,'JS',NULL,'2021-02-10 23:10:02','2021-02-10 23:10:02');
/*!40000 ALTER TABLE `todo_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2021-03-04 18:55:12
