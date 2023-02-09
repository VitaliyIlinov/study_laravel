-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: test_laravel_il
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories`
(
    `id`         bigint unsigned                                               NOT NULL AUTO_INCREMENT,
    `name`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `parent_id`  int                                                           NOT NULL DEFAULT '0',
    `status`     tinyint(1)                                                    NOT NULL DEFAULT '1',
    `sort`       tinyint                                                       NOT NULL DEFAULT '0',
    `created_at` timestamp                                                     NULL     DEFAULT NULL,
    `updated_at` timestamp                                                     NULL     DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 56
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Solid',0,1,1,'2020-12-06 21:12:49','2021-10-21 17:31:26');
INSERT INTO `categories` VALUES (7,'Php',0,1,0,'2020-12-06 21:12:49','2021-08-21 10:29:21');
INSERT INTO `categories` VALUES (11,'Mysql',0,1,5,'2020-12-06 21:12:50','2021-12-01 21:26:51');
INSERT INTO `categories` VALUES (22,'Command line',0,1,9,'2020-12-06 21:12:50','2021-10-21 17:31:26');
INSERT INTO `categories` VALUES (26,'Pattern',0,1,4,'2020-12-06 21:12:50','2021-12-01 21:26:51');
INSERT INTO `categories` VALUES (30,'Classification',26,1,0,'2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `categories` VALUES (31,'Creational patterns(порождающие)',30,1,0,'2020-12-06 21:12:50','2021-09-02 13:53:10');
INSERT INTO `categories` VALUES (36,'Structural patterns(структурные)',30,1,1,'2020-12-06 21:12:50','2021-09-02 13:52:59');
INSERT INTO `categories` VALUES (38,'Behavioral patterns(поведенческие)',30,1,2,'2021-08-17 10:23:47','2021-09-02 13:52:49');
INSERT INTO `categories` VALUES (39,'Frameworks',0,1,7,'2021-08-21 10:27:43','2021-11-10 13:04:48');
INSERT INTO `categories` VALUES (41,'laravel',39,1,0,'2021-09-02 11:53:46','2021-09-02 11:53:52');
INSERT INTO `categories` VALUES (42,'Testing',0,1,6,'2021-09-30 18:07:55','2021-12-01 21:26:51');
INSERT INTO `categories` VALUES (48,'Technologies',0,1,8,'2021-10-21 14:57:27','2021-10-21 17:31:26');
INSERT INTO `categories` VALUES (49,'WebServers',0,1,2,'2021-10-21 17:04:24','2021-10-21 17:31:26');
INSERT INTO `categories`
VALUES (50, 'Security', 0, 1, 3, '2021-10-21 17:12:20', '2021-10-21 17:31:26');
/*!40000 ALTER TABLE `categories`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configs`
--

DROP TABLE IF EXISTS `configs`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configs`
(
    `id`          bigint unsigned                                               NOT NULL AUTO_INCREMENT,
    `name`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `value`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `created_at`  timestamp                                                     NULL DEFAULT NULL,
    `updated_at`  timestamp                                                     NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `configs_name_unique` (`name`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 11
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configs`
--

LOCK TABLES `configs` WRITE;
/*!40000 ALTER TABLE `configs` DISABLE KEYS */;
INSERT INTO `configs` VALUES (1,'Mr. Lucas Mante IV','Autem.','Et tempore sapiente tempore. Officia ullam quis consequatur. Qui sint magni id et reiciendis nemo accusantium dignissimos.','2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `configs` VALUES (2,'Marley Erdman','Id qui.','Voluptatibus et rerum fuga velit. Harum aliquid id possimus ratione voluptas. Eveniet et blanditiis id quae quam totam commodi repellendus. Maiores deleniti quia itaque sed repellat et.','2020-12-06 21:12:50','2020-12-06 21:12:50');
INSERT INTO `configs`
VALUES (7, 'Dr. Katelyn Mitchell Jr.', 'Veritatis.',
        'Voluptate voluptas corrupti quia soluta quis quos. Facere non dolorem quia eum exercitationem. Et sit beatae unde soluta.',
        '2020-12-06 21:12:50', '2020-12-06 21:12:50');
/*!40000 ALTER TABLE `configs`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs`
(
    `id`         bigint unsigned                                           NOT NULL AUTO_INCREMENT,
    `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci     NOT NULL,
    `queue`      text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci     NOT NULL,
    `payload`    longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `exception`  longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `failed_at`  timestamp                                                 NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files`
(
    `id`         bigint unsigned NOT NULL AUTO_INCREMENT,
    `name`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `file_path`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `file_size`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `created_at` timestamp       NULL                                          DEFAULT NULL,
    `updated_at` timestamp       NULL                                          DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'1629374758_photo-1592853285454-34691b7b74c4.jpeg','/images/info/1629374758_photo-1592853285454-34691b7b74c4.jpeg','297376','2021-08-19 12:05:58','2021-08-19 12:05:58');
INSERT INTO `files` VALUES (2,'1629374940_photo-1592853285454-34691b7b74c4.jpeg','/images/info/1629374940_photo-1592853285454-34691b7b74c4.jpeg','297376','2021-08-19 12:09:00','2021-08-19 12:09:00');
INSERT INTO `files` VALUES (3,'1629377627_photo-1592853285454-34691b7b74c4.jpeg','/images/info/1629377627_photo-1592853285454-34691b7b74c4.jpeg','297376','2021-08-19 12:53:47','2021-08-19 12:53:47');
INSERT INTO `files`
VALUES (4, '1629377774_photo-1592853285454-34691b7b74c4.jpeg',
        '/images/info/1629377774_photo-1592853285454-34691b7b74c4.jpeg', '297376', '2021-08-19 12:56:14',
        '2021-08-19 12:56:14');
/*!40000 ALTER TABLE `files`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infos`
--

DROP TABLE IF EXISTS `infos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infos`
(
    `id`          bigint unsigned                                               NOT NULL AUTO_INCREMENT,
    `title`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `text`        longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci     NOT NULL,
    `slug`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci          DEFAULT NULL,
    `status`      tinyint(1)                                                    NOT NULL DEFAULT '1',
    `category_id` bigint unsigned                                               NOT NULL,
    `sort`        tinyint                                                       NOT NULL DEFAULT '0',
    `created_at`  timestamp                                                     NULL     DEFAULT NULL,
    `updated_at`  timestamp                                                     NULL     DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `infos_category_id_foreign` (`category_id`),
    CONSTRAINT `infos_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 136
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infos`
--

LOCK TABLES `infos` WRITE;
/*!40000 ALTER TABLE `infos`
    DISABLE KEYS */;
INSERT INTO `infos`
VALUES (1, 'Single responsibility (Принцип единственной ответственности)',
        '<p>«На каждый объект должна быть\r\n  возложена одна единственная обязанность». Т.е. другими словами — конкретный\r\n  класс должен решать конкретную задачу — ни больше, ни меньше. Следование\r\n  принципу заключается обычно в декомпозиции сложных классов, которые делают\r\n  сразу много вещей, на простые, отвественность которых очень специализирована.</p>\r\n<p>\r\n  Наиболее ярким анти-паттерном A<span style=\"font-size: 0.9rem;\">ctiveRecord, - объединяет в себе\r\n  очень много функциональных возможностей и часто смешивает бизнес-логику и\r\n  работу со слоем хранения. При этом использование ActiveRecord часто является\r\n  удобным и целесообразным.&nbsp;</span></p>\r\n<p>\r\n  Итак, в качества примера возьмём довольно популярный и широкоиспользуемый\r\n  пример — интернет-магазин с заказами, товарами и покупателями.\r\n</p>\r\n<p>\r\n  Рассмотрим следующее описание класса для представления заказа в\r\n  интернет-магазине:\r\n</p>\r\n<pre><code class=\"hljs\">class Order\r\n{\r\n	public function calculateTotalSum(){/*...*/}\r\n	public function getItems(){/*...*/}\r\n	public function getItemCount(){/*...*/}\r\n	public function addItem($item){/*...*/}\r\n	public function deleteItem($item){/*...*/}\r\n\r\n	public function printOrder(){/*...*/}\r\n	public function showOrder(){/*...*/}\r\n\r\n	public function load(){/*...*/}\r\n	public function save(){/*...*/}\r\n	public function update(){/*...*/}\r\n	public function delete(){/*...*/}\r\n}</code></pre>\r\n<p>\r\n  Как можно увидеть, данный класс выполняет операций для 3 различный типов\r\n  задач: работа с самим заказом(calculateTotalSum, getItems, getItemsCount,\r\n  addItem, deleteItem), отображение заказа(printOrder, showOrder) и работа с\r\n  хранилищем данных(load, save, update, delete).\r\n</p>\r\n<p>К чему это может привести?</p>\r\n<p>\r\n  Приводит это к тому, что в случае, если мы хотим внести изменения в методы\r\n  печати или работы хранилища, мы изменяем сам класс заказа, что может привести\r\n  к его неработоспособности.\r\n</p>\r\n<p>\r\n  Решить эту проблему стоит разделением данного класса на 3 отдельных класса,\r\n  каждый из которых будет заниматься своей задачей\r\n</p>\r\n<p></p>\r\n<pre><code class=\"hljs\">class Order\r\n{\r\n\r\n	public function calculateTotalSum(){/*...*/}\r\n	public function getItems(){/*...*/}\r\n	public function getItemCount(){/*...*/}\r\n	public function addItem($item){/*...*/}\r\n	public function deleteItem($item){/*...*/}\r\n}\r\n\r\nclass OrderRepository\r\n{\r\n	public function load($orderID){/*...*/}\r\n	public function save($order){/*...*/}\r\n	public function update($order){/*...*/}\r\n	public function delete($order){/*...*/}\r\n}\r\n\r\nclass OrderViewer\r\n{\r\n	public function printOrder($order){/*...*/}\r\n	public function showOrder($order){/*...*/}\r\n}</code></pre>\r\n<p></p>',
        'single-responsibility', 1, 1, 1, '2020-12-06 21:12:49', '2021-08-21 14:18:17');
INSERT INTO `infos`
VALUES (3, 'Open-closed (Принцип открытости / закрытости)',
        '<p>\r\n  Программные сущности (классы, модули, функции) должны быть открыты для\r\n  расширения, но закрыты для модификации.\r\n</p>\r\n<p></p>\r\n<p>\r\n  Следование принципу заключается в том, что созданный изначально код остаётся\r\n  «нетронутым» и стабильным, а новая функциональность внедряется либо через\r\n  наследование реализации, либо через использование абстрактных интерфейсов и\r\n  полиморфизм.\r\n</p>\r\n<p>\r\n  Рассмотрим пример:\r\n  <a href=\"https://medium.com/webbdev/solid-4ffc018077da\">medium»</a>\r\n</p>\r\n<p>\r\n  Представим, что у нас есть магазин. Мы даём клиентам скидку в 20%, используя\r\n  такой класс :\r\n</p>\r\n<pre><code class=\"language-php\">/**\r\n * Такой подход нарушает принцип открытости-закрытости. Как видно, здесь, если нам надо \r\n * дать некоей группе клиентов особую скидку, приходится добавлять в класс новый код.\r\n */\r\nclass DiscountWRONG\r\n{\r\n    private $price;\r\n\r\n    private $userRole;\r\n\r\n    public function giveDiscount()\r\n    {\r\n        if ($this-&gt;userRole == \'default\') {\r\n            return $this-&gt;price * 0.2;\r\n        }\r\n        if ($this-&gt;userRole == \'vip\') {\r\n            return $this-&gt;price * 0.4;\r\n        }\r\n    }\r\n}\r\n</code></pre>\r\n<p>\r\n  Для того чтобы переработать этот код в соответствии с принципом\r\n  открытости-закрытости, добавим в проект новый класс, расширяющий класс\r\n  Discount. Тут используется расширение возможностей классов, а не их\r\n  модификация.\r\n</p>\r\n<pre><code class=\"language-php\">abstract class discount\r\n{\r\n    protected $price;\r\n\r\n    public function __construct($price)\r\n    {\r\n        $this-&gt;price = $price;\r\n    }\r\n\r\n    abstract function getDiscount();\r\n}\r\n\r\nclass Vip extends discount\r\n{\r\n    function getDiscount()\r\n    {\r\n        return $this-&gt;price * 0.4;\r\n    }\r\n}\r\n\r\nclass Defaul extends discount\r\n{\r\n    function getDiscount()\r\n    {\r\n        return $this-&gt;price * 0.2;\r\n    }\r\n}        </code></pre>\r\n<p>\r\n  Рассмотрим еще один пример:\r\n  <a href=\"https://habr.com/ru/post/208442/\">Habr»</a>\r\n</p>\r\n<pre><code class=\"language-php\">class OrderRepositoryWRONG\r\n{\r\n    public function load($orderID)\r\n    {\r\n        $pdo = new PDO(\'dsn\', \'user\', \'pass\');\r\n        $statement = $pdo-&gt;prepare(\'SELECT * FROM `orders` WHERE id=:id\');\r\n        $statement-&gt;execute([\':id\' =&gt; $orderID]);\r\n        return $query-&gt;fetchObject(\'Order\');\r\n    }\r\n\r\n    public function save($order){/*...*/}\r\n\r\n    public function update($order){/*...*/}\r\n\r\n    public function delete($order){/*...*/}\r\n}\r\n</code></pre>\r\n<p>\r\n  В данном случае хранилищем у нас является база данных. например, MySQL. Но\r\n  вдруг мы захотели подгружать наши данные о заказах, например, через API\r\n  стороннего сервера, который, допустим, берёт данные из 1С. Какие изменения нам\r\n  надо будет внести? Есть несколько вариантов, например, непосредственно\r\n  изменить методы класса OrderRepository, но этот не соответствует принципу\r\n  открытости/закрытости, так как класс закрыт для модификации, да и внесение\r\n  изменений в уже хорошо работающий класс нежелательно. Значит, можно\r\n  наследоваться от класса OrderRepository и переопределить все методы, но это\r\n  решение не самое лучше, так как при добавлении метода в OrderRepository нам\r\n  придётся добавить аналогичные методы во все его наследники. Поэтому для\r\n  выполнения принципа открытости/закрытости лучше применить следующее решение —\r\n  создать интерфейc IOrderSource, который будет реализовываться соответствующими\r\n  классами MySQLOrderSource, ApiOrderSource и так далее.\r\n</p>\r\n<pre><code class=\"language-php\">\r\ninterface IOrderSource\r\n{\r\n    public function load($orderID);\r\n\r\n    public function save($order);\r\n\r\n    public function update($order);\r\n\r\n    public function delete($order);\r\n}\r\n\r\nclass MySQLOrderSource implements IOrderSource\r\n{\r\n    public function load($orderID){/*...*/}\r\n\r\n    public function save($order)<br>\r\n    public function update($order){/*...*/}<br>\r\n    public function delete($order){/*...*/}<br>\r\n}\r\n\r\nclass ApiOrderSource implements IOrderSource\r\n{\r\n    public function load($orderID){/*...*/}\r\n\r\n    public function save($order){/*...*/}\r\n\r\n    public function update($order){/*...*/}<br>\r\n    public function delete($order){/*...*/}\r\n}\r\n\r\nclass OrderRepository\r\n{\r\n    /**\r\n     * @var IOrderSource\r\n     */\r\n    private $source;\r\n\r\n    public function setSource(IOrderSource $source)\r\n    {\r\n        $this-&gt;source = $source;\r\n    }\r\n\r\n    public function load($orderID)\r\n    {\r\n        return $this-&gt;source-&gt;load($orderID);\r\n    }\r\n\r\n    public function save($order)\r\n    {\r\n        return $this-&gt;source-&gt;load($order);\r\n    }\r\n\r\n    public function update($order)\r\n    {\r\n        return $this-&gt;source-&gt;load($order);\r\n    }\r\n}\r\n  </code></pre>\r\n<p>\r\n  Tаким образом, мы можем изменить источник и соответственно поведение для\r\n  класса OrderRepository, установив нужный нам класс реализующий IOrderSource,\r\n  без изменения класса OrderRepository.\r\n</p>',
        'open-closed', 1, 1, 2, '2020-12-06 21:12:49', '2021-08-21 14:45:57');
INSERT INTO `infos`
VALUES (7, 'Liskov Barbara (Подстановки Барбары Лисков)',
        '<p style=\"font-size: 14.4px;\"><span style=\"font-size: 0.9rem;\">Поведение наследуемых классов не должно противоречить поведению, заданному базовым классом, то есть результат выполнения кода должен быть предсказуем и не изменять свойств метод.</span><br></p><p><span style=\"font-size: 0.9rem;\">Наследник класса дополняет, но не заменяет поведение базового класса. То есть в любом месте программы замена базового класса на класс-наследник не должна вызывать проблем. Если по каким-то причинам так не получается, то вероятнее всего имеет место либо некорректная реализация, либо неверно выбранная абстракция для наследования.</span></p><p><span style=\"font-size: 0.9rem;\">Источники» </span><a href=\"https://habr.com/ru/post/208442/\" style=\"background-color: rgb(255, 255, 255); font-size: 0.9rem;\">Habr</a><span style=\"font-size: 0.9rem;\">\r\n  </span><a href=\"http://simple-training.com/solid-in-php/solid-3-liskovs-substitution-principle/\" style=\"background-color: rgb(255, 255, 255); font-size: 0.9rem;\">simple-training</a><span style=\"font-size: 0.9rem;\">\r\n  Рассмотрим пример:</span><br></p>\r\n<pre><code class=\"language-php\">\r\nclass Bird\r\n{\r\n    public function fly()\r\n    {\r\n        $flySpeed = 10;\r\n        return $flySpeed;\r\n    }\r\n}\r\n\r\n/**\r\n * Дочерний класс от Bird.\r\n * Не изменяет поведение, но дополняет.\r\n * Не нарушает принцип\r\n */\r\nclass Duck extends Bird\r\n{\r\n    public function fly()\r\n    {\r\n        $flySpeed = 8;\r\n        return $flySpeed;\r\n    }\r\n\r\n    public function swim()\r\n    {\r\n        $swimSpeed = 2;\r\n        return $swimSpeed;\r\n    }\r\n}\r\n\r\n/**\r\n * Дочерний класс от Bird.\r\n * Изменяет поведение.\r\n * Нарушает принцип LSP\r\n */\r\nclass Penguin extends Bird\r\n{\r\n    public function fly()\r\n    {\r\n        /* не типичное поведение - die или exception */\r\n        die(\'i can`t fly (((\');\r\n        /* не типичное поведение - возвращаем string, а не integer */\r\n        return \'i can`t fly (((\'; \r\n    }\r\n\r\n    public function swim()\r\n    {\r\n        $swimSpeed = 4;\r\n        return $swimSpeed;\r\n    }\r\n}\r\n  \r\n\r\nclass BirdRun\r\n{\r\n    private $bird;\r\n\r\n    public function __construct(Bird $bird)\r\n    {\r\n        $this-&gt;bird = $bird;\r\n    }\r\n\r\n    public function run()\r\n    {\r\n        $flySpeed = $this-&gt;bird-&gt;fly();\r\n        // ...\r\n    }\r\n}\r\n\r\n$bird = new Bird();\r\n//$bird = new Duck();\r\n//$bird = new Penguin();\r\n$birdRun = new BirdRun($bird);\r\n$birdRun-&gt;run();    </code></pre>',
        'liskov-barbara', 1, 1, 3, '2020-12-06 21:12:49', '2021-08-21 15:16:03');
INSERT INTO `infos`
VALUES (9, 'Interface segregation (Разделения интерфейса)',
        '<p>\r\n  Данный принцип гласит, что «Много специализированных интерфейсов лучше, чем\r\n  один универсальный»\r\n</p>\r\n<p>Следование этого принципа заключаеться в том, чтобы классы использующий/реализующий интерфейс знали только о тех методах, которые они\r\n  используют, что ведёт к уменьшению количества неиспользуемого кода\r\n</p>\r\n<p>\r\n  Источники:\r\n  <a href=\"https://habr.com/ru/post/208442/\" target=\"_blank\">Habr</a>\r\n  Рассмотрим пример:\r\n</p>\r\n<pre><code class=\"language-php\">\r\ninterface IItemWrong\r\n{\r\n	public function applyDiscount($discount);\r\n	public function applyPromocode($promocode);\r\n\r\n	public function setColor($color);\r\n	public function setSize($size);\r\n	\r\n	public function setCondition($condition);\r\n	public function setPrice($price);\r\n}\r\n</code></pre>\r\n<p>\r\n  Данный интефейс плох тем, что он включает слишком много методов. А что, если\r\n  наш класс товаров не может иметь скидок или промокодов, либо для него нет\r\n  смысла устанавливать материал из которого сделан (например, для книг). Таким\r\n  образом, чтобы не реализовывать в каждом классе неиспользуемые в нём методы,\r\n  лучше разбить интерфейс на несколько мелких и каждым конкретным классом\r\n  реализовывать нужные интерфейсы.\r\n</p>\r\n<pre><code class=\"language-php\">interface IItem\r\n{\r\n	public function setCondition($condition);\r\n	public function setPrice($price);\r\n}\r\n\r\ninterface IClothes\r\n{\r\n	public function setColor($color);\r\n	public function setSize($size);\r\n	public function setMaterial($material);\r\n}\r\n\r\ninterface IDiscountable\r\n{\r\n	public function applyDiscount($discount);\r\n	public function applyPromocode($promocode);\r\n}\r\n\r\nclass Book implemets IItem, IDiscountable\r\n{\r\n    public function setCondition($condition){/*...*/}\r\n    public function setPrice($price){/*...*/}\r\n    public function applyDiscount($discount){/*...*/}\r\n    public function applyPromocode($promocode){/*...*/}\r\n}\r\n\r\nclass KidsClothes implemets IItem, IClothes\r\n{\r\n    public function setCondition($condition){/*...*/}\r\n    public function setPrice($price){/*...*/}\r\n    public function setColor($color){/*...*/}\r\n    public function setSize($size){/*...*/}\r\n    public function setMaterial($material){/*...*/}\r\n}   </code></pre>\r\n<p>\r\n  Источники:\r\n  <a href=\"https://habr.com/ru/post/208442/\" target=\"_blank\">Habr</a>\r\n  Рассмотрим другой пример:\r\n</p>\r\n<pre><code class=\"language-php\">interface workerInterface\r\n{\r\n    public  function work();\r\n    public  function  sleep();\r\n}\r\n\r\nclass HumanWorker implements workerInterface\r\n{\r\n    public  function work()\r\n    {\r\n        var_dump(\'works\');\r\n    }\r\n\r\n    public  function  sleep()\r\n    {\r\n        var_dump(\'sleep\');\r\n    }\r\n}\r\n\r\nclass RobotWorker implements workerInterface\r\n{\r\n    public  function work()\r\n    {\r\n        var_dump(\'works\');\r\n    }\r\n\r\n    public  function sleep()\r\n    {\r\n        // No need\r\n    }\r\n}</code></pre>\r\n<p>RobotWorker’у не нужно спать, но класс должен реализовать метод sleep, потому что все методы в интерфейсе абстрактны. Это нарушает принцип разделения. Вот как это можно исправить:\r\n</p>\r\n\r\n<pre><code class=\"language-php\">\r\n interface WorkAbleInterface\r\n{\r\n    public  function work();\r\n}\r\n\r\ninterface SleepAbleInterface\r\n{\r\n    public  function  sleep();\r\n}\r\n\r\nclass HumanWorker implements WorkAbleInterface, SleepAbleInterface\r\n{\r\n    public  function work()\r\n    {\r\n        var_dump(\'works\');\r\n    }\r\n    \r\n    public  function  sleep()\r\n    {\r\n        var_dump(\'sleep\');\r\n    }\r\n}\r\n\r\nclass RobotWorker implements WorkAbleInterface\r\n{\r\n    public  function work()\r\n    {\r\n        var_dump(\'works\');\r\n    }\r\n} \r\n </code></pre>',
        'interface-segregation', 1, 1, 4, '2020-12-06 21:12:49', '2021-08-23 08:55:26');
INSERT INTO `infos`
VALUES (12, 'Dependency inversion (Инверсии зависимостей)',
        '<p>\r\n  Высокоуровневые модули не должны зависеть от низкоуровневых. Оба вида модулей должны зависеть от абстракций.\r\n</p>\r\n<p>\r\n  Абстракции не должны зависеть от подробностей. Подробности должны зависеть от абстракций.\r\n</p>\r\n<p>Проще говоря: зависьте от абстракций, а не от чего-то конкретного.</p>\r\n<p>\r\n  Применяя этот принцип, одни модули можно легко заменять другими, всего лишь меняя модуль зависимости, и тогда никакие перемены в низкоуровневом модуле не повлияют на высокоуровневый.\r\n</p>\r\n<p>\r\n  Источники»\r\n  <a href=\"https://habr.com/ru/company/mailru/blog/412699/\">https://habr.com/ru/company/mailru/blog/412699/</a>\r\n  <a href=\"https://habr.com/ru/post/208442/\">https://habr.com/ru/post/208442/</a>\r\n  Рассмотрим пример:\r\n</p>\r\n<pre><code class=\"language-php\">\r\nclass MySQLConnectionWrong\r\n{\r\n    /*  db connection */\r\n    public function connect()\r\n    {\r\n        var_dump(\'MYSQL Connection\');\r\n    }\r\n}\r\n\r\nclass PasswordReminderWrong\r\n{\r\n    /* @var MySQLConnectionWrong */\r\n    private $dbConnection;\r\n\r\n    public function __construct(MySQLConnectionWrong $dbConnection)\r\n    {\r\n        $this->dbConnection = $dbConnection;\r\n    }\r\n}\r\n</code></pre>\r\n<p>\r\n В приведённом коде, невзирая на то, что класс MySQLConnection был внедрён в класс PasswordReminder, последний зависит от MySQLConnection. Более высокуровневый PasswordReminder не должен зависеть от более низкуровневого модуля MySQLConnection. Если нам нужно изменить подключение с MySQLConnection на MongoDBConnection, то придётся менять прописанное в коде внедрение конструктора в класс PasswordReminder. Класс PasswordReminder должен зависеть от абстракций, а не от чего-то конкретного.\r\n</p>\r\n<pre><code class=\"language-php\">\r\ninterface ConnectionInterface\r\n{\r\n    public function connect();\r\n}\r\n\r\nclass DbConnection implements ConnectionInterface\r\n{\r\n    /* db connection */\r\n    public function connect()\r\n    {\r\n        var_dump(\'MYSQL Connection\');\r\n    }\r\n}\r\n\r\nclass PasswordReminder\r\n{\r\n    /*  @var ConnectionInterface */\r\n    private $dbConnection;\r\n\r\n    public function __construct(ConnectionInterface $dbConnection)\r\n    {\r\n        $this->dbConnection = $dbConnection;\r\n    }\r\n}\r\n  </code></pre>\r\n<p>\r\n Здесь нам нужно изменить подключение с MySQLConnection на MongoDBConnection. Нам не нужно менять внедрение конструктора в класс PasswordReminder, потому что в данном случае класс PasswordReminder зависит только от абстракции.\r\n</p>\r\n<pre><code class=\"language-php\">\r\nclass CustomerWrong\r\n{\r\n    private $currentOrder = null;\r\n\r\n    public function buyItems()\r\n    {\r\n        if (is_null($this->currentOrder)) {\r\n            return false;\r\n        }\r\n\r\n        $processor = new OrderProcessorWrong();\r\n        return $processor->checkout($this->currentOrder);\r\n    }\r\n\r\n    public function addItem($item)\r\n    {\r\n        if (is_null($this->currentOrder)) {\r\n            $this->currentOrder = new Order();\r\n        }\r\n        return $this->currentOrder->addItem($item);\r\n    }\r\n\r\n    public function deleteItem($item)\r\n    {\r\n        if (is_null($this->currentOrder)) {\r\n            return false;\r\n        }\r\n        return $this->currentOrder->deleteItem($item);\r\n    }\r\n}\r\n\r\nclass OrderProcessorWrong\r\n{\r\n    public function checkout($order)\r\n    {/*...*/\r\n    }\r\n}\r\n  </code></pre>\r\n<p>\r\nВсё кажется вполне логичным и закономерным. Но есть одна проблема — класс Customer зависит от класса OrderProcessor (мало того, не выполняется и принцип открытости/закрытости). Для того, чтобы избавится от зависимости от конкретного класса, надо сделать так чтобы Customer зависел от абстракции, т.е. от интерфейса IOrderProcessor. Данную зависимость можно внедрить через сеттеры, параметры метода, или Dependency Injection контейнера. Я решил остановится на 2 методе и получил следующий код.\r\n</p>\r\n<pre><code class=\"language-php\">\r\ninterface IOrderProcessor\r\n{\r\n    public function checkout($order);\r\n}\r\n\r\nclass OrderProcessor implements IOrderProcessor\r\n{\r\n    public function checkout($order)\r\n    {/*...*/\r\n    }\r\n}\r\n\r\nclass Customer\r\n{\r\n    private $currentOrder = null;\r\n\r\n    public function buyItems(IOrderProcessor $processor)\r\n    {\r\n        if (is_null($this->currentOrder)) {\r\n            return false;\r\n        }\r\n\r\n        return $processor->checkout($this->currentOrder);\r\n    }\r\n\r\n    public function addItem($item)\r\n    {\r\n        if (is_null($this->currentOrder)) {\r\n            $this->currentOrder = new Order();\r\n        }\r\n        return $this->currentOrder->addItem($item);\r\n    }\r\n\r\n    public function deleteItem($item)\r\n    {\r\n        if (is_null($this->currentOrder)) {\r\n            return false;\r\n        }\r\n        return $this->currentOrder->deleteItem($item);\r\n    }\r\n}\r\n  </code></pre>\r\n<p>\r\nТаким образом, класс Customer теперь зависит только от абстракции, а конкретную реализацию, т.е. детали, ему не так важны.\r\n</p>',
        'dependency-inversion', 1, 1, 5, '2020-12-06 21:12:49', '2021-08-23 09:03:19');
INSERT INTO `infos`
VALUES (15, 'KISS&&DRY',
        '<a href=\"https://ru.wikipedia.org/wiki/KISS_(%D0%BF%D1%80%D0%B8%D0%BD%D1%86%D0%B8%D0%BF)\">wikipedia</a>\r\n<p></p>\r\n<p>\r\n  <strong>KISS(«Keep it simple, stupid»)</strong> - принцип проектирвоания.\r\n  Принцип KISS утверждает, что большинство систем работают лучше всего, если они\r\n  остаются простыми, а не усложняются. Поэтому в области проектирования простота\r\n  должна быть одной из ключевых целей, и следует избегать ненужной сложности.\r\n</p>\r\n<ul>\r\n  <li>\r\n    Разбивайте задачи на подзадачи которые не должны по вашему мнению длиться\r\n    более 4-12 часов написания кода\r\n  </li>\r\n  <li>\r\n    Разбивайте задачу на множество более маленьких задач, каждая задача должна\r\n    решаться одним или парой классов\r\n  </li>\r\n  <li>\r\n    Сохраняйте ваши методы маленькими. Каждый метод должен состоять не более чем\r\n    из 30-40 строк. Каждый метод должен решать одну маленькую задачу, а не\r\n    множество случаев. Если в вашем методе множество условий, разбейте его на\r\n    несколько. Это повысит читаемость, позволит легче поддерживать код и быстрее\r\n    находить ошибки в нём. Вы полюбите улучшать код.\r\n  </li>\r\n  <li>\r\n    Сохраняйте ваши классы маленькими. Здесь применяется та же техника что и с\r\n    методами.\r\n  </li>\r\n  <li>\r\n    Придумайте решение задачи сначала, потом напишите код. Никогда не поступайте\r\n    иначе. Многие разработчики придумывают решение задачи во время написания\r\n    кода и в этом нет ничего плохого. Вы можете делать так и при этом\r\n    придерживаться выше обозначенного правила. Если вы можете в уме разбивать\r\n    задачу на более мелкие части, когда вы пишете код, делайте это любыми\r\n    способами. И не бойтесь переписывать код ещё и ещё и ещё… В счёт не идёт\r\n    число строк, до тех пор пока вы считаете что можно ещё меньше/ещё лучше.\r\n  </li>\r\n  <li>\r\n    Не бойтесь избавляться от кода. Изменение старого кода и написание нового\r\n    решения два очень важных момента. Если вы столкнулись с новыми требованиями,\r\n    или не были оповещены о них ранее, тогда порой лучше придумать новое более\r\n    изящное решение решающее и старые и новые задачи.\r\n  </li>\r\n</ul>\r\n<h2>Don’t repeat yourself, DRY</h2>\r\n<p>\r\n  <strong>Don’t repeat yourself, DRY</strong> - это принцип разработки\r\n  программного обеспечения, нацеленный на снижение повторения информации\r\n  различного рода, особенно в системах со множеством слоёв абстрагирования.\r\n  Принцип DRY формулируется как: «Каждая часть знания должна иметь единственное,\r\n  непротиворечивое и авторитетное представление в рамках системы»\r\n</p>\r\n<p><a href=\"https://habr.com/ru/post/491728/\" target=\"_blank\">Источник</a></p>\r\n<p>Начнем с контроллеров содержащих минимальное количество логики.</p>\r\n<pre><code class=\"hljs\">\r\nclass UserController\r\n{\r\n    public function create(CreateRequest $request)\r\n    {\r\n        $user = User::create($request->all());\r\n        \r\n        return view(\'user.created\', compact(\'user\'));\r\n    }\r\n}\r\n\r\nclass UserApiController\r\n{\r\n    public function create(CreateRequest $request)\r\n    {\r\n        $user = User::create($request->all());\r\n        \r\n        return response()->noContent(201);\r\n    }\r\n}\r\n</code></pre>\r\n<p>\r\n  На начальном этапе такое повторение кода кажется довольно безобидным. Но мы\r\n  уже имеем дублирование знаний, а знания дублировать запрещено. Для этого\r\n  обобщим создание пользователя в классе UserService\r\n</p>\r\n<pre><code class=\"hljs\">\r\nclass UserService\r\n{\r\n    public function create(array $data): User\r\n    {\r\n        $user = new User;\r\n        $user->email = $data[\'email\'];\r\n        $user->password = $data[\'password\'];\r\n        $user->save();\r\n\r\n        return $user;\r\n    }\r\n    \r\n    public function delete($userId): bool \r\n    {\r\n        $user = User::findOrFail($userId);\r\n \r\n        return $user->delete();\r\n    }    \r\n}\r\n</code></pre>\r\n<p>\r\n  Переместив всю логику работы с моделью в сервис, избавляемся от ее\r\n  дублирования в контроллере. Но у нас появляется другая проблема. Допустим, нам\r\n  предстоит немного усложнить процесс создания пользователя.\r\n</p>\r\n<pre><code class=\"hljs\">\r\nclass UserService\r\n{\r\n    protected $blogService;\r\n    \r\n    public function __construct(BlogService $blogService)\r\n    {\r\n        $this->blogService = $blogService;\r\n    }\r\n\r\n    public function create(array $data): User\r\n    {\r\n        $user = new User;\r\n        $user->email = $data[\'email\'];\r\n        $user->password = $data[\'password\'];\r\n        $user->save();\r\n        \r\n        $blog = $this->blogService->create();\r\n        $user->blogs()->attach($blog);\r\n\r\n        return $user;\r\n    }\r\n    \r\n    //Other methods\r\n}  \r\n</code></pre>\r\n<p>\r\n  Постепенно класс UserService начнет разрастаться и мы рискуем получить супер\r\n  класс с огромным количеством зависимостей. Для того чтобы избежать таких\r\n  последствий, можно разбить сервис на классы единого действия.\r\n</p>\r\n<pre><code class=\"hljs\">\r\nclass CreateUser\r\n{\r\n    protected $blogService;\r\n\r\n    public function __construct(BlogService $blogService)\r\n    {\r\n        $this->blogService = $blogService;\r\n    }\r\n\r\n    public function __invoke(array $data): User\r\n    {\r\n        $email = $data[\'email\'];\r\n        \r\n        if (User::whereEmail($email)->first()) {\r\n            throw new EmailNotUniqueException(\"$email should be unique!\");\r\n        }\r\n        \r\n        $user = new User;\r\n        $user->email = $data[\'email\'];\r\n        $user->password = $data[\'password\'];\r\n        $user->save();\r\n\r\n        $blog = $this->blogService->create();\r\n        $user->blogs()->attach($blog);\r\n\r\n        return $user;\r\n    }\r\n}\r\n</code></pre>\r\n<p>\r\n  У нас уже есть проверка поля email в классе CreateRequet, но логично добавить\r\n  проверку и сюда. Это более точно отображает бизнес логику создания\r\n  пользователя, а также упрощает отладку. Контроллеры обретают следующий вид\r\n</p>\r\n<pre><code class=\"hljs\">\r\nclass UserController\r\n{\r\n    public function create(CreateRequest $request, CreateUser $createUser)\r\n    {\r\n        $user = $createUser($request->all());\r\n\r\n        return view(\'user.created\', compact(\'user\'));\r\n    }\r\n}\r\n\r\nclass UserApiController\r\n{\r\n    public function create(CreateRequest $request, CreateUser $createUser)\r\n    {\r\n        $user = $createUser($request->all());\r\n\r\n        return response()->noContent(201);\r\n    }\r\n} \r\n</code></pre>\r\n<p>\r\n  В итоге имеем полностью изолированную логику создания пользователя. Ее удобно\r\n  изменять и расширять.\r\n</p>\r\n<h4>Декорирование</h4>\r\n<p>\r\n  Допустим нам необходимо регистрировать каждого нового пользователя в файл. Для\r\n  этого мы не будем встраивать это действие в сам класс CreateUser, а\r\n  воспользуемся паттерном Декоратор.\r\n</p>\r\n<pre><code class=\"hljs\">\r\nclass LogCreateUser extends CreateUser \r\n{\r\n    public function __invoke(array $data)\r\n    {\r\n        Log::info(\"A new user has registered: \" . $data[\'email\']);\r\n        \r\n        parent::__invoke($data);\r\n    }\r\n}\r\n</code></pre>\r\n<p>\r\n  Затем, используя IoC-контейнер Laravel, мы можем связать класс LogCreateUser с\r\n  классом CreateUser, и первый будет внедрен каждый раз, когда нам понадобиться\r\n  экземпляр второго.\r\n</p>\r\n<pre><code class=\"hljs\">\r\nclass AppServiceProvider extends ServiceProvider\r\n{\r\n\r\n    // ...\r\n\r\n    public function register()\r\n    {\r\n        $this->app->bind(CreateUser::class, LogCreateUser::class);\r\n    }\r\n</code></pre>\r\n<p>\r\n  Мы также имеем возможность вынести настройку создания пользователя с помощью\r\n  переменной в файле конфигурации.\r\n</p>\r\n<pre><code class=\"hljs\">\r\nclass AppServiceProvider extends ServiceProvider\r\n{\r\n\r\n    // ...\r\n\r\n    public function register()\r\n    {\r\n         if (config(\"users.log_registration\")) {\r\n             $this->app->bind(CreateUser::class, LogCreateUser::class);\r\n         }\r\n    }  \r\n</code></pre>',
        'kissdry', 1, 7, 6, '2020-12-06 21:12:50', '2021-08-31 12:32:22');
INSERT INTO `infos`
VALUES (16, 'PHP: OOP (interfaces, traits)',
        '<ul class=\"main_list\">\r\n    <li><a href=\"#class_object\">Класс и объекты</a></li>\r\n    <li><a href=\"#principle_oop\">Принципы ООП</a></li>\r\n    <li><a href=\"#this\">Ссылка на объект ($this)</a></li>\r\n    <li><a href=\"#static\">Статические свойства</a></li>\r\n    <li><a href=\"#modificators\">Модификаторы доступа</a></li>\r\n    <li><a href=\"#clone\">Клонирование</a></li>\r\n    <li><a href=\"#magic_method\">Магические методы</a></li>\r\n    <li><a href=\"#magic_const\">Магические константы и полезные функции</a></li>\r\n    <li><a href=\"#final_class\">Финальные классы и методы</a></li>\r\n    <li><a href=\"#abstract_class\">Абстрактные классы и методы</a></li>\r\n    <li><a href=\"#interface\">Интерфейсы</a></li>\r\n    <li><a href=\"#interface_vs_abstract\">В чем отличие интерфейса от абстрактного класса?</a></li>\r\n    <li><a href=\"#traits\">Traits</a></li>\r\n    <li><a href=\"#exception\">Исключение</a></li>\r\n    <li><a href=\"#q1\">Программирование на основе интерфейса. Нужен пример.</a></li>\r\n    <li><a href=\"#q2\">В чем основной смысл принципа инверсии зависимостей? Что именно мы инвертируем?</a></li>\r\n    <li><a href=\"#q3\"> Нужно реализовать функционал авторизации. На какие компоненты вы бы его разделили, так, чтобы\r\n        соблюсти принцип Single responsibility?</a></li>\r\n    <li><a href=\"#q4\">Что такое композиция?</a></li>\r\n    <li><a href=\"#q5\">Нарушает ли паттерн Active Record какой-либо из принципов SOLID?</a></li>\r\n</ul>\r\n<div id=\"class_object\">\r\n    <p>Класс - это некий шаблон, экземпляры которого можно создавать. Часто говорят об отдельном классе как об отдельном\r\n        типе данных. В классе определены свойства и методы.\r\n    </p>\r\n    <p>Свойства класса - это переменные внутри класса, а методы класса - это функции внутри класса.<br> Объект- это\r\n        экземпляр класса. Часто говорят, что класс - это как тип данных, а объект - это как переменная этого типа.\r\n        Соответственно мы может создать много экземпляров одного класса, так же как и создать много переменных одного\r\n        типа\r\n    </p>\r\n</div>\r\n\r\n<div id=\"principle_oop\">\r\n    <p>Основные принципы ООП, которыми являются <b><em>инкапсуляция, наследование и полиморфизм</em></b>\r\n    </p>\r\n    <ul>\r\n        <li><b><em>инкапсуляция</em></b> - это свойство объекта/класса регулировать доступ к определенным своим\r\n            компонентам извне самого объекта/класса.\r\n        </li>\r\n        <li><b><em>Наследование</em></b> - это свойство классов расширяться.</li>\r\n        <li><b><em>Полиморфизм</em></b> - это следствие наследования. Это свойство унаследованных классов иметь\r\n            одинаковые методы, которые будут работать по-разному в контексте объектов. Например, у нас есть класс фигура\r\n            и классы квадрат, треугольник и трапеция - унаследованные от фигуры. Каждая фигура содержит функционал для\r\n            вычисления площади, но у каждой фигуры он свой.\r\n        </li>\r\n    </ul>\r\n    <pre>        <code class=\"php\">\r\n    abstract class Publication {\r\n        // определяем правило, что все публикации должны печататься, т.е. иметь метод do_print()\r\n        abstract protected function do_print();\r\n        // испольузем final чтобы инкапсулировать логику работы данного метода\r\n        final protected function getClassName(){ return __CLASS__; }\r\n    }\r\n\r\n    class News extends Publication {\r\n       // переопределяем абстрактный метод печати\r\n       public function do_print() {\r\n           echo \'Новость\';\r\n       }\r\n    }\r\n    class Announcement extends Publication {\r\n        // переопределяем абстрактный метод печати\r\n        public function do_print() {\r\n            echo \'Объявление\';\r\n        }\r\n    }\r\n\r\n    //Наполняем массив публикаций объектами, производными от Publication\r\n    $publications[] = new News();\r\n    $publications[] = new Announcement();\r\n    // пример полиморфизма:\r\n    foreach ($publications as $publication) {\r\n        if ($publication instanceof Publication) { // Если мы работаем с наследниками Publication\r\n            $publication->do_print(); // то мы можем смело выводить данные на печать\r\n        } else {\r\n            //исключение или обработка ошибки\r\n        }\r\n    }\r\n    function printPublicationName(Publication $publication){\r\n        // пример использования метода, который инкапсулирован:\r\n        $publication->getClassName();\r\n    }\r\n    printPublicationName(new News());\r\n    printPublicationName(new Announcement());\r\n    </code>\r\n</pre>\r\n</div>\r\n\r\n<div id=\"this\">\r\n    <p>\r\n        Переменная <b><em>$this</em></b> - это специальная переменная, которая используется для доступа к объекту класса\r\n        изнутри самогокласса. Фактически, эта переменная будет содержать ссылку на объект класса.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"static\">\r\n    <p>\r\n        <b><em>Статические</em></b> свойства класса - это свойства, к которым можно обращаться без создания объекта - в\r\n        контексте самого класса. Статические свойства объявляются при определении класса при помощи специального слова\r\n        static, которое записывается после спецификатора доступа public / protected / private</p><p><b>Позднее статическое связывание </b>- получение ссылки на вызываемый класс в контексте статического наследования.</p><p>\r\n    </p>\r\n    <p>\r\n        Для обращения к константам класса, статическим свойствам и статическим методам класса изнутри самого класса\r\n        (т.е. при реализации методов класса) необходимо использовать ключевое слово <b><em>self</em></b>. После этого\r\n        ключевого слова записывается оператор :: , который позволяет обратиться к константам, статическим свойствам или\r\n        статическим методам класса. Ключевое слово self употребляется исключительно внутри класса и, фактически,\r\n        является синонимом названия текущего класса. Не путайте $this (обращение к свойствам/методам в контексте\r\n        объекта) и self (обращение к статическим свойствам/методам/константам в контексте класса). При определении\r\n        дочернего класса, для обращения к константам, статическим свойствам и методам родительского класса необходимо\r\n        использовать ключевое слово parent\r\n    </p>\r\n    <pre>    <code class=\"php\">\r\nclass A\r\n{\r\n    const SOME_CONSTANT = 512;\r\n    private static $x;\r\n\r\n    public static function setX($str)\r\n    {\r\n        self::$x = $str;\r\n    }\r\n\r\n    public static function getX()\r\n    {\r\n        return self::$x;\r\n    }\r\n}\r\n\r\nclass B extends A\r\n{\r\n    static public function test()\r\n    {\r\n        parent::setX(\'Hello\');\r\n        echo parent::getX();\r\n        echo parent::SOME_CONSTANT;\r\n    }\r\n\r\n}\r\n    </code>\r\n</pre>\r\n    <p>\r\n        Ключевое слово static используется для доступа к статическим свойствам и методам из контекста самого класса\r\n        изнутри класса (например как self, parent).\r\n    </p>\r\n    <pre>    <code class=\"php\">\r\nclass A\r\n{\r\n	public static function test()\r\n	{\r\n		echo 1;\r\n	}\r\n\r\n	public static function get()\r\n	{\r\n		self::test();\r\n	}\r\n}\r\n\r\nclass B extends A\r\n{\r\n	public static function test()\r\n	{\r\n		echo 2;\r\n	}\r\n}\r\n\r\nB::get(); // 1\r\n      \r\n\r\nclass A {\r\n    public static function foo() {\r\n        static::who();\r\n    }\r\n\r\n    public static function who() {\r\n        echo __CLASS__.\"\\n\";\r\n    }\r\n}\r\n\r\nclass B extends A {\r\n    public static function test() {\r\n        A::foo();\r\n        parent::foo();\r\n        self::foo();\r\n    }\r\n\r\n    public static function who() {\r\n        echo __CLASS__.\"\\n\";\r\n    }\r\n}\r\nclass C extends B {\r\n    public static function who() {\r\n        echo __CLASS__.\"\\n\";\r\n    }\r\n}\r\n\r\nC::test(); // A C C\r\n\r\n    </code>\r\n</pre>\r\n</div>\r\n\r\n<div id=\"modificators\">\r\n    <ul>\r\n        <li><b><em>public</em></b> - можно использовать везде.\r\n        </li>\r\n        <li><b><em>protected</em></b> - этот спецификатор означает, что свойства и методы могут использоваться только\r\n            внутри самого класса и внутри дочернего класса..\r\n        </li>\r\n        <li><b><em>private</em></b> - Этот спецификатор доступа говорит о том, что свойство или метод объекта может быть\r\n            использован(о) только внутри методов этого же класса. Т.е. оно является закрытым от внешнего кода.\r\n        </li>\r\n    </ul>\r\n</div>\r\n\r\n<div id=\"clone\">\r\n    <p>Если переменная содержит объект, то на самом деле она содержит ссылку на область памяти, где хранится объект.<br>\r\n        <b><em>Клонирование объекта</em></b> - это создание еще одного экземпляра класса, идентичного данному объекту.\r\n        Для этого используется специальное ключевое слово clone, после которого необходимо указать объект, который будет\r\n        клонирован. Эта конструкция вернет новый экземпляр класса.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"magic_method\">\r\n    <p>\r\n        <b><em>Магические методы</em></b> - это методы, которые вызываются неявно. А именно - они вызываются\r\n        втоматически, при некоторых условиях\r\n    </p>\r\n    <p>\r\n        <b><em>Конструкторы и деструкторы</em></b> - это магические методы, которые вызываются при создании объекта и\r\n        удалении его из памяти соответственно. Конструкторы автоматически не вызываються у родительского класса.\r\n    </p>\r\n    <p>\r\n        <b><em>__clone()</em></b> - будет автоматически вызвана при клонировании объекта, если она определена в\r\n        соответствующем классе..\r\n    </p>\r\n    <p>\r\n        <b><em>__get($name)</em></b> - будет автоматически вызвана при попытке использования (но не присвоения этому\r\n        свойству значения) private свойства вне класса или просто неопределенного свойства объекта. При этом функция\r\n        принимает в качестве аргумента переменную, в которую будет подставлено название свойства.\r\n    </p>\r\n    <p>\r\n        <b><em>__set($name, $val)</em></b> - будет автоматически вызвана при попытке присвоения значения private\r\n        свойству вне класса или просто неопределенному свойству объекта. При этом функция принимает в качестве\r\n        аргументов переменные, в которые будет подставлено название свойства и его значение.\r\n    </p>\r\n    <p>\r\n        <b><em>__call($name, $arguments)</em></b> - будет вызван при попытке вызова private метода объекта или\r\n        неопределенного метода в классе. Он принимает аргументы в виде названия метода и переданных значений в этот\r\n        метод.\r\n    </p>\r\n    <p>\r\n        <b><em>__callStatic($name, $arguments)</em></b> -будет вызван при попытке вызова статического private метода\r\n        объекта или неопределенного метода в классе в статическом контексте. Он принимает аргументы в виде названия\r\n        метода и переданных значений в этот метод. Также, он должен быть определен как статический.\r\n    </p>\r\n    <p>\r\n        <b><em>_isset($name), __unset($name)</em></b> -будут автоматически вызваны при попытке применить функции isset\r\n        или unset(соответственно) к privateили неопределенным свойствам объекта.\r\n    </p>\r\n    <p>\r\n        <b><em>__sleep()</em></b> -будет автоматически вызван перед сериализацией объекта. Этот метод должен вернуть\r\n        массив из названий public свойств объекта, которые будут сериализованы.\r\n    </p>\r\n    <p>\r\n        <b><em>__wakeup()</em></b> -будет автоматически вызван перед восстановлением объекта после сериализации.\r\n    </p>\r\n    <p>\r\n        <b><em>__toString()</em></b> - будет вызван автоматически при попытке привести объект к строке.\r\n    </p>\r\n    <p>\r\n        <b><em>__invoke()</em></b> -будет вызван при попытке использовать объект как функцию- т.е. выполнить вызов.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"magic_const\">\r\n    <p>\r\n        Константа <b><em>__CLASS__</em></b> содержит название класса, в котором она была использована.\r\n    </p>\r\n    <p>\r\n        Константа<b><em> __METHOD__</em></b> содержит название метода, в котором она была использована.\r\n    </p>\r\n    <p>\r\n        Рассмотрим некоторые полезные функции для работы с классами: <b><em>class_exists(), get_class(),\r\n        method_exists(), property_exists().</em></b>\r\n    </p>\r\n    <p>\r\n        Функции class_exists($className), method_exists($className, $methodName), property_exists($className, $varName)\r\n        проверяют, определен ли: класс с указанным названием, определен ли метод с указанным названием в указанном\r\n        классе, определено ли свойство в указанном классе (соответственно).\r\n    </p>\r\n    <p>\r\n        Функция get_class($obj) возвращает название класса по указанной ссылке на соответствующий объект.\r\n    </p>\r\n</div>\r\n<div id=\"final_class\">\r\n    <p>\r\n        Ключевое слово final перед определением класса означает, что этот класс не может иметь дочерних классов - т.е.\r\n        является финальным в смысле наследования. Финальными могут быть также и методы класса. Ключевое слово final в\r\n        этом случае необходимо записать перед определением метода. Это означает, что в дочернем классе соответствующий\r\n        метод не может быть переопределен.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"abstract_class\">\r\n    <p>\r\n        <b><em>Абстрактный класс</em></b> - это класс, для которого не могут быть созданы его экземпляры. Для того, чтоб\r\n        определить класс, как абстрактный, необходимо записать ключевое слово abstract перед словом class.<br> Тогда\r\n        любая попытка создать экземпляр этого класса будет означать fatal error и работа скрипта будет остановлена.\r\n        Методы, объявленные абстрактными, несут, по существу, лишь описательный смысл и не могут включать реализацию.\r\n    </p>\r\n    <p>\r\n        При наследовании от абстрактного класса, все методы, помеченные абстрактными в родительском классе, должны быть\r\n        определены в дочернем классе; кроме того, область видимости этих методов должна совпадать (или быть менее\r\n        строгой). Например, если абстрактный метод объявлен как protected, то реализация этого метода должна быть\r\n        protected или public, но не private. Более того, объявления методов должны совпадать, то есть контроль типов\r\n        (type hint) и количество обязательных аргументов должно быть одинаковым. К примеру, если в дочернем классе\r\n        указан необязательный параметр, которого нет в объявлении абстрактного класса, то в данном случае конфликта\r\n        объявлений методов не будет.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"interface\">\r\n    <p>\r\n        <b><em>Интерфейс</em></b> - это соглашение. контракт или договор. Интерфейсы объектов позволяют создавать код,\r\n        который указывает, какие методы должен реализовать класс, без необходимости определять, как именно они должны\r\n        быть реализованы. Интерфейсы объявляются так же, как и обычные классы, но с использованием ключевого слова\r\n        interface вместо class. Тела методов интерфейсов должны быть пустыми. Все методы, определенные в интерфейсах\r\n        должны быть общедоступными, что следует из самой природы интерфейса. На практике интерфейсы используются в двух\r\n        взаимодополняющих случаях:\r\n    </p>\r\n    <ul>\r\n        <li>Чтобы позволить разработчикам создавать объекты разных классов, которые могут использоваться\r\n            взаимозаменяемо, поскольку они реализуют один и тот же интерфейс или интерфейсы. Типичный пример - несколько\r\n            служб доступа к базе данных, несколько платёжных шлюзов или разных стратегий кеширования. Различные\r\n            реализации могут быть заменены без каких-либо изменений в коде, который их использует.\r\n        </li>\r\n        <li>Чтобы разрешить функции или методу принимать и оперировать параметром, который соответствует интерфейсу, не\r\n            заботясь о том, что ещё может делать объект или как он реализован. Эти интерфейсы часто называют Iterable,\r\n            Cacheable, Renderable и так далее, чтобы описать их поведение.\r\n        </li>\r\n    </ul>\r\n    <p>\r\n        Для реализации интерфейса используется оператор implements. Класс должен реализовать все методы, описанные в\r\n        интерфейсе, иначе произойдет фатальная ошибка. При желании классы могут реализовывать более одного интерфейса,\r\n        разделяя каждый интерфейс запятой. Интерфейсы могут быть унаследованы друг от друга, так же, как и классы, с\r\n        помощью оператора extends.\r\n    </p>\r\n    <p>\r\n        Интерфейсы могут содержать константы. Константы интерфейсов работают точно так же, как и константы классов, за\r\n        исключением того, что они не могут быть переопределены наследующим классом или интерфейсом.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"interface_vs_abstract\">\r\n    <p>\r\n        Для интерфейсов, как и для абстрактных классов нельзя создать экземпляры. Отличие абстрактного класса от\r\n        интерфейса состоит в том, что :\r\n    </p>\r\n    <ul>\r\n        <li>Интерфейсе - это контракт. Необходимо опускать тело всех методов, содержит только сигнатуры методов, а\r\n            абстрактный класс может содержать реализацию отдельных методов, также определять переменные экземпляра\r\n            класса\r\n        </li>\r\n        <li>Для классов невозможно множественное наследование, в отличии от интерфейсов</li>\r\n        <li>Абстрактный класс нужен, когда нужно семейство классов, у которых есть много общего. Конечно, можно\r\n            применить и интерфейс, но тогда нужно будет писать много идентичного кода.\r\n        </li>\r\n    </ul>\r\n    <p>\r\n        Абстрактный класс хорош, когда есть общие черты, которые должны быть общими для всех.<br> Интерфейс - когда все\r\n        ф-ции должны быть реализованы по-разному для разных обьектов.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"traits\">\r\n    <p>\r\n        Трейт - это механизм обеспечения повторного использования кода в языках с поддержкой только одиночного\r\n        наследования, таких как PHP. Трейт предназначен для уменьшения некоторых ограничений одиночного наследования,\r\n        позволяя разработчику повторно использовать наборы методов свободно, в нескольких независимых классах и\r\n        реализованных с использованием разных архитектур построения классов. Семантика комбинации трейтов и классов\r\n        определена таким образом, чтобы снизить уровень сложности, а также избежать типичных проблем, связанных с\r\n        множественным наследованием и смешиванием (mixins).\r\n    </p>\r\n\r\n    <p>\r\n        Трейт очень похож на класс, но предназначен для группирования функционала хорошо структурированным и\r\n        последовательным образом. Невозможно создать самостоятельный экземпляр трейта. Это дополнение к обычному\r\n        наследованию и позволяет сделать горизонтальную композицию поведения, то есть применение членов класса без\r\n        необходимости наследования.\r\n    </p>\r\n    <p>\r\n        В класс можно добавить несколько трейтов, перечислив их в директиве use через запятую.\r\n    </p>\r\n    <p>\r\n        Если два трейта вставляют метод с одним и тем же именем, это приводит к фатальной ошибке в случае, если конфликт\r\n        явно не разрешен.<br> Для разрешения конфликтов именования между трейтами, используемыми в одном и том же\r\n        классе, необходимо использовать оператор insteadof для того, чтобы точно выбрать один из конфликтующих методов.\r\n    </p>\r\n    <p>\r\n        Так как предыдущий оператор позволяет только исключать методы, оператор as может быть использован для включения\r\n        одного из конфликтующих методов под другим именем. Используя синтаксис оператора as, можно также изменить\r\n        видимость метода в использующем трейт классе.\r\n    </p>\r\n<pre><code class=\"php\">\r\ntrait HelloWorld {\r\n    public function sayHello() {\r\n        echo \'Hello World!\';\r\n    }\r\n}\r\n\r\n// Изменение видимости метода sayHello\r\nclass MyClass1 {\r\n    use HelloWorld { sayHello as protected; }\r\n}\r\n\r\n// Создание псевдонима метода с изменённой видимостью\r\n// видимость sayHello не изменилась\r\nclass MyClass2 {\r\n    use HelloWorld { sayHello as private myPrivateHello; }\r\n}</code></pre>\r\n    <p>\r\n        В этом примере Talker использует трейты A и B. Так как в A и B есть конфликтующие методы, он определяет\r\n        использовать вариант smallTalk из трейта B, а вариант bigTalk - из трейта A.<br> Класс Aliased_Talker применяет\r\n        оператор as чтобы получить возможность использовать имплементацию bigTalk из B под дополнительным псевдонимом\r\n        talk.\r\n    </p>\r\n<pre><code class=\"php\">\r\ntrait A {\r\n    public function smallTalk() {\r\n        echo \'a\';\r\n    }\r\n    public function bigTalk() {\r\n        echo \'A\';\r\n    }\r\n}\r\n\r\ntrait B {\r\n    public function smallTalk() {\r\n        echo \'b\';\r\n    }\r\n    public function bigTalk() {\r\n        echo \'B\';\r\n    }\r\n}\r\n\r\nclass Talker {\r\n    use A, B {\r\n        B::smallTalk insteadof A;\r\n        A::bigTalk insteadof B;\r\n    }\r\n}\r\n\r\nclass Aliased_Talker {\r\n    use A, B {\r\n        B::smallTalk insteadof A;\r\n        A::bigTalk insteadof B;\r\n        B::bigTalk as talk;\r\n    }\r\n}\r\n</code>\r\n</pre>\r\n    <p>\r\n        Пример #6 Пример изменения видимости метода\r\n    </p>\r\n    <pre>        <code class=\"php\">\r\n        trait HelloWorld {\r\n            public function sayHello() {\r\n                echo \'Hello World!\';\r\n            }\r\n        }\r\n\r\n        // Изменение видимости метода sayHello\r\n        class MyClass1 {\r\n            use HelloWorld { sayHello as protected; }\r\n        }\r\n\r\n        // Создание псевдонима метода с измененной видимостью\r\n        // видимость sayHello не изменилась\r\n        class MyClass2 {\r\n            use HelloWorld { sayHello as private myPrivateHello; }\r\n        }\r\n    </code>\r\n</pre>\r\n\r\n</div>\r\n\r\n<div id=\"exception\">\r\n    <p>\r\n        Исключение - это действие, которое не укладывается в работу приложения. Исключения используют для того, чтобы\r\n        корректно обрабатывать ошибки, возникающие в коде программы. Как правило к исключениям применяется терминология\r\n        бросить-поймать. Исключение бросается в том месте кода, когда ошибка неизбежна. Это, в свою очередь, означает,\r\n        что оно должно быть поймано - т.е. обработано.\r\n    </p>\r\n\r\n</div>\r\n\r\n<div id=\"q1\">\r\n    <p>\r\n        Описание методов без конкретной реализации. Контракт между разработчиками - взаимедествия между классами\r\n    </p>\r\n</div>\r\n\r\n<div id=\"q2\">\r\n    <p>\r\n        Зависимость от абстракций, а не от чего-то конкретного. Применяя этот принцип, одни модули можно легко заменять\r\n        другими, всего лишь меняя модуль зависимости, и тогда никакие перемены в низкоуровневом модуле не повлияют на\r\n        высокоуровневый.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"q3\">\r\n    <p>\r\n        Валидация<br> Работа с БД<br> Чекер<br> Сессия<br>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"q4\">\r\n    <p>В объектно-ориентированных языках программирования существует способы организации взаимодействия между классами.\r\n    </p>\r\n    <ul>\r\n        <li>\r\n            <b>Наследование</b> — это когда класс-наследник имеет все поля и методы родительского класса, и, как\r\n            правило, обавляет какой-то новый функционал или/и поля.\r\n        </li>\r\n        <li>\r\n            <b>Композиция</b> – Свойство,которое будет содержать ссылку на другой объект этого класса, когда один объект\r\n            предоставляет другому свою функциональность частично или полностью. Это по сути включение класса, внутрь\r\n            другого класса с помощью создания объекта внутри этого класса. У такого подхода есть один огромный\r\n            недостаток - сильная связанность\r\n        </li>\r\n        <li>\r\n            <b>Агрегация</b> – это когда экземпляр зависимого обьекта создается где-то в другом месте кода, и передается\r\n            в конструктор в качестве параметра.\r\n        </li>\r\n    </ul>\r\n    <a href=\"https://habr.com/ru/post/354046/\" target=\"_blank\" class=\"btn btn-primary\">\r\n        https://habr.com/ru/post/354046/ </a> <br> <a href=\"https://habr.com/ru/post/325478/\" target=\"_blank\" class=\"btn btn-primary\"> https://habr.com/ru/post/325478/ </a>\r\n</div>\r\n\r\n<div id=\"q5\">\r\n    <p>Реализации данного шаблона часто нарушают принцип единственной ответственности (SRP), совмещая в одном объекте\r\n        как представление и внутреннюю логику самого объекта, так и механизмы работу со слоем хранения, поэтому Active\r\n        Record может считаться антипаттерном.</p>\r\n    <pre><code class=\"php\">\r\nclass Foo\r\n{\r\n    protected $db;\r\n    public $id;\r\n    public $bar;\r\n\r\n    public function __construct(PDO $db)\r\n    {\r\n        $this->db = $db;\r\n    }\r\n\r\n    public function do_something()\r\n    {\r\n        $this->bar .= uniqid();\r\n    }\r\n\r\n    public function save()\r\n    {\r\n        if ($this->id) {\r\n            $sql = \"UPDATE foo SET bar = :bar WHERE id = :id\";\r\n            $statement = $this->db->prepare($sql);\r\n            $statement->bindParam(\"bar\", $this->bar);\r\n            $statement->bindParam(\"id\", $this->id);\r\n            $statement->execute();\r\n        }\r\n        else {\r\n            $sql = \"INSERT INTO foo (bar) VALUES (:bar)\";\r\n            $statement = $this->db->prepare($sql);\r\n            $statement->bindParam(\"bar\", $this->bar);\r\n            $statement->execute();\r\n            $this->id = $this->db->lastInsertId();\r\n        }\r\n    }\r\n}\r\n\r\n//Insert\r\n$foo = new Foo($db);\r\n$foo->bar = \'baz\';\r\n$foo->save();\r\n</code></pre>\r\n    <a href=\"https://ru.wikipedia.org/wiki/ActiveRecord\" target=\"_blank\" class=\"btn btn-primary\">\r\n        https://ru.wikipedia.org/wiki/ActiveRecord </a> <br> <a href=\"https://habr.com/ru/post/198450/\" target=\"_blank\" class=\"btn btn-primary\">\r\n    https://habr.com/ru/post/198450/ </a>\r\n</div>\r\n\r\n<p><br></p>',
        'php-oop-interfaces-traits', 1, 7, 5, '2020-12-06 21:12:50', '2023-02-07 22:44:26');
INSERT INTO `infos`
VALUES (25, 'Краткий обзор Индексов таблиц MySQL',
        '<ul class=\"main_list\">\r\n    <li>\r\n        <a href=\"#mysql_index\">Что такое индексы, классификация индексов?</a>\r\n        <ul>\r\n            <li>\r\n                <a href=\"#type_index\">Типы индексов?</a>\r\n            </li>\r\n            <li>\r\n                <a href=\"#classification_index\">Классификация индексов?</a>\r\n            </li>\r\n            <li>\r\n                <a href=\"#save_index\">Где и как храниться индекс?</a>\r\n            </li>\r\n            <li>\r\n                <a href=\"#index_create\">Почему не стоит добавлять индексы сразу на каждую колонку? Когда нужно создавать\r\n                    индексы\r\n                </a>\r\n            </li>\r\n            <li>\r\n                <a href=\"#crud_index\">Создание\\удаление\\просмотр индексов</a>\r\n            </li>\r\n        </ul>\r\n    </li>\r\n    <li>\r\n        <a href=\"#cardinality\">Что такое Cardinality и зачем оно нужно</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#select_row\">Селективность</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#foreign_key\">Внешний ключ</a>\r\n        <ul>\r\n            <li>\r\n                <a href=\"#crud_foreign_key\">Создание внешних ключей</a>\r\n            </li>\r\n            <li>\r\n                <a href=\"#cud_foreign_key\">СON DELETE и ON UPDATE</a>\r\n            </li>\r\n        </ul>\r\n    </li>\r\n    <li>\r\n        <a href=\"#source\">Источники</a>\r\n    </li>\r\n</ul>\r\n\r\n<div id=\"mysql_index\">\r\n    <p>\r\n        <b>Индексы в MySQL</b> - это важный и полезный инструмент, который позволяет оптимизировать выборку из базы\r\n        данных. Использование индексов значительно сокращает время выполнения запроса, что позволяет быстрее получать\r\n        данные. Ощутимую разницу при использовании MySql индексов можно увидеть при работе с таблицами крупных размеров.\r\n        Индекс представляет из себя структуру, в которой хранятся значения одного или нескольких столбца[ов] таблицы и\r\n        ссылок на строки, где эти значения расположены. Для хранения индексов чаще всего используются \"b-tree\".\r\n    </p>\r\n</div>\r\n\r\n<div id=\"type_index\">\r\n    <ul>\r\n        <li>\r\n            <b>btree</b>(хранит элементы в отсортированном порядке) -поиск по диапазонам, =, &gt;, &gt;=, &lt;, &lt;=,\r\n            or BETWEEN operators or Like\r\n            <ul>\r\n                <li>primary</li>\r\n                <li>unique</li>\r\n                <li>key|index</li>\r\n                <li>FULLTEXT</li>\r\n            </ul>\r\n        </li>\r\n        <li>\r\n            <b>hash</b>- очень быстрый поиск по полному значению индекса, но масса ограничений: не может использовать в\r\n            выражениях &lt;, &gt;, только в =, IN, &lt;&gt;, нельзя использовать для сортировки,нельзя использовать для\r\n            поиска по префиксу. Эмуляция через B-TREE\r\n            <pre>            <code>\r\nSELECT id FROM url WHERE url=\'http://www.mysql.com\'\r\nAND url_crc=CRC32(\'http://www.mysql.com\');\r\n//Выборка ведется по url для разрешения коллизий.\r\n//Заполнение url_crc - триггер или слой модели. Внимательно выбираем хэш-функцию, SHA1, MD5 - слишком сложные и длинные.\r\nCREATE TRIGGER `url_crc_fill` BEFORE INSERT ON `url`\r\n  FOR EACH ROW BEGIN\r\n    SET NEW.url_crc = CRC32(NEW.url);\r\n  END $$\r\nDELIMITER ;\r\n            </code>\r\n        </pre>\r\n        </li>\r\n    </ul>\r\n</div>\r\n\r\n<div id=\"classification_index\">\r\n    <ul>\r\n        <li>\r\n            <b>Primary</b> - основной ключ, который позволяет хранить свои значения как уникальные записи таблицы.\r\n            Значения первичного поля не допускают повторений в своих значениях. Данный тип ключа должен присутствовать в\r\n            таблице в единственном экземпляре и не допускают значения NULL.\r\n        </li>\r\n        <li>\r\n            <b>UNIQUE</b> -Это удобно для колонок, значения в которых должны быть уникальными по всей таблице. Такие\r\n            индексы улучшают эффективность выборки для уникальных значений\r\n        </li>\r\n        <li><b>Составные индексы</b> - данный тип индекса включает в индексирование несколько полей. Данный тип\r\n            индексирования обычно используется в запросах, в которых необходимо произвести выборку по нескольким полям\r\n            (там где в условии WHERE встречается более одного параметра). Очередность колонок в индексе будет играть\r\n            большую роль\r\n        </li>\r\n    </ul>\r\n\r\n    <p>\r\n        Пример:<br> <code>mysql SELECT * FROM tbl_name WHERE col1=val1 AND col2=val2</code> Если по столбцам col1 и col2\r\n        существует многостолбцовый индекс, то соответствующие строки могут выбираться напрямую. В случае, когда по\r\n        столбцам col1 и col2 существуют раздельные индексы, оптимизатор пытается найти наиболее ограничивающий индекс\r\n        путем определения, какой индекс найдет меньше строк, и использует данный индекс для выборки этих строк. Если\r\n        данная таблица имеет многостолбцовый индекс, то любой крайний слева префикс этого индекса может использоваться\r\n        оптимизатором для нахождения строк. Например, если имеется индекс по трем столбцам (col1,col2,col3), то\r\n        существует потенциальная возможность индексированного поиска по (col1), (col1,col2) и (col1,col2,col3).\r\n    </p>\r\n\r\n</div>\r\n\r\n<div id=\"save_index\">\r\n    <p>\r\n        Файл со сортированной колонкой -&gt; id строки\r\n    </p>\r\n</div>\r\n\r\n<div id=\"index_create\">\r\n    <p>\r\n        Еффекта не будет + место будет занимать + условия запросов поиска надо\r\n    </p>\r\n    <ul>\r\n        <li>\r\n            Индексы следует создавать по мере обнаружения медленных запросов. В этом поможет slow log в MySQL. Запросы,\r\n            которые выполняются более 1 секунды являются первыми кандидатами на оптимизацию.\r\n        </li>\r\n        <li>\r\n            Начинайте создание индексов с самых частых запросов. Запрос, выполняющийся секунду, но 1000 раз в день\r\n            наносит больше ущерба, чем 10-секундный запрос, который выполняется несколько раз в день.\r\n        </li>\r\n        <li>\r\n            Не создавайте индексы на таблицах, число записей в которых меньше нескольких тысяч. Для таких размеров\r\n            выигрыш от использования индекса будет почти незаметен.\r\n        </li>\r\n        <li>\r\n            Не создавайте индексы заранее, например, в среде разработки. Индексы должны устанавливаться исключительно\r\n            под форму и тип нагрузки работающей системы.\r\n        </li>\r\n        <li>Удаляйте неиспользуемые индексы.</li>\r\n    </ul>\r\n</div>\r\n\r\n<div id=\"crud_index\">\r\n    <p>Создание индексов: <code>ALTER TABLE [table_name] ADD [index_name] ([table_field]);</code></p>\r\n\r\n    <p>Для просмотра информации по индексам необходимо исполнить запрос: <code>SHOW INDEX FROM [table_name];</code></p>\r\n\r\n    <p>Для удаления индекса необходимо исполнить запрос: <code> DROP INDEX [table_field] ON [table_name];</code></p>\r\n</div>\r\n\r\n<div id=\"cardinality\">\r\n    <p>\r\n        Cardinality характеризует уникальность данных. Высокая кардинальность - уникальные данные, низкая кардинальность\r\n        - повторяющиеся данные (например, столбец, в котором хранятся либо \"истинные\", либо \"ложные\" ).\r\n    </p>\r\n</div>\r\n\r\n<div id=\"select_row\">\r\n<pre>    <code>\r\n        mysql&gt; select age, count(*) from users group by age;\r\n        +------+----------+\r\n        | age  | count(*) |\r\n        +------+----------+\r\n        |   15 |      160 |\r\n        |   16 |      250 |\r\n        |        ...      |\r\n        |   76 |      210 |\r\n        |   85 |      230 |\r\n        +------+----------+\r\n        68 rows in set (0.00 sec)\r\n\r\n        mysql&gt; select gender, count(*) from users group by gender;\r\n        +--------+----------+\r\n        | gender | count(*) |\r\n        +--------+----------+\r\n        | female |     8740 |\r\n        | male   |     4500 |\r\n        +--------+----------+\r\n    </code>\r\n</pre>\r\n    <p>\r\n        Эта информация говорит нам вот о чем:\r\n    </p>\r\n    <ul>\r\n        <li>Любое значение колонки age обычно содержит около 200 записей.</li>\r\n        <li>Любое значение колонки gender — около 6000 записей.</li>\r\n    </ul>\r\n    <p>\r\n        Если колонка age будет идти первой в индексе, тогда MySQL после первой части индекса сократит количество записей\r\n        до 200. Останется сделать выборку по ним. Если же колонка gender будет идти первой, то количество записей будет\r\n        сокращено до 6000 после первой части индекса. Т.е. на порядок больше, чем в случае age. Это значит, что индекс\r\n        age_gender будет работать лучше, чем gender_age.\r\n    </p>\r\n    <p>\r\n        <b>Селективность</b> колонки определяется количеством записей в таблице с одинаковыми значениями. Когда записей\r\n        с одинаковым значением мало — селективность высокая. Такие колонки необходимо использовать первыми в составных\r\n        индексах.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"foreign_key\">\r\n    <p>\r\n        Внешний ключ -Это поле (или набор полей), значения которого берутся из другой таблицы. Некая сылка на запись с\r\n        другой таблицы. Таким образом устанавливается связь между разными таблицами. Основным предназначением внешнего\r\n        ключа является поддержка целостности данных, которые сохранены в разных таблицах. Внешние ключи позволяют\r\n        установить связи между таблицами. Внешний ключ устанавливается для столбцов из зависимой, подчиненной таблицы, и\r\n        указывает на один из столбцов из главной таблицы. Как правило, внешний ключ указывает на первичный ключ из\r\n        связанной главной таблицы.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"crud_foreign_key\">\r\n    <p>\r\n        Общий синтаксис установки внешнего ключа на уровне таблицы: <br> <code> [CONSTRAINT имя_ограничения] FOREIGN KEY\r\n        (col1, col12, ... col1N)<br> REFERENCES главная_таблица (col1, col12, ... col1N)<br> [ON DELETE действие] [ON\r\n        UPDATE действие] </code>\r\n    </p>\r\n\r\n    <p>\r\n        Для создания ограничения внешнего ключа после <b>FOREIGN KEY</b> указывается столбец таблицы, который будет\r\n        представляет внешний ключ. А после ключевого слова <b>REFERENCES</b> указывается имя связанной таблицы, а затем\r\n        в скобках имя связанного столбца, на который будет указывать внешний ключ. После выражения <b>REFERENCES</b>\r\n        идут выражения <b>ON DELETE</b> и <b>ON UPDATE</b>, которые задают действие при удалении и обновлении строки из\r\n        главной таблицы соответственно.\r\n    </p>\r\n    <p>\r\n        Например, определим две таблицы и свяжем их посредством внешнего ключа:\r\n    </p>\r\n    <pre>    <code>\r\n    CREATE TABLE Customers\r\n    (\r\n        Id INT PRIMARY KEY AUTO_INCREMENT,\r\n        Age INT,\r\n        FirstName VARCHAR(20) NOT NULL,\r\n        LastName VARCHAR(20) NOT NULL,\r\n        Phone VARCHAR(20) NOT NULL UNIQUE\r\n    );\r\n\r\n    CREATE TABLE Orders\r\n    (\r\n        Id INT PRIMARY KEY AUTO_INCREMENT,\r\n        CustomerId INT,\r\n        CreatedAt Date,\r\n        FOREIGN KEY (CustomerId)  REFERENCES Customers (Id)\r\n    );\r\n    </code>\r\n</pre>\r\n\r\n    <p>\r\n        В данном случае определены таблицы Customers и Orders. Customers является главной и представляет клиента. Orders\r\n        является зависимой и представляет заказ, сделанный клиентом. Таблица Orders через столбец CustomerId связана с\r\n        таблицей Customers и ее столбцом Id. То есть столбец CustomerId является внешним ключом, который указывает на\r\n        столбец Id из таблицы Customers\r\n    </p>\r\n\r\n    <p>\r\n        С помощью оператора <b>CONSTRAINT</b> можно задать имя для ограничения внешнего ключа:\r\n    </p>\r\n    <pre>    <code>\r\n    CREATE TABLE Orders\r\n    (\r\n        Id INT PRIMARY KEY AUTO_INCREMENT,\r\n        CustomerId INT,\r\n        CreatedAt Date,\r\n        CONSTRAINT orders_custonmers_fk\r\n        FOREIGN KEY (CustomerId)  REFERENCES Customers (Id)\r\n    );\r\n    </code>\r\n</pre>\r\n</div>\r\n\r\n<div id=\"cud_foreign_key\">\r\n    <p>\r\n        С помощью выражений ON DELETE и ON UPDATE можно установить действия, которые выполняются соответственно при\r\n        удалении и изменении связанной строки из главной таблицы. В качестве действия могут использоваться следующие\r\n        опции:\r\n    </p>\r\n    <ul>\r\n        <li>\r\n            <b>CASCADE</b>: автоматически удаляет или изменяет строки из зависимой таблицы при удалении или изменении\r\n            связанных строк в главной таблице.\r\n        </li>\r\n        <li>\r\n            <b>SET NULL</b>: при удалении или обновлении связанной строки из главной таблицы устанавливает для столбца\r\n            внешнего ключа значение NULL. (В этом случае столбец внешнего ключа должен поддерживать установку NULL)\r\n        </li>\r\n        <li><b>NO ACTION</b>: то же самое, что и RESTRICT.</li>\r\n        <li>\r\n            <b>RESTRICT</b>: отклоняет удаление или изменение строк в главной таблице при наличии связанных строк в\r\n            зависимой таблице.\r\n        </li>\r\n        <li>\r\n            <b>SET DEFAULT</b>: при удалении связанной строки из главной таблицы устанавливает для столбца внешнего\r\n            ключа значение по умолчанию, которое задается с помощью атрибуты DEFAULT. Несмотря на то, что данная опция в\r\n            принципе доступна, однако движок InnoDB не поддерживает данное выражение.\r\n        </li>\r\n    </ul>\r\n    <p>\r\n        Каскадное удаление позволяет при удалении строки из главной таблицы автоматически удалить все связанные строки\r\n        из зависимой таблицы. Для этого применяется опция <b>CASCADE:</b>\r\n    </p>\r\n\r\n    <pre>    <code>\r\n    CREATE TABLE Orders\r\n    (\r\n        Id INT PRIMARY KEY AUTO_INCREMENT,\r\n        CustomerId INT,\r\n        CreatedAt Date,\r\n        FOREIGN KEY (CustomerId) REFERENCES Customers (Id) ON DELETE CASCADE\r\n    );\r\n    </code>\r\n</pre>\r\n\r\n</div>\r\n\r\n<div id=\"source\">\r\n    <a class=\"btn btn-secondary\" target=\"_blank\" href=\"https://ruhighload.com/%D0%9A%D0%B0%D0%BA+%D0%BF%D1%80%D0%B0%D0%B2%D0%B8%D0%BB%D1%8C%D0%BD%D0%BE+%D0%BF%D0%BE%D1%81%D1%82%D0%B0%D0%B2%D0%B8%D1%82%D1%8C+%D0%B8%D0%BD%D0%B4%D0%B5%D0%BA%D1%81%D1%8B+%D0%B2+mysql%3F\">\r\n        ruhighload\r\n    </a>\r\n    <a class=\"btn btn-secondary\" target=\"_blank\" href=\"https://ruhighload.com/%D0%98%D0%BD%D0%B4%D0%B5%D0%BA%D1%81%D1%8B+%D0%B2+mysql\">\r\n        ruhighload\r\n    </a>\r\n    <a class=\"btn btn-secondary\" target=\"_blank\" href=\"https://devionity.com/ru/courses/mysql-fundamentals/normalization\"> devionity\r\n    </a>\r\n</div>\r\n\r\n<p><br></p>',
        'kratkii-obzor-indeksov-tablic-mysql', 1, 11, 3, '2020-12-06 21:12:50', '2022-02-04 12:10:05');
INSERT INTO `infos`
VALUES (27, 'Типы связей',
        '<p>\r\n  Источники»\r\n  <a class=\"btn btn-secondary\" target=\"_blank\" href=\"https://devionity.com/ru/courses/mysql-fundamentals/1-1-relation\" role=\"button\">\r\n    devionity\r\n  </a>\r\n</p>\r\n<p>Связи таблиц могут быть трех типов:</p>\r\n<ul>\r\n  <li>\r\n    один к одному\r\n  </li>\r\n  <li>один ко многим</li>\r\n  <li>многие ко многим</li>\r\n</ul>\r\n\r\n<h2>Один к одному</h2>\r\n<p>\r\n  Этот тип связи означает, что одной записи из таблицы А может соответствовать 0\r\n  или 1 запись из таблицы B.\r\n</p>\r\n<p>\r\n  Рассмотрим пример. Пусть необходимо составить распределение водителей по\r\n  машинам - какой водитель будет водить какую машину (за время одной смены).\r\n  Ясно, что водитель может либо быть выходным (без машины), либо получить в свое\r\n  распоряжение лишь одну. Он не может водить две машины одновременно.\r\n</p>\r\n<pre>    <code>\r\n        drivers\r\n        +----+--------+\r\n        | id | driver |\r\n        +----+--------+\r\n        |  1 | Mike   |\r\n        |  2 | Bob    |\r\n        |  3 | Tod    |\r\n        |  4 | Johnny |\r\n        |  5 | Steve  |\r\n        +----+--------+\r\n\r\n        cars\r\n        +----+------------+-----------+\r\n        | id | car        | driver_id |\r\n        +----+------------+-----------+\r\n        |  1 | Ford Focus |         5 |\r\n        |  2 | Kia Ceed   |         3 |\r\n        |  3 | BMW 7      |         4 |\r\n        |  4 | Smart      |         1 |\r\n        +----+------------+-----------+\r\n    </code>\r\n</pre>\r\n<h2>Один ко многим</h2>\r\n<p>\r\n  Связь один ко многим означает, что отдельной записи в таблице А может\r\n  соответствовать 0 или более записей в таблице В.\r\n</p>\r\n<p>\r\n  Рассмотрим пример. В таблице brands мы сохраним список брендов, а в таблице\r\n  cars_stock мы сохраним список машин, которые в данным момент есть в наличии\r\n  для продажи. Наполненные таблицы будут иметь следующий вид\r\n</p>\r\n<pre>    <code>\r\n        brands\r\n        +----+----------+\r\n        | id | brand    |\r\n        +----+----------+\r\n        |  1 | BMW      |\r\n        |  2 | Audi     |\r\n        |  3 | Kia      |\r\n        |  4 | Mercedes |\r\n        +----+----------+\r\n\r\n        cars_stock\r\n        +----+---------+----------+\r\n        | id | model   | brand_id |\r\n        +----+---------+----------+\r\n        |  1 | Ceed    |        3 |\r\n        |  2 | A6      |        2 |\r\n        |  3 | B class |        4 |\r\n        |  4 | A class |        4 |\r\n        |  5 | Q7      |        2 |\r\n        +----+---------+----------+\r\n    </code>\r\n</pre>\r\n<p>\r\n  Как видно из этого примера, каждому бренду может соответствовать несколько\r\n  моделей. Это и есть связь один ко многим.\r\n</p>\r\n<h2>Многие ко многим</h2>\r\n<p>\r\n  Связь многие ко многим означает, что одной записи в таблице А может\r\n  соответствовать 0 или более записей из таблицы В, и наоборот - одной записи в\r\n  таблице B может соответствовать 0 или более записей из таблицы А. Сразу\r\n  необходимо отметить, чтодля моделирования связи многие ко многим необходимо\r\n  использовать три таблицы, а не две (как для 1-1 и 1-многим).\r\n</p>\r\n<p>\r\n  Рассмотрим пример. Пусть нам необходимо смоделировать учет студентов, которые\r\n  посещают курсы языков программирования. Каждый студент может посещать любое\r\n  количество курсов. Это значит, что нам необходимо сохранить все возможные\r\n  комбинации: какие курсы посещает каждый студент.\r\n</p>\r\n<pre>    <code>\r\n        student\r\n        +----+-------+\r\n        | id | name  |\r\n        +----+-------+\r\n        |  1 | Andy  |\r\n        |  2 | John  |\r\n        |  3 | Bob   |\r\n        |  4 | Marie |\r\n        +----+-------+\r\n\r\n        Создадим таблицу с курсами:\r\n\r\n        course\r\n        +----+--------+\r\n        | id | name   |\r\n        +----+--------+\r\n        |  1 | Python |\r\n        |  2 | PHP    |\r\n        |  3 | Ruby   |\r\n        |  4 | C++    |\r\n        +----+--------+\r\n\r\n        Для учета того, какой студент куда ходит, создадим таблицу с комбинациями:\r\n\r\n        student_course\r\n        +----+------------+-----------+\r\n        | id | student_id | course_id |\r\n        +----+------------+-----------+\r\n        |  1 |          1 |         2 |\r\n        |  2 |          1 |         1 |\r\n        |  3 |          2 |         4 |\r\n        |  4 |          4 |         2 |\r\n        |  5 |          4 |         4 |\r\n        +----+------------+-----------+\r\n    </code>\r\n</pre>',
        'tipy-svyazei', 1, 11, 4, '2020-12-06 21:12:50', '2021-11-10 13:06:50');
INSERT INTO `infos`
VALUES (29, 'Query',
        '<ul class=\"main_list\">\r\n    <li><a href=\"#create_db\">Создание БД</a></li>\r\n    <li><a href=\"#create_table\">Создание таблицы</a></li>\r\n    <li><a href=\"#delete_db\">Удаление БД</a></li>\r\n    <li><a href=\"#insert_row\">Вставка данных: оператор INSERT</a></li>\r\n    <li><a href=\"#update_row\">Обновление данных: оператор UPDATE</a></li>\r\n    <li><a href=\"#delete_row\">Удаление данных: оператор DELETE</a></li>\r\n    <li><a href=\"#agregate_func\">Агрегатные функции</a></li>\r\n    <li><a href=\"#mysql_limit\">Оператор LIMIT</a></li>\r\n    <li><a href=\"#mysql_edit_table\">Редактирование структуры таблицы</a></li>\r\n    <li><a href=\"#mysql_create_table\">Добавляем запись по выборке</a></li>\r\n    <li><a href=\"#source\">Источники</a></li>\r\n</ul>\r\n\r\n<div id=\"create_db\">\r\n    <code>CREATE DATABASE my_db CHARACTER SET utf8 COLLATE utf8_general_ci ; </code>\r\n</div>\r\n\r\n<div id=\"create_table\">\r\n    <pre><code>TABLE student (\r\nid INT AUTO_INCREMENT,\r\nname VARCHAR(30),\r\nage TINYINT,\r\nphone VARCHAR(15),\r\nPRIMARY KEY (id)\r\n);</code></pre>\r\n    <p>\r\n        Для получения информации от созданной таблице используется оператор DESCRIBE: <code>DESCRIBE student ;</code>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"delete_db\">\r\n    <p>Удаление базы данных my_db: <code>DROP DATABASE my_db;</code><br> удаление таблицы my_db: <code>DROP TABLE\r\n        my_table;</code>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"insert_row\">\r\n    <p>\r\n        При включении названий полей в запрос, можно ограничится теми, для которых необходимо задавать значения,\r\n        например: <code>INSERT INTO student (name, age, phone) VALUES ( \'Mike\', 25, \'345-65-78\' );</code>\r\n    </p>\r\n    <p>\r\n        Для вставки нескольких записей, можно указать несколько наборов значений: <code> INSERT INTO student (name, age,\r\n        phone) VALUES ( \'John\', 27, \'123-65-12\' ), ( \'Bob\', 23, \'456-12-55\' ) ; </code>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"update_row\">\r\n    <code>UPDATE table SET col_1 = val_1, col_n = val_n, ... WHERE...</code>\r\n</div>\r\n\r\n<div id=\"delete_row\">\r\n    <code>DELETE FROM [table_name] WHERE ...</code>\r\n</div>\r\n\r\n<div id=\"agregate_func\">\r\n    <ul>\r\n        <li>\r\n            <b><em>MIN(), MAX()</em></b> - минимальное максимальное значение\r\n        </li>\r\n        <li>\r\n            <b><em>SUM()</em></b> - сумма значений\r\n        </li>\r\n        <li>\r\n            <b><em>AVG()</em></b> - среднее значение\r\n        </li>\r\n        <li>\r\n            <b><em>COUNT()</em></b> - количество значений\r\n        </li>\r\n    </ul>\r\n    <p>\r\n        Оператор <b>HAVING</b> - это аналог WHERE, но для групп. Предложение HAVING записывается после определения\r\n        группы GROUP BY.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"mysql_limit\">\r\n    <p>\r\n        Для управления количеством записей в результирующей таблице используется оператор LIMIT. Этот оператор\r\n        записывается в самом конце запроса и имеет следующую конструкцию:<code> SELECT ... ... ... LIMIT [offset, ]\r\n        count</code>. Тут используются два параметра:\r\n    </p>\r\n    <ul>\r\n        <li>\r\n            <b><em>offset</em></b> - это номер строки в результирующей таблицы (от 0), от которой необходимо отсчитывать\r\n            записи. Не является обязательным, если его не записывать, то отсчет записей в таблице будет стартовать с\r\n            нуля.\r\n        </li>\r\n        <li>\r\n            <b><em>count</em></b> - это число, которое означает то, сколько записей из результирующей таблицы необходимо\r\n            отобрать, начиная от offset.\r\n        </li>\r\n    </ul>\r\n</div>\r\n\r\n<div id=\"mysql_edit_table\">\r\n    <p>\r\n        Для того, чтобы управлять структурой таблицы необходимо использовать предложение <b>ALTER TABLE</b>, которое\r\n        дает возможность добавлять, удалять или редактировать столбцы таблицы.<br> Для создания новых столбцов в\r\n        предложении <b>ALTER TABLE</b> используется оператор ADD после которого необходимо указать название столбца, его\r\n        тип и дополнительные атрибуты, например значение поля по умолчанию.\r\n    </p>\r\n    <pre><code>\r\nALTER TABLE student CHANGE COLUMN test_row tr TEXT;\r\nALTER TABLE student DROP COLUMN tr;\r\nALTER TABLE student DROP COLUMN test_row_2;\r\n    </code></pre>\r\n</div>\r\n\r\n<div id=\"mysql_create_table\">\r\n<pre><code>\r\nINSERT INTO таблица [(поле-1, поле-2, ...)] SELECT ...\r\nINSERT INTO test_table_2 (client_id, client) SELECT 634, \'Some guy\'\r\n</code></pre>\r\n</div>\r\n\r\n<div id=\"source\">\r\n    <a class=\"btn btn-secondary\" target=\"_blank\" href=\"https://devionity.com/ru/courses/mysql-fundamentals\"\r\n       role=\"button\"> devionity </a> <a class=\"btn btn-secondary\" target=\"_blank\"\r\n                                        href=\"https://metanit.com/sql/mysql/2.5.php\" role=\"button\"> metanit </a>\r\n</div>\r\n\r\n<p><br></p>',
        'query', 1, 11, 4, '2020-12-06 21:12:50', '2021-11-10 13:06:28');
INSERT INTO `infos`
VALUES (31, 'Joins',
        '<ul class=\"main_list\">\r\n    <li><a href=\"#join\">Использование JOIN</a></li>\r\n    <li><a href=\"#inner_join\">INNER JOIN</a></li>\r\n    <li><a href=\"#left_join\">LEFT JOIN</a></li>\r\n    <li><a href=\"#right_join\">RIGHT JOIN</a></li>\r\n\r\n    <li><a href=\"#union\">Обьединение таблиц UNION</a></li>\r\n    <li><a href=\"#ex1\"> У нас есть две таблицу: users и profiles. В таблицу profiles есть поле user_id. Как нам выбрать\r\n        юзеров, у которых нет профиля?</a></li>\r\n    <li><a href=\"#ex2\"> Если объеденить через JOIN две таблицы, при этом ни в WHERE ни в ON ничего не написав, то, что\r\n        мы получим в результате? (SELECT a.*, b.* FROM a JOIN b) </a></li>\r\n</ul>\r\n\r\n<div id=\"join\">\r\n    <p>\r\n        Оператор <b>JOIN</b> позволяет объединять две и более таблиц в одну (временную) таблицу для извлечения данных\r\n        одним запросом. Для избегания избыточности и дублирования данные в базе хранятся в разных таблицах. Получить их\r\n        одним запросом без объединения таблиц невозможно. А использование нескольких запросов — не вариант — значительно\r\n        увеличивает время загрузки страницы. Кроме того, усложняет процесс обработки полученных данных.\r\n    </p>\r\n</div>\r\n<div id=\"inner_join\">\r\n    <p>\r\n        <b>INNER JOIN</b> тоже самое что и <b>JOIN</b><br>Ключевое слово <b>>INNER JOIN</b> возвращает строки, если\r\n        есть хотя бы одно совпадение в двух таблицах. Синтаксис: </p>\r\n    <pre><code>\r\nSELECT column_names [,....n]\r\nFROM table1\r\nINNER JOIN table2\r\nON table1.column_name = table2.column_name\r\n</code></pre>\r\n    <p>Мы хотим получить список всех лиц,имеющих любые заказы. Пример:</p>\r\n    <pre><code>\r\nSELECT Persons.LastName, Persons.FirstName, Orders.Order\r\nFROM Persons\r\nINNER JOIN Orders ON Persons.id=Orders.persons_id\r\nORDER BY Persons.LastName\r\n</code></pre>\r\n    <div class=\"row\">\r\n        <div class=\"col-xl-2\">\r\n            Persons\r\n            <table class=\"table table-bordered\">\r\n                <thead>\r\n                <tr>\r\n                    <th scope=\"col\">id</th>\r\n                    <th scope=\"col\">LastName</th>\r\n                    <th scope=\"col\">FirstName</th>\r\n                </tr>\r\n                </thead>\r\n                <tbody>\r\n                <tr>\r\n                    <th scope=\"row\">1</th>\r\n                    <td>Jameson</td>\r\n                    <td>John</td>\r\n                </tr>\r\n                <tr>\r\n                    <th scope=\"row\">2</th>\r\n                    <td>Smith</td>\r\n                    <td>Kate</td>\r\n                </tr>\r\n                <tr>\r\n                    <th scope=\"row\">3</th>\r\n                    <td>Kristen</td>\r\n                    <td>Olya</td>\r\n                </tr>\r\n                </tbody>\r\n            </table>\r\n        </div>\r\n\r\n        <div class=\"col-xl-2\">\r\n            Orders\r\n            <table class=\"table table-bordered\">\r\n                <thead>\r\n                <tr>\r\n                    <th scope=\"col\">id</th>\r\n                    <th scope=\"col\">order</th>\r\n                    <th scope=\"col\">person_id</th>\r\n                </tr>\r\n                </thead>\r\n                <tbody>\r\n                <tr>\r\n                    <th scope=\"row\">1</th>\r\n                    <td>77895</td>\r\n                    <td>3</td>\r\n                </tr>\r\n                <tr>\r\n                    <th scope=\"row\">2</th>\r\n                    <td>44678</td>\r\n                    <td>3</td>\r\n                </tr>\r\n                <tr>\r\n                    <th scope=\"row\">3</th>\r\n                    <td>22456</td>\r\n                    <td>1</td>\r\n                </tr>\r\n                <tr>\r\n                    <th scope=\"row\">4</th>\r\n                    <td>24562</td>\r\n                    <td>1</td>\r\n                </tr>\r\n                <tr>\r\n                    <th scope=\"row\">5</th>\r\n                    <td>34764</td>\r\n                    <td>1</td>\r\n                </tr>\r\n                </tbody>\r\n            </table>\r\n        </div>\r\n        <div class=\"col-xl-3\">\r\n            Результат\r\n            <table class=\"table table-bordered\">\r\n                <thead>\r\n                <tr>\r\n                    <th scope=\"col\">LastName</th>\r\n                    <th scope=\"col\">FirstName</th>\r\n                    <th scope=\"col\">Order</th>\r\n                </tr>\r\n                </thead>\r\n                <tbody>\r\n                <tr>\r\n                    <th>Jameson</th>\r\n                    <td>John</td>\r\n                    <td>22456</td>\r\n                </tr>\r\n                <tr>\r\n                    <th>Jameson</th>\r\n                    <td>John</td>\r\n                    <td>24562</td>\r\n                </tr>\r\n                <tr>\r\n                    <th>Kristen</th>\r\n                    <td>Olya</td>\r\n                    <td>77895</td>\r\n                </tr>\r\n                <tr>\r\n                    <th>Kristen</th>\r\n                    <td>Olya</td>\r\n                    <td>44678</td>\r\n                </tr>\r\n                </tbody>\r\n            </table>\r\n        </div>\r\n    </div>\r\n</div>\r\n<div id=\"left_join\">\r\n    <p>\r\n        Ключевое слово <b>LEFT JOIN</b> возвращает все строки из левой таблицы (table1), даже если нет совпадаений из\r\n        справой таблицы(table2)\r\n    </p>\r\n    <pre><code>\r\nSELECT column_names [,... n]\r\nFROM table1\r\nLEFT JOIN table2 ON table1.column_name = table2.column_name\r\n</code></pre>\r\n\r\n    <p>\r\n        Мы хотим получить список всех персон и их заказов -если таковы имеються. Пример на предудщих таблицах orders i\r\n        persons:\r\n    </p>\r\n\r\n    <div class=\"row\">\r\n        <div class=\"col-xl-5\">\r\n            Запрос\r\n            <pre><code>\r\nSELECT Persons.LastName, Persons.FirstName, Orders.Order\r\nFROM Persons\r\nLEFT JOIN Orders ON Persons.id=Orders.persons_id\r\nORDER BY Persons.LastName\r\n</code>\r\n</pre>\r\n        </div>\r\n        <div class=\"col-xl-3\">\r\n            Результат\r\n            <table class=\"table table-bordered\">\r\n                <thead>\r\n                <tr>\r\n                    <th scope=\"col\">LastName</th>\r\n                    <th scope=\"col\">FirstName</th>\r\n                    <th scope=\"col\">Order</th>\r\n                </tr>\r\n                </thead>\r\n                <tbody>\r\n                <tr>\r\n                    <th>Jameson</th>\r\n                    <td>John</td>\r\n                    <td>22456</td>\r\n                </tr>\r\n                <tr>\r\n                    <th>Jameson</th>\r\n                    <td>John</td>\r\n                    <td>24562</td>\r\n                </tr>\r\n                <tr>\r\n                    <th>Kristen</th>\r\n                    <td>Olya</td>\r\n                    <td>77895</td>\r\n                </tr>\r\n                <tr>\r\n                    <th>Kristen</th>\r\n                    <td>Olya</td>\r\n                    <td>44678</td>\r\n                </tr>\r\n                <tr>\r\n                    <th>Smith</th>\r\n                    <td>kate</td>\r\n                    <td></td>\r\n                </tr>\r\n                </tbody>\r\n            </table>\r\n        </div>\r\n    </div>\r\n</div>\r\n<div id=\"right_join\">\r\n    <p>\r\n        Ключевое слово <b>RIGHT JOIN</b> возвращает все строки из правой таблицы (table2), даже если нет совпадаений из\r\n        левой таблицы(table1)\r\n    </p>\r\n    <pre><code>\r\nSELECT column_names [,... n]\r\nFROM table1\r\nRIGHT JOIN table2 ON table1.column_name = table2.column_name\r\n</code>\r\n</pre>\r\n\r\n    <p>\r\n        Мы хотим получить список всех заказов и персон, сделавших эти заказы,- если таковы имеются. Пример на предудщих\r\n        таблицах orders i persons:\r\n    </p>\r\n\r\n    <div class=\"row\">\r\n        <div class=\"col-xl-5\">\r\n            Запрос\r\n            <pre>            <code>\r\n            SELECT Persons.LastName, Persons.FirstName, Orders.Order\r\n            FROM Persons\r\n            RIGHT JOIN Orders ON Persons.id=Orders.persons_id\r\n            ORDER BY Persons.LastName\r\n            </code>\r\n        </pre>\r\n        </div>\r\n        <div class=\"col-xl-3\">\r\n            Результат\r\n            <table class=\"table table-bordered\">\r\n                <thead>\r\n                <tr>\r\n                    <th scope=\"col\">LastName</th>\r\n                    <th scope=\"col\">FirstName</th>\r\n                    <th scope=\"col\">Order</th>\r\n                </tr>\r\n                </thead>\r\n                <tbody>\r\n                <tr>\r\n                    <th>Jameson</th>\r\n                    <td>John</td>\r\n                    <td>22456</td>\r\n                </tr>\r\n                <tr>\r\n                    <th>Jameson</th>\r\n                    <td>John</td>\r\n                    <td>24562</td>\r\n                </tr>\r\n                <tr>\r\n                    <th>Kristen</th>\r\n                    <td>Olya</td>\r\n                    <td>77895</td>\r\n                </tr>\r\n                <tr>\r\n                    <th>Kristen</th>\r\n                    <td>Olya</td>\r\n                    <td>44678</td>\r\n                </tr>\r\n                <tr>\r\n                    <th></th>\r\n                    <td></td>\r\n                    <td>34764</td>\r\n                </tr>\r\n                </tbody>\r\n            </table>\r\n        </div>\r\n    </div>\r\n</div>\r\n<div id=\"union\">\r\n    <p>\r\n        Оператор <b>UNION</b> служит для объединения таблиц, а именно для того, чтобы \"дорисовать\" одну результирующую\r\n        таблицу под другой. Фактически это объединение двух запросов в один.\r\n    </p>\r\n    <pre><code>\r\nSELECT name FROM student\r\nUNION\r\nSELECT name FROM teacher;\r\n</code>\r\n</pre>\r\n\r\n</div>\r\n<div id=\"ex1\">\r\n<pre><code>\r\nSELECT *\r\nFROM user\r\nleft join profiles on user.id = profiles.user_id;\r\nwhere profiles.user_id is null\r\n\r\nSELECT *\r\nFROM user\r\nWHERE id NOT IN (SELECT user_id FROM profiles );\r\n\r\nSELECT *\r\nFROM user\r\nWHERE NOT EXISTS (SELECT user_id FROM profiles WHERE user.id=profiles.user_id);\r\n</code>\r\n</pre>\r\n    <p>\r\n        По скорости исполнения вариант с <b>LEFT JOIN</b> сильно проигрывает вариантам со вложеными запросами. Вариант с\r\n        NOT IN всегда быстрее варианта с <b>NOT EXIST</b> в случаях, когда число записей в таблице user больше числа\r\n        записей в таблице profiles. В противном случае, <b>NOT IN</b> оказывается быстрее только на таблицах с небольшим\r\n        числом записей, а на больших объемах уже проигрывает <b>NOT EXIST</b>. Причем чем больше записей в таблице\r\n        profiles тем существеннее разница в скорости выполнения.\r\n    </p>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\"\r\n       href=\"https://shpargalki.org.ua/146/poisk-zapisei-v-odnoi-tablitse-kotorym-net-sootvetstviya-v-drugoi-tablitse\">\r\n        https://shpargalki.org.ua/146/poisk-zapisei-v-odnoi-tablitse-kotorym-net-sootvetstviya-v-drugoi-tablitse </a>\r\n</div>\r\n<div id=\"ex2\">\r\n    <p>\r\n        выборка вернёт т.н. декартово произведение, в котором каждая строка одной таблицы будет сопоставлена с каждой\r\n        строкой другой таблицы\r\n    </p>\r\n</div>\r\n<p><br></p>',
        'joins', 1, 11, 5, '2020-12-06 21:12:50', '2021-11-10 13:06:58');
INSERT INTO `infos`
VALUES (45, 'Chmod',
        '<div>\r\n  <a class=\"btn btn-secondary\" target=\"_blank\" href=\"https://ru.wikipedia.org/wiki/Chmod\" role=\"button\">\r\n    https://ru.wikipedia.org/wiki/Chmod</a><pre><code>chmod [options] [permissions] [file]</code></pre>\r\n  Опции:\r\n  <ul>\r\n    <li>\r\n      <b>-R</b> рекурсивное изменение прав доступа для каталогов и их\r\n      содержимого\r\n    </li>\r\n    <li>\r\n      <b>-f</b> не выдавать сообщения об ошибке для файлов, чьи права не могут\r\n      быть изменены.\r\n    </li>\r\n    <li>\r\n      <b>-v</b> подробно описывать действие или отсутствие действия для каждого\r\n      файла.\r\n    </li>\r\n  </ul>\r\n</div>\r\n<div>\r\n  <h2>Использование команды в числовом виде</h2>\r\n  <pre><code>chmod 755 [permissions] [file]</code></pre>\r\n  <table class=\"table table-bordered\">\r\n    <thead>\r\n      <tr>\r\n        <th scope=\"col\">#</th>\r\n        <th scope=\"col\">владелец</th>\r\n        <th scope=\"col\">группа</th>\r\n        <th scope=\"col\">остальные</th>\r\n      </tr>\r\n    </thead>\r\n    <tbody>\r\n      <tr>\r\n        <th scope=\"row\">восьмеричное значение</th>\r\n        <td>7</td>\r\n        <td>5</td>\r\n        <td>5</td>\r\n      </tr>\r\n      <tr>\r\n        <th>символьная запись</th>\r\n        <td>rwx</td>\r\n        <td>r-x</td>\r\n        <td>r-x</td>\r\n      </tr>\r\n      <tr>\r\n        <th>обозначение типа пользователя</th>\r\n        <td>u</td>\r\n        <td>g</td>\r\n        <td>o</td>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n  <table class=\"table table-bordered\" style=\"text-align:center\">\r\n    <caption>\r\n      Три варианта записи прав пользователя\r\n    </caption>\r\n    <thead>\r\n      <tr>\r\n        <th>двоичная</th>\r\n        <th>восьмеричная</th>\r\n        <th>символьная</th>\r\n        <th>права на файл</th>\r\n        <th>права на каталог</th>\r\n      </tr>\r\n    </thead>\r\n    <tbody>\r\n      <tr>\r\n        <td>000</td>\r\n        <td>0</td>\r\n        <td><tt>---</tt></td>\r\n        <td>нет</td>\r\n        <td>нет</td>\r\n      </tr>\r\n      <tr>\r\n        <td>001</td>\r\n        <td>1</td>\r\n        <td><tt>--x</tt></td>\r\n        <td>выполнение</td>\r\n        <td>чтение файлов и их свойств</td>\r\n      </tr>\r\n      <tr>\r\n        <td>010</td>\r\n        <td>2</td>\r\n        <td><tt>-w-</tt></td>\r\n        <td>запись</td>\r\n        <td>нет</td>\r\n      </tr>\r\n      <tr>\r\n        <td>011</td>\r\n        <td>3</td>\r\n        <td><tt>-wx</tt></td>\r\n        <td>запись и выполнение</td>\r\n        <td>всё, кроме чтения списка файлов</td>\r\n      </tr>\r\n      <tr>\r\n        <td>100</td>\r\n        <td>4</td>\r\n        <td><tt>r--</tt></td>\r\n        <td>чтение</td>\r\n        <td>чтение имён файлов</td>\r\n      </tr>\r\n      <tr>\r\n        <td>101</td>\r\n        <td>5</td>\r\n        <td><tt>r-x</tt></td>\r\n        <td>чтение и выполнение</td>\r\n        <td>доступ на чтение</td>\r\n      </tr>\r\n      <tr>\r\n        <td>110</td>\r\n        <td>6</td>\r\n        <td><tt>rw-</tt></td>\r\n        <td>чтение и запись</td>\r\n        <td>чтение имён файлов</td>\r\n      </tr>\r\n      <tr>\r\n        <td>111</td>\r\n        <td>7</td>\r\n        <td><tt>rwx</tt></td>\r\n        <td>все права</td>\r\n        <td>все права</td>\r\n      </tr>\r\n    </tbody>\r\n  </table>\r\n  <h2>Популярные значения</h2>\r\n  <pre>        <code>\r\n    400 (-r--------)\r\n    Владелец имеет право чтения; никто другой не имеет права выполнять никакие действия\r\n    644 (-rw-r--r--)\r\n    Все пользователи имеют право чтения; владелец может редактировать\r\n    660 (-rw-rw----)\r\n    Владелец и группа могут читать и редактировать; остальные не имеют права выполнять никаких действий\r\n    664 (-rw-rw-r--)\r\n    Все пользователи имеют право чтения; владелец и группа могут редактировать\r\n    666 (-rw-rw-rw-)\r\n    Все пользователи могут читать и редактировать\r\n    700 (-rwx------)\r\n    Владелец может читать, записывать и запускать на выполнение; никто другой не имеет права выполнять никакие действия\r\n    744 (-rwxr--r--)\r\n    Каждый пользователь может читать, владелец имеет право редактировать и запускать на выполнение\r\n    755 (-rwxr-xr-x)\r\n    Каждый пользователь имеет право читать и запускать на выполнение; владелец может редактировать\r\n    777 (-rwxrwxrwx)\r\n    Каждый пользователь может читать, редактировать и запускать на выполнение\r\n    1555 (-r-xr-xr-t)\r\n    Каждый пользователь имеет право читать и запускать на выполнение; удалить файл может только владелец этого файла\r\n    2555 (-r-xr-sr-x)\r\n    Каждый пользователь имеет право читать и запускать на выполнение с правами группы (user group) владельца файла\r\n    0440 (-r--r-----)\r\n    Владелец и группа имеет право чтения никто другой не имеет права выполнять никакие действия\r\n    4555 (-r-sr-xr-x)\r\n    Каждый пользователь имеет право читать и запускать на выполнение с правами владельца файла\r\n        </code>\r\n    </pre>\r\n</div>\r\n<div>\r\n  <h2>Использование команды в символьном виде</h2>\r\n  <pre><code> $ chmod [references][operator][permission] file ...</code></pre>\r\n  <div class=\"row\">\r\n    <div class=\"col-xl-4 col-lg-4 col-md-4\">\r\n      <table class=\"table table-bordered\">\r\n        <thead>\r\n          <tr>\r\n            <th scope=\"col\">Reference</th>\r\n            <th scope=\"col\">Class</th>\r\n            <th scope=\"col\">Описание</th>\r\n          </tr>\r\n        </thead>\r\n        <tbody>\r\n          <tr>\r\n            <th scope=\"row\">u</th>\r\n            <td>7</td>\r\n            <td>5</td>\r\n          </tr>\r\n          <tr>\r\n            <th>символьная запись</th>\r\n            <td>user</td>\r\n            <td>Владелец файла</td>\r\n          </tr>\r\n          <tr>\r\n            <th>g</th>\r\n            <td>group</td>\r\n            <td>Пользователи, входящие в группу владельца файла</td>\r\n          </tr>\r\n          <tr>\r\n            <th>o</th>\r\n            <td>others</td>\r\n            <td>Остальные пользователи</td>\r\n          </tr>\r\n          <tr>\r\n            <th>a</th>\r\n            <td>all</td>\r\n            <td>Все пользователи (или ugo)</td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n    </div>\r\n    <div class=\"col-xl-4 col-lg-4 col-md-4\">\r\n      <table class=\"table table-bordered\">\r\n        <thead>\r\n          <tr>\r\n            <th scope=\"col\">Operator</th>\r\n            <th scope=\"col\">Описание</th>\r\n          </tr>\r\n        </thead>\r\n        <tbody>\r\n          <tr>\r\n            <th scope=\"row\">+</th>\r\n            <td>добавить определенные права</td>\r\n          </tr>\r\n          <tr>\r\n            <th>-</th>\r\n            <td>удалить определенные права</td>\r\n          </tr>\r\n          <tr>\r\n            <th>=</th>\r\n            <td>установить определенные права</td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n    </div>\r\n    <div class=\"col-xl-4 col-lg-4 col-md-4\">\r\n      <table class=\"table table-bordered\">\r\n        <thead>\r\n          <tr>\r\n            <th scope=\"col\">Mode</th>\r\n            <th scope=\"col\">Name</th>\r\n            <th scope=\"col\">Описание</th>\r\n          </tr>\r\n        </thead>\r\n        <tbody>\r\n          <tr>\r\n            <th scope=\"row\">r</th>\r\n            <td>read</td>\r\n            <td>чтение файла или содержимого каталога</td>\r\n          </tr>\r\n          <tr>\r\n            <th scope=\"row\">w</th>\r\n            <td>write</td>\r\n            <td>запись в файл или в каталог</td>\r\n          </tr>\r\n          <tr>\r\n            <th scope=\"row\">x</th>\r\n            <td>execute</td>\r\n            <td>выполнение файла или чтение содержимого каталога</td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n    </div>\r\n  </div>\r\n  <h2>Примеры использования команды в символьном виде</h2>\r\n  Установить права «rwxr-xr-x» (0755) для файла:\r\n</div>\r\n<p></p><pre><code class=\"hljs\">chmod u=rwx,g=rx,o=rx filename</code></pre><p></p>\r\n<p>\r\n  Установить права на выполнение для владельца файла, удалить права на\r\n  выполнение у группы, удалить права на запись и выполнение у остальных\r\n  пользователей:\r\n</p>\r\n<p></p><pre><code class=\"hljs\">chmod u+x,g-x,o-wx filename</code></pre><p></p>\r\n<p>Установить рекурсивно права на чтение для всех пользователей:</p>\r\n<p></p><pre><code class=\"hljs\">chmod -R a+r directory</code></pre><p></p>',
        NULL, 1, 22, 10, '2020-12-06 21:12:50', '2021-08-17 09:06:04');
INSERT INTO `infos`
VALUES (49, 'Docker',
        '<ul class=\"main_list\">\r\n    <li>\r\n        <a href=\"#introduction\">Что такое Docker?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#virtualization_vs_container\">Разница между виртуализацией и контейнеризацией?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#docker_container\">Что такое Docker контейнер и каковы его преимущества?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#docker_image\">Что такое Образ Docker?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#docker_arhitect\">Объясните архитектуру Docker?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#docker_hub\">Что такое Docker Hub?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#docker_yaml\">Расскажите нам что-нибудь о Docker Compose</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#docker_commands\">Команды Docker</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#docker_notes\">Заметки Docker</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#docker_notes_build\">Заметки Docker Build</a>\r\n    </li>\r\n</ul>\r\n\r\n<div id=\"introduction\">\r\n    <p>\r\n        Docker - это легковесная технология контейнеризации с открытым исходным кодом. Это сделало его имя популярным в\r\n        мире облачной и прикладной упаковки. Docker позволяет автоматизировать развертывание приложений в легких и\r\n        переносных контейнерах.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"virtualization_vs_container\">\r\n    <ul>\r\n        <li>Контейнеры предоставляют изолированную среду для запуска приложения.</li>\r\n        <li>Все пользовательское пространство явно выделено для приложения.</li>\r\n        <li>Любые изменения, сделанные внутри контейнера, никогда не отражаются на хосте или даже других контейнерах,\r\n            работающих на том же хосте.\r\n        </li>\r\n        <li>Контейнеры – это абстракция прикладного уровня.</li>\r\n        <li>Каждый контейнер – это отдельное приложение.</li>\r\n        <li>В виртуализации гипервизоры предоставляют гостю целую виртуальную машину, включая ядро.</li>\r\n        <li>Виртуальные машины – это абстракция аппаратного уровня.</li>\r\n        <li>Каждая виртуальная машина – это физическая машина.</li>\r\n    </ul>\r\n</div>\r\n\r\n<div id=\"docker_container\">\r\n    <p>\r\n        <b>Контейнеры Docker</b> – включают в себя приложение и все его зависимости. Он разделяет ядро с другими\r\n        контейнерами, работая как изолированные процессы в пространстве пользователя в операционной системе хоста.\r\n        Docker-контейнеры – это в основном экземпляры Docker-образов во время выполнения. Преимущества:\r\n    </p>\r\n    <ul>\r\n        <li>Он предлагает эффективную и простую первоначальную настройку.</li>\r\n        <li>Он позволяет вам подробно описать жизненный цикл вашего приложения.</li>\r\n        <li>Простая настройка и взаимодействие с Docker Compose.</li>\r\n    </ul>\r\n</div>\r\n\r\n<div id=\"docker_image\">\r\n    <p>\r\n        Образы Docker используются для создания контейнеров. Когда пользователь запускает образ Docker, создается\r\n        экземпляр контейнера.\r\n    </p>\r\n\r\n</div>\r\n\r\n<div id=\"docker_arhitect\">\r\n    <p>\r\n        Docker состоит из Docker Engine, который является клиент-серверным приложением:\r\n    </p>\r\n    <ul>\r\n        <li>Сервер, который является типом долго выполняющейся программы, называемой процессом демона (команда docker).\r\n        </li>\r\n        <li>REST API, который определяет интерфейсы, которые программы могут использовать для общения с демоном и\r\n            указания ему, что делать.\r\n        </li>\r\n        <li>Клиент интерфейса командной строки (CLI) (команда docker).</li>\r\n        <li>Интерфейс командной строки использует API-интерфейс Docker REST для управления или взаимодействия с\r\n            приложениями-демонами Docker с использованием базовых API и CLI.\r\n        </li>\r\n    </ul>\r\n</div>\r\n\r\n<div id=\"docker_hub\">\r\n    <p>\r\n        Docker hub – это облачный реестр, который помогает вам организовывать репозитории кода. Позволяет создавать,\r\n        тестировать, хранить образы в облаке Docker. Вы также можете развернуть образ на своем хосте с помощью Docker\r\n        Hub.\r\n    </p>\r\n\r\n</div>\r\n\r\n<div id=\"docker_yaml\">\r\n    <p>\r\n        Docker Compose – это файл YAML, который содержит сведения о службе, сети и томах для настройки приложения\r\n        Docker. Таким образом, вы можете использовать Docker compose для создания отдельных контейнеров, размещения их и\r\n        обеспечения связи с другими контейнерами.\r\n    </p>\r\n\r\n</div>\r\n\r\n<div id=\"docker_commands\">\r\n    <p>\r\n        Какую команду запустить, чтобы увидеть все запущенные контейнеры в Docker? <code>docker ps</code>\r\n    </p>\r\n    <p>\r\n        Напишите команду, чтобы остановить Docker-контейнер <code>docker stop container name</code>\r\n    </p>\r\n    <p>\r\n        Какая команда используется для запуска образа как контейнера? <code>docker run -i -t alpine /bin/bash</code>\r\n    </p>\r\n    <p>\r\n        Команда запуска контейнера <code>docker run image</code>\r\n    </p>\r\n    <p>\r\n        создать интерактивную оболочку внутри контейнера\r\n    </p>\r\n    <pre><code>docker run -i -t --rm ubuntu /bin/bash</code> </pre>\r\n    <ul>\r\n        <li>\r\n            -i позволяет создавать интерактивное соединение, захватывая стандартный вход (STDIN) контейнера.\r\n        </li>\r\n        <li>-t присваивает псевдо-tty или терминал внутри нового контейнера.</li>\r\n        <li>\r\n            —rm требуется для автоматического удаления контейнера при выходе из процесса. По умолчанию контейнеры не\r\n            удаляются.\r\n        </li>\r\n    </ul>\r\n    <p>\r\n        Проверим журналы и посмотрим, что делает контейнер прямо сейчас <code>docker logs -f images</code>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"docker_notes\">\r\n    <p>\r\n        скачать образ и запустить образ <code>docker run [image]</code>\r\n    </p>\r\n    <p>\r\n        список образов <code>docker images</code>\r\n    </p>\r\n    <p>\r\n        показывает список подходящих по поиску образов,ищет на dockerHub <code>docker search [image name]</code>\r\n    </p>\r\n    <p>\r\n        скачать образ <code>docker pull [image name]</code>\r\n    </p>\r\n    <p>\r\n        d - в бекраунде i -интерактивно p -перенаправление портов, - 8080 контейнер dockerPort,1234 - на локальном компе\r\n        <code>docker -d -it -p 1234:8080 [image]</code>\r\n    </p>\r\n    <p>\r\n        delete container <code>docker rm [container]</code>\r\n    </p>\r\n    <p>\r\n        delete image <code>docker rmi [image]</code>\r\n    </p>\r\n    <p>\r\n        создать образ test с тагом(-t) v1 локально(.) <code>docker build -t test:v1 .</code>\r\n    </p>\r\n    <p>\r\n        Зайти в консоль контейнера <code>docker exec -it [containerID] /bin/bash</code>\r\n    </p>\r\n    <p>\r\n        <code></code>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"docker_notes_build\">\r\n    <p>\r\n        Контейнер собирается из файла <b>Dockerfile</b>. Пример:\r\n    </p>\r\n    <pre><code>\r\nFROM ubuntu:18.04\r\nMAINTAINER vitaliy ilinov\r\nENV DEBIAN_FRONTEND=noninteractive \\\r\n ONE =1\r\nARG PHP_VERSION=7.2\r\nRUN apt-get update &amp;&amp; apt-get install\r\nCOPY from/path /to/path/\r\nWORKDIR /var/www/app/\r\nCMD /to/path/entrypoint.sh\r\n</code></pre>\r\n    <ul>\r\n        <li><b>FROM</b> – задать базовый образ</li>\r\n        <li><b>MAINTAINER</b> – Владелец</li>\r\n        <li><b>RUN</b> – выполнить команду в контейнере</li>\r\n        <li><b>ENV</b> – задать переменную среды</li>\r\n        <li><b>ARG</b> – Аргументы при билде,с дефолтным значением.</li>\r\n        <li><b>COPY</b> – Копирует данные в контейнер</li>\r\n        <li><b>WORKDIR</b> – установить рабочий каталог</li>\r\n        <li><b>CMD</b> – установить исполняемый файл для контейнера</li>\r\n    </ul>\r\n    <p>\r\n        Запуск построения контейнера происходит с помощью:\r\n    </p>\r\n    <pre><code>\r\n docker build \\\r\n--build-arg PHP_VERSION=$(PHP_VERSION) \\\r\n--force-rm  \\\r\n-t $(IMAGE_NAME) . \\\r\n--no-cache\r\n</code></pre>\r\n    <ul>\r\n        <li><b>build-arg</b> – аргументы при билде контейнера</li>\r\n        <li><b>t</b> – Тег билда</li>\r\n        <li><b>force-rm</b> – Always remove intermediate containers</li>\r\n        <li><b>--no-cache</b> – Do not use cache when building the image</li>\r\n    </ul>\r\n    <p>Контейнер собирается из файла <b>Dockerfile</b>. Пример:</p>\r\n    <pre><code>\r\ndocker run -d \\\r\n--name $(IMAGE_NAME) \\\r\n-v ${PWD}:/var/www/app/ \\\r\n-p 80:80 \\\r\n$(IMAGE_NAME)\r\n\r\ndocker exec -ti $(IMAGE_NAME) bash\r\n\r\n@docker logs $(IMAGE_NAME)\r\n</code></pre>\r\n\r\n    <ul>\r\n        <li><b>t</b> – Allocate a pseudo-TTY</li>\r\n        <li><b>i</b> – Keep STDIN open even if not attached</li>\r\n        <li><b>d</b> – Run container in background and print container ID</li>\r\n        <li><b>--name</b> – Имя контейнера</li>\r\n        <li><b>p</b> – Publish a container\'s port(s) to the host</li>\r\n        <li><b>-v, --volume list </b> – Bind mount a volume</li>\r\n        <li><b>$(IMAGE_NAME)</b> – container name</li>\r\n    </ul>\r\n</div>\r\n\r\n<p><br></p>',
        'docker', 1, 48, 1, '2020-12-06 21:12:50', '2021-11-09 15:32:01');
INSERT INTO `infos`
VALUES (68, 'Builder',
        '<h2>\r\n  Строитель\r\n  <a class=\"btn btn-secondary\" target=\"_blank\" href=\"https://refactoring.guru/ru/design-patterns/builder\">\r\n    refactoring.guru\r\n  </a>\r\n  <a class=\"btn btn-secondary\" target=\"_blank\" href=\"https://tproger.ru/translations/design-patterns-simple-words-1/#14\">\r\n    Интересный пример\r\n  </a>\r\n</h2>\r\n<p>\r\n  <b>Строитель</b> — это порождающий паттерн проектирования, который позволяет\r\n  создавать объекты пошагово.\r\n</p>\r\n<p>\r\n  <b>Применимость:</b> Паттерн можно часто встретить в PHP-коде, особенно там,\r\n  где требуется пошаговое создание продуктов или конфигурация сложных объектов.\r\n</p>\r\n<p>\r\n  <b>Признаки применения паттерна:</b> Строителя можно узнать в классе, который\r\n  имеет один создающий метод и несколько методов настройки создаваемого\r\n  продукта. Обычно, методы настройки вызывают для удобства цепочкой (например,\r\n  someBuilder-&gt;setValueA(1)-&gt;setValueB(2)-&gt;create()).\r\n</p>\r\n\r\n<p>\r\n  <b>Пример из реальной жизни</b>: Одним из лучших применений паттерна\r\n  <b>Строитель</b> является конструктор запросов SQL. Интерфейс Строителя\r\n  определяет общие шаги, необходимые для построения основного SQL-запроса. В\r\n  тоже время Конкретные Строители, соответствующие различным диалектам SQL,\r\n  реализуют эти шаги, возвращая части SQL-запросов, которые могут быть выполнены\r\n  в данном движке базы данных.\r\n</p>\r\n<pre><code class=\"php\">\r\n  /**\r\n * Интерфейс Строителя объявляет набор методов для сборки SQL-запроса.\r\n * Все шаги построения возвращают текущий объект строителя, чтобы обеспечить\r\n * цепочку: $builder-&gt;select(...)-&gt;where(...)\r\n */\r\n\r\ninterface SQLQueryBuilder\r\n{\r\n    public function select(string $table, array $fields): SQLQueryBuilder;\r\n\r\n    public function where(string $field, string $value, string $operator = \'=\'): SQLQueryBuilder;\r\n\r\n    public function limit(int $start, int $offset): SQLQueryBuilder;\r\n\r\n    // +100 других методов синтаксиса SQL...\r\n\r\n    public function getSQL(): string;\r\n}\r\n\r\n/**\r\n * Каждый Конкретный Строитель соответствует определённому диалекту SQL и может\r\n * реализовать шаги построения немного иначе, чем остальные.\r\n * Этот Конкретный Строитель может создавать SQL-запросы, совместимые с MySQL.\r\n */\r\nclass MysqlQueryBuilder implements SQLQueryBuilder\r\n{\r\n    protected $query;\r\n\r\n    protected function reset(): void\r\n    {\r\n        $this-&gt;query = new \\stdClass;\r\n    }\r\n\r\n    /**\r\n     * Построение базового запроса SELECT.\r\n     */\r\n    public function select(string $table, array $fields): SQLQueryBuilder\r\n    {\r\n        $this-&gt;reset();\r\n        $this-&gt;query-&gt;base = \"SELECT \" . implode(\", \", $fields) . \" FROM \" . $table;\r\n        $this-&gt;query-&gt;type = \'select\';\r\n\r\n        return $this;\r\n    }\r\n\r\n    /**\r\n     * Добавление условия WHERE.\r\n     */\r\n    public function where(string $field, string $value, string $operator = \'=\'): SQLQueryBuilder\r\n    {\r\n        if (!in_array($this-&gt;query-&gt;type, [\'select\', \'update\', \'delete\'])) {\r\n            throw new \\Exception(\"WHERE can only be added to SELECT, UPDATE OR DELETE\");\r\n        }\r\n        $this-&gt;query-&gt;where[] = \"$field $operator \'$value\'\";\r\n\r\n        return $this;\r\n    }\r\n\r\n    /**\r\n     * Добавление ограничения LIMIT.\r\n     */\r\n    public function limit(int $start, int $offset): SQLQueryBuilder\r\n    {\r\n        if (!in_array($this-&gt;query-&gt;type, [\'select\'])) {\r\n            throw new \\Exception(\"LIMIT can only be added to SELECT\");\r\n        }\r\n        $this-&gt;query-&gt;limit = \" LIMIT \" . $start . \", \" . $offset;\r\n\r\n        return $this;\r\n    }\r\n\r\n    /**\r\n     * Получение окончательной строки запроса.\r\n     */\r\n    public function getSQL(): string\r\n    {\r\n        $query = $this-&gt;query;\r\n        $sql = $query-&gt;base;\r\n        if (!empty($query-&gt;where)) {\r\n            $sql .= \" WHERE \" . implode(\' AND \', $query-&gt;where);\r\n        }\r\n        if (isset($query-&gt;limit)) {\r\n            $sql .= $query-&gt;limit;\r\n        }\r\n        $sql .= \";\";\r\n        return $sql;\r\n    }\r\n}\r\n\r\n/**\r\n * Этот Конкретный Строитель совместим с PostgreSQL. Хотя Postgres очень похож\r\n * на Mysql, в нем всё же есть ряд отличий. Чтобы повторно использовать общий\r\n * код, мы расширяем его от строителя MySQL, переопределяя некоторые шаги\r\n * построения.\r\n */\r\nclass PostgresQueryBuilder extends MysqlQueryBuilder\r\n{\r\n    /**\r\n     * Помимо прочего, PostgreSQL имеет несколько иной синтаксис LIMIT.\r\n     */\r\n    public function limit(int $start, int $offset): SQLQueryBuilder\r\n    {\r\n        parent::limit($start, $offset);\r\n\r\n        $this-&gt;query-&gt;limit = \" LIMIT \" . $start . \" OFFSET \" . $offset;\r\n\r\n        return $this;\r\n    }\r\n    // + тонны других переопределений...\r\n}\r\n\r\n/**\r\n * Обратите внимание, что клиентский код непосредственно использует объект\r\n * строителя. Назначенный класс Директора в этом случае не нужен, потому что\r\n * клиентский код практически всегда нуждается в различных запросах, поэтому\r\n * последовательность шагов конструирования непросто повторно использовать.\r\n * Поскольку все наши строители запросов создают продукты одного типа (это\r\n * строка), мы можем взаимодействовать со всеми строителями, используя их общий\r\n * интерфейс. Позднее, если мы реализуем новый класс Строителя, мы сможем\r\n * передать его экземпляр существующему клиентскому коду, не нарушая его,\r\n * благодаря интерфейсу SQLQueryBuilder.\r\n */\r\nfunction clientCode(SQLQueryBuilder $queryBuilder)\r\n{\r\n    // ...\r\n\r\n    $query = $queryBuilder\r\n        -&gt;select(\"users\", [\"name\", \"email\", \"password\"])\r\n        -&gt;where(\"age\", 18, \"&gt;\")\r\n        -&gt;where(\"age\", 30, \"\")\r\n        -&gt;limit(10, 20)\r\n        -&gt;getSQL();\r\n\r\n    echo $query;\r\n\r\n    // ...\r\n}\r\n\r\n/**\r\n * Приложение выбирает подходящий тип строителя запроса в зависимости от текущей\r\n * конфигурации или настроек среды.\r\n */\r\n// if ($_ENV[\'database_type\'] == \'postgres\') {\r\n//     $builder = new PostgresQueryBuilder(); } else {\r\n//     $builder = new MysqlQueryBuilder; }\r\n//\r\n// clientCode($builder);\r\n\r\necho \"Testing MySQL query builder:\\n\";\r\nclientCode(new MysqlQueryBuilder);\r\n\r\necho \"\\n\\n\";\r\n\r\necho \"Testing PostgresSQL query builder:\\n\";\r\nclientCode(new PostgresQueryBuilder);\r\n    </code>\r\n</pre>\r\n\r\n<h3>Пример из реальной жизни</h3>\r\n<p>\r\n  Представьте, что вы пришли в McDonalds и заказали конкретный продукт,\r\n  например, БигМак, и вам готовят его без лишних вопросов. Это пример простой\r\n  фабрики. Но есть случаи, когда логика создания может включать в себя больше\r\n  шагов. Например, вы хотите индивидуальный сэндвич в Subway: у вас есть\r\n  несколько вариантов того, как он будет сделан. Какой хлеб вы хотите? Какие\r\n  соусы использовать? Какой сыр? В таких случаях на помощь приходит шаблон\r\n  «Строитель».\r\n</p>\r\n\r\n<p>\r\n  <b>Простыми словами:</b> Шаблон позволяет вам создавать различные виды\r\n  объекта, избегая засорения конструктора. Он полезен, когда может быть\r\n  несколько видов объекта или когда необходимо множество шагов, связанных с его\r\n  созданием.</p><pre><code class=\"php\">class Burger\r\n{\r\n    protected $size;\r\n\r\n    protected $cheese = false;\r\n\r\n    protected $pepperoni = false;\r\n\r\n    protected $lettuce = false;\r\n\r\n    protected $tomato = false;\r\n\r\n    public function __construct(BurgerBuilder $builder)\r\n    {\r\n        $this-&gt;size = $builder-&gt;size;\r\n        $this-&gt;cheese = $builder-&gt;cheese;\r\n        $this-&gt;pepperoni = $builder-&gt;pepperoni;\r\n        $this-&gt;lettuce = $builder-&gt;lettuce;\r\n        $this-&gt;tomato = $builder-&gt;tomato;\r\n    }\r\n}\r\n\r\nclass BurgerBuilder\r\n{\r\n    public $size;\r\n\r\n    public $cheese = false;\r\n\r\n    public $pepperoni = false;\r\n\r\n    public $lettuce = false;\r\n\r\n    public $tomato = false;\r\n\r\n    public function __construct(int $size)\r\n    {\r\n        $this-&gt;size = $size;\r\n    }\r\n\r\n    public function addPepperoni()\r\n    {\r\n        $this-&gt;pepperoni = true;\r\n        return $this;\r\n    }\r\n\r\n    public function addLettuce()\r\n    {\r\n        $this-&gt;lettuce = true;\r\n        return $this;\r\n    }\r\n\r\n    public function addCheese()\r\n    {\r\n        $this-&gt;cheese = true;\r\n        return $this;\r\n    }\r\n\r\n    public function addTomato()\r\n    {\r\n        $this-&gt;tomato = true;\r\n        return $this;\r\n    }\r\n\r\n    public function build(): Burger\r\n    {\r\n        return new Burger($this);\r\n    }\r\n}\r\n\r\n//example:\r\n$burger = (new BurgerBuilder(14))\r\n    -&gt;addPepperoni()\r\n    -&gt;addLettuce()\r\n    -&gt;addTomato()\r\n    -&gt;build();\r\n    </code>\r\n</pre>',
        'builder', 1, 31, 5, '2020-12-06 21:12:50', '2021-09-01 21:57:27');
INSERT INTO `infos`
VALUES (73, 'Install mysql on ubuntu',
        '<ul class=\"main_list\">\r\n    <li><a href=\"#install_mysql_ubuntu\">Install on ubuntu</a></li>\r\n    <li><a href=\"#setting_mysql_ubuntu\">Настройка MySQL</a></li>\r\n    <li><a href=\"#auth_mysql_ubuntu\">Настройка аутентификации и привилегий</a></li>\r\n</ul>\r\n\r\n<div id=\"install_mysql_ubuntu\">\r\n    <pre><code class=\"\">\r\nsudo apt update\r\nsudo apt install mysql-server mysql-client\r\n//check if mysql service is run\r\nsudo systemctl status mysql\r\n    </code></pre>\r\n</div>\r\n\r\n<div id=\"setting_mysql_ubuntu\">\r\n    <p>\r\n        В случае новой установки MySQL вам необходимо выполнить скрипт безопасности. Он изменяет некоторыенастройки по\r\n        умолчанию на более безопасные, например, удалённый вход для пользователей root и пользователи, созданные по\r\n        умолчанию. В старых версиях MySQL вам было необходимо также инициализировать директорию данных вручную, теперь\r\n        это делается автоматически. Выполните скрипт безопасности командой: <code>sudo mysql_secure_installation</code>\r\n    </p>\r\n    <p>\r\n        В результате выполнения этого скрипта вам будет предложено внести изменения в настройки безопасности вашей\r\n        MySQL. Сначала вам будет предложено установить плагин валидации паролей (Validate Password Plugin), который\r\n        позволяет тестировать надёжность паролей MySQL. Далее вам предложат задать пароль для пользователя;root вашей\r\n        установки MySQL. Выберите надёжный пароль и введите его два раза.\r\n    </p>\r\n    <p>\r\n        Далее вы можете выбирать Y и нажимать ENTER для всех последующих вопросов. При этом будут удалены некоторые\r\n        анонимные пользователи и тестовые базы данных, будет отключена возможность удалённого входа для root\r\n        пользователей, после чего все внесённые изменения будут применены к вашей установке MySQL.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"auth_mysql_ubuntu\">\r\n    <p>\r\n        На серверах с Ubuntu, использующей MySQL 5.7 (и более поздние версии), пользователь root в MySQL по умолчанию\r\n        аутентифицируется с помощью плагина auth_socket, а не по паролю. Это в целом более безопасно и удобно во многих\r\n        случаях, но не в случае, когда вам необходимо организовать доступ к MySQL со стороны сторонней программы,\r\n        например, phpMyAdmin. Для того, чтобы пользователь root в MySQL мог использовать пароль для входа в систему вам\r\n        необходимо изменить метод аутентификации с auth_socket на mysql_native_password. Для этого войдите в оболочку\r\n        MySQL следующей командой:<br> <code>sudo mysql</code>\r\n\r\n    <p>\r\n        Далее проверьте, какой метод аутентификации используется для каждого из ваших пользователей MySQL:<br> <code>SELECT\r\n        user,authentication_string,plugin,host FROM mysql.user;</code>\r\n    </p>\r\n    <p>\r\n        В этом примере ваш пользователь root использует аутентификацию с помощью плагина auth_socket. Для изменения этой\r\n        настройки на использование пароля используйте следующую команду ALTER USER. Не забудьте изменить password на ваш\r\n        сильный пароль:\r\n    </p>\r\n    <pre>\r\n    <code>\r\nALTER USER \'root\'@\'localhost\' IDENTIFIED WITH \'password\';\r\nALTER USER \'root\'@\'localhost\' IDENTIFIED BY \'MyNewPass\';\r\n    </code>\r\n</pre>\r\n</div>\r\n\r\n<p><br></p>',
        'install-mysql-on-ubuntu', 1, 11, 1, '2021-08-12 15:18:02', '2021-09-30 14:57:00');
INSERT INTO `infos`
VALUES (78, 'Что такое MySQL, краткий обзор движков',
        '<ul class=\"main_list\">\r\n    <li><a href=\"#mysql\">Что такое MySQL</a></li>\r\n    <li><a href=\"#mysql_engine\">Краткий обзор движков таблиц MySQL</a></li>\r\n    <li><a href=\"#source\">Источники</a></li>\r\n</ul>\r\n\r\n<div id=\"mysql\">\r\n    <p>\r\n        База данных — это место для хранения структурированных данных.<br>\r\n        СУБД (система управлением базами данных) — это специальное программное обеспечение, разработанное для управления\r\n        этими базами данных. Основные типы СУБД:\r\n    </p><p>\r\n    </p><ul>\r\n        <li><b>реляционные</b>. состоит из связанных между собой таблиц. Каждая таблица состоит из строк и столбцов;\r\n        </li>\r\n        <li><b>объектно-ориентированные</b>. Они работают по принципу объектно-ориентированного программирования: вся\r\n            информация представлена в форме объекта;\r\n        </li>\r\n        <li><b>распределенные</b>. База данных состоит из нескольких файлов, причём каждый из них может находиться на\r\n            разных серверах;\r\n        </li>\r\n        <li><b>NoSQL</b>, второе название — нереляционные. В таких базах хранятся неструктурированные данные;\r\n        </li>\r\n        <li><b>хранилища данных</b>. Эти базы нацелены на то, чтобы максимально быстро выполнять запросы и анализировать\r\n            их. Поиск данных — вот для чего нужны такие СУБД.\r\n        </li>\r\n    </ul>\r\n    <p>\r\n        MySQL — реляционная Система Управления Базами Данных (СУБД) — это набор программного обеспечения, который\r\n        позволяет работать с базами данных: создавать, удалять и редактировать их. MySQL работает по принципу\r\n        клиент-сервер. Компьютер пользователя (клиент) отправляет запрос. Сервер баз данных его обрабатывает и\r\n        предоставляет ответ. Именно поэтому часто можно услышать понятие MySQL-сервер. Это сервер, на котором хранится\r\n        база данных.<br>\r\n    </p>\r\n</div>\r\n\r\n\r\n<div id=\"mysql_engine\">\r\n    <table class=\"table table-bordered table-hover\">\r\n        <thead>\r\n        <tr>\r\n            <th scope=\"col\">Описание</th>\r\n            <th scope=\"col\"><b>MyISAM</b></th>\r\n            <th scope=\"col\"><b>InnoDB</b></th>\r\n        </tr>\r\n        </thead>\r\n        <tbody>\r\n        <tr>\r\n            <td>\r\n                <b>Транзакционный движек?</b> Транзакция (Transaction) — блок операторов\r\n                SQL , который в случае ошибки в одном запросе, возвращается к\r\n                предыдущему состоянию (Rollback), и только в случае выполнения всех\r\n                запросов подтверждается (Commit)\r\n            </td>\r\n            <td>нет</td>\r\n            <td>да</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n                <b>Поддержка внешних ключей</b>Внешние ключи — это способ связать записи\r\n                в двух таблицах по определенным полям так, что при обновлении поля в\r\n                родительской автоматически происходит определенное изменение поля в\r\n                дочерней (дочернюю и родительскую выбираешь при создании ключа; точнее,\r\n                создаешь ключ в дочерней, который ссылается на родительскую).\r\n            </td>\r\n            <td>нет</td>\r\n            <td>да</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n                <b>Блокировка</b> Блокировка на уровне строк, т.е. если процессу нужно\r\n                обновить строку в таблице, то он блокирует только эту строку, позволяя\r\n                другим обновлять другие строки параллельно\r\n            </td>\r\n            <td>Блокировка на уровне таблиц</td>\r\n            <td>Блокировка на уровне строк</td>\r\n        </tr>\r\n        <tr>\r\n            <td>Одновременные запросы к разным частям таблицы.</td>\r\n            <td>Медленнее</td>\r\n            <td>Быстрее</td>\r\n        </tr>\r\n        <tr>\r\n            <td>При смешанной нагрузке в таблице (select/update/delete/insert)</td>\r\n            <td>Медленнее</td>\r\n            <td>Быстрее</td>\r\n        </tr>\r\n        <tr>\r\n            <td>Операция Insert</td>\r\n            <td>Быстрее</td>\r\n            <td>Медленнее, ибо есть оверхед на транзакцию, но это цена надежности</td>\r\n        </tr>\r\n        <tr>\r\n            <td>Если преобладают операции чтения (SELECT)</td>\r\n            <td>Работает быстрее</td>\r\n            <td>Работает медленнее</td>\r\n        </tr>\r\n        <tr>\r\n            <td>Поддержка полнотекстового поиска</td>\r\n            <td>Да</td>\r\n            <td>Нет (доступен начиная с версии MySQL 5.6.4)</td>\r\n        </tr>\r\n        <tr>\r\n            <td>Запрос Count(*)</td>\r\n            <td>Быстрее</td>\r\n            <td>Медленнее</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n                <b>Поддержка mysqlhotcopy</b> Утилита mysqlhotcopy представляет собой\r\n                Perl-сценарий, использующий SQL-команды LOCK TABLES, FLUSH TABLES и\r\n                Unix-утилиты cp или scp для быстрого получения резервной копии базы\r\n                данных.\r\n            </td>\r\n            <td>Да</td>\r\n            <td>Нет</td>\r\n        </tr>\r\n        <tr>\r\n            <td>Файловое хранение таблиц</td>\r\n            <td>Каждой таблице отдельный файл</td>\r\n            <td>\r\n                Данные при настройках по умолчанию хранятся в больших совместно\r\n                используемых файлах\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n                <b>Бинарное копировании таблиц?</b> Табличные файлы можно перемещать\r\n                между компьютерами разных архитектур и разными операционными системами\r\n                без всякого преобразования\r\n            </td>\r\n            <td>Да</td>\r\n            <td>Нет</td>\r\n        </tr>\r\n        <tr>\r\n            <td>Размер таблиц в БД</td>\r\n            <td>Меньше</td>\r\n            <td>Больше</td>\r\n        </tr>\r\n        <tr>\r\n            <td>Поведение в случае сбоя</td>\r\n            <td>Крашится вся таблица</td>\r\n            <td>По логам можно все восстановить</td>\r\n        </tr>\r\n        <tr>\r\n            <td>В случае хранения «логов» и подобного</td>\r\n            <td>Лучше</td>\r\n            <td>Хуже</td>\r\n        </tr>\r\n        </tbody>\r\n    </table>\r\n    <p>Выводы:</p>\r\n    <ul>\r\n        <li>\r\n            <b>MyISAM</b> стоит использовать, если нужен полнотекстовый поиск до версии\r\n            5.6. Также этот движок подойдет, когда в таблице очень мало записей и\r\n            большое количество чтений или преобладает один вид доступа: чтение\r\n            (новостной сайт) или запись (например, логирование);\r\n        </li>\r\n        <li>\r\n            Использование InnoDB имеет смысл во всех остальных случаях и случаях\r\n            повышенных требований по сохранности данных.\r\n        </li>\r\n    </ul>\r\n</div>\r\n\r\n<div id=\"source\">\r\n    <a class=\"btn btn-secondary\" target=\"_blank\" href=\"https://itif.ru/otlichiya-myisam-innodb/\" role=\"button\">\r\n        itif.ru\r\n    </a>\r\n</div>\r\n\r\n<p><br></p>',
        'cto-takoe-mysql-kratkii-obzor-dvizkov', 1, 11, 2, '2021-08-17 09:51:49', '2021-09-30 09:49:05');
INSERT INTO `infos`
VALUES (80, 'Observer',
        '<p></p>\r\n<h2>\r\n  Наблюдатель\r\n</h2>\r\n<a target=\"_blank\" href=\"https://refactoring.guru/ru/design-patterns/observer\">\r\n  refactoring.guru\r\n</a>\r\n<a href=\"https://tproger.ru/translations/design-patterns-simple-words-3/#36\" target=\"_blank\">tproger</a> <a href=\"https://www.php.net/manual/ru/class.splobserver.php\" target=\"_blank\">www.php.net</a>\r\n<p>\r\n  <b>Наблюдатель</b> — это поведенческий паттерн проектирования, который создаёт\r\n  механизм подписки, позволяющий одним объектам следить и реагировать на\r\n  события, происходящие в других объектах.\r\n</p>\r\n<p>\r\n  <b>Проблема</b> Представьте, что вы имеете два объекта: Покупатель и Магазин.\r\n  В магазин вот-вот должны завезти новый товар, который интересен покупателю.\r\n  Покупатель может каждый день ходить в магазин, чтобы проверить наличие товара.\r\n  Но при этом он будет злиться, без толку тратя своё драгоценное время.\r\n</p>\r\n<p>\r\n  <b>Признаки применения паттерна</b>: можно определить по механизму подписки и\r\n  методам оповещения, которые вызывают компоненты программы.\r\n</p>\r\n<p>\r\n  <b>Пример из жизни:</b> Хороший пример: люди, ищущие работу, подписываются на\r\n  публикации на сайтах вакансий и получают уведомления, когда появляются\r\n  вакансии подходящие по параметрам.\r\n</p>\r\n<pre><code class=\"language-php\">\r\nclass JobPostings implements SplSubject\r\n{\r\n    protected $job;\r\n    protected $observers = [];\r\n\r\n    /**\r\n     * @param $job\r\n     */\r\n    public function __construct($job)\r\n    {\r\n        $this->job = $job;\r\n    }\r\n\r\n\r\n    public function detach(SplObserver $observer)\r\n    {\r\n        $key = array_search($observer, $this->observers, true);\r\n        if ($key) {\r\n            unset($this->observers[$key]);\r\n        }\r\n    }\r\n\r\n    public function attach(SplObserver $observer)\r\n    {\r\n        $this->observers[] = $observer;\r\n    }\r\n\r\n    public function notify()\r\n    {\r\n        /**\r\n         * @var $observer SplObserver\r\n         */\r\n        foreach ($this->observers as $observer) {\r\n            $observer->update($this);\r\n        }\r\n    }\r\n}\r\n\r\n\r\nclass JobSeeker implements SplObserver\r\n{\r\n    protected $name;\r\n\r\n    public function __construct(string $name)\r\n    {\r\n        $this->name = $name;\r\n    }\r\n\r\n    public function update(SplSubject $subject)\r\n    {\r\n        echo \'Hello \' . $this->name . \'! See new job\';\r\n    }\r\n\r\n}\r\n\r\n$jobPostings = new JobPostings(\'Software Engineer\');\r\n\r\n$johnDoe = new JobSeeker(\'John Doe\');\r\n$janeDoe2 = new JobSeeker(\'Jane Doe2\');\r\n\r\n$jobPostings->attach($johnDoe);\r\n$jobPostings->attach($janeDoe2);\r\n\r\n$jobPostings->notify();\r\n</code></pre>',
        'observer', 1, 38, 2, '2021-08-17 10:26:16', '2021-12-01 21:59:32');
INSERT INTO `infos` VALUES (81,'Facade','<p>\r\n  <a href=\"https://tproger.ru/translations/design-patterns-simple-words-2/#25\" target=\"_blank\">tproger</a>\r\n  <a href=\"https://refactoring.guru/ru/design-patterns/facade/php/example\" target=\"_blank\">refactoring.guru</a>\r\n</p>\r\n<p>\r\n  <b>Фасад</b> — позволяет снизить общую сложность программы, путём сведения всех возможных внешних вызовов к одному объекту, делегирующему их соответствующим объектам системы.</p>\r\n\r\n<p>\r\n  <b>Проблема</b>:&nbsp;Вашему коду приходится работать с большим количеством\r\n  объектов некой сложной библиотеки или фреймворка. Вы должны самостоятельно\r\n  инициализировать эти объекты, следить за правильным порядком зависимостей и\r\n  так далее.\r\n</p>\r\n<p>\r\n  <b>Решение:&nbsp; </b>Предоставляет именно те фичи, которые нужны клиенту, и\r\n  скрывает все остальные.&nbsp;К примеру, программа, заливающая видео котиков в\r\n  социальные сети, может использовать профессиональную библиотеку сжатия видео.\r\n  Но все, что нужно клиентскому коду этой программы — простой метод\r\n  encode(filename, format). Создав класс с таким методом, вы реализуете свой\r\n  первый фасад</p><ul>\r\n</ul>\r\n\r\n<p>\r\n  <b>Пример из жизни</b>:&nbsp;Как вы включаете компьютер? Нажимаю на кнопку\r\n  включения, скажете вы. Это то, во что вы верите, потому что вы используете\r\n  простой интерфейс, который компьютер предоставляет для доступа снаружи. Внутри\r\n  же должно произойти гораздо больше вещей. Этот простой интерфейс для сложной\r\n  подсистемы называется фасадом.\r\n</p>\r\n\r\n<pre><code class=\"php\">\r\nclass Computer\r\n{\r\n    public function getElectricShock()\r\n    {\r\n        echo \"Ай!\";\r\n    }\r\n\r\n    public function makeSound()\r\n    {\r\n        echo \"Бип-бип!\";\r\n    }\r\n\r\n    public function showLoadingScreen()\r\n    {\r\n        echo \"Загрузка..\";\r\n    }\r\n\r\n    public function bam()\r\n    {\r\n        echo \"Готов к использованию!\";\r\n    }\r\n\r\n    public function closeEverything()\r\n    {\r\n        echo \"Буп-буп-буп-бззз!\";\r\n    }\r\n\r\n    public function sooth()\r\n    {\r\n        echo \"Zzzzz\";\r\n    }\r\n\r\n    public function pullCurrent()\r\n    {\r\n        echo \"Аах!\";\r\n    }\r\n}\r\n</code></pre>\r\n<p>Затем у нас есть фасад:</p>\r\n<pre><code class=\"php\">\r\nclass ComputerFacade\r\n{\r\n    protected $computer;\r\n\r\n    public function __construct(Computer $computer)\r\n    {\r\n        $this-&gt;computer = $computer;\r\n    }\r\n\r\n    public function turnOn()\r\n    {\r\n        $this-&gt;computer-&gt;getElectricShock();\r\n        $this-&gt;computer-&gt;makeSound();\r\n        $this-&gt;computer-&gt;showLoadingScreen();\r\n        $this-&gt;computer-&gt;bam();\r\n    }\r\n\r\n    public function turnOff()\r\n    {\r\n        $this-&gt;computer-&gt;closeEverything();\r\n        $this-&gt;computer-&gt;pullCurrent();\r\n        $this-&gt;computer-&gt;sooth();\r\n    }\r\n}\r\n</code></pre>\r\n<pre><code class=\"php\">\r\n$computer = new ComputerFacade(new Computer());\r\n$computer-&gt;turnOn(); // Ай! Бип-бип! Загрузка.. Готов к использованию!\r\n$computer-&gt;turnOff(); // Буп-буп-буп-бззз! Аах! Zzzzz \r\n</code></pre>','facade',1,36,3,'2021-08-17 10:34:04','2021-12-01 21:56:50');
INSERT INTO `infos` VALUES (82,'Абстрактная фабрика','<a class=\"btn btn-secondary\" target=\"_blank\" href=\"https://tproger.ru/translations/design-patterns-simple-words-1/#12\">tproger\r\n</a>\r\n<a class=\"btn btn-secondary\" target=\"_blank\" href=\"https://refactoring.guru/ru/design-patterns/abstract-factory/php/example#example-1\">refactoring.guru</a>\r\n\r\n<p>\r\n  <b>Абстрактная фабрика</b> — это порождающий паттерн проектирования, который\r\n  позволяет создавать семейства связанных объектов, не привязываясь к конкретным\r\n  классам создаваемых объектов, возвращает тот или инной обьект в зависимости от\r\n  условий или без условий.\r\n</p>\r\n<p>\r\n  Клиентский код вызывает методы фабрики для получения продуктов, вместо\r\n  самостоятельного создания с помощью оператора new. При этом фабрика сама\r\n  следит за тем, чтобы создать продукт нужной вариации.\r\n</p>\r\n<p>\r\n  <b>Применимость</b>: Паттерн можно часто встретить в PHP-коде, особенно там,\r\n  где требуется создание семейств продуктов (например, во всевозможных\r\n  фреймворках).\r\n</p>\r\n<p>\r\n  <b>Когда использовать</b>: Когда есть взаимосвязанные зависимости с не очень\r\n  простой логикой создания.\r\n</p>\r\n<p>\r\n  <b>Пример из жизни</b>: В зависимости от ваших нужд вам понадобится деревянная\r\n  дверь из одного магазина, железная дверь — из другого или пластиковая — из\r\n  третьего. Кроме того, вам понадобится соответствующий специалист: столяр для\r\n  деревянной двери, сварщик для железной двери и так далее. Как вы можете\r\n  заметить, тут есть зависимость между дверьми.\r\n</p>\r\n<p>Обратимся к коду. Используем пример про двери. Сначала у нас есть интерфейс Door и несколько его реализаций:</p>\r\n<pre><code class=\"php\">\r\ninterface Door\r\n{\r\n    public function getDescription();\r\n}\r\n\r\nclass WoodenDoor implements Door\r\n{\r\n    public function getDescription()\r\n    {\r\n        echo \'Я деревянная дверь\';\r\n    }\r\n}\r\n\r\nclass IronDoor implements Door\r\n{\r\n    public function getDescription()\r\n    {\r\n        echo \'Я железная дверь\';\r\n    }\r\n}\r\n</code></pre>\r\n<p>Затем у нас есть несколько DoorExpert для каждого типа дверей:</p>\r\n<pre><code class=\"php\">\r\ninterface DoorExpert\r\n{\r\n    public function getDescription();\r\n}\r\n\r\nclass Welder implements DoorExpert\r\n{\r\n    public function getDescription()\r\n    {\r\n        echo \'Я работаю только с железными дверьми\';\r\n    }\r\n}\r\n\r\nclass Carpenter implements DoorExpert\r\n{\r\n    public function getDescription()\r\n    {\r\n        echo \'Я работаю только с деревянными дверьми\';\r\n    }\r\n}\r\n\r\n</code></pre>\r\n<p>Теперь у нас есть DoorFactory, которая позволит нам создать семейство связанных объектов. То есть фабрика деревянных дверей предоставит нам деревянную дверь и эксперта по деревянным дверям. Аналогично для железных дверей:</p>\r\n<pre><code class=\"php\">\r\nabstract class DoorFactory\r\n{\r\n    public static $config = 1;\r\n\r\n    /**\r\n     * Возвращает фабрику\r\n     *\r\n     * @return DoorFactory - дочерний объект\r\n     */\r\n    public static function getFactory()\r\n    {\r\n        switch (self::$config) {\r\n            case 1:\r\n                return new WoodenDoorFactory();\r\n            case 2:\r\n                return new IronDoorFactory();\r\n        }\r\n    }\r\n\r\n    abstract public function makeDoor(): Door;\r\n\r\n    abstract public function makeExpert(): DoorExpert;\r\n}\r\n\r\n// Деревянная фабрика вернет деревянную дверь\r\nclass WoodenDoorFactory extends DoorFactory\r\n{\r\n    public function makeDoor(): Door\r\n    {\r\n        return new WoodenDoor();\r\n    }\r\n\r\n    public function makeExpert(): DoorExpert\r\n    {\r\n        return new Carpenter();\r\n    }\r\n}\r\n\r\n// Железная фабрика вернет железную дверь\r\nclass IronDoorFactory extends DoorFactory\r\n{\r\n    public function makeDoor(): Door\r\n    {\r\n        return new IronDoor();\r\n    }\r\n\r\n    public function makeExpert(): DoorExpert\r\n    {\r\n        return new Welder();\r\n    }\r\n}\r\n</code></pre>\r\n<p>Пример использования:</p>\r\n<pre><code class=\"php\">\r\n$woodenFactory = DoorFactory::getFactory();\r\n$woodenFactory->makeDoor()->getDescription(); //Вывод: Я деревянная дверь\r\n$woodenFactory->makeExpert()->getDescription(); //Вывод: Я работаю только с деревянными дверьми\r\n\r\nDoorFactory::$config = 2;\r\n\r\n// Аналогично для железной двери\r\n$ironFactory = DoorFactory::getFactory();\r\n$ironFactory->makeDoor()->getDescription(); //Вывод: Я железная дверь\r\n$ironFactory->makeExpert()->getDescription(); //Вывод: Я работаю только с железными дверьми\r\n</code></pre>\r\n<p>Другой пример:</p>\r\n<pre><code class=\"php\">\r\n1\r\n</code></pre>','abstraktnaya-fabrika',1,31,1,'2021-08-17 10:36:24','2021-09-01 22:23:47');
INSERT INTO `infos` VALUES (83,'Fabric method','<p><a target=\"_blank\" href=\"https://refactoring.guru/ru/design-patterns/factory-method/php/example\">\r\n  refactoring.guru</a>&nbsp;<a href=\"https://tproger.ru/translations/design-patterns-simple-words-1/#12\" target=\"_blank\">tproger.ru</a><p>\r\n  Это порождающий паттерн проектирования, который решает проблему создания\r\n  различных продуктов, без указания конкретных классов продуктов.\r\n</p>\r\n<p>\r\n  Фабричный метод задаёт метод, который следует использовать вместо вызова\r\n  оператора new для создания объектов-продуктов. Подклассы могут переопределить\r\n  этот метод, чтобы изменять тип создаваемых продуктов.\r\n</p>\r\n<p>\r\n  <b>Проблема</b> Представьте, что вы создаёте программу управления грузовыми\r\n  перевозками. Сперва вы рассчитываете перевозить товары только на автомобилях.\r\n  Поэтому весь ваш код работает с объектами класса Грузовик. В какой-то момент\r\n  ваша программа становится настолько известной, что морские перевозчики\r\n  выстраиваются в очередь и просят добавить поддержку морской логистики в\r\n  программу.\r\n</p>\r\n<p>\r\n  Отличные новости, правда?! Но как насчёт кода? Большая часть существующего\r\n  кода жёстко привязана к классам Грузовиков. Чтобы добавить в программу классы\r\n  морских Судов, понадобится перелопатить всю программу. Более того, если вы\r\n  потом решите добавить в программу ещё один вид транспорта, то всю эту работу\r\n  придётся повторить. В итоге вы получите ужасающий код, наполненный условными\r\n  операторами, которые выполняют то или иное действие, в зависимости от класса\r\n  транспорта.\r\n</p>\r\n<p>\r\n  Решение Паттерн Фабричный метод предлагает создавать объекты не напрямую,\r\n  используя оператор new, а через вызов особого фабричного метода. Не пугайтесь,\r\n  объекты всё равно будут создаваться при помощи new, но делать это будет\r\n  фабричный метод.\r\n</p>\r\n<p>\r\n  <b>Пример из жизни</b>: Рассмотрим пример с менеджером по найму. Невозможно\r\n  одному человеку провести собеседования со всеми кандидатами на все вакансии. В\r\n  зависимости от вакансии он должен распределить этапы собеседования между\r\n  разными людьми.\r\n</p>\r\n<p>\r\n  <b>Простыми словами</b>: данный шаблон делегирует создание объектов\r\n  наследникам родительского класса\r\n</p>\r\n<p>\r\n  Перейдём к коду. Рассмотрим приведенный выше пример про HR-менеджера.\r\n  Изначально у нас есть интерфейс Interviewer и несколько реализаций для него:\r\n</p>\r\n<pre><code class=\"php\">\r\ninterface Interviewer\r\n{\r\n    public function askQuestions();\r\n}\r\n\r\nclass Developer implements Interviewer\r\n{\r\n    public function askQuestions()\r\n    {\r\n        echo \'Спрашивает про шаблоны проектирования!\';\r\n    }\r\n}\r\n\r\nclass CommunityExecutive implements Interviewer\r\n{\r\n    public function askQuestions()\r\n    {\r\n        echo \'Спрашивает о работе с сообществом\';\r\n    }\r\n}\r\n</code></pre>\r\n<p>Теперь создадим нашего HiringManager:</p>\r\n<pre><code class=\"php\">\r\nabstract class HiringManager\r\n{\r\n\r\n    // Фабричный метод\r\n    abstract public function makeInterviewer(): Interviewer;\r\n\r\n    public function takeInterview()\r\n    {\r\n        $interviewer = $this-&gt;makeInterviewer();\r\n        $interviewer-&gt;askQuestions();\r\n    }\r\n} \r\n</code></pre>\r\n<p>\r\n  И теперь любой дочерний класс может расширять его и предоставлять необходимого\r\n  интервьюера:\r\n</p>\r\n<pre><code class=\"php\">\r\nclass DevelopmentManager extends HiringManager\r\n{\r\n    public function makeInterviewer(): Interviewer\r\n    {\r\n        return new Developer();\r\n    }\r\n}\r\n\r\nclass MarketingManager extends HiringManager\r\n{\r\n    public function makeInterviewer(): Interviewer\r\n    {\r\n        return new CommunityExecutive();\r\n    }\r\n}  \r\n</code></pre>\r\n<p>Пример использования:</p>\r\n<pre><code class=\"php\">\r\n$devManager = new DevelopmentManager();\r\n$devManager-&gt;takeInterview(); // Вывод: Спрашивает о шаблонах проектирования!\r\n\r\n$marketingManager = new MarketingManager();\r\n$marketingManager-&gt;takeInterview(); // Вывод: Спрашивает о работе с сообществом  \r\n</code></pre>\r\n<p>\r\n  <b>Когда использовать</b>: Полезен, когда есть некоторая общая обработка в\r\n  классе, но необходимый подкласс динамически определяется во время выполнения.\r\n  Иными словами, когда клиент не знает, какой именно подкласс ему может\r\n  понадобиться.\r\n</p>\r\n</p>','fabric-method',1,31,2,'2021-08-17 10:44:26','2021-09-01 22:37:51');
INSERT INTO `infos` VALUES (89,'PSR','<ul class=\"main_list\">\r\n    <li>\r\n        <a href=\"#psr\">Основные PSR-стандарты и зачем они нужны?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#psr_2\">PSR-2 (Coding Style Guide) зачем нужен и что решает?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#psr_3\">PSR-3: Logger Interface</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#psr_4\">PSR-4 (Autoload)</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#psr_6\">PSR-6: Caching Interface</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#psr_7\">PSR-7 Request) зачем нужен и что решает?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#psr_11\">PSR-11: Container Interface</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#psr_14\">PSR-14: Event Dispatcher</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#psr_15\">PSR-15: HTTP Server Request Handlers</a>\r\n    </li>\r\n</ul>\r\n<div id=\"psr\">\r\n    <p>\r\n        <a href=\"https://habr.com/ru/post/458484/\">PSR</a> (PHP Standards Recommendations) - стандарты(рекомендации) php. Если грубо чтоб был единный формат\r\n        интерфейса, стилей,гиперссылок, созданы для того, чтобы решать проблемы переиспользования кода и облегчить\r\n        совместную разработку.\r\n    </p>\r\n    <ul>\r\n        <li>PSR-1 — основной стандарт написания кода.</li>\r\n        <li>PSR-2 — руководство по стилю написания кода.</li>\r\n        <li>PSR-3 — описание единого интерфейса для ведения логирования.</li>\r\n        <li>PSR-4 — стандарт автозагрузки.</li>\r\n        <li>PSR-6 — стандарт интерфейсов кеширования.</li>\r\n        <li>PSR-7 — стандарт интерфейса HTTP-сообщений.</li>\r\n        <li>PSR-11 — стандарт контейнера интерфейсов.</li>\r\n        <li>PSR-13 — стандарт гиперссылок.</li>\r\n        <li>PSR-14 — стандарт механизма для диспетчеризации событий.</li>\r\n        <li>PSR-15 — стандарт для обработчиков HTTP-запросов</li>\r\n        <li>PSR-16 — стандарт простого кеширования.</li>\r\n        <li>PSR-17 — стандарт для фабрик, которые создают HTTP-объекты</li>\r\n        <li>PSR-18 - описывает общие интерфейсы для отправки PSR-7 HTTP-запросов и получения HTTP-ответов.</li>\r\n    </ul>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://world-hello.ru/php/psr/about-psr.html\">\r\n        https://world-hello.ru/php/psr/about-psr.html\r\n    </a>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.php-fig.org/psr/\">\r\n        https://www.php-fig.org/psr/\r\n    </a>\r\n</div>\r\n\r\n<div id=\"psr_2\">\r\n    <ul>\r\n        <li>Файлы НЕОБХОДИМО представлять только в кодировке UTF-8 без BOM-байта.</li>\r\n        <li>Имена классов ДОЛЖНЫ быть объявлены используя StudlyCaps.</li>\r\n        <li>Не стоит мешать разный функционал в одном файле (1 файл = 1 класс)</li>\r\n        <li>\r\n            Константы класса ДОЛЖНЫ быть объявлены в верхнем регистре с подчеркиванием в качестве разделителей.\r\n        </li>\r\n        <li>Имена методов ДОЛЖНЫ быть объявлены используя camelCase.</li>\r\n        <li>\r\n            Полностью сформированное пространство имен и класс должны иметь следующую структуру \\< Vendor Name>\\(<\r\n            Namespace>\\)*< Class Name>\r\n        </li>\r\n        <li>\r\n            Каждое пространство имен должно иметь пространство имен верхнего уровня (\"Vendor Name\").\r\n        </li>\r\n        <li>\r\n            Каждый разделитель пространств имен преобразуется в DIRECTORY_SEPARATOR при загрузке из файловой системы.\r\n        </li>\r\n        <li>\r\n            Полностью сформированное пространство имен и класс дополняются суффиксом .php при загрузке из файловой\r\n            системы.\r\n        </li>\r\n        <li>\r\n            Для оформления отступов ДОЛЖНЫ использоваться четыре пробела (но не знак табуляции).\r\n        </li>\r\n        <li>\r\n            НЕДОПУСТИМО жёстко ограничивать длину строки; мягкое ограничение ДОЛЖНО составлять 120 символов; СЛЕДУЕТ\r\n            стараться, чтобы длина строки составляла 80 символов или менее.\r\n        </li>\r\n        <li>\r\n            После определения пространства имён (namespace) и после блока импорта пространств имён (use) ДОЛЖНА быть\r\n            одна пустая строка.\r\n        </li>\r\n        <li>\r\n            Открывающая фигурная скобка в определении класса ДОЛЖНА располагаться на новой строке, а закрывающая\r\n            фигурная скобка ДОЛЖНА располагаться на следующей строке после тела класса.\r\n        </li>\r\n        <li>\r\n            Область видимости ДОЛЖНА быть указана явно для всех свойств и методов;\r\n        </li>\r\n        <li>\r\n            Константы PHP true, false и null ДОЛЖНЫ быть написаны в нижнем регистре.\r\n        </li>\r\n        <li>\r\n            Ключевые слова extends и implements ДОЛЖНЫ находиться на той же строке, на которой находится имя класса.\r\n        </li>\r\n    </ul>\r\n</div>\r\n\r\n<div id=\"psr_3\">\r\n    <p>\r\n        Основная цель данного интерфейса – простым и универсальным способом стандартизировать реализацию логирования. К\r\n        данному интерфейсу прилагается спецификация, которая описывает в каких случаях какой из методов рекомендуется\r\n        использовать.\r\n    </p>\r\n    <pre><code class=\"php\">\r\ninterface LoggerInterface\r\n{\r\n    public function emergency($message, array $context = array());\r\n    public function alert($message, array $context = array());\r\n    public function critical($message, array $context = array());\r\n    public function error($message, array $context = array());\r\n    public function warning($message, array $context = array());\r\n    public function notice($message, array $context = array());\r\n    public function info($message, array $context = array());\r\n    public function debug($message, array $context = array());\r\n    public function log($level, $message, array $context = array());\r\n}\r\n</code>\r\n</pre>\r\n    <p>\r\n        Если Ваш проект нуждается в расширенном функционале, МОЖНО расширять данный интерфейс, но СЛЕДУЕТ сохранять\r\n        совместимость с описанными в данном стандарте правилами. Это позволит сторонним библиотекам, применяемых при\r\n        разработке приложения, использовать централизованную систему логирования.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"psr_4\">\r\n    <ul>\r\n        <li>\r\n            Полностью сформированное пространство имен и класс должны иметь следующую структуру \\< Vendor Name>\\(<\r\n            Namespace>\\)*< Class Name>\r\n        </li>\r\n        <li>\r\n            Каждое пространство имен должно иметь пространство имен верхнего уровня (\"Vendor Name\").\r\n        </li>\r\n        <li></li>\r\n    </ul>\r\n</div>\r\n\r\n<div id=\"psr_6\">\r\n    <p>Кэширование широко используется для повышения производительности любого проекта. Чтобы решить эти проблемы был\r\n        принят общий стандарт для библиотек реализующих кэширование, он включает в себя несколько интерфейсов:\r\n    </p>\r\n    <pre><code class=\"php\">\r\ninterface CacheItemInterface\r\n{\r\n    public function getKey();\r\n    public function get();\r\n    public function isHit();\r\n    public function set($value);\r\n    public function expiresAt($expiration);\r\n    public function expiresAfter($time);\r\n}\r\n\r\ninterface CacheItemPoolInterface\r\n{\r\n    public function getItem($key);\r\n    public function getItems(array $keys = array());\r\n    public function hasItem($key);\r\n    public function clear();\r\n    public function deleteItem($key);\r\n    public function deleteItems(array $keys);\r\n    public function save(CacheItemInterface $item);\r\n    public function saveDeferred(CacheItemInterface $item);\r\n    public function commit();\r\n}\r\n</code></pre>\r\n</div>\r\n\r\n<div id=\"psr_7\">\r\n    <p>\r\n        Цель данного стандарта, предоставить общий набор интерфейсов для работы с реквестом Request и Response\r\n        объектами.\r\n    </p>\r\n    <pre><code class=\"php\">\r\ninterface MessageInterface\r\n{\r\n    public function getProtocolVersion();\r\n    public function withProtocolVersion($version);\r\n    public function getHeaders();\r\n    public function hasHeader($name);\r\n    public function getHeader($name);\r\n    public function getHeaderLine($name);\r\n    public function withHeader($name, $value);\r\n    public function withAddedHeader($name, $value);\r\n    public function withoutHeader($name);\r\n    public function getBody();\r\n    public function withBody(StreamInterface $body);\r\n}\r\n\r\ninterface RequestInterface extends MessageInterface\r\n{\r\n    public function getRequestTarget();\r\n    public function withRequestTarget($requestTarget);\r\n    public function getMethod();\r\n    public function withMethod($method);\r\n    public function getUri();\r\n    public function withUri(UriInterface $uri, $preserveHost = false);\r\n}\r\n\r\ninterface ServerRequestInterface extends RequestInterface\r\n{\r\n    public function getServerParams();\r\n    public function getCookieParams();\r\n    public function withCookieParams(array $cookies);\r\n    public function getQueryParams();\r\n    public function withQueryParams(array $query);\r\n    public function getUploadedFiles();\r\n    public function withUploadedFiles(array $uploadedFiles);\r\n    public function getParsedBody();\r\n    public function withParsedBody($data);\r\n    public function getAttributes();\r\n    public function getAttribute($name, $default = null);\r\n    public function withAttribute($name, $value);\r\n    public function withoutAttribute($name);\r\n}\r\n\r\nResponseInterface\r\ninterface ResponseInterface extends MessageInterface\r\n{\r\n    public function getStatusCode();\r\n    public function withStatus($code, $reasonPhrase = \'\');\r\n    public function getReasonPhrase();\r\n}\r\n\r\ninterface StreamInterface\r\n{\r\n    public function __toString();\r\n    public function close();\r\n    public function detach();\r\n    public function getSize();\r\n    public function tell();\r\n    public function eof();\r\n    public function isSeekable();\r\n    public function seek($offset, $whence = SEEK_SET);\r\n    public function rewind();\r\n    public function isWritable();\r\n    public function write($string);\r\n    public function isReadable();\r\n    public function read($length);\r\n    public function getContents();\r\n    public function getMetadata($key = null);\r\n}\r\n\r\ninterface UriInterface\r\n{\r\n    public function getScheme();\r\n    public function getAuthority();\r\n    public function getUserInfo();\r\n    public function getHost();\r\n    public function getPort();\r\n    public function getPath();\r\n    public function getQuery();\r\n    public function getFragment();\r\n    public function withScheme($scheme);\r\n    public function withUserInfo($user, $password = null);\r\n    public function withHost($host);\r\n    public function withPort($port);\r\n    public function withPath($path);\r\n    public function withQuery($query);\r\n    public function withFragment($fragment);\r\n    public function __toString();\r\n}\r\n\r\ninterface UploadedFileInterface\r\n{\r\n    public function getStream();\r\n    public function moveTo($targetPath);\r\n    public function getSize();\r\n    public function getError();\r\n    public function getClientFilename();\r\n    public function getClientMediaType();\r\n}\r\n</code></pre>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://habr.com/ru/post/458484/\">\r\n        habr.com\r\n    </a>\r\n    <br>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://svyatoslav.biz/misc/psr_translation/\">\r\n        https://svyatoslav.biz/misc/psr_translation/\r\n    </a>\r\n\r\n</div>\r\n\r\n<div id=\"psr_11\">\r\n    <p>\r\n        Основная цель стандартизировать, как фреймворки и библиотеки будут использовать (DIC) контейнер для доступа к\r\n        объектам и параметрам. Для этого был описан ContainerInterface\r\n    </p>\r\n</div>\r\n\r\n<div id=\"psr_14\">\r\n    <p>\r\n        Целью этого PSR является создание общего механизма для диспетчеризации событий, чтобы библиотеки и компоненты\r\n        могли свободно использоваться в различных приложениях и средах. Для этого предоставляется несколько интерфейсов:\r\n    </p>\r\n    <pre><code class=\"php\">\r\ninterface EventDispatcherInterface\r\n{\r\n    public function dispatch(object $event);\r\n}\r\n\r\ninterface ListenerProviderInterface\r\n{\r\n    public function getListenersForEvent(object $event) : iterable;\r\n}\r\n\r\ninterface StoppableEventInterface\r\n{\r\n    public function isPropagationStopped() : bool;\r\n}\r\n</code></pre>\r\n</div>\r\n\r\n<div id=\"psr_15\">\r\n    <p>\r\n        Спецификация данного стандарта описывает интерфейсы для обработчиков HTTP-запросов и компонентов промежуточного\r\n        программного обеспечения HTTP-сервера.\r\n    </p>\r\n    <pre><code class=\"php\">\r\ninterface RequestHandlerInterface\r\n{\r\n    public function handle(ServerRequestInterface $request): ResponseInterface;\r\n}\r\n\r\ninterface MiddlewareInterface\r\n{\r\n    public function process(ServerRequestInterface $request, RequestHandlerInterface $handler): ResponseInterface;\r\n}\r\n</code></pre>\r\n</div>\r\n\r\n<div id=\"psr_16\">\r\n    <p>\r\n        PSR-17 описывает общий стандарт для фабрик, которые создают HTTP-объекты, совместимые с PSR-7.\r\n\r\n        PSR-7 не содержит рекомендации о том, как создавать HTTP-объекты. Это может приводить к трудностям при\r\n        необходимости их создания внутри компонентов, которые не привязаны к конкретной реализации PSR-7.\r\n\r\n        Интерфейсы, описанные в этой спецификации, описывают методы, с помощью которых можно создавать PSR-7 объекты.\r\n    </p>\r\n    <pre><code class=\"php\">\r\ninterface RequestFactoryInterface\r\n{\r\n    public function createRequest(string $method, $uri): RequestInterface;\r\n}\r\n\r\ninterface ResponseFactoryInterface\r\n{\r\n    public function createResponse(int $code = 200, string $reasonPhrase = \'\'): ResponseInterface;\r\n}\r\n\r\nServerRequestFactoryInterface\r\ninterface ServerRequestFactoryInterface\r\n{\r\n    public function createServerRequest(string $method, $uri, array $serverParams = []): ServerRequestInterface;\r\n}\r\n\r\ninterface StreamFactoryInterface\r\n{\r\n    public function createStream(string $content = \'\'): StreamInterface;\r\n    public function createStreamFromFile(string $filename, string $mode = \'r\'): StreamInterface;\r\n    public function createStreamFromResource($resource): StreamInterface;\r\n}\r\n\r\ninterface UploadedFileFactoryInterface\r\n{\r\n    public function createUploadedFile(\r\n        StreamInterface $stream,\r\n        int $size = null,\r\n        int $error = \\UPLOAD_ERR_OK,\r\n        string $clientFilename = null,\r\n        string $clientMediaType = null\r\n    ): UploadedFileInterface;\r\n}\r\n\r\ninterface UriFactoryInterface\r\n{\r\n    public function createUri(string $uri = \'\') : UriInterface;\r\n}\r\n</code></pre>\r\n</div>\r\n\r\n<p><br></p>','psr',1,7,7,'2021-08-21 09:59:41','2021-11-10 13:04:02');
INSERT INTO `infos` VALUES (90,'PHP: Base (типы данных, type hint, global vars)','<ul class=\"main_list\">\r\n    <li>\r\n        <a href=\"#http_cycle\">Жизненный цикл HTTP-запроса</a>\r\n        <ul>\r\n            <li>\r\n                <a href=\"#dns\">DNS</a>\r\n            </li>\r\n            <li>\r\n                <a href=\"#virtual_ports\">Виртуальные порты</a>\r\n            </li>\r\n        </ul>\r\n    </li>\r\n    <li>\r\n        <a href=\"#php_type\">Типы данных PHP?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#php_type_hint\">Что такое type hinting?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#php_empty_isset\">Чем отличается isset от empty?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#php_global\">Какие суперглобальные переменные в PHP знаешь?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#php_put\">Как получить тело PUT-запроса в PHP?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#php_arr_merge\"> Что мы получим в результате сложения массивов? $array1 + $array2. Если в обоих\r\n            массивах был одинаковый ключ, значение какого из массивов окажется в результирующем массиве?\r\n        </a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#php_sort_from_request\">В одном реквесте (form-request) передаем параметр test с разными значениями\r\n            одновременно и в POST и в GET и в Cookie. Какой из значения окажется в $_REQUEST?\r\n        </a>\r\n    </li>\r\n</ul>\r\n<div id=\"http_cycle\">\r\n    <p>Если вы перейдете на www.google.com (не используя никаких форм, просто хотите получить сайт), вот что\r\n        произойдет:</p>\r\n    <ul>\r\n        <li>Сначала браузер должен перевести www.google.com на адрес IP, если он его еще не знает. Если он это знает, то\r\n            в этот момент ничего не происходит. Если он этого не знает, он связывается с сервером DNS, чтобы разрешить\r\n            имя. По приоритету обычно первым источником является локальное хранилище, это файл hosts.\r\n        </li>\r\n        <li>Затем браузер откроет соединение TCP с адресом IP www.google.com и отправит запрос HTTP GET. В этом примере\r\n            это будет\r\n        </li>\r\n        <li>Серверное программное обеспечение получит этот запрос HTTP. Он каким-то образом сгенерирует ответ HTTP и\r\n            отправит его обратно через соединение TCP. В зависимости от запроса определяется обработчик, например,\r\n            статические файлы (изображения, javascript) возвращаются без обработки, тогда как php файлы нужно выполнить\r\n            на интерпретаторе и только после этого вернуть результат пользователю.\r\n        </li>\r\n        <li>\r\n            Когда браузер получает ответ, он обычно отображает его на экране. Запрос HTTP теперь выполнен. Щелчок по\r\n            \"search\" отправит новый запрос на сервер.\r\n        </li>\r\n    </ul>\r\n\r\n</div>\r\n<div id=\"dns\">\r\n    <p>\r\n        Система доменных имен (DNS) является одной из фундаментальных технологий современной интернет-среды и\r\n        представляет собой распределенную систему хранения и обработки информации о доменных зонах. Она необходима, в\r\n        первую очередь, для соотнесения IP-адресов устройств в сети и более удобных для человеческого восприятия\r\n        символьных имен.\r\n    </p>\r\n</div>\r\n<div id=\"virtual_ports\">\r\n    <p>\r\n        Помимо веб-сервера могут быть другие процессы которые указывать другие услуги,как подключиться именно к\r\n        веб-серверу?\r\n    </p>\r\n    <p>\r\n        Каждый процесс - один уникальный процесс,при этом процесс может занимать несколько портов,но один порт не может\r\n        занимать несколько процессов. Если работать по протоколу HTTP - то по умолчанию используется 80 порт или 443\r\n        если HTTPS\r\n    </p>\r\n    <a href=\"https://deworker.pro/edu/series/http-basics/http-lifecycle\">\r\n        https://deworker.pro/edu/series/http-basics/http-lifecycle\r\n    </a>\r\n</div>\r\n\r\n<div id=\"php_type\">\r\n    <p>\r\n        Bool, int, float, string, array, object, callback, iterable,resource,null\r\n        <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.php.net/manual/ru/language.types.intro.php\">\r\n            www.php.net\r\n        </a>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"php_type_hint\">\r\n    <p>\r\n        type-hint (\"намек на тип\") -- указание на ожидаемый тип значения (например, для входных аргументов функции).\r\n        <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.php.net/manual/ru/language.oop5.typehinting.php\">\r\n            www.php.net\r\n        </a>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"php_empty_isset\">\r\n    <p>\r\n        isset - Определяет, была ли установлена переменная значением, отличным от <b>NULL</b>\r\n    </p>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.php.net/manual/ru/function.isset.php\">\r\n        www.php.net isset\r\n    </a>\r\n    <br>\r\n    <p>\r\n        empty - Проверяет, пуста ли переменная.Переменная считается пустой, если она не существует или её значение равно\r\n        false.\r\n    </p>\r\n    <br> Следующие значения воспринимаются как пустые:\r\n    <ul>\r\n        <li>\"\" (пустая строка)</li>\r\n        <li>0 (целое число)</li>\r\n        <li>0.0 (число с плавающей точкой)</li>\r\n        <li>\"0\" (строка)</li>\r\n        <li>NULL</li>\r\n        <li>FALSE</li>\r\n        <li>array() (пустой массив)</li>\r\n    </ul>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.php.net/manual/ru/function.empty.php\">\r\n        www.php.net empty\r\n    </a>\r\n</div>\r\n\r\n<div id=\"php_global\">\r\n    <p>\r\n        $_SERVER, $_GET, $_POST, $_REQUEST, $_COOKIE, $_SESSION, $_FILES, $_ENV, $GLOBALS <br> $_REQUEST — Переменные\r\n        HTTP-запроса.Ассоциативный массив (array), который по умолчанию содержит данные переменных $_GET, $_POST и\r\n        $_COOKIE.\r\n        <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.php.net/manual/ru/language.variables.superglobals.php\">\r\n            www.php.net\r\n        </a>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"php_put\">\r\n    <p>\r\n        php:// — Доступ к различным потокам ввода-вывода file_get_contents(\'php://input \');\r\n        <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.php.net/manual/ru/wrappers.php.php\">\r\n            www.php.net\r\n        </a>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"php_arr_merge\">\r\n    <p>\r\n        <b>array_merge</b> - Сливает элементы одного или большего количества массивов таким образом, что значения одного\r\n        массива присоединяются к концу предыдущего. Результатом работы функции является новый массив.\r\n    </p>\r\n    <p>\r\n        Если входные массивы имеют одинаковые строковые ключи, тогда каждое последующее значение будет заменять\r\n        предыдущее. Однако, если массивы имеют одинаковые числовые ключи, значение, упомянутое последним, не заменит\r\n        исходное значение, а будет добавлено в конец массива.\r\n    </p>\r\n    <p>\r\n        В результирующем массиве значения исходного массива с числовыми ключами будут перенумерованы в возрастающем\r\n        порядке, начиная с нуля.\r\n    </p>\r\n    <pre>            <code class=\"php\">\r\n$array1 = array(\"color\" =&gt; \"red\", 2, 4);\r\n$array2 = array(\"a\", \"b\", \"color\" =&gt; \"green\", \"shape\" =&gt; \"trapezoid\", 4);\r\n$result = array_merge($array1, $array2);\r\nprint_r($result);\r\n\r\n//output\r\nArray\r\n(\r\n    [color] =&gt; green\r\n    [0] =&gt; 2\r\n    [1] =&gt; 4\r\n    [2] =&gt; a\r\n    [3] =&gt; b\r\n    [shape] =&gt; trapezoid\r\n    [4] =&gt; 4\r\n)\r\n            </code>\r\n        </pre>\r\n    <p>\r\n        Если вы хотите дополнить первый массив элементами второго без перезаписи элементов первого массива и без\r\n        переиндексации, используйте оператор объединения массивов +:\r\n    </p>\r\n    <p>\r\n        Ключи из первого массива будут сохранены. Если ключ массива существует в обоих массивах, то будет использован\r\n        элемент из первого массива, а соответствующий элемент из второго массива будет проигнорирован.\r\n    </p>\r\n    <pre>            <code class=\"php\">\r\n$array1 = array(0 =&gt; \'zero_a\', 2 =&gt; \'two_a\', 3 =&gt; \'three_a\');\r\n$array2 = array(1 =&gt; \'one_b\', 3 =&gt; \'three_b\', 4 =&gt; \'four_b\');\r\n$result = $array1 + $array2;\r\nvar_dump($result);\r\n\r\n//output\r\narray(5) {\r\n  [0]=&gt;\r\n  string(6) \"zero_a\"\r\n  [2]=&gt;\r\n  string(5) \"two_a\"\r\n  [3]=&gt;\r\n  string(7) \"three_a\"\r\n  [1]=&gt;\r\n  string(5) \"one_b\"\r\n  [4]=&gt;\r\n  string(6) \"four_b\"\r\n}\r\n            </code>\r\n        </pre>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.php.net/manual/ru/function.array-merge.php\">\r\n        www.php.net\r\n    </a>\r\n</div>\r\n\r\n<div id=\"php_sort_from_request\">\r\n    <p>\r\n        <b>request_order string</b> - Эта директива регулирует порядок, в котором PHP добавляет переменные GET, POST и\r\n        Cookie в массив _REQUEST. Добавление производится слева направо, новые значения перезаписывают старые.\r\n    </p>\r\n    <p>\r\n        Если значение этой директивы не установлено, то используется значение директивы variables_order для содержимого\r\n        переменной $_REQUEST.\r\n    </p>\r\n    <p>\r\n        <b>variables_order</b> string Устанавливает порядок обработки переменных EGPCS (Environment, Get, Post, Cookie,\r\n        и Server). Например, если variables_order установлена в \"SP\", то PHP создаст superglobals $_SERVER и $_POST, но\r\n        не будет создавать $_ENV, $_GET и $_COOKIE. Установка в \"\" означает, что ни одна superglobals не будет\r\n        установлена.\r\n    </p>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\" https://www.php.net/manual/ru/ini.core.php#ini.request-order\">\r\n        www.php.net\r\n    </a>\r\n</div>\r\n<p><br></p>','php-base',1,7,2,'2021-08-21 10:08:06','2021-11-04 17:27:17');
INSERT INTO `infos` VALUES (91,'PHP: Common (session, exceptions)','<ul class=\"main_list\">\r\n    <li><a href=\"#include_vs_require\">В чем разница между include и require в PHP?</a></li>\r\n    <li><a href=\"#exception_vs_throwable\">Exception vs Throwable?</a></li>\r\n    <li><a href=\"#php_session\"> Как работает сессия в PHP? Где она хранится? Как связывается браузер с\r\n        сессией.</a></li>\r\n    <li><a href=\"#session_vs_cookie\">В чем разница между сессией и кукой?</a></li>\r\n    <li><a href=\"#extend_exception\">Как можно использовать наследование исключений?</a></li>\r\n    <li><a href=\"#catch_error\">Как отлавливать системные ошибки?</a></li>\r\n    <li><a href=\"#catch_finally\">В каких случаях выполняется блок finally?</a></li>\r\n</ul>\r\n<div id=\"include_vs_require\">\r\n    <p>\r\n        Конструкция include выдаст предупреждение уровня E_WARNING, если не сможет найти файл; поведение отлично от\r\n        require, который выдаст фатальную ошибку уровня E_COMPILE_ERROR.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"exception_vs_throwable\">\r\n    <p>\r\n        Exception - это базовый класс для всех исключений в PHP 5 и базовый класс для всех пользовательских исключений в\r\n        PHP 7.\r\n    </p>\r\n    <p>\r\n        Throwable - является родительским интерфейсом для всех объектов, выбрасывающихся с помощью выражения throw в\r\n        PHP7, включая классы Error(базовый класс для всех внутренних ошибок PHP) и Exception.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"php_session\">\r\n    <p>\r\n        Сессии являются простым способом хранения информации для отдельных пользователей с уникальным идентификатором\r\n        сессии.Это может использоваться для сохранения состояния между запросами страниц. Идентификаторы сессий обычно\r\n        отправляются браузеру через сессионный cookie и используются для получения имеющихся данных сессии.\r\n        <br>\r\n        По умолчанию PHP использует внутренний обработчик files для сохранения сессий, который установлен в\r\n        INI-переменной session.save_handler. Этот обработчик сохраняет данные на сервере в директории, указанной в\r\n        конфигурационной директиве session.save_path.\r\n        <br>\r\n        Сессии могут запускаться вручную с помощью функции session_start(). Если директива session.auto_start\r\n        установлена в 1, сессия автоматически запустится, в начале запроса.\r\n        <br>\r\n        Существуют два метода передачи идентификатора сессии:\r\n    <ul>\r\n        <li>Cookies</li>\r\n        <li>Идентификатор через параметр URL</li>\r\n    </ul>\r\n    <br>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.php.net/manual/ru/session.examples.basic.php\">\r\n        www.php.net\r\n    </a>\r\n    <br>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.php.net/manual/ru/session.idpassing.php\">\r\n        www.php.net\r\n    </a>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"session_vs_cookie\">\r\n    <p>\r\n        Cookies - это механизм хранения данных браузером, которые храняться на стороне клиента\r\n        <br>\r\n        <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.php.net/manual/ru/features.cookies.php\">\r\n            www.php.net\r\n        </a>\r\n        <br>\r\n        <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.php.net/manual/ru/session.idpassing.php\">\r\n            www.php.net\r\n        </a>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"extend_exception\">\r\n    <p>\r\n        Для своих исключений\r\n    </p>\r\n</div>\r\n\r\n<div id=\"catch_error\">\r\n    <p>\r\n        Throwable является родительским интерфейсом для всех объектов, выбрасывающихся с помощью выражения throw,\r\n        включая классы Error и Exception.<a href=\"https://www.php.net/manual/ru/class.throwable.php\" target=\"_blank\">php.net</a>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"catch_finally\">\r\n    <p>\r\n        Блок finally также можно использовать после или вместо блока catch. Код в блоке finally всегда будет выполняться\r\n        после кода в блоках try и catch, независимо от того, было ли выброшено исключение, перед тем как продолжится\r\n        нормальное выполнение кода.\r\n    </p>\r\n    <p>\r\n        Одно важное взаимодействие происходит между блоком finally и оператором return. Если оператор return встречается\r\n        внутри блоков try или catch, блок finally всё равно будет выполнен. Кроме того, оператор return выполняется,\r\n        когда встречается, но результат будет возвращён после выполнения блока finally. Если блок finally также содержит\r\n        оператор return, возвращается значение, указанное в блоке finally.\r\n    </p>\r\n    <pre>\r\n        <code class=\"php\">\r\nfunction test() {\r\n    try {\r\n        throw new Exception(\'foo\');\r\n    } catch (Exception $e) {\r\n        return \'catch\';\r\n    } finally {\r\n        return \'finally\';\r\n    }\r\n}\r\n\r\necho test(); //finally\r\n        </code>\r\n    </pre>\r\n</div>\r\n\r\n<p><br></p>','php-common',1,7,3,'2021-08-21 10:12:52','2021-09-28 11:37:03');
INSERT INTO `infos` VALUES (92,'PHP: Advanced (Iterators, generators, links)','<ul class=\"main_list\">\r\n    <li>\r\n        <a href=\"#array_access_interface\">Для чего нужен интерфейс ArrayAccess?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#array_iterator_interface\">Для чего нужен интерфейс Iterator?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#generator\">Как работают генераторы в PHP? Для чего это можно использовать? Как написать простой\r\n            генератор?\r\n        </a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#strict_mode\">Как меняется поведение PHP если включить Strict Mode?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#bit_op\">Какие побитовые операции ты знаешь</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#stderr\">Как сделать вывод в stderr из PHP-скрипта</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#spl_lib\">Что такое SPL, что прикольного оттуда использовал</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#read_big_file\">Как прочитать файл на 100 ТБ?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#return_generator\">Нужно ли после генератора писать return?</a>\r\n    </li>\r\n</ul>\r\n<div id=\"array_access_interface\">\r\n    <p>\r\n        Интерфейс обеспечивает доступ к объектам в виде массивов.\r\n    </p>\r\n    <pre><code class=\"php\">\r\nArrayAccess {\r\n/* Методы */\r\nabstract public offsetExists ( mixed $offset ) : bool  // on isset($obj[\"key\"])\r\nabstract public offsetGet ( mixed $offset ) : mixed   // $obj[\"key\"]\r\nabstract public offsetSet ( mixed $offset , mixed $value ) : void  // $obj[\"key\"] =\'value\'\r\nabstract public offsetUnset ( mixed $offset ) : void   // unset($obj[\"key\"])\r\n}\r\n</code>\r\n    </pre>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.php.net/manual/ru/class.arrayaccess.php\">\r\n        php.net\r\n    </a>\r\n</div>\r\n\r\n<div id=\"array_iterator_interface\">\r\n    <p>\r\n        Интерфейс для внешних итераторов или объектов, которые могут повторять себя изнутри.\r\n    </p>\r\n    <pre><code class=\"php\">\r\nIterator extends Traversable {\r\n/* Методы */\r\nabstract public rewind ( void ) : void    //Перемотать итератор на первый элемент\r\n||\r\nabstract public next ( void ) : void      //Переход к следующему элементу\r\n\r\nabstract public valid ( void ) : bool     //Проверяет корректность||isset текущей позиции\r\nabstract public current ( void ) : mixed  //Возврат текущего элемента\r\nabstract public key ( void ) : scalar     //Возврат ключа текущего элемента\r\n}\r\n</code>\r\n    </pre>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.php.net/manual/ru/class.iterator.php\">\r\n        php.net\r\n    </a>\r\n</div>\r\n\r\n<div id=\"generator\">\r\n    <p>\r\n        Генератор позволяет вам писать код, использующий foreach для перебора набора данных без необходимости создания\r\n        массива в памяти, что может привести к превышению лимита памяти, либо потребует довольно много времени для его\r\n        создания.\r\n    </p>\r\n    <p>\r\n        Вся суть генератора заключается в ключевом слове yield. В самом простом варианте оператор \"yield\" можно\r\n        рассматривать как оператор \"return\", за исключением того, что вместо прекращения работы функции, \"yield\" только\r\n        приостанавливает её выполнение и возвращает текущее значение, и при следующем вызове функции она возобновит\r\n        выполнения с места, на котором прервалась.\r\n    </p>\r\n    <p>\r\n        Наглядным примером вышесказанного может послужить использование функции range() как генератора. Стандартная\r\n        функция range() должна генерировать массив, состоящий из значений, и возвращать его, что может послужить\r\n        результатом генерации огромных массивов: например, вызов range(0, 1000000), приведёт к использованию более 100\r\n        МБ используемой памяти.\r\n    </p>\r\n    <p>\r\n        Когда функция генератор вызывается, она вернет объект встроенного класса Generator.\r\n    </p>\r\n    <pre><code class=\"php\">\r\n    Generator implements Iterator {\r\n    /* Методы */\r\n    public current ( void ) : mixed  //получить текущее значение генератора\r\n    public getReturn ( void ) : mixed  //Получить значение, возвращаемое генератором\r\n    public key ( void ) : mixed //Получить ключ сгенерированного элемента\r\n    public next ( void ) : void //Возобновить работу генератора\r\n    public rewind ( void ) : void //Перемотать итератор\r\n    public send ( mixed $value ) : mixed //Передать значение в генератор\r\n    public throw ( Throwable $exception ) : mixed //Бросить исключение в генератор\r\n    public valid ( void ) : bool //Проверка, закрыт ли итератор\r\n    public __wakeup ( void ) : void //Callback-функция сериализации\r\n    }\r\n    //example\r\nfunction getLines($file) {\r\n    $f = fopen($file, \'r\');\r\n    try {\r\n        while ($line = fgets($f)) {\r\n            yield $line;\r\n        }\r\n    } finally {\r\n        fclose($f);\r\n    }\r\n}\r\n\r\n    foreach (getLines(\"file.txt\") as $n => $line) {\r\n        if ($n > 5) break;\r\n        echo $line;\r\n    }\r\n\r\n    //another example\r\n\r\n    function gen_one_to_three() {\r\n        echo 55; //one time\r\n        for ($i = 1; $i <= 3; $i++) {\r\n            // Обратите внимание, что $i сохраняет свое значение между вызовами.\r\n            yield $i;\r\n        }\r\n    }\r\n    foreach (gen_one_to_three() as $value) {\r\n        echo \"$value\\n\";\r\n    }\r\n</code>\r\n</pre>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.php.net/manual/ru/language.generators.overview.php\">\r\n        php.net\r\n    </a>\r\n</div>\r\n\r\n<div id=\"strict_mode\">\r\n    <p>Строгая типизация. Не преобразовывает типы.</p>\r\n    <pre><code class=\"php\">\r\ndeclare(strict_types = 1);\r\n\r\nfunction getString(string $str) {\r\nvar_dump($str);\r\n}\r\n\r\n$int = 12;\r\ngetString($int);\r\n\r\n//Fatal error: Uncaught TypeError: Argument 1 passed to getString() must be of the type string, integer given..\r\n</code>\r\n</pre>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\"\r\n       href=\"https://www.php.net/manual/ru/functions.arguments.php#functions.arguments.type-declaration.strict\">\r\n        php.net\r\n    </a>\r\n</div>\r\n\r\n<div id=\"bit_op\">\r\n    <ul>\r\n        <li>\r\n            $a & $b <b>И</b> Устанавливаются только те биты, которые установлены и в $a, и в $b.\r\n        </li>\r\n        <li>\r\n            $a | $b <b>Или</b> Устанавливаются те биты, которые установлены в $a или в $b.\r\n        </li>\r\n        <li>\r\n            $a ^ $b <b>Исключающее или</b> Устанавливаются только те биты, которые установлены либо только в $a, либо\r\n            только в $b, но не в обоих одновременно.\r\n        </li>\r\n        <li>\r\n            ~ $a <b>Отрицание</b> Устанавливаются те биты, которые не установлены в $a, и наоборот.\r\n        </li>\r\n        <li>\r\n            $a << $b <b>Сдвиг влево</b> Все биты переменной $a сдвигаются на $b позиций влево (каждая позиция\r\n            подразумевает \"умножение на 2\")\r\n        </li>\r\n        <li>\r\n            $a >> $b <b>Сдвиг вправо</b> Все биты переменной $a сдвигаются на $b позиций вправо (каждая позиция\r\n            подразумевает \"деление на 2\")\r\n        </li>\r\n    </ul>\r\n    AND (&), OR (|), NOT (~), XOR (^), <<, >>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.php.net/manual/ru/language.operators.bitwise.php\">\r\n        php.net\r\n    </a>\r\n</div>\r\n\r\n<div id=\"stderr\">\r\n        <pre>            <code class=\"php\">\r\n php -r \'fwrite(STDERR, \"stderr\\n\");\'\r\n ||\r\n $stderr = fopen(\'php://stderr\', \'w\');\r\n            </code>\r\n        </pre>\r\n</div>\r\n\r\n<div id=\"spl_lib\">\r\n    <p>\r\n        Стандартная библиотека PHP (SPL) - это набор интерфейсов и классов, предназначенных для решения стандартных\r\n        задач.\r\n    </p>\r\n    <p>\r\n        SPL предоставляет ряд стандартных структур данных, итераторов для ббегания объектов, интерфейсов, стандартных\r\n        исключений, некоторое количество классов для работы с файлами и предоставляет ряд функций, например\r\n        spl_autoload_register().\r\n    </p>\r\n    <ul>\r\n        <li>\r\n            spl_autoload_register — Регистрирует заданную функцию в качестве реализации метода __autoload()\r\n        </li>\r\n        <li>\r\n            class_implements — Возвращает список интерфейсов, реализованных в заданном классе или интерфейсе\r\n        </li>\r\n        <li>\r\n            class_parents — Возвращает список родительских классов заданного класса\r\n        </li>\r\n        <li>\r\n            class_uses — Возвращает список трейтов, используемых заданным классом\r\n        </li>\r\n        <li>spl_object_hash — Возвращает хеш-идентификатор для объекта</li>\r\n        <li>\r\n            Класс SplFileInfo предлагает высокоуровневый объектно-ориентированный интерфейс к информации для отдельного\r\n            файла.\r\n        </li>\r\n        <li>\r\n            Классы, реализующие интерфейс Countable, могут быть использованы с функцией count().\r\n        </li>\r\n    </ul>\r\n</div>\r\n<div id=\"read_big_file\">\r\n    <p>\r\n        генераторы, побайтово со смещением fseek\r\n    </p>\r\n</div>\r\n<div id=\"return_generator\">\r\n    <p>\r\n        Вся суть генератора заключается в ключевом слове yield. В самом простом варианте оператор \"yield\" можно\r\n        рассматривать как оператор \"return\", за исключением того, что вместо прекращения работы функции, \"yield\" только\r\n        приостанавливает её выполнение и возвращает текущее значение, и при следующем вызове функции она возобновит\r\n        выполнения с места, на котором прервалась.\r\n    </p>\r\n    <p>\r\n        к примеру return 555; выполнен не будет а вернется то что отдали в yield.НО return прерывает работу генератора.\r\n    </p>\r\n</div>\r\n<p><br></p>','php-advanced',1,7,4,'2021-08-21 10:27:05','2021-12-02 18:27:50');
INSERT INTO `infos` VALUES (93,'Decorator','<p>\r\n  <a href=\"https://refactoring.guru/ru/design-patterns/decorator/php/example#example-0\" target=\"_blank\">refactoring.guru</a>&nbsp; &nbsp; &nbsp;<a href=\"http://irbis-school.com/blog/full/42/patterny-v-php-decorator-\" target=\"_blank\">irbis-school</a>\r\n</p>\r\n<p>\r\n  <b> Декоратор</b> — позволяет добавлять\r\n  объектам новые поведения на лету, помещая их в объекты-обёртки.\r\n</p>\r\n<h2>Пример из реальной жизни</h2>\r\n<p>\r\n  В этом примере паттерн Декоратора помогает создать сложные правила фильтрации\r\n  текста для приведения информации в порядок перед её отображением на\r\n  веб-странице или добавление тегов. Разные типы информации, такие как\r\n  комментарии, сообщения на форуме или личные сообщения, требуют разных наборов\r\n  фильтров.\r\n</p>\r\n<p>\r\n  Например, вы хотели бы удалить весь HTML из комментариев и в тоже время\r\n  сохранить некоторые основные теги HTML в сообщениях на форуме. Кроме того, вы\r\n  можете пожелать разрешить публикацию в формате Markdown, который должен быть\r\n  обработан перед какой-либо фильтрацией HTML. Все эти правила фильтрации могут\r\n  быть представлены в виде отдельных классов декораторов, которые могут быть\r\n  сложены в стек по-разному, в зависимости от характера содержимого.\r\n</p>\r\n<pre><code class=\"hljs\">\r\n/**\r\n * Интерфейс Компонента объявляет метод фильтрации, который должен быть\r\n * реализован всеми конкретными компонентами и декораторами.\r\n */\r\ninterface InputFormat\r\n{\r\n    public function formatText(string $text): string;\r\n}\r\n\r\n/**\r\n * Конкретный Компонент является основным элементом декорирования. Он содержит\r\n * исходный текст как есть, без какой-либо фильтрации или форматирования.\r\n */\r\nclass TextInput implements InputFormat\r\n{\r\n    public function formatText(string $text): string\r\n    {\r\n        return $text;\r\n    }\r\n}\r\n\r\n/**\r\n * Базовый класс Декоратора не содержит реальной логики фильтрации или\r\n * форматирования. Его основная цель – реализовать базовую инфраструктуру\r\n * декорирования: поле для хранения обёрнутого компонента или другого декоратора\r\n * и базовый метод форматирования, который делегирует работу обёрнутому объекту.\r\n * Реальная работа по форматированию выполняется подклассами.\r\n */\r\nabstract class TextFormatDecorator implements InputFormat\r\n{\r\n    /**\r\n     * @var InputFormat\r\n     */\r\n    protected $inputFormat;\r\n\r\n    public function __construct(InputFormat $inputFormat)\r\n    {\r\n        $this-&gt;inputFormat = $inputFormat;\r\n    }\r\n\r\n    /**\r\n     * Декоратор делегирует всю работу обёрнутому компоненту.\r\n     */\r\n    public function formatText(string $text): string\r\n    {\r\n        return $this-&gt;inputFormat-&gt;formatText($text);\r\n    }\r\n}\r\n\r\n/**\r\n * Этот Конкретные Декораторы добавляет теги.\r\n */\r\nclass DivWrapper extends TextFormatDecorator\r\n{\r\n    public function formatText(string $text): string\r\n    {\r\n        $text = parent::formatText($text);\r\n        return \"<div>{$text}</div>\";\r\n    }\r\n}\r\n\r\nclass SpanTagWrapper extends TextFormatDecorator\r\n{\r\n    public function formatText(string $text): string\r\n    {\r\n        $text = parent::formatText($text);\r\n        return \"<span>{$text}</span>\";\r\n    }\r\n}\r\n\r\nclass PTagWrapper extends TextFormatDecorator\r\n{\r\n    public function formatText(string $text): string\r\n    {\r\n        $text = parent::formatText($text);\r\n        return \"<p>{$text}</p>\";\r\n    }\r\n}\r\n\r\n$dangerousComment = \"some text\";\r\n\r\n/**\r\n * Наивное отображение.\r\n */\r\n$naiveInput = new TextInput();\r\necho $naiveInput-&gt;formatText($dangerousComment); //some text\r\n\r\n/**\r\n * Отфильтрованное отображение.\r\n */\r\n$filteredInput = new DivWrapper($naiveInput);\r\necho $filteredInput-&gt;formatText($dangerousComment); //<div>some text</div>\r\n\r\n/**\r\n * Форматтер тегов <p><span>.\r\n */\r\n$text = new TextInput();\r\n$filteredInput = new SpanTagWrapper($text);\r\n$markdown = new PTagWrapper($filteredInput);\r\necho $markdown-&gt;formatText($dangerousComment); //</span></p><p><span>some text</span></p>\r\n\r\n</code></pre>','decorator',1,36,2,'2021-08-31 16:26:52','2021-12-01 21:48:54');
INSERT INTO `infos` VALUES (94,'Adapter','<p>\r\n  <b>Адаптер</b> — позволяет\r\n  обернуть несовместимые объекты в адаптер, чтобы сделать их совместимыми с\r\n  другим классом.\r\n</p>\r\n<p><b style=\"font-size: 1rem;\">Аналогия из жизни</b><span style=\"font-size: 1rem;\">:&nbsp;Когда вы в первый раз летите за границу, вас\r\n  может ждать сюрприз при попытке зарядить ноутбук. Стандарты розеток в разных\r\n  странах отличаются. Ваша европейская зарядка будет бесполезна в США без\r\n  специального адаптера, позволяющего подключиться к розетке другого типа.</span><br></p>\r\n<p>\r\n  <b>Применимость</b>: Паттерн можно часто встретить в PHP-коде, особенно там,\r\n  где требуется конвертация разных типов данных или совместная работа классов с\r\n  разными интерфейсами.</p><p>\r\n</p>\r\n<p>\r\n  <a href=\"https://refactoring.guru/ru/design-patterns/adapter/php/example\" target=\"_blank\">Пример</a>&nbsp;Паттерн Адаптер позволяет использовать сторонние или устаревшие классы, даже если они несовместимы с основной частью кода. Например, вместо того, чтобы переписывать интерфейс уведомлений вашего приложения для поддержки каждого стороннего сервиса вроде Slack, Facebook, SMS и прочих, вы создаёте под эти сервисы набор специальных обёрток, которые приводят вызовы из приложения к требуемым сторонними классами интерфейсу и формату.</p>\r\n<pre><code class=\"php\">\r\n/**\r\n * Целевой интерфейс предоставляет интерфейс, которому следуют классы вашего\r\n * приложения.\r\n */\r\ninterface Notification\r\n{\r\n    public function send(string $title, string $message);\r\n}\r\n\r\n/**\r\n * Вот пример существующего класса, который следует за целевым интерфейсом.\r\n *\r\n * Дело в том, что у большинства приложений нет чётко определённого интерфейса.\r\n * В этом случае лучше было бы расширить Адаптер за счёт существующего класса\r\n * приложения. Если это неудобно (например, SlackNotification не похож на\r\n * подкласс EmailNotification), тогда первым шагом должно быть извлечение\r\n * интерфейса.\r\n */\r\nclass EmailNotification implements Notification\r\n{\r\n    private $adminEmail;\r\n\r\n    public function __construct(string $adminEmail)\r\n    {\r\n        $this-&gt;adminEmail = $adminEmail;\r\n    }\r\n\r\n    public function send(string $title, string $message): void\r\n    {\r\n        mail($this-&gt;adminEmail, $title, $message);\r\n    }\r\n}\r\n\r\n/**\r\n * Адаптируемый класс – некий полезный класс, несовместимый с целевым\r\n * интерфейсом. Нельзя просто войти и изменить код класса так, чтобы следовать\r\n * целевому интерфейсу, так как код может предоставляться сторонней библиотекой.\r\n */\r\nclass SlackApi\r\n{\r\n    private $login;\r\n    private $apiKey;\r\n\r\n    public function __construct(string $login, string $apiKey)\r\n    {\r\n        $this-&gt;login = $login;\r\n        $this-&gt;apiKey = $apiKey;\r\n    }\r\n\r\n    public function logIn(): void\r\n    {\r\n        // Send authentication request to Slack web service.\r\n        echo \"Logged in to a slack account \'{$this-&gt;login}\'.\\n\";\r\n    }\r\n\r\n    public function sendMessage(string $chatId, string $message): void\r\n    {\r\n        // Send message post request to Slack web service.\r\n        echo \"Posted following message into the \'$chatId\' chat: \'$message\'.\\n\";\r\n    }\r\n}\r\n\r\n/**\r\n * Адаптер – класс, который связывает Целевой интерфейс и Адаптируемый класс.\r\n * Это позволяет приложению использовать Slack API для отправки уведомлений.\r\n */\r\nclass SlackAdapterNotification implements Notification\r\n{\r\n    private $slack;\r\n    private $chatId;\r\n\r\n    public function __construct(SlackApi $slack, string $chatId)\r\n    {\r\n        $this-&gt;slack = $slack;\r\n        $this-&gt;chatId = $chatId;\r\n    }\r\n\r\n    /**\r\n     * Адаптер способен адаптировать интерфейсы и преобразовывать входные данные\r\n     * в формат, необходимый Адаптируемому классу.(log &amp;&amp; chatID)\r\n     */\r\n    public function send(string $title, string $message): void\r\n    {\r\n        $slackMessage = \"#\" . $title . \"# \" . strip_tags($message);\r\n        $this-&gt;slack-&gt;logIn();\r\n        $this-&gt;slack-&gt;sendMessage($this-&gt;chatId, $slackMessage);\r\n    }\r\n}\r\n\r\n$notification = new EmailNotification(\"developers@example.com\");\r\n$notification-&gt;send(\'some tittle\', \'some message\');\r\n\r\n\r\n$slackApi = new SlackApi(\"example.com\", \"XXXXXXXX\");\r\n$notification = new SlackAdapterNotification($slackApi, \"Example.com Developers\");\r\n$notification-&gt;send(\'some tittle\', \'some message\');\r\n</code></pre>\r\n<p>\r\n  <a href=\"https://tproger.ru/translations/design-patterns-simple-words-2/\" target=\"_blank\">Другой пример:</a>&nbsp;Представим игру, в которой охотник охотится на львов.&nbsp;Изначально у\r\n  нас есть интерфейс Lion, который реализует всех львов:\r\n</p>\r\n<pre><code class=\"php\">\r\ninterface Lion\r\n{\r\n    public function roar();\r\n}\r\n\r\nclass AfricanLion implements Lion\r\n{\r\n    public function roar()\r\n    {\r\n    }\r\n}\r\n\r\nclass AsianLion implements Lion\r\n{\r\n    public function roar()\r\n    {\r\n    }\r\n}\r\n</code></pre>\r\n<p>И Hunter охотится на любую реализацию интерфейса Lion:</p>\r\n<pre><code class=\"php\">\r\nclass Hunter\r\n{\r\n    public function hunt(Lion $lion)\r\n    {\r\n    }\r\n}\r\n</code></pre>\r\n<p>\r\n  Теперь представим, что нам надо добавить WildDog в нашу игру, на которую наш\r\n  Hunter также мог бы охотиться. Но мы не можем сделать это напрямую, потому что\r\n  у WildDog другой интерфейс. Чтобы сделать её совместимой с нашим Hunter, нам\r\n  надо создать адаптер:\r\n</p>\r\n<pre><code class=\"php\">\r\n// Это надо добавить в игру \r\nclass WildDog\r\n{\r\n    public function bark()\r\n    {\r\n    }\r\n}\r\n\r\n\r\n// Адаптер, чтобы сделать WildDog совместимой с нашей игрой \r\nclass WildDogAdapter implements Lion \r\n{ \r\n    protected $dog; \r\n    public function __construct(WildDog $dog) \r\n    { \r\n        $this-&gt;dog = $dog; \r\n    } \r\n    public function roar() \r\n    { \r\n        $this-&gt;dog-&gt;bark(); \r\n    } \r\n}\r\n</code></pre>\r\n<p>Способ применения:</p>\r\n<pre><code class=\"php\">\r\n$wildDog = new WildDog();\r\n$wildDogAdapter = new WildDogAdapter($wildDog);\r\n\r\n$hunter = new Hunter();\r\n$hunter-&gt;hunt($wildDogAdapter);  \r\n</code></pre>','adapter',1,36,1,'2021-09-01 17:08:31','2021-12-01 21:46:30');
INSERT INTO `infos` VALUES (95,'Цепочка обязанностей','<p>\r\n    <a href=\"https://refactoring.guru/ru/design-patterns/chain-of-responsibility\" target=\"_blank\">refactoring.guru</a>\r\n</p>\r\n<p>\r\n    <b>Цепочка обязанностей</b> — это поведенческий паттерн проектирования, который позволяет передавать запросы\r\n    последовательно по цепочке обработчиков. Каждый последующий обработчик решает, может ли он обработать запрос сам и\r\n    стоит ли передавать запрос дальше по цепи.\r\n</p>\r\n<p>\r\n    <b>Проблема</b>: Представьте, что вы делаете систему приёма онлайн-заказов. Вы хотите ограничить к ней доступ\r\n    так, чтобы только авторизованные пользователи могли создавать заказы. Кроме того, определённые пользователи,\r\n    владеющие правами администратора, должны иметь полный доступ к заказам.\r\n</p>\r\n<p>\r\n    Вы быстро сообразили, что эти проверки нужно выполнять последовательно. Ведь пользователя можно попытаться\r\n    «залогинить» в систему, если его запрос содержит логин и пароль. Но если такая попытка не удалась, то проверять\r\n    расширенные права доступа попросту не имеет смысла.\r\n</p>\r\n<p>\r\n    На протяжении следующих нескольких месяцев вам пришлось добавить ещё несколько таких последовательных проверок.\r\n</p>\r\n<ul>\r\n    <li>\r\n        Кто-то резонно заметил, что неплохо бы проверять данные, передаваемые в запросе перед тем, как вносить их в\r\n        систему — вдруг запрос содержит данные о покупке несуществующих продуктов.\r\n    </li>\r\n    <li>\r\n        Кто-то предложил блокировать массовые отправки формы с одним и тем же логином, чтобы предотвратить подбор\r\n        паролей ботами.\r\n    </li>\r\n    <li>\r\n        Кто-то заметил, что форму заказа неплохо бы доставать из кеша, если она уже была однажды показана.\r\n    </li>\r\n</ul>\r\n<p>\r\n    С каждой новой «фичей» код проверок, выглядящий как большой клубок условных операторов, всё больше и больше\r\n    раздувался. При изменении одного правила приходилось трогать код всех проверок.\r\n</p>\r\n<p>\r\n    <b>Решение</b>: Как и многие другие поведенческие паттерны, Цепочка обязанностей базируется на том, чтобы\r\n    превратить отдельные поведения в объекты. В нашем случае каждая проверка переедет в отдельный класс с единственным\r\n    методом выполнения. Данные запроса, над которым происходит проверка, будут передаваться в метод как аргументы.\r\n</p>\r\n<p>\r\n    А теперь по-настоящему важный этап. Паттерн предлагает связать объекты обработчиков в одну цепь. Каждый из них будет\r\n    иметь ссылку на следующий обработчик в цепи. Таким образом, при получении запроса обработчик сможет не только сам\r\n    что-то с ним сделать, но и передать обработку следующему объекту в цепочке.\r\n</p>\r\n<p>\r\n    Передавая запросы в первый обработчик цепочки, вы можете быть уверены, что все объекты в цепи смогут его обработать.\r\n    При этом длина цепочки не имеет никакого значения.\r\n</p>\r\n<p>\r\n    И последний штрих. Обработчик не обязательно должен передавать запрос дальше, причём эта особенность может быть\r\n    использована по-разному.\r\n</p>\r\n<p>\r\n    В примере с фильтрацией доступа обработчики прерывают дальнейшие проверки, если текущая проверка не прошла. Ведь нет\r\n    смысла тратить попусту ресурсы, если и так понятно, что с запросом что-то не так.\r\n</p>\r\n<p>\r\n    <b>Применимость</b>: Паттерн встречается в PHP не так уж часто, так как для его применения нужно, чтобы в программе\r\n    были цепи объектов. Пожалуй, самым известным примером использования этого паттерна в PHP является концепция\r\n    <a href=\"https://www.php-fig.org/psr/psr-15/\" target=\"_blank\">HTTP Request Middleware, описанная в PSR-15</a>\r\n    . Это обработчики запросов, которые программа запускает перед тем, как выполнить основной обработчик запроса. \r\n</p>\r\n<p>\r\n    <b>Признаки применения паттерна</b>: Цепочку обязанностей можно определить по спискам обработчиков или проверок,\r\n    через которые пропускаются запросы. Особенно если порядок следования обработчиков важен.\r\n</p>\r\n<p>\r\n    <b>Пример из реальной жизни:</b> Пожалуй, самым известным применением паттерна Цепочка обязанностей (CoR) в\r\n    мире PHP являются промежуточные обработчики HTTP-запросов, называемые middleware. Они стали настолько популярными,\r\n    что были реализованы в самом языке как часть PSR-15. Всё это работает следующим образом: HTTP-запрос должен пройти\r\n    через стек объектов middleware, прежде чем приложение его обработает. Каждое middleware может либо отклонить\r\n    дальнейшую обработку запроса, либо передать его следующему middleware. Как только запрос успешно пройдёт все\r\n    middleware, основной обработчик приложения сможет окончательно его обработать.\r\n</p>\r\n<pre><code class=\"php\"> /**\r\n * Классический паттерн CoR объявляет для объектов, составляющих цепочку,\r\n * единственную роль – Обработчик. В нашем примере давайте проводить различие\r\n * между middleware и конечным обработчиком приложения, который выполняется,\r\n * когда запрос проходит через все объекты middleware.\r\n *\r\n * Базовый класс Middleware объявляет интерфейс для связывания объектов\r\n * middleware в цепочку.\r\n */\r\nabstract class Middleware\r\n{\r\n    /**\r\n     * @var Middleware\r\n     */\r\n    private $next;\r\n\r\n    /**\r\n     * Этот метод можно использовать для построения цепочки объектов middleware.\r\n     */\r\n    public function linkWith(Middleware $next): Middleware\r\n    {\r\n        $this->next = $next;\r\n        return $next;\r\n    }\r\n\r\n    /**\r\n     * Подклассы должны переопределить этот метод, чтобы предоставить свои\r\n     * собственные проверки. Подкласс может обратиться к родительской реализации\r\n     * проверки, если сам не в состоянии обработать запрос.\r\n     */\r\n    public function check(string $email, string $password): bool\r\n    {\r\n        if (!$this->next) {\r\n            return true;\r\n        }\r\n        return $this->next->check($email, $password);\r\n    }\r\n}\r\n\r\n/**\r\n * Это Конкретное Middleware проверяет, существует ли пользователь с указанными\r\n * учётными данными.\r\n */\r\nclass UserExistsMiddleware extends Middleware\r\n{\r\n    private $server;\r\n\r\n    public function __construct(Server $server)\r\n    {\r\n        $this->server = $server;\r\n    }\r\n\r\n    public function check(string $email, string $password): bool\r\n    {\r\n        if (!$this->server->hasEmail($email)) {\r\n            echo \"UserExistsMiddleware: This email is not registered!\\n\";\r\n            return false;\r\n        }\r\n\r\n        if (!$this->server->isValidPassword($email, $password)) {\r\n            echo \"UserExistsMiddleware: Wrong password!\\n\";\r\n            return false;\r\n        }\r\n        return parent::check($email, $password);\r\n    }\r\n}\r\n\r\n/**\r\n * Это Конкретное Middleware проверяет, имеет ли пользователь, связанный с\r\n * запросом, достаточные права доступа.\r\n */\r\nclass RoleCheckMiddleware extends Middleware\r\n{\r\n    public function check(string $email, string $password): bool\r\n    {\r\n        if ($email === \"admin@example.com\") {\r\n            echo \"RoleCheckMiddleware: Hello, admin!\\n\";\r\n            return true;\r\n        }\r\n        echo \"RoleCheckMiddleware: Hello, user!\\n\";\r\n        return parent::check($email, $password);\r\n    }\r\n}\r\n\r\n/**\r\n * Это Конкретное Middleware проверяет, не было ли превышено максимальное число\r\n * неудачных запросов авторизации.\r\n */\r\nclass ThrottlingMiddleware extends Middleware\r\n{\r\n    private $requestPerMinute;\r\n\r\n    private $request;\r\n\r\n    private $currentTime;\r\n\r\n    public function __construct(int $requestPerMinute)\r\n    {\r\n        $this->requestPerMinute = $requestPerMinute;\r\n        $this->currentTime = time();\r\n    }\r\n\r\n    /**\r\n     * Обратите внимание, что вызов parent::check можно вставить как в начале\r\n     * этого метода, так и в конце.\r\n     *\r\n     * Это даёт значительно большую свободу действий, чем простой цикл по всем\r\n     * объектам middleware. Например, middleware может изменить порядок\r\n     * проверок, запустив свою проверку после всех остальных.\r\n     */\r\n    public function check(string $email, string $password): bool\r\n    {\r\n        if (time() > $this->currentTime + 60) {\r\n            $this->request = 0;\r\n            $this->currentTime = time();\r\n        }\r\n\r\n        $this->request++;\r\n\r\n        if ($this->request > $this->requestPerMinute) {\r\n            echo \"ThrottlingMiddleware: Request limit exceeded!\\n\";\r\n            die();\r\n        }\r\n\r\n        return parent::check($email, $password);\r\n    }\r\n}\r\n\r\n/**\r\n * Это класс приложения, который осуществляет реальную обработку запроса. Класс\r\n * Сервер использует паттерн CoR для выполнения набора различных промежуточных\r\n * проверок перед запуском некоторой бизнес-логики, связанной с запросом.\r\n */\r\nclass Server\r\n{\r\n    private $users = [];\r\n\r\n    /**\r\n     * @var Middleware\r\n     */\r\n    private $middleware;\r\n\r\n    /**\r\n     * Клиент может настроить сервер с помощью цепочки объектов middleware.\r\n     */\r\n    public function setMiddleware(Middleware $middleware): void\r\n    {\r\n        $this->middleware = $middleware;\r\n    }\r\n\r\n    /**\r\n     * Сервер получает email и пароль от клиента и отправляет запрос авторизации\r\n     * в middleware.\r\n     */\r\n    public function logIn(string $email, string $password): bool\r\n    {\r\n        if ($this->middleware->check($email, $password)) {\r\n            echo \"Server: Authorization has been successful!\\n\";\r\n\r\n            // Выполняем что-нибудь полезное для авторизованных пользователей.\r\n\r\n            return true;\r\n        }\r\n        return false;\r\n    }\r\n\r\n    public function register(string $email, string $password): void\r\n    {\r\n        $this->users[$email] = $password;\r\n    }\r\n\r\n    public function hasEmail(string $email): bool\r\n    {\r\n        return isset($this->users[$email]);\r\n    }\r\n\r\n    public function isValidPassword(string $email, string $password): bool\r\n    {\r\n        return $this->users[$email] === $password;\r\n    }\r\n}\r\n\r\n/**\r\n * Клиентский код.\r\n */\r\n$server = new Server();\r\n$server->register(\"admin@example.com\", \"admin_pass\");\r\n$server->register(\"user@example.com\", \"user_pass\");\r\n\r\n// Все middleware соединены в цепочки. Клиент может построить различные\r\n// конфигурации цепочек в зависимости от своих потребностей.\r\n$middleware = new ThrottlingMiddleware(2);\r\n$middleware\r\n    ->linkWith(new UserExistsMiddleware($server))\r\n    ->linkWith(new RoleCheckMiddleware());\r\n\r\n// Сервер получает цепочку из клиентского кода.\r\n$server->setMiddleware($middleware);\r\n\r\n// ...\r\n\r\ndo {\r\n    echo \"\\nEnter your email:\\n\";\r\n    $email = readline();\r\n    echo \"Enter your password:\\n\";\r\n    $password = readline();\r\n    $success = $server->logIn($email, $password);\r\n} while (!$success);</code>\r\n</pre>','cepocka-obyazannostei',1,38,4,'2021-09-01 18:52:31','2021-12-01 22:09:52');
INSERT INTO `infos` VALUES (96,'Iterator','<p><a href=\"https://refactoring.guru/ru/design-patterns/iterator\" target=\"_blank\">refactoring.guru</a><b><br></b></p><p><b>Итератор</b> — это поведенческий паттерн проектирования, который даёт возможность последовательно обходить элементы составных объектов, не раскрывая их внутреннего представления.</p>','iterator',0,38,3,'2021-09-01 18:53:06','2021-12-01 21:59:40');
INSERT INTO `infos` VALUES (98,'strategy','<p>\r\n  <a href=\"https://refactoring.guru/ru/design-patterns/strategy\" target=\"_blank\">refactoring.guru</a>&nbsp;<a href=\"https://zinchenko.us/article/design-pattern-strategy/\" target=\"_blank\">zinchenko.us</a>\r\n</p>\r\n<p>\r\n  <b>Стратегия</b> — это поведенческий паттерн, выносит набор алгоритмов в\r\n  собственные классы .где для решения одной и той же задачи могут использоваться\r\n  различные алгоритмы и делает их взаимозаменимыми\r\n</p>\r\n<p>\r\n  Другие объекты содержат ссылку на объект-стратегию и делегируют ей работу.\r\n  Программа может подменить этот объект другим, если требуется иной способ\r\n  решения задачи.\r\n</p>\r\n<p><b>Пример плохого подхода решения задачи</b></p>\r\n<p>\r\n  Определяем расширение файла. Создаем условный оператор, который (исходя из\r\n  расширения) подключает нужную библиотеку (класс) для считывания данных.\r\n  Получаем данные, возможно, приводим их к нужному виду, записываем в базу\r\n  данных.\r\n</p>\r\n<p>\r\n  На выходе имеем уродливый клиентский код, который «растет», если появляется\r\n  необходимость добавить возможность импорта из файла другого формата.\r\n</p>\r\n<p>\r\n  <b>Пример</b>: Давайте представим вполне конкретную задачу веб-разработчика:\r\n  импорт данных о пользователях из загруженного файла в базу данных. Файл может\r\n  быть одного из заранее оговоренных расширений (например, .xls, .doc, .csv, …)\r\n  и определенным форматом записи данных.\r\n</p>\r\n<p>\r\n  <b>Решение</b>:&nbsp;Первым делом определим несколько классов (алгоритмов),\r\n  каждый из которых будет отвечать за чтение данных из файла определенного\r\n  формата.\r\n</p>\r\n<p>\r\n  Также я добавил интерфейс, который будет декларировать наличие метода\r\n  readFile() для чтения данных в классах.\r\n</p>\r\n<pre><code class=\"hljs\">\r\n/* Определение поддерживаемых форматов */\r\ninterface Reader\r\n{\r\n    public function readFile($filepath);\r\n}\r\n \r\nclass XlsReader implements Reader\r\n{\r\n    public function readFile($filepath)\r\n    {\r\n        /* Подключаем библиотеку \r\n         * https://github.com/nuovo/spreadsheet-reader (например)\r\n         * читаем документацию, вызываем нужные методы, приводим данные\r\n         * к нужному формату, возвращаем результат */\r\n    }\r\n \r\n}\r\n \r\nclass DocReader implements Reader\r\n{\r\n    public function readFile($filepath)\r\n    {\r\n        // Аналогично\r\n    }\r\n}\r\n \r\nclass CsvReader implements Reader\r\n{\r\n    public function readFile($filepath)\r\n    {\r\n        // Аналогично\r\n    }\r\n}\r\n</code></pre>\r\n<p>\r\n  Определим класс-клиент, который будет использовать описанные выше алгоритмы.\r\n  «Фишка» подхода лежит в том, что алгоритм выбирается в процессе исполнения\r\n  кода, путем передачи в конструктор экземпляра одного из классов, описанных\r\n  выше. Обязательным условием является поддержка общего интерфейса Reader.\r\n</p>\r\n\r\n<pre><code class=\"hljs\">\r\nclass FileReader\r\n{\r\n    private $reader;\r\n \r\n    public function setReader(Reader $reader)\r\n    {\r\n        $this-&gt;reader = $reader;\r\n    }\r\n \r\n    public function getContent($filepath)\r\n    {\r\n        return $this-&gt;reader-&gt;readFile($filepath);\r\n    }\r\n}  \r\n</code></pre>\r\n<p>И пример кода, где это все используется:</p>\r\n<pre><code class=\"hljs\">\r\n$file1 = \'path/to/file.xls\';\r\n$file2 = \'path/to/file.doc\';\r\n \r\n$reader = new FileReader();\r\n \r\n// для Xls файла\r\n$reader-&gt;setReader(new XlsReader());\r\n$data = $reader-&gt;getContent($file1);\r\n \r\n// для Xls файла\r\n$reader-&gt;setReader(new DocReader());\r\n$data = $reader-&gt;getContent($file2);  \r\n</code></pre>','strategy',1,38,1,'2021-09-01 18:55:55','2021-09-01 21:48:06');
INSERT INTO `infos` VALUES (99,'Реестр','<p>\r\n  Шаблон проектирования «Registry» или «Реестр» представляет собой что то вроде\r\n  массива, доступного на всех уровнях приложения и используется для передачи\r\n  данных между модулями заменяя глобальные переменные.\r\n</p>\r\n<p>\r\n  Паттерн реализован на статических методах и не требует создания экземпляра\r\n  класса\r\n</p>\r\n<p></p>\r\n<pre><code class=\"hljs\">class Product\r\n{\r\n\r\n    /**\r\n     * @var mixed[]\r\n     */\r\n    protected static $data = array();\r\n\r\n\r\n    /**\r\n     * Добавляет значение в реестр\r\n     *\r\n     * @param string $key\r\n     * @param mixed $value\r\n     * @return void\r\n     */\r\n    public static function set($key, $value)\r\n    {\r\n        self::$data[$key] = $value;\r\n    }\r\n\r\n    /**\r\n     * Возвращает значение из реестра по ключу\r\n     *\r\n     * @param string $key\r\n     * @return mixed\r\n     */\r\n    public static function get($key)\r\n    {\r\n        return isset(self::$data[$key]) ? self::$data[$key] : null;\r\n    }\r\n\r\n    /**\r\n     * Удаляет значение из реестра по ключу\r\n     *\r\n     * @param string $key\r\n     * @return void\r\n     */\r\n    final public static function removeProduct($key)\r\n    {\r\n        if (array_key_exists($key, self::$data)) {\r\n            unset(self::$data[$key]);\r\n        }\r\n    }\r\n}\r\n\r\n/*\r\n * =====================================\r\n *           USING OF REGISTRY\r\n * =====================================\r\n */\r\n\r\nProduct::set(\'name\', \'First product\');\r\n\r\nprint_r(Product::get(\'name\'));</code></pre>\r\n<p></p>','reestr',1,36,4,'2021-09-01 22:30:11','2021-12-01 21:47:46');
INSERT INTO `infos` VALUES (100,'Singleton(Одиночка)','<a href=\"https://refactoring.guru/ru/design-patterns/singleton/php/example\" target=\"_blank\">efactoring.guru</a>\r\n<p>\r\n  <b>Одиночка</b> — это порождающий паттерн, который гарантирует существование\r\n  только одного объекта определённого класса, а также позволяет достучаться до\r\n  этого объекта из любого места программы.\r\n</p>\r\n<p>Минусы:&nbsp;</p>\r\n<ul>\r\n  <li>\r\n    Нарушает принцип единственной ответственности класса.(создание и хранение\r\n    объекта(самого себя))\r\n  </li>\r\n  <li>\r\n    является глобальным и он может быть доступен из разных мест программы. Кроме\r\n    того, состояние объекта может изменяться, что может привести к ошибкам в\r\n    программе&nbsp;<br>\r\n  </li>\r\n  <li>Требует постоянного создания Mock-объектов при юнит-тестировании.</li>\r\n</ul>\r\n<pre><code class=\"hljs\">\r\n/**\r\n * Если вам необходимо поддерживать в приложении несколько типов Одиночек, вы\r\n * можете определить основные функции Одиночки в базовом классе, тогда как\r\n * фактическую бизнес-логику (например, ведение журнала) перенести в подклассы.\r\n */\r\nclass Singleton\r\n{\r\n    /**\r\n     * Реальный экземпляр одиночки почти всегда находится внутри статического\r\n     * поля. В этом случае статическое поле является массивом, где каждый\r\n     * подкласс Одиночки хранит свой собственный экземпляр.\r\n     */\r\n    private static $instances = [];\r\n\r\n    /**\r\n     * Конструктор Одиночки не должен быть публичным. Однако он не может быть\r\n     * приватным, если мы хотим разрешить создание подклассов.\r\n     */\r\n    protected function __construct()\r\n    {\r\n    }\r\n\r\n    /**\r\n     * Клонирование и десериализация не разрешены для одиночек.\r\n     */\r\n    protected function __clone()\r\n    {\r\n    }\r\n\r\n    public function __wakeup()\r\n    {\r\n        throw new \\Exception(\"Cannot unserialize singleton\");\r\n    }\r\n\r\n    /**\r\n     * Метод, используемый для получения экземпляра Одиночки.\r\n     */\r\n    public static function getInstance()\r\n    {\r\n        $subclass = static::class;\r\n        if (!isset(self::$instances[$subclass])) {\r\n            // Обратите внимание, что здесь мы используем ключевое слово\r\n            // \"static\"  вместо фактического имени класса. В этом контексте\r\n            // ключевое слово \"static\" означает «имя текущего класса». Эта\r\n            // особенность важна, потому что, когда метод вызывается в\r\n            // подклассе, мы хотим, чтобы экземпляр этого подкласса был создан\r\n            // здесь.\r\n\r\n            self::$instances[$subclass] = new static();\r\n        }\r\n        return self::$instances[$subclass];\r\n    }\r\n}\r\n\r\n/**\r\n * Класс ведения журнала является наиболее известным и похвальным использованием\r\n * паттерна Одиночка.\r\n */\r\nclass Logger extends Singleton\r\n{\r\n    /**\r\n     * Ресурс указателя файла файла журнала.\r\n     */\r\n    private $fileHandle;\r\n\r\n    /**\r\n     * Поскольку конструктор Одиночки вызывается только один раз, постоянно\r\n     * открыт всего лишь один файловый ресурс.\r\n     *\r\n     * Обратите внимание, что для простоты мы открываем здесь консольный поток\r\n     * вместо фактического файла.\r\n     */\r\n    protected function __construct()\r\n    {\r\n        $this-&gt;fileHandle = fopen(\'php://stdout\', \'w\');\r\n    }\r\n\r\n    /**\r\n     * Пишем запись в журнале в открытый файловый ресурс.\r\n     */\r\n    public function writeLog(string $message): void\r\n    {\r\n        $date = date(\'Y-m-d\');\r\n        fwrite($this-&gt;fileHandle, \"$date: $message\\n\");\r\n    }\r\n\r\n    /**\r\n     * Просто удобный ярлык для уменьшения объёма кода, необходимого для\r\n     * регистрации сообщений из клиентского кода.\r\n     */\r\n    public static function log(string $message): void\r\n    {\r\n        $logger = static::getInstance();\r\n        $logger-&gt;writeLog($message);\r\n    }\r\n}\r\n\r\n/**\r\n * Применение паттерна Одиночка в хранилище настроек – тоже обычная практика.\r\n * Часто требуется получить доступ к настройкам приложений из самых разных мест\r\n * программы. Одиночка предоставляет это удобство.\r\n */\r\nclass Config extends Singleton\r\n{\r\n    private $hashmap = [];\r\n\r\n    public function getValue(string $key): string\r\n    {\r\n        return $this-&gt;hashmap[$key];\r\n    }\r\n\r\n    public function setValue(string $key, string $value): void\r\n    {\r\n        $this-&gt;hashmap[$key] = $value;\r\n    }\r\n}\r\n\r\n/**\r\n * Клиентский код.\r\n */\r\nLogger::log(\"Started!\");\r\n\r\n// Сравниваем значения одиночки-Логгера.\r\n$l1 = Logger::getInstance();\r\n$l2 = Logger::getInstance();\r\nif ($l1 === $l2) {\r\n    Logger::log(\"Logger has a single instance.\");\r\n} else {\r\n    Logger::log(\"Loggers are different.\");\r\n}\r\n\r\n// Проверяем, как одиночка-Конфигурация сохраняет данные...\r\n$config1 = Config::getInstance();\r\n$login = \"test_login\";\r\n$password = \"test_password\";\r\n$config1-&gt;setValue(\"login\", $login);\r\n$config1-&gt;setValue(\"password\", $password);\r\n// ...и восстанавливает их.\r\n$config2 = Config::getInstance();\r\nif ($login == $config2-&gt;getValue(\"login\") &amp;&amp;\r\n    $password == $config2-&gt;getValue(\"password\")\r\n) {\r\n    Logger::log(\"Config singleton also works fine.\");\r\n}\r\n\r\nLogger::log(\"Finished!\");\r\n\r\n</code></pre>','singletonodinocka',1,31,2,'2021-09-01 22:54:43','2021-09-01 23:13:34');
INSERT INTO `infos` VALUES (101,'Для чего нужны Service Providers?','<ul class=\"main_list\">\r\n    <li><a href=\"#introduction\">Введение</a></li>\r\n    <li>\r\n        <a href=\"#writing-service-providers\">Написание поставщиков служб</a>\r\n        <ul>\r\n            <li><a href=\"#register-method\">Метод register</a></li>\r\n            <li><a href=\"#register-boot\">Метод boot</a></li>\r\n        </ul>\r\n    </li>\r\n    <li><a href=\"#source\">Источники</a></li>\r\n    <li><a href=\"#deferred-providers\"> Отложенные сервис-провайдеры</a></li>\r\n</ul>\r\n\r\n<div id=\"introduction\">\r\n    <p>\r\n        Сервис-провайдеры -это центральное место начальной загрузки всех приложений Laravel. Ваше собственное\r\n        приложение, а также все основные службы Laravel загружаются через поставщиков: регистрацию элементов, включая\r\n        регистрацию связываний контейнера служб, слушателей событий, посредников почтовая программа, очередь, кеш,\r\n        маршруты и другие.</p>\r\n    <p>\r\n        Если вы откроете файл config/app.php, включенный в Laravel, вы увидите массив поставщиков. <b>Все поставщики\r\n        служб регистрируются в файле конфигурации config/app.php</b>. Э Это все классы поставщиков служб, которые будут\r\n        загружены вашим приложениемы. По умолчанию в этом массиве перечислены основные поставщики служб Laravel.\r\n    </p>\r\n    <p>\r\n        Многие из этих поставщиков являются «отложенными», что означает, что они не будут загружаться при каждом\r\n        запросе, а только тогда, когда предоставляемые ими службы действительно необходимы.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"writing-service-providers\">\r\n    <p>\r\n        Все поставщики служб расширяют класс Illuminate\\Support\\ServiceProvider. Большинство поставщиков служб содержат\r\n        метод register и boot. В рамках метода register следует только связать сущности в контейнере служб. Никогда не\r\n        следует пытаться зарегистрировать каких-либо слушателей событий, маршруты или любые другие функциональные\r\n        возможности в методе register. Чтобы сгенерировать нового поставщика, используйте команду <code>Artisan\r\n        make:provider</code>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"register-method\">\r\n    <p>\r\n        Как упоминалось ранее, в рамках метода register следует только связать сущности в контейнере служб. Никогда не\r\n        следует пытаться зарегистрировать слушателей событий, маршруты или любую другую функциональность в методе\r\n        register. В противном случае вы можете случайно воспользоваться службой, которая еще не загружена.\r\n    </p>\r\n    <p>\r\n        Давайте взглянем на основного поставщика служб. В любом из методов поставщика служб у вас всегда есть доступ к\r\n        свойству $app, которое обеспечивает доступ к контейнеру служб:\r\n    </p>\r\n    <pre><code class=\"php\">\r\nnamespace App\\Providers;\r\n\r\nuse App\\Services\\Riak\\Connection;\r\nuse Illuminate\\Support\\ServiceProvider;\r\n\r\nclass RiakServiceProvider extends ServiceProvider\r\n{\r\n    /**\r\n     * Регистрация любых служб приложения.\r\n     *\r\n     * @return void\r\n     */\r\n    public function register()\r\n    {\r\n        $this->app->singleton(Connection::class, function ($app) {\r\n            return new Connection(config(\'riak\'));\r\n        });\r\n    }\r\n}\r\n</code></pre>\r\n</div>\r\n\r\n<div id=\"register-boot\">\r\n    <p>\r\n        Итак, что, если нам нужно зарегистрировать компоновщик шаблонов в нашем поставщике службы? Это должно быть\r\n        сделано в рамках метода boot. Этот метод вызывается после регистрации всех других поставщиков служб, что\r\n        означает, что у вас есть доступ ко всем другим службам, которые были зарегистрированы фреймворком:\r\n    </p>\r\n    <pre><code class=\"php\">\r\nnamespace App\\Providers;\r\n\r\nuse Illuminate\\Support\\Facades\\View;\r\nuse Illuminate\\Support\\ServiceProvider;\r\n\r\nclass ComposerServiceProvider extends ServiceProvider\r\n{\r\n    /**\r\n     * Загрузка любых служб приложения.\r\n     *\r\n     * @return void\r\n     */\r\n    public function boot()\r\n    {\r\n        View::composer(\'view\', function () {\r\n            //\r\n        });\r\n    }\r\n}</code></pre>\r\n</div>\r\n\r\n<div id=\"deferred-providers\">\r\n    <p>\r\n        Чтобы отложить загрузку поставщика, реализуйте интерфейс \\Illuminate\\Contracts\\Support\\DeferrableProvider,\r\n        описав метод provides\r\n    </p>\r\n    <pre><code class=\"php\">\r\nnamespace App\\Providers;\r\n\r\nuse App\\Services\\Riak\\Connection;\r\nuse Illuminate\\Contracts\\Support\\DeferrableProvider;\r\nuse Illuminate\\Support\\ServiceProvider;\r\n\r\nclass RiakServiceProvider extends ServiceProvider implements DeferrableProvider\r\n{\r\n    /**\r\n     * Регистрация любых служб приложения.\r\n     *\r\n     * @return void\r\n     */\r\n    public function register()\r\n    {\r\n        $this->app->singleton(Connection::class, function ($app) {\r\n            return new Connection($app[\'config\'][\'riak\']);\r\n        });\r\n    }\r\n\r\n    /**\r\n     * Получить службы, предоставляемые поставщиком.\r\n     *\r\n     * @return array\r\n     */\r\n    public function provides()\r\n    {\r\n        return [Connection::class];\r\n    }\r\n}</code></pre>\r\n</div>\r\n\r\n<div id=\"source\">\r\n    <a href=\"https://laravel.su/docs/8.x/providers\" target=\"_blank\">https://laravel.su/docs/8.x/providers</a> <a\r\n    href=\"https://laravel.com/docs/8.x/providers\" target=\"_blank\">https://laravel.com/docs/8.x/providers</a>\r\n</div>\r\n\r\n<p><br></p>','dlya-cego-nuzny-service-providers',1,41,1,'2021-09-02 12:06:36','2021-09-30 17:28:32');
INSERT INTO `infos` VALUES (102,'Как работает Middlewares?','<ul class=\"main_list\">\r\n    <li><a href=\"#introduction\">Введение</a></li>\r\n    <li><a href=\"#defining-middleware\">Определение посредника</a></li>\r\n    <li>\r\n        <a href=\"#registering-middleware\">Регистрация посредника</a>\r\n        <ul>\r\n            <li><a href=\"#sorting-middleware\">Сортировка посредников</a></li>\r\n        </ul>\r\n    </li>\r\n    <li><a href=\"#middleware-parameters\">Параметры посредника</a></li>\r\n    <li><a href=\"#terminable-middleware\">Завершающий посредник</a></li>\r\n    <li><a href=\"#source\">Источники</a></li>\r\n</ul>\r\n\r\n<div id=\"introduction\">\r\n    <p>\r\n        Посредник обеспечивает удобный механизм для проверки и фильтрации HTTP-запросов, поступающих в ваше приложение.\r\n        Например, в Laravel уже содержится посредник, проверяющий аутентификацию пользователя вашего приложения. Если\r\n        пользователь не аутентифицирован, то посредник перенаправит пользователя на экран входа в ваше приложение.\r\n        Однако, если пользователь аутентифицирован, то посредник позволит запросу продолжить работу в приложении.\r\n    </p>\r\n    <p>\r\n        Посредник может быть написан для выполнения различных задач помимо аутентификации. Например, посредник для\r\n        ведения журнала может регистрировать все входящие запросы вашего приложения. В состав фреймворка Laravel уже\r\n        входят несколько посредников, включая посредник для аутентификации и посредник для защиты от CSRF. Все эти\r\n        посредники находится в каталоге app/Http/Middleware.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"defining-middleware\">\r\n    <p>\r\n        Чтобы создать нового посредника, используйте команду <code>php artisan make:middleware EnsureTokenIsValid</code>\r\n    </p>\r\n    <p>\r\n        Конечно, посредник может выполнять задачи до или после передачи запроса в приложение. Например, следующий\r\n        посредник будет выполнять некоторую задачу до того, как запрос будет обработан приложением:\r\n    </p>\r\n    <pre><code class=\"php\">\r\nnamespace App\\Http\\Middleware;\r\n\r\nuse Closure;\r\n\r\nclass BeforeMiddleware\r\n{\r\n    public function handle($request, Closure $next)\r\n    {\r\n        // Выполнить действие\r\n\r\n        return $next($request);\r\n    }\r\n} </code></pre>\r\n    <p>\r\n        Однако, этот посредник будет выполнять свою задачу после обработки входящего запроса приложением:\r\n    </p>\r\n\r\n    <pre><code class=\"php\">\r\nnamespace App\\Http\\Middleware;\r\n\r\nuse Closure;\r\n\r\nclass AfterMiddleware\r\n{\r\n    public function handle($request, Closure $next)\r\n    {\r\n        $response = $next($request);\r\n\r\n        // Выполнить действие\r\n\r\n        return $response;\r\n    }\r\n}</code></pre>\r\n</div>\r\n\r\n<div id=\"registering-middleware\">\r\n    <p>\r\n        Если вы хотите, чтобы посредник запускался во время каждого HTTP-запроса к вашему приложению, то укажите класс\r\n        посредника в свойстве $middleware вашего класса app/Http/Kernel.php.\r\n    </p>\r\n    <p>\r\n        Если вы хотите назначить посредника определенным маршрутам, то вам следует сначала зарегистрировать ключ\r\n        посредника в файле app/Http/Kernel.php вашего приложения. По умолчанию свойство $routeMiddleware этого класса\r\n        содержит записи для посредников, уже включенных в состав Laravel. Вы можете добавить свой собственный посредник\r\n        в этот список, и назначить ему ключ по вашему выбору:\r\n    </p>\r\n    <pre><code class=\"php\">\r\n// Внутри класса App\\Http\\Kernel ...\r\n\r\nprotected $routeMiddleware = [\r\n    \'auth\' => \\App\\Http\\Middleware\\Authenticate::class,\r\n    \'auth.basic\' => \\Illuminate\\Auth\\Middleware\\AuthenticateWithBasicAuth::class,\r\n    \'bindings\' => \\Illuminate\\Routing\\Middleware\\SubstituteBindings::class,\r\n    \'cache.headers\' => \\Illuminate\\Http\\Middleware\\SetCacheHeaders::class,\r\n    \'can\' => \\Illuminate\\Auth\\Middleware\\Authorize::class,\r\n    \'guest\' => \\App\\Http\\Middleware\\RedirectIfAuthenticated::class,\r\n    \'signed\' => \\Illuminate\\Routing\\Middleware\\ValidateSignature::class,\r\n    \'throttle\' => \\Illuminate\\Routing\\Middleware\\ThrottleRequests::class,\r\n    \'verified\' => \\Illuminate\\Auth\\Middleware\\EnsureEmailIsVerified::class,\r\n];</code></pre>\r\n    <p>\r\n        <b>Группы посредников</b>: По желанию можно сгруппировать несколько посредников под одним ключом, чтобы\r\n        упростить их назначение маршрутам. Вы можете сделать это, используя свойство $middlewareGroups вашего HTTP-ядра\r\n    </p>\r\n    <p>\r\n        По умолчанию Laravel поставляется с группами посредников web и api, которые содержат основных посредников,\r\n        которые вы, возможно, захотите применить к своим веб- и API-маршрутам. Помните, что эти группы посредников\r\n        автоматически применяются поставщиком служб App\\Providers\\RouteServiceProvider вашего приложения к маршрутам,\r\n        определенным в файлах маршрутов web и api, соответственно:\r\n    </p>\r\n</div>\r\n\r\n<div id=\"sorting-middleware\">\r\n    <p>\r\n        В редких случаях, может понадобиться, чтобы посредники выполнялись в определенном порядке, но вы не можете\r\n        контролировать их порядок, когда они назначены маршруту. В этом случае вы можете указать приоритет посредников,\r\n        используя свойство $middlewarePriority вашего файла app/Http/Kernel.php. Это свойство может отсутствовать в\r\n        вашем HTTP-ядре по умолчанию. Если оно не существует, то вы можете скопировать его определение по умолчанию\r\n        ниже:\r\n    </p>\r\n    <p></p>\r\n    <pre><code class=\"php\">\r\n /**\r\n * Список посредников, отсортированный по приоритетности.\r\n *\r\n * Заставит неглобальных посредников всегда быть в заданном порядке.\r\n *\r\n * @var array\r\n */\r\nprotected $middlewarePriority = [\r\n    \\Illuminate\\Cookie\\Middleware\\EncryptCookies::class,\r\n    \\Illuminate\\Session\\Middleware\\StartSession::class,\r\n    \\Illuminate\\View\\Middleware\\ShareErrorsFromSession::class,\r\n    \\Illuminate\\Contracts\\Auth\\Middleware\\AuthenticatesRequests::class,\r\n    \\Illuminate\\Routing\\Middleware\\ThrottleRequests::class,\r\n    \\Illuminate\\Session\\Middleware\\AuthenticateSession::class,\r\n    \\Illuminate\\Routing\\Middleware\\SubstituteBindings::class,\r\n    \\Illuminate\\Auth\\Middleware\\Authorize::class,\r\n];\r\n </code></pre>\r\n</div>\r\n\r\n<div id=\"middleware-parameters\">\r\n    <p>\r\n        Посредник также может получать дополнительные параметры. Например, если вашему приложению необходимо проверить,\r\n        что аутентифицированный пользователь имеет конкретную «роль» перед выполнением им конкретного действия, то вы\r\n        можете создать посредника, например, EnsureUserHasRole, который получит имя роли в качестве дополнительного\r\n        аргумента.\r\n    </p>\r\n\r\n    <p>Дополнительные параметры посредника будут переданы после аргумента $next:</p>\r\n    <pre><code class=\"php\">\r\nnamespace App\\Http\\Middleware;\r\n\r\nuse Closure;\r\n\r\nclass EnsureUserHasRole\r\n{\r\n    /**\r\n     * Обработка входящего запроса.\r\n     *\r\n     * @param  \\Illuminate\\Http\\Request  $request\r\n     * @param  \\Closure  $next\r\n     * @param  string  $role\r\n     * @return mixed\r\n     */\r\n    public function handle($request, Closure $next, $role)\r\n    {\r\n        if (! $request->user()->hasRole($role)) {\r\n            // Перенаправление ...\r\n        }\r\n\r\n        return $next($request);\r\n    }\r\n\r\n}\r\n </code></pre>\r\n    <p>\r\n        Параметры посредника можно указать при определении маршрута, разделив имя посредника и параметры символом :.\r\n        Несколько параметров следует разделять запятыми:\r\n    </p>\r\n    <pre><code class=\"php\">\r\nRoute::put(\'/post/{id}\', function ($id) {\r\n    //\r\n})->middleware(\'role:editor\');\r\n\r\n </code></pre>\r\n\r\n</div>\r\n\r\n<div id=\"terminable-middleware\">\r\n    <p>\r\n        Иногда посреднику может потребоваться выполнить некоторую работу после отправки HTTP-ответа в браузер. Если вы\r\n        определите метод terminate в своем посреднике и при условии, что ваш веб-сервер использует FastCGI, то метод\r\n        terminate будет автоматически вызван после отправки ответа в браузер:\r\n    </p>\r\n    <pre><code class=\"php\">\r\nnamespace Illuminate\\Session\\Middleware;\r\n\r\nuse Closure;\r\n\r\nclass TerminatingMiddleware\r\n{\r\n    /**\r\n     * Обработка входящего запроса.\r\n     *\r\n     * @param  \\Illuminate\\Http\\Request  $request\r\n     * @param  \\Closure  $next\r\n     * @return mixed\r\n     */\r\n    public function handle($request, Closure $next)\r\n    {\r\n        return $next($request);\r\n    }\r\n\r\n    /**\r\n     * Обработать задачи после отправки ответа в браузер.\r\n     *\r\n     * @param  \\Illuminate\\Http\\Request  $request\r\n     * @param  \\Illuminate\\Http\\Response  $response\r\n     * @return void\r\n     */\r\n    public function terminate($request, $response)\r\n    {\r\n        // ...\r\n    }\r\n}\r\n </code></pre>\r\n\r\n</div>\r\n\r\n<div id=\"source\">\r\n    <a href=\"https://laravel.su/docs/8.x/middleware\" target=\"_blank\">https://laravel.su/docs/8.x/middleware</a><br>\r\n</div>\r\n\r\n<p><br></p>','kak-rabotaet-middlewares',1,41,2,'2021-09-02 12:24:49','2021-09-30 17:39:03');
INSERT INTO `infos` VALUES (103,'Facade','<ul class=\"main_list\">\r\n    <li><a href=\"#introduction\">Введение</a></li>\r\n    <li><a href=\"#when-to-use-facades\">Когда использовать фасады</a></li>\r\n    <li><a href=\"#source\">Источники</a></li>\r\n</ul>\r\n\r\n<div id=\"introduction\">\r\n    <p>Фасады предоставляют «статический» интерфейс для классов, доступных в контейнере служб приложения. Фасады Laravel\r\n        служат «статическими прокси» для базовых классов в контейнере служб, обеспечивая преимущества краткого,\r\n        выразительного синтаксиса при сохранении большей тестируемости и гибкости, чем традиционные статические методы.\r\n        <br> Все фасады Laravel определены в пространстве имён <code>Illuminate\\Support\\Facades</code>\r\n    </p>\r\n\r\n    <pre><code class=\"php\">\r\nuse Illuminate\\Support\\Facades\\Cache;\r\nuse Illuminate\\Support\\Facades\\Route;\r\n\r\nRoute::get(\'/cache\', function () {\r\n    return Cache::get(\'key\');\r\n}\r\n</code></pre>\r\n\r\n</div>\r\n<div id=\"when-to-use-facades\">\r\n    <p>\r\n        У фасадов много преимуществ. Они предоставляют краткий, запоминающийся синтаксис, который позволяет вам\r\n        использовать функции Laravel, не запоминая длинные имена классов, которые необходимо вводить или конфигурировать\r\n        вручную. Более того, благодаря уникальному использованию динамических методов PHP их легко протестировать.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"source\">\r\n    <a href=\"https://laravel.su/docs/8.x/facades#how-facades-work\" target=\"_blank\">https://laravel.su/docs/8.x/facades#how-facades-work</a>\r\n</div>\r\n\r\n<p><br></p>','facade-l',1,41,3,'2021-09-02 12:46:23','2021-09-30 17:44:43');
INSERT INTO `infos` VALUES (104,'Жизненный цикл запроса','<ul class=\"main_list\">\r\n    <li><a href=\"#introduction\"> Введение</a></li>\r\n    <li><a href=\"#source\">Источники</a></li>\r\n</ul>\r\n\r\n<div id=\"introduction\">\r\n    <p>\r\n        Точкой входа для всех запросов к приложению Laravel является файл <code>public/index.php</code>. Все запросы\r\n        направляются в этот файл конфигурацией вашего веб-сервера (Apache / Nginx)\r\n    </p>\r\n    <p>\r\n        Файл index.php загружает автозагрузчик, созданный менеджером пакетов Composer, а затем извлекает экземпляр\r\n        приложения Laravel из <code>bootstrap/app.php</code>. Первым действием, предпринимаемым самим Laravel, является\r\n        создание экземпляра приложения / контейнера служб.\r\n    </p>\r\n    <p>\r\n        Затем входящий запрос отправляется либо HTTP-ядру, либо ядру консоли, в зависимости от типа запроса,\r\n        поступающего в приложение. Эти два ядра служат центральным местом, через которое проходят все запросы.<br>\r\n        HTTP-ядро расширяет класс <code>Illuminate\\Foundation\\Http\\Kernel</code>, который определяет массив загрузчиков\r\n        (bootstrappers), которые будут запускаться до выполнения запроса. Эти загрузчики настраивают обработку ошибок,\r\n        настраивают ведение журнала, определяют среду приложения и выполняют другие задачи, которые необходимо выполнить\r\n        до фактической обработки запроса. Обычно эти классы обрабатывают внутреннюю конфигурацию Laravel\r\n    </p>\r\n    <p>\r\n        Ядро HTTP также определяет список HTTP-посредников, через которые должны пройти все запросы, прежде чем они\r\n        будут обработаны приложением. Эти посредники обрабатывают чтение и запись HTTP-сессий, определяют, находится ли\r\n        приложение в режиме обслуживания, проверяют токен CSRF и многое другое.\r\n    </p>\r\n    <p>\r\n        Одним из наиболее важных действий начальной загрузки ядра является загрузка поставщиков служб вашего приложения.\r\n        Все поставщики служб приложения настраиваются в массиве providers конфигурационного файла config/app.php.\r\n    </p>\r\n    <p>\r\n        Laravel будет перебирать этот список поставщиков и создавать экземпляры каждого из них. После создания\r\n        экземпляров поставщиков, будет вызван метод register всех поставщиков. Затем, как только все поставщики будут\r\n        зарегистрированы, будет вызван метод boot каждого из них.\r\n    </p>\r\n    <p>\r\n        Поставщики служб несут ответственность за загрузку всех различных компонентов инфраструктуры, таких как\r\n        компоненты БД, очереди, валидации и маршрутизации. По сути, каждая основная функция Laravel загружается и\r\n        настраивается поставщиком служб. Поскольку они запускают и настраивают так много функций, предлагаемых\r\n        фреймворком, поставщики служб являются наиболее важным аспектом всего процесса начальной загрузки Laravel.\r\n    </p>\r\n    <p>\r\n        <em>Вам может быть интересно, почему метод register каждого поставщика служб вызывается перед вызовом метода\r\n            boot для любого поставщика служб. Ответ прост. Вызывая сначала метод register каждого из поставщиков служб,\r\n            обеспечивается возможность зависимости остальных поставщиков от любых «связываний контейнера», которые будут\r\n            уже зарегистрированы и доступны к моменту выполнения метода boot.</em>\r\n    </p>\r\n    <p>\r\n        Одним из наиболее важных поставщиков служб в вашем приложении является App\\Providers\\RouteServiceProvider. Этот\r\n        поставщик загружает файлы маршрутов, содержащиеся в каталоге routes приложения.<br> После того, как приложение\r\n        было загружено и все поставщики служб зарегистрированы, Request будет передан маршрутизатору для исполнения.\r\n        Маршрутизатор отправит запрос на маршрут или контроллер, а также запустит посредник для конкретного маршрута.\r\n    </p>\r\n    <p>\r\n        Посредники обеспечивают удобный механизм фильтрации или интерпретации HTTP-запросов, поступающих в ваше\r\n        приложение. Например, Laravel содержит посредника, который проверяет аутентификацию пользователя вашего\r\n        приложения. Если пользователь не аутентифицирован, посредник перенаправит пользователя, например, на экран входа\r\n        в систему. Однако, если пользователь аутентифицирован, посредник позволит запросу продолжить работу в\r\n        приложении.\r\n    </p>\r\n    <p>\r\n        Когда метод маршрута или контроллера вернет ответ, тогда ответ отправится обратно через посредников маршрута,\r\n        обеспечивая приложению возможность изменения или проверки исходящего ответа.\r\n    </p>\r\n    <p>\r\n        Наконец, как только ответ проходит через посредников, метод handle ядра HTTP возвращает объект ответа, а файл\r\n        index.php вызывает метод send для возвращенного ответа. Метод send отправляет содержимое ответа в веб-браузер\r\n        пользователя. Мы завершили наш путь через весь жизненный цикл запроса Laravel!\r\n    </p>\r\n</div>\r\n\r\n<div id=\"source\">\r\n    <a href=\"https://laravel.su/docs/8.x/lifecycle\" target=\"_blank\"> https://laravel.su/docs/8.x/lifecycle</a>\r\n</div>\r\n\r\n<p><br></p>','ziznennyi-cikl-zaprosa',1,41,1,'2021-09-02 16:21:27','2021-09-30 17:49:11');
INSERT INTO `infos` VALUES (105,'Контейнер служб (service container)','<ul class=\"main_list\">\r\n    <li><a href=\"#source\">Введение</a></li>\r\n    <li><a href=\"#source\">Источники</a></li>\r\n</ul>\r\n\r\n<div id=\"introduction\">\r\n    <p>Контейнер служб (service container, сервис-контейнер) Laravel – это мощный инструмент для управления\r\n        зависимостями классов и выполнения внедрения зависимостей. Зависимости классов «вводятся» в класс через\r\n        конструктор в виде аргументов или, в некоторых случаях, через методы-сеттеры.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"source\">\r\n    <a href=\"https://laravel.su/docs/8.x/container\" target=\"_blank\">https://laravel.su/docs/8.x/container</a>\r\n</div>\r\n\r\n<p><br></p>','konteiner-sluzb-service-container',1,41,2,'2021-09-02 16:24:23','2021-09-30 17:52:26');
INSERT INTO `infos` VALUES (107,'Examples','<ul class=\"main_list\">\r\n    <li>\r\n        <a href=\"#subquery\">SubQuery</a>\r\n    </li>\r\n</ul>\r\n\r\n<div id=\"subquery\">\r\n    <p>\r\n        <a href=\"https://www.youtube.com/watch?v=1toV3rcjuXo&ab_channel=RClass\" target=\"_blank\">youtube</a>\r\n    </p>\r\n\r\n    <p>\r\n        <b>Table: Workers; Fields: id,name,role,salary,dep_id</b><br> Выбрать сотрудников с зп выше средней: <br> <code>SELECT\r\n        * FROM workers WHERE salary (SELECT AVG(salary) FROM workers)</code>\r\n    </p>\r\n\r\n    <p>\r\n        Выбрать всех сотрудников из отдела в котором работает самый оплачиваемый сотрудник.\r\n    </p>\r\n    <pre><code class=\"sql\">SELECT *\r\nFROM workers\r\nWHERE dep_id = (\r\n    SELECT dep_id FROM workers WHERE salary = (\r\n        SELECT MAX(salary) FROM workers\r\n    )\r\n)</code></pre>\r\n    <p>\r\n        Выбрать все отделы,в которых работает больше одного сотрудника:\r\n    </p>\r\n    <pre><code class=\"sql\">SELECT * FROM WORKERS WHERE id IN\r\n(\r\n  SELECT dep_id FROM WORKERS\r\n  GROUP BY dep_id\r\n  HAVING COUNT(*) > 1\r\n)</code></pre>\r\n    <p>\r\n        <b>Корреливанные запросы</b> Выбрать отделы с указаниям зп в каждой из них:\r\n    </p>\r\n    <pre><code class=\"sql\">SELECT *, (\r\nSELECT AVG(salary) FROM workers\r\nWHERE workers.id = departments.id\r\n) AS avg_salary\r\nFROM departments</code></pre>\r\n    <p>\r\n        Подзапросы в секции FROM \\ JOIN\r\n    </p>\r\n    <pre><code class=\"sql\">SELECT *\r\nFROM departments, (\r\n    SELECT dep_id, MIN(salary) as min_salary\r\n    FROM workers\r\n    GROUP BY dep_id\r\n) as min_salaries\r\nWHERE min_salaries.dep_id = departments.id</code></pre>\r\n\r\n    <p>\r\n        <b>Table: users_comment; Fields: id,comment,user_id</b><br> Получить по каждому юзеру последние n комментариев\r\n    </p>\r\n    <pre><code class=\"sql\">SELECT *\r\nSELECT *,\r\n@row_num := IF(user_id = @current_user_id, @row_num + 1, 1) row_num ,\r\n@current_user_id := user_id\r\nFROM users_comment\r\n\r\nSELECT *\r\nFROM\r\n	(\r\n		SELECT *, ROW_NUMBER() OVER (partition BY user_id) as row_num\r\n		FROM users_comment\r\n	) s\r\nwhere row_num<=2\r\n</code></pre>\r\n\r\n    <p>\r\n        <b>Table: students; Fields: id, id_students,mark</b><br> Вывести кол. 5ок у студентов,у которых количество 3к\r\n        <=1\r\n    </p>\r\n    <pre><code class=\"sql\">SELECT m1.id_students, m1.mark, count(m1.mark) as cnt\r\nFROM students m1\r\nright join (SELECT id_students, mark, count(mark) as cnt\r\n    FROM students\r\n    where mark = 3\r\n    group by id_students, mark\r\n    having cnt<=1\r\n    ) as m3 on m3.id_students = m1.id_students\r\nwhere m1.mark = 5\r\ngroup by id_students, mark</code></pre>\r\n</div>\r\n\r\n<p><br></p>','examples',1,11,5,'2021-09-07 13:51:19','2021-11-10 13:05:38');
INSERT INTO `infos` VALUES (108,'Workers','<ul class=\"main_list\">\r\n    <li>\r\n        <a href=\"#worker_queue\">Очереди в программировании</a>\r\n        <ul>\r\n            <li>\r\n                <a href=\"#worker_principle\">Принцип работы воркеров и очередей</a>\r\n            </li>\r\n        </ul>\r\n    </li>\r\n    <li>\r\n        <a href=\"#worker_start\">Воркер и как реализовать автоматический запуск воркера</a>\r\n        <ul>\r\n            <li><a href=\"#worker_cron\">Cron</a></li>\r\n            <li><a href=\"#worker_supervisord\">Supervisord</a></li>\r\n        </ul>\r\n    </li>\r\n    <li><a href=\"#worker_restart\">Как перезапускать воркера? В каких случаях это нужно делать?</a></li>\r\n\r\n    <li><a href=\"#worker_monitor\"> Как делать мониторинг воркеров? Воркера не смотрят наружу, и нет способа понять,\r\n        живой воркер или не живой. Какие есть варианты? </a>\r\n    </li>\r\n    <li><a href=\"#source\">Источники</a></li>\r\n</ul>\r\n<div id=\"worker_queue\">\r\n    <p>Распространенная ошибка начинающих разработчиков - это избыточная функциональность, выполняющаяся за один запрос.\r\n        Бывает, что за единичный запрос разработчик пытается выполнить: создание записи в бд, загрузку видео, создание\r\n        превью, и отправку уведомления по почте. Очередь сообщений позволяет обеспечить асинхронное выполнение участков\r\n        программы. Это позволяет:</p>\r\n    <ul>\r\n        <li>\r\n            Увеличить скорость работы приложения\r\n        </li>\r\n        <li>Обслуживать большее количество посетителей (масштабироваться)</li>\r\n        <li>Использовать разные языки разработки в одном приложении</li>\r\n    </ul>\r\n\r\n    <p>\r\n        Система очередей — это принцип, а не конкретная технология. Для реализации системы очередей не обязательно\r\n        использовать внешнее решение. Вы можете реализовать очередь, скажем, на MySQL or REDIS и PHP. Однако простота и\r\n        наличиe готовых решений позволят сделать это быстрее. Система очередей состоит из двух основных компонент.\r\n    </p>\r\n    <p>1. Сервер очереди - хранит список сообщений\\информацию (или задач, job queue), которые отправляет ему основное\r\n        приложение. Задача — это просто информация о том, что и как нужно выполнить. Сам сервер очереди ничего не\r\n        выполняет. Единственной его задачей является хранение самой очереди.\r\n    </p>\r\n    <p>2. Обработчик (или worker) — это часть основной программы, которая работает с очередью в обратном направлении,\r\n        отдельный PHP скрипт, который постоянно проверяет сервер на наличие новых задач. Как\r\n        только задача приходит – он выполняет связанную с ней логику. Т.е. медленный участок программы\r\n        удаляется из основной программы и переносится в worker.</p>\r\n</div>\r\n\r\n<div id=\"worker_principle\">\r\n    <p>\r\n        Сервер очередей хранит список задач, которые отправляет клиент\\приложение в <b>сторендж</b>(РЕДИС,МУСКУЛЬ).\r\n        Обработчик(worker) подключается к сервер очередей и обрабатывает, а supervisord контролирует\\следит над фоновыми\r\n        процессами.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"worker_start\">\r\n    <p>\r\n        При использовании очередей сообщений Вам может понадобится запускать PHP процессы, которые должны работать\r\n        постоянно.<br>\r\n        Воркер - это интерфейс, который позволяет подключаться и общаться с самой очередью. Воркером может быть что\r\n        угодно! Он может быть реализован на любом языке программирования (PHP, C, Ruby, Python), главное - чтобы он\r\n        позволял подключаться, и общаться с самой очередью. Есть несколько подходов:\r\n    </p>\r\n</div>\r\n<div id=\"worker_cron\">\r\n    <p>\r\n        Можно поставить на крон (скажем, выполнять задачу каждые 5 минут). И каждые 5 минут будут обрабатываться все\r\n        задачи, добавленные ранее в очередь. Этот вариант рабочий, однако, недостаток в том, что задачи будут\r\n        выполняться не сразу, а только в течении 5 минут.\r\n        Второй варианта - это зациклить скрипт на бесконечное выполнение. Этот подход позволяет один раз запустить\r\n        скрипт, который, в цикле, с определённым интервалом будет проверять новые задачи, и их выполнять. Для запуска\r\n        процесса: <code>crontab -e</code>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"worker_supervisord\">\r\n    <p>\r\n        Supervisord позволяет организовать работу фоновых PHP процессов очень удобно. Установка:\r\n        <code>apt-get install supervisor</code>. В файле конфигурации (nano /etc/supervisor/supervisord.conf), в самом\r\n        низу добавляем настройки для нужного воркера. Supervisor сам будет следить за процессами, запускать их в случае\r\n        падения, а также после перезагрузки системы. Вы можете запускать несколько копий.\r\n    </p>\r\n    <pre><code class=\"ini\">\r\n// название процесса/воркера, к которому будут относиться все последующие параметры секции\r\n[program:worker]\r\n// команда на запуск файла, то есть путь к нужному файлу;\r\ncommand=/usr/bin/php /var/www/worker.php\r\nprocess_name=%(program_name)s_%(process_num)02d\r\n// количество инстансов заданного воркера\r\nnumprocs=10\r\ndirectory=/var/www/worker\r\n//вывод консоли в файл;\r\nstdout_logfile=/var/log/worker.log\r\n//запуск воркера вместе с запуском supervisor;\r\nautostart=true\r\n// перезапуск воркера, если тот по какой-то причине упал;\r\nautorestart=true\r\n// запуск процесса под определенным пользователем;\r\nuser=www-data\r\n// сигнал остановки (убийства) процесса. Если не определяется, то используется команда по умолчанию — TERM;\r\nstopsignal=KILL\r\n</code>\r\n</pre>\r\n    <p>\r\n        Для запуска нескольких копий одного процесса необходимо также указать параметр process_name для определения\r\n        уникального имени процесса. Добавляется строчка process_name=%(program_name)s_%(process_num)02d, которая задает\r\n        имена всех копий процесса, в нашем случае worker_00, worker_01 и т.д.\r\n    </p>\r\n    <p><b>После добавления новых процессов/воркеров не забывайте перезагружать supervisor</b>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"worker_restart\">\r\n    <p>\r\n        <b>Воркер очереди</b> - длительные процессы и хранят в памяти состояние загруженного приложения. (создает\r\n        екземпляр класса и хранить его в памяти) В результате, они не заметят изменений в вашей базе кода после своего\r\n        запуска. Поэтому самый простой способ развернуть приложения используя воркер очереди - перезагрузить воркеров во\r\n        время процесса развертывания. For supervisor: <code>supervisorctl restart [process_name]</code>\r\n        For cron: <code>service cron reload || /etc/init.d/cron reload</code>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"worker_monitor\">\r\n    <p>Supervisord log !!<b>Read stderr log</b></p>\r\n</div>\r\n\r\n<div id=\"source\">\r\n    <a target=\"_blank\" href=\"https://highload.today/ocheredi-soobscheniy/\">highload</a>\r\n    <a target=\"_blank\" href=\"https://highload.today/index-php-2010-07-09-gearman-i-php-asinkhronnye-zadachi/\">highload</a>\r\n    <a target=\"_blank\" href=\"https://highload.today/kak-zapustit-php-worker-3f/\">highload</a>\r\n    <a target=\"_blank\" href=\"https://badcode.ru/chto-takoie-php-ochieried-zadach/\">badcode.ru</a>\r\n</div>\r\n<p><br></p>','workers',1,7,6,'2021-09-27 12:25:16','2021-09-28 09:41:10');
INSERT INTO `infos` VALUES (109,'MySQL Admin (Slow log, Backup)','<ul class=\"main_list\">\r\n    <li><a href=\"#dump\">Как сделать дамп базы данных?</a></li>\r\n    <li><a href=\"#question1\"> Если у нас есть подозрение, что в БД что-то тормозит, как нам найти тормозной запрос\r\n        средствами БД?</a></li>\r\n</ul>\r\n\r\n<div id=\"dump\">\r\n<pre><code class=\"mysql\">\r\nmysqldump -uUSER -pPASSWORD DB_NAME > FILE_NAME_TO_SAVE\r\n//example\r\nmysqldump -uroot -p123456 mydb > dump.sql\r\n</code></pre>\r\n    <ul>\r\n        <li><b>uUser</b> — имя пользователя базы в формате типа -u[root]</li>\r\n        <li>-<b>pPassword</b> — пароль пользователя в формате типа -p[123456]</li>\r\n        <li><b>DB_NAME</b> — имя базы данных</li>\r\n        <li><b>FILE_NAME_TO_SAVE</b> — куда сохранять дамп</li>\r\n    </ul>\r\n    <pre><code class=\"sql\">\r\n --Создаём структуру базы без данных\r\nmysqldump --no-data - u USER -pPASSWORD DATABASE > /path/to/file/schema.sql\r\n\r\n --Если нужно сделать дамп только одной или нескольких таблиц\r\nmysqldump -u USER -pPASSWORD DATABASE TABLE1 TABLE2 TABLE3 > /path/to/file/dump_table.sql\r\n\r\n --Создаём бекап и сразу его архивируем\r\nmysqldump -u USER -pPASSWORD DATABASE | gzip > /path/to/outputfile.sql.gz\r\n\r\n --Создание бекапа с указанием его даты\r\nmysqldump -u USER -pPASSWORD DATABASE | gzip > `date +/path/to/outputfile.sql.%Y%m%d.%H%M%S.gz`\r\n\r\n --Заливаем бекап в базу данных\r\nmysql -u USER -pPASSWORD DATABASE < /path/to/dump.sql\r\n\r\n --Заливаем архив бекапа в базу\r\ngunzip < /path/to/outputfile.sql.gz | mysql -u USER -pPASSWORD DATABASE\r\n --или так\r\nzcat /path/to/outputfile.sql.gz | mysql -u USER -pPASSWORD DATABASE\r\n\r\n --Создаём новую базу данных\r\nmysqladmin -u USER -pPASSWORD create NEWDATABASE\r\n</code></pre>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://habr.com/ru/post/105954/\">\r\n        https://habr.com/ru/post/105954/ </a>\r\n</div>\r\n<div id=\"question1\">\r\n    <p>\r\n        Show full proccess list\r\n    </p>\r\n</div>\r\n\r\n<p><br></p>','mysql-admin-slow-log-backup',1,11,6,'2021-09-30 15:58:37','2021-09-30 16:05:45');
INSERT INTO `infos` VALUES (110,'Transactions','<ul class=\"main_list\">\r\n    <li><a href=\"#transaction\">Как работают транзакции?</a></li>\r\n    <li><a href=\"#blocks\">Блокировки</a></li>\r\n    <li><a href=\"#izolation\">Изоляции</a></li>\r\n    <li><a href=\"#q1\">\r\n        Если у меня есть две разные БД, и мне нужно консистентно что-то менять в обоих\r\n        БД, могу ли я использовать транзакции?</a></li>\r\n</ul>\r\n\r\n<div id=\"transaction\">\r\n    <p>\r\n        Транзакция — это операция, состоящая из одного или нескольких запросов к базе данных. Суть транзакций —\r\n        обеспечить корректное выполнение всех запросов в рамках одной транзакции, а так-же обеспечить механизм изоляции\r\n        транзакций друг от друга для решения проблемы совместного доступа к данным. Любая транзакция либо выполняется\r\n        полностью, либо не выполняется вообще.\r\n    </p>\r\n    <p>\r\n        В транзакционной модели есть два фундаментальных понятия: COMMIT и ROLLBACK. COMMIT означает фиксацию всех\r\n        изменений в транзакции. ROLLBACK означает отмену (откат) изменений, произошедших в транзакции.\r\n    </p>\r\n    <p>\r\n        При старте транзакции все последующие изменения сохраняются во временном хранилище. В случае выполнения COMMIT,\r\n        все изменения, выполненные в рамках одной транзакции, сохранятся в физическую БД. В случае выполнения ROLLBACK\r\n        произойдет откат и все изменения, выполненные в рамках этой транзакции, не сохранятся.\r\n    </p>\r\n    <p>\r\n        Для старта транзакции необходимо исполнить запрос<br><br>\r\n        <b>START TRANSACTION;</b><br>\r\n        Далее необходимо выполнить запросы в рамках транзакции. Для окончания транзакции необходимо исполнить запрос<br>\r\n        <b>COMMIT;</b>\r\n    </p>\r\n<pre>  <code>\r\nSTART TRANSACTION;\r\nUPDATE teacher SET name=\'Hank\' WHERE id = 2;\r\nCOMMIT;\r\n</code>\r\n</pre>\r\n    <p>Для некоторых операторов нельзя выполнить откат с помощью ROLLBACK. Это операторы языка определения данных (Data\r\n        Definition Language — DDL). Сюда входят запросы CREATE, ALTER, DROP, TRUNCATE, COMMENT, RENAME.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"blocks\">\r\n    <ul>\r\n        <li>\r\n            shared lock — совместная блокировка, позволяет другим транзакциям читать\r\n            строку и ставить на нее такую же совместную блокировку, но не позволяет\r\n            изменять строку или ставить исключительную блокировку.\r\n        </li>\r\n        <li>\r\n            exclusive lock — исключительная блокировка, запрещает другим транзакциям\r\n            блокировать строку, а также может блокировать строку как на запись, так и\r\n            на чтение в зависимости от текущего уровня изоляции (о коих ниже).\r\n        </li>\r\n    </ul>\r\n</div>\r\n\r\n<div id=\"izolation\">\r\n    <p>\r\n        У транзакций есть 4 уровня изоляции:\r\n    </p>\r\n    <ul>\r\n        <li>0 — Чтение неподтверждённых данных (грязное чтение) (Read Uncommitted, Dirty Read) — самый низкий уровень\r\n            изоляции. При этом уровне возможно чтение незафиксированных изменений параллельных транзакций. Как раз в\r\n            этом случае второй пользователь увидит вставленную запись из первой незафиксированной транзакции. Нет\r\n            гарантии, что незафиксированная транзакция будет в любой момент откачена, поэтому такое чтение является\r\n            потенциальным источником ошибок.\r\n        </li>\r\n        <li> 1 — Чтение подтверждённых данных (Read Committed) — здесь возможно чтение данных только зафиксированных\r\n            транзакций. Но на этом уровне существуют две проблемы. В этом режиме строки, которые участвуют в выборке в\r\n            рамках транзакции, для других параллельных транзакций не блокируются, из этого вытекает проблема № 1:\r\n            «Неповторяемое чтение» (non-repeatable read) — это ситуация, когда в рамках транзакции происходит несколько\r\n            выборок (SELECT) по одним и тем же критериям, и между этими выборками совершается параллельная транзакция,\r\n            которая изменяет данные, участвующие в этих выборках. Так как параллельная транзакция изменила данные,\r\n            результат при следующей выборке по тем же критериям в первой транзакции будет другой. Проблема № 2 —\r\n            «Фантомное чтение» — этот случай рассмотрен ниже.\r\n        </li>\r\n        <li> 2 — Повторяемое чтение (Repeatable Read, Snapshot) — на этом уровне изоляции так же возможно чтение данных\r\n            только зафиксированных транзакций. Так же на этом уровне отсутствует проблема «Неповторяемого чтения», то\r\n            есть строки, которые участвуют в выборке в рамках транзакции, блокируются и не могут быть изменены другими\r\n            параллельными транзакциями. Но таблицы целиком не блокируются. Из-за этого остается проблема «фантомного\r\n            чтения». «Фантомное чтение» — это когда за время выполнения одной транзакции результат одних и тех же\r\n            выборок может меняться по причине того, что блокируется не вся таблица, а только те строки, которые\r\n            участвуют в выборке. Это означает, что параллельные транзакции могут вставлять строки в таблицу, в которой\r\n            совершается выборка, поэтому два запроса SELECT * FROM table могут дать разный результат в разное время при\r\n            вставке данных параллельными транзакциями.\r\n        </li>\r\n        <li> 3 — Сериализуемый (Serializable) — сериализуемые транзакции. Самый надежный уровень изоляции транзакций, но\r\n            и при этом самый медленный. На этом уровне вообще отсутствуют какие либо проблемы параллельных транзакций,\r\n            но за это придется платить быстродействием системы, а быстродействие в большинстве случаев крайне важно.\r\n        </li>\r\n    </ul>\r\n    <p>\r\n        По умолчанию в MySQL установлен уровень изоляции № 2 (Repeatable Read). И, как я считаю, разработчики MySQL не\r\n        зря сделали по умолчанию именно этот уровень, так как он наиболее удачный для большинства случаев. С первого\r\n        раза может показаться, что самый лучший вариант № 3 — он самый надежный, но на практике вы можете испытать\r\n        большие неудобства из-за очень медленной работы вашего приложения. Помните, что многое зависит не от того,\r\n        насколько хорош уровень изоляции транзакций в БД, а от того, как спроектировано ваше приложение. При грамотном\r\n        программировании, можно даже использовать самый низкий уровень изоляции транзакций — все зависит от особенностей\r\n        структуры и грамотности разработки вашего приложения. Но ненужно стремиться к самому низкому уровню изоляции —\r\n        нет, просто если вы используйте не самый защищенный режим, следует помнить о проблемах параллельных транзакций,\r\n        в этом случае вы не растеряетесь и все сделайте правильно.\r\n    </p>\r\n    <p>\r\n        SET TRANSACTION — этот оператор устанавливает уровень изоляции следующей транзакции, глобально либо только для\r\n        текущего сеанса.\r\n    </p>\r\n    <pre><code class=\"sql\">SET [GLOBAL | SESSION] TRANSACTION ISOLATION LEVEL\r\n{ READ UNCOMMITTED | READ COMMITTED | REPEATABLE READ | SERIALIZABLE }</code></pre>\r\n\r\n</div>\r\n\r\n<div id=\"q1\">\r\n    <p>\r\n        Нет\r\n    </p>\r\n</div>\r\n\r\n<p><br></p>','transactions',1,11,9,'2021-09-30 16:07:36','2021-12-02 19:24:43');
INSERT INTO `infos` VALUES (111,'Триггер','<ul class=\"main_list\">\r\n    <li><a href=\"#trigger\">Что такое триггеры?</a></li>\r\n    <li><a href=\"#type_trigger\">Какие типы бывают?</a></li>\r\n</ul>\r\n<div id=\"trigger\">\r\n    <p>\r\n        Триггер в MySQL — это определяемая пользователем SQL-команда, которая автоматически вызывается во время операций\r\n        INSERT, DELETE или UPDATE. Код триггера связан с таблицей и уничтожается после удаления таблицы\r\n    </p>\r\n</div>\r\n<div id=\"type_trigger\">\r\n<pre><code class=\"mysql\">\r\nCREATE TABLE `blog` (\r\n	`id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,\r\n	`title` text,\r\n	`content` text,\r\n	`deleted` tinyint(1) unsigned NOT NULL DEFAULT \'0\',\r\n	PRIMARY KEY (`id`),\r\n	KEY `ix_deleted` (`deleted`)\r\n) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT=\'Blog posts\';​\r\n        \r\nCREATE TABLE `audit` (\r\n	`id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,\r\n	`blog_id` mediumint(8) unsigned NOT NULL,\r\n	`changetype` enum(\'NEW\',\'EDIT\',\'DELETE\') NOT NULL,\r\n	`changetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,\r\n	PRIMARY KEY (`id`),\r\n	KEY `ix_blog_id` (`blog_id`),\r\n	KEY `ix_changetype` (`changetype`),\r\n	KEY `ix_changetime` (`changetime`),\r\n	CONSTRAINT `FK_audit_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE\r\n) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;        \r\n</code></pre>\r\n    <p>Тригер:</p>\r\n    <ul>\r\n        <li>INSERT (BEFORE | AFTER)</li>\r\n        <li>UPDATE (BEFORE | AFTER)</li>\r\n        <li>DELETE (BEFORE | AFTER)</li>\r\n    </ul>\r\n    <p>Для нашего тела триггера требуется несколько команд SQL, разделенных точкой с запятой (;). Чтобы создать полный\r\n        код триггера, мы должны изменить разделитель на что-то другое, например $. Создаем AFTER INSERT триггер. Тут мы\r\n        вводим переменную @changetyp, которая будет хранить значение из enum(\'NEW\',\'EDIT\',\'DELETE\') в зависимости от\r\n        условия, какое значение установлено в blog.deleted:\r\n    </p>\r\n    <pre><code class=\"mysql\">\r\nDELIMITER $$\r\n\r\nCREATE\r\n	TRIGGER `blog_after_insert` AFTER INSERT \r\n	ON `blog` \r\n	FOR EACH ROW BEGIN\r\n	\r\n		IF NEW.deleted THEN\r\n			SET @changetype = \'DELETE\';\r\n		ELSE\r\n			SET @changetype = \'NEW\';\r\n		END IF;\r\n    \r\n		INSERT INTO audit (blog_id, changetype) VALUES (NEW.id, @changetype);\r\n		\r\n    END$$\r\n \r\nDELIMITER ;        \r\n</code></pre>\r\n    <p>\r\n        На столбцы таблицы, к которой привязан триггер (в данном случае `blog`) можно ссылаться с помощью псевдонимов\r\n        OLD и NEW. NEW - это вновь созданная таблица. Поэтому NEW.deleted содержит значение этого столбца при создании\r\n        записи в `blog`. OLD.col_name - указывает на данные стрлбца до удаления или изменения данных при соответствующих\r\n        событиях триггеров UPDATE/DELETE. Наконец, мы устанавливаем разделитель обратно в точку с запятой: DELIMITER ;\r\n    </p>\r\n    <p>Проверка работы триггера.</p>\r\n    <pre><code class=\"mysql\">\r\nINSERT INTO blog (title, content) VALUES (\'Первая запись\', \'Текст записи\');        \r\n</code></pre>\r\n</div>\r\n\r\n<p><br></p>','trigger',1,11,12,'2021-09-30 16:28:43','2021-09-30 16:34:04');
INSERT INTO `infos` VALUES (112,'Explain','<ul class=\"main_list\">\r\n    <li>\r\n        <a href=\"#explain\">Что такое Explain?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#optimization\">Что такое Explain?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#profile\">Как профилировать запросы?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#q1\"> Есть запрос, который тормозит. С чего стоит начать поиск проблем?<br> Куда смотреть в Explain,\r\n            чтобы понять, что идет не так?\r\n        </a>\r\n    </li>\r\n    <li>\r\n        <a href=\"https://www.slideshare.net/phpcodemonkey/mysql-explain-explained/\">Example</a>\r\n    </li>\r\n</ul>\r\n<div id=\"explain\">\r\n    <p>\r\n        EXPLAIN – разбор работы SQL запроса для дальнейшей оптимизации(сам запрос не выполняеться). Чаще всего задача\r\n        сводиться к правильному составлению индексов для запроса\r\n    </p>\r\n    <p>\r\n        Что Показывает\r\n    </p>\r\n    <ul>\r\n        <li>Количество задействованных строк</li>\r\n        <li>Использование идексов или их отсутсвие</li>\r\n        <li>Порядок доступа к табблицам</li>\r\n    </ul>\r\n</div>\r\n\r\n<div id=\"optimization\">\r\n    <ul>\r\n        <li>Создание не обходимых индексов(для полей участвующих в WHERE, JOIN, GROUP BY, ORDER BY)</li>\r\n        <li>Возможно более ефективней будет составной индекс(порядок полей также важен)</li>\r\n        <li>Соотвествие типов полей(связывание полей через WHERE)</li>\r\n        <li>Выборка только нужных полей(вместо *)</li>\r\n    </ul>\r\n    <pre><code>\r\n    EXPLAIN SELECT * FROM a inner join b on id=user_id \\G\r\n</code>\r\n</pre>\r\n    <table class=\"table table-striped\">\r\n        <thead>\r\n        <tr>\r\n            <th>id</th>\r\n            <th>select_type</th>\r\n            <th>table</th>\r\n            <th>type</th>\r\n            <th>possible_keys</th>\r\n            <th>key</th>\r\n            <th>key_len</th>\r\n            <th>ref</th>\r\n            <th>rows</th>\r\n            <th>Extra</th>\r\n        </tr>\r\n        </thead>\r\n        <tbody>\r\n        <tr>\r\n            <th>1</th>\r\n            <td>SIMPLE</td>\r\n            <td>a</td>\r\n            <td>ALL</td>\r\n            <td>PRIMARY,id_UNIQUE</td>\r\n            <td>null</td>\r\n            <td>null</td>\r\n            <td>null</td>\r\n            <td>3</td>\r\n            <td>null</td>\r\n        </tr>\r\n        <tr>\r\n            <th>1</th>\r\n            <td>SIMPLE</td>\r\n            <td>b</td>\r\n            <td>ALL</td>\r\n            <td>null</td>\r\n            <td>null</td>\r\n            <td>null</td>\r\n            <td>null</td>\r\n            <td>16</td>\r\n            <td>Using where;using join buffer</td>\r\n        </tr>\r\n    </tbody></table>\r\n    <p>Что нам эта информация дает?</p>\r\n    <ul>\r\n        <li>\r\n            <b>id</b> - номер строки в таблице EXPLAIN, строк будет столько, сколько операторов SELECT в запросе.\r\n        </li>\r\n        <li>\r\n            <b>select_type</b> - это тип запроса. Он говорит о том, является ли запрос простым (как в нашем случае) или\r\n            же, к примеру, вложенным - когда используются подзапросы (SUBQUERY). Среди возможных значений также могут\r\n            быть:\r\n            <ul>\r\n                <li><b>PRIMARY</b> - внешний запрос при соединении JOIN</li>\r\n                <li><b>DERIVED</b> - запрос является подзапросом в предложении FROM</li>\r\n                <li><b>DEPENDENT SUBQUERY</b> - подзапрос SELECT, который зависит от подзапроса</li>\r\n                <li><b>UNION</b> - запрос, который записан после оператора UNION</li>\r\n                <li><b>DEPENDENT UNION</b> - запрос, который записан после оператора UNION и зависит от подсапроса</li>\r\n                <li><b>UNION RESULT</b> - результирующий запрос SELECT, в котором есть UNION</li>\r\n            </ul>\r\n        </li>\r\n        <li>\r\n            <b>table</b> - таблица, которая использована для запроса. Значения могут совпадать с существующими таблицами\r\n        </li>\r\n        <li>\r\n            <b>type</b> - то как система осуществляет соединение таблиц. Иногда говорят, что это то, как осуществляется\r\n            доступ к значениям в таблице. Например, производился поиск по всей таблице, либо же по определенному\r\n            интервалу. Или же поиск производился исключительно по индексу. Перечислим некоторые значения (от лучших к\r\n            худшим):\r\n            <ul>\r\n                <li><b>system</b> - таблица имеет не более 1 строки.</li>\r\n                <li><b>const</b> - таблица содержит не более 1 совпадения по запросу. При этом критерий поиска был\r\n                    составлен из индексов и в нем использовались лишь постоянные величины.\r\n                </li>\r\n                <li><b>eq_ref</b> - при соединении таблицы были использованы индексы PRIMARY или UNIQUE NOT NULL</li>\r\n                <li><b>ref</b> - при соединении таблицы были использованы индексы</li>\r\n                <li><b>unique_subquery</b> - это аналог ref, когда подзапрос в IN возвращает один результат при помощи\r\n                    индекса\r\n                </li>\r\n                <li><b>index_subquery</b> - аналог unique_subquery, но результатов больше чем 1.</li>\r\n                <li><b>range</b> - поиск проводился в индексе по определенному промежутку. Например, при использовании\r\n                    операторов сравнения.\r\n                </li>\r\n                <li><b>all</b> - была использована вся таблица для поиска записей. Это наиболее плохой результат.</li>\r\n            </ul>\r\n        </li>\r\n        <li>\r\n            <b>possible_keys</b> - возможные индексы для поиска записей(несколько может быть по скольку в WHERE может\r\n            иметь несколько условий по индексируемому полю\\полей - составной индекс)\r\n        </li>\r\n        <li>\r\n            <b>keys</b> - индексы, которые были использованы для запроса\r\n        </li>\r\n        <li>\r\n            <b>key_len</b> -количество байт, которое занимает индекс\r\n        </li>\r\n        <li>\r\n            <b>ref</b> - столбцы которые сравнивались с индексами в key\r\n        </li>\r\n        <li>\r\n            <b>rows</b> - количество строк таблицы, которые исследованы для результата. Очевидно, что чем меньше это\r\n            число - тем лучше. (rows умножаються со всех таблиц в explain)\r\n        </li>\r\n        <li>\r\n            <b>extra</b> - дополнительная информация про запрос.\r\n        </li>\r\n    </ul>\r\n</div>\r\n\r\n<div id=\"profile\">\r\n    <p>\r\n        Профилирование запросов MySQL – это полезный метод анализа общей производительности приложений на основе БД. Лог\r\n        медленных запросов MySQL (или slow query log) — это лог, в который MySQL отправляет медленные и потенциально\r\n        проблемные запросы. Эта функция поставляется с MySQL, но по умолчанию отключена. MySQL определяет, какие запросы\r\n        нужно внести в этот лог, с помощью специальных переменных, которые позволяют профилировать запрос на основе\r\n        требований к производительности приложения. Обычно в этот лог вносятся запросы, обработка которых занимает\r\n        больше времени, и запросы, которые неправильно индексы. <b>/etc/mysql/mysql.conf.d/mysqld.cnf</b>\r\n    </p>\r\n    <pre><code>\r\n#slow_query_log         = 1   //булево значение включающее лог\r\n#slow_query_log_file    = /var/log/mysql/mysql-slow.log  //путь абсолютный путь к файлу лога.\r\n                            Владельцем каталога должен быть пользователь mysqld, а также директория должна\r\n                            иметь корректные разрешения для чтения и записи. Чаще всего демон mysql работает\r\n                            от имени пользователя mysql.\r\n#long_query_time = 2 //время в секундах для проверки продолжительности запроса &gt;2\r\n#log-queries-not-using-indexes  //тут не надо значение, включает сохранение запросов не использующих индексы\r\n#min_examined_row_limit     //указывает минимальное значение количества рядов данных для анализа. Значение\r\n                                1000 проигнорирует запросы возвращающие меньше 1000 рядов значений.\r\n\r\n</code></pre>\r\n    <p>\r\n        Изменения вступят только при очередном запуске MySQL, если вам необходимо динамическое изменение параметров,\r\n        используйте другие методы установки переменных:\r\n    </p>\r\n\r\n    <pre><code>\r\nmysql&gt; SET GLOBAL slow_query_log = \'ON\';\r\nmysql&gt; SET GLOBAL slow_query_log_file = \'/var/log/mysql/localhost-slow.log\';\r\nmysql&gt; SET GLOBAL log_queries_not_using_indexes = \'ON\';\r\nmysql&gt; SET SESSION long_query_time = 1;\r\nmysql&gt; SET SESSION min_examined_row_limit = 100;\r\n</code></pre>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://www.8host.com/blog/profilirovanie-zaprosov-mysql/\">\r\n        https://www.8host.com/blog/profilirovanie-zaprosov-mysql/\r\n    </a>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://devacademy.ru/article/profilirovanie-zaprosov-v-mysql/\">\r\n        https://devacademy.ru/article/profilirovanie-zaprosov-v-mysql/\r\n    </a>\r\n</div>\r\n\r\n<div id=\"q1\">\r\n    <p>\r\n        Колонка <b>key</b> показывает используемый индекс. Колонка <b>possible_keys</b> показывает все индексы, которые\r\n        могут быть использованы для этого запроса. Колонка <b>rows</b> показывает число записей, которые пришлось\r\n        прочитать базе данных для выполнения этого запроса\r\n    </p>\r\n</div>\r\n\r\n<p><br></p>','explain',1,11,10,'2021-09-30 16:37:22','2022-02-04 12:27:39');
INSERT INTO `infos` VALUES (113,'Введение в паттерны','<ul class=\"main_list\">\r\n    <li><a href=\"#pattern\">Зачем нужны паттерны?</a></li>\r\n    <li><a href=\"#classification_pattern\">Какие паттерны знаешь?</a></li>\r\n    <li><a href=\"#dependency_injection\">Какую задачу решает паттерн Внедрение зависимостей (Dependency Injection)</a>\r\n    </li>\r\n    <li><a href=\"#ex1\">В чем плюсы и минусы паттерна Singleton?</a></li>\r\n    <li><a href=\"#ex2\">Пример использование паттерна Строитель (Builder)?</a></li>\r\n</ul>\r\n\r\n<div id=\"pattern\">\r\n    <p>\r\n        Это часто встречающееся решение определённой проблемы при проектировании архитектуры программ.\r\n    </p>\r\n    <ul>\r\n        <li>\r\n            <b>Проверенные решения.</b> Вы тратите меньше времени, используя готовые решения, вместо повторного\r\n            изобретения велосипеда.\r\n        </li>\r\n        <li>\r\n            <b>Стандартизация кода.</b> Вы делаете меньше просчётов при проектировании, используя типовые\r\n            унифицированные решения, так как все скрытые проблемы в них уже давно найдены.\r\n        </li>\r\n        <li>\r\n            <b>Общий программистский словарь.</b> Вы произносите название паттерна, вместо того, чтобы час объяснять\r\n            другим программистам, какой крутой дизайн вы придумали и какие классы для этого нужны.\r\n        </li>\r\n    </ul>\r\n    <a href=\"https://refactoring.guru/ru/design-patterns/why-learn-patterns\" class=\"btn btn-secondary\">\r\n        https://refactoring.guru/ru/design-patterns/why-learn-patterns </a>\r\n</div>\r\n\r\n<div id=\"classification_pattern\">\r\n    <ul>\r\n        <li>\r\n            <b>Порождающие</b> - Отвечают за удобное и безопасное создание новых объектов\r\n            <ul>\r\n                <li>\r\n                    <b>Фабричный метод</b> - Это способ делегирования логики создания объектов дочерним классам.\r\n                </li>\r\n                <li>\r\n                    <b>Абстрактная фабрика</b> - Это фабрика фабрик. То есть фабрика, группирующая индивидуальные, но\r\n                    взаимосвязанные/взаимозависимые фабрики без указания для них конкретных классо\r\n                </li>\r\n                <li>\r\n                    <b>Строитель</b> - озволяет создавать сложные объекты пошагово\r\n                </li>\r\n                <li>\r\n                    <b>Прототип</b> - позволяет копировать объекты, не вдаваясь в подробности их реализации\r\n                </li>\r\n                <li>\r\n                    <b>Одиночка</b> - гарантирует, что у класса есть только один экземпляр\r\n                </li>\r\n            </ul>\r\n        </li>\r\n        <li>\r\n            <b>Структурные</b> - облегчают проектирование, определяя простой способ реализации взаимоотношений между\r\n            сущностями, , другими словами, с тем, как сущности могут использовать друг друга.\r\n            <ul>\r\n                <li>\r\n                    <b>Адаптер</b>- позволяет объектам с несовместимыми интерфейсами работать вместе.\r\n                </li>\r\n                <li>\r\n                    <b>Мост</b> Отделить абстракцию от её реализации так, что они могут изменяться независимо друг от\r\n                    друга.\r\n                </li>\r\n                <li>\r\n                    <b>Декоратор</b> позволяет динамически добавлять объектам новую функциональность, оборачивая их в\r\n                    полезные «обёртки».\r\n                </li>\r\n                <li>\r\n                    <b>Реестр</b>Для реализации централизованного хранения объектов, часто используемых во всем\r\n                    приложении,как правило, реализуется с помощью абстрактного класса только c статическими методами\r\n                </li>\r\n                <li><b>Фасад</b></li>\r\n                <li>\r\n                    <b>Компоновщик (Composite)</b> - Взаимодействие с иерархической группой объектов также, как и с\r\n                    отдельно взятым экземпляром.\r\n                </li>\r\n                <li>\r\n                    <b>Прокси (Proxy)</b> Создать интерфейс взаимодействия с любым классом, который трудно или\r\n                    невозможно использовать в оригинальном виде\r\n                </li>\r\n            </ul>\r\n        </li>\r\n        <li>\r\n            <b>Поведенческие</b> - Решают задачи эффективного и безопасного взаимодействия между объектами .\r\n            <ul>\r\n                <li>\r\n                    <b>Цепочка обязанностей</b> - Построить цепочку объектов для обработки вызова в последовательном\r\n                    порядке. Если один объект не может справиться с вызовом, он делегирует вызов для следующего в цепи и\r\n                    так далее.\r\n                </li>\r\n                <li><b>Команда</b></li>\r\n                <li><b>Итератор</b></li>\r\n                <li><b>Посредник (Mediator)</b></li>\r\n                <li><b>Хранитель (Memento)</b></li>\r\n                <li>\r\n                    <b>Наблюдатель (Observer)</b> создаёт механизм подписки, позволяющий одним объектам следить и\r\n                    реагировать на события, происходящие в других объектах.\r\n                </li>\r\n                <li><b>Состояние (State)</b></li>\r\n                <li>\r\n                    <b>Стратегия (Strategy)</b>Шаблон стратегия позволяет переключаться между алгоритмами или\r\n                    стратегиями в зависимости от ситуации\r\n                </li>\r\n                <li><b>Посетитель (Visitor)</b></li>\r\n            </ul>\r\n        </li>\r\n    </ul>\r\n    <a target=\"_blank\" href=\"https://refactoring.guru/ru/design-patterns/catalog\" class=\"btn btn-secondary\">\r\n        https://refactoring.guru/ru/design-patterns/catalog </a> <a target=\"_blank\" href=\"https://designpatternsphp.readthedocs.io/ru/latest/Structural/Proxy/README.html\" class=\"btn btn-secondary\"> designpatternsphp </a> <a target=\"_blank\" href=\"https://habr.com/ru/company/mailru/blog/325492\" class=\"btn btn-secondary\"> habr </a> <a target=\"_blank\" href=\"https://habr.com/ru/post/214285/\" class=\"btn btn-secondary\"> habr </a>\r\n</div>\r\n\r\n<div id=\"dependency_injection\">\r\n    <p>\r\n        Уменьшить связность кода,также чтобы получить более тестируемый, сопровождаемый и расширяемый код.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"ex1\">\r\n    <p>Один из главных минусов паттерна “Одиночка” — он сильно затрудняет юнит-тестирование. “Одиночка” привносит в\r\n        программу глобальное состояние, поэтому вы не можете просто взять и изолировать классы, которые полагаются на\r\n        Singelton. Поэтому, если вы хотите протестировать какой-то класс, то вы обязаны вместе с ним тестировать и\r\n        Singleton, но это ещё полбеды. Состояние “Одиночки” может меняться, что порождает следующие проблемы:\r\n    </p>\r\n    <ul>\r\n        <li>Порядок тестов теперь имеет значение;</li>\r\n        <li>\r\n            Тесты могут иметь нежелательные сторонние эффекты, порождённые Singleton’ом;\r\n        </li>\r\n        <li>Вы не можете запускать несколько тестов параллельно;</li>\r\n        <li>\r\n            Несколько вызовов одного и того же теста могут приводить к разным результатам.\r\n        </li>\r\n    </ul>\r\n    <a target=\"_blank\" href=\"https://tproger.ru/translations/singleton-pitfalls/\" class=\"btn btn-secondary\">\r\n        https://tproger.ru/translations/singleton-pitfalls/ </a>\r\n</div>\r\n\r\n<div id=\"ex2\">\r\n    <p>В системе могут существовать сложные объекты, создание которых за одну операцию затруднительно или невозможно.\r\n        Требуется поэтапное построение объектов(cоздавать объекты пошагово). Одним из лучших применений паттерна\r\n        Строитель является конструктор запросов SQL.</p>\r\n\r\n    <a target=\"_blank\" href=\"https://refactoring.guru/ru/design-patterns/builder/php/example#example-1\" class=\"btn btn-secondary\"> https://refactoring.guru/ru/design-patterns/builder/php/example#example-1 </a> <br>\r\n    Небольшой пример <a target=\"_blank\" href=\"https://tproger.ru/translations/design-patterns-simple-words-1/#12\" class=\"btn btn-secondary\">\r\n    https://tproger.ru/translations/design-patterns-simple-words-1/#12 </a>\r\n</div>\r\n\r\n<p><br></p>','vvedenie-v-patterny',1,26,1,'2021-09-30 16:46:16','2021-12-01 21:58:42');
INSERT INTO `infos` VALUES (114,'API: REST, oauth, HTTP-methods','<ul class=\"main_list\">\r\n    <li>\r\n        <a href=\"#rest\">Принципы и соглашения в REST?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#http_codes\">Коды состояния?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#access_token\">Какие существуют способы авторизации для API? Для чего нужен access token в oauth? Есть\r\n            ли у него время жизни?\r\n        </a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#refresh_token\">Для чего нужен refresh token в oauth? В чем его смысл? Есть ли у него время жизни?</a>\r\n    </li>\r\n\r\n</ul>\r\n\r\n\r\n<div id=\"rest\">\r\n    <p>\r\n        REST — концепция (архитектура) для организация взаимодействия между независимыми обьектами по протоколу HTTP.\r\n        Включает в себя набор принципов(рекомендация) взаимодействия клиент-серверных приложений. Обычно он представлен\r\n        в формате JSON.\r\n    </p>\r\n    <p>API - интерфейс взаимодействия с какими-либо обьектами (приложением) включающий в себя набор правил,таких как\r\n        операция создание,обновление,удаление,чтение\r\n    </p>\r\n    <p>REST API - позволяет вашему приложению взаимодействовать с одним или несколькими приложениями, использую\r\n        концепцию REST\r\n    </p>\r\n    <p>Маршруты:</p>\r\n    <ul>\r\n        <li>1. GET /goods/{goodId} — Получение информации о товаре</li>\r\n        <li>2. POST /goods — Добавление нового товара</li>\r\n        <li>3. PUT /goods/{goodId} — Редактирование товара</li>\r\n        <li>4. PATCH /goods/{goodId} — Редактирование некоторых параметров товара</li>\r\n        <li>5. DELETE /goods/{goodId} — Удаление товара</li>\r\n    </ul>\r\n    <a href=\"https://only-to-top.ru/blog/programming/2019-11-06-rest-api-php.html\">only-to-top.ru</a>\r\n    <ul>\r\n        <li>\r\n            <b>Конечные точки в URL имя существительное, не глагол</b>\r\n            <ul>\r\n                <li>/farmers not getFarmers</li>\r\n                <li>/crops not getCrops</li>\r\n            </ul>\r\n        </li>\r\n        <li>\r\n            <b>Множественное число</b>\r\n            <ul>\r\n                <li>/farmers not farmer</li>\r\n                <li>/crops not crop</li>\r\n            </ul>\r\n        </li>\r\n        <li>\r\n            <b>Документация</b> это документация с перечисленными в ней конечными точками, и описывающая список операций\r\n            для каждой из них.\r\n        </li>\r\n        <li>\r\n            <b>Версия вашего приложения</b>\r\n            <ul>\r\n                <li>URI версии -host/v2/farmers,host/v1/farmers</li>\r\n                <li>\r\n                    Мультимедиа версии -информации в заголовке Content-Type: application/vnd.farmers.v1+json || Accept:\r\n                    application/vnd.farmers.v1+json\r\n                </li>\r\n            </ul>\r\n        </li>\r\n        <li>\r\n            <b>Пагинация</b>Отправка большого объема данных через HTTP не очень хорошая идея. Безусловно, возникнут\r\n            проблемы с производительностью, поскольку сериализация больших объектов JSON станет дорогостоящей. Best\r\n            practice является разбиение результатов на части, а не отправка всех записей сразу.\r\n        </li>\r\n        <li>\r\n            <b>Использование SSL</b> - SSL должен быть! Вы всегда должны применять SSL для своего REST приложения.\r\n            Доступ к вашему приложения будет осуществляется из любой точки мира, и нет никакой гарантии, что к нему\r\n            будет обеспечен безопасный доступ. С ростом числа инцидентов с киберпреступностью мы обязательно должны\r\n            обеспечить безопасность своему приложению.\r\n        </li>\r\n        <li>\r\n            <b>Эффективное использование кодов ответов HTTP</b>\r\n            <ul>\r\n                <li><b>GET</b> - Обычно используется для извлечения информации</li>\r\n                <li>\r\n                    <b>POST</b> -метод наиболее широко используется для создания ресурсов\r\n                </li>\r\n                <li>\r\n                    <b>PUT</b> -обновление наиболее широко используется для создания ресурсов\r\n                </li>\r\n                <li>\r\n                    <b>PATCH</b> - используется для частичного изменения ресурса\r\n                </li>\r\n                <li>\r\n                    <b>DELETE</b> - наиболее широко используется для удаление ресурса\r\n                </li>\r\n                <li>\r\n                    <b>HEAD</b> этот метод используется для извлечения метаданных, проверки наличия ресурса.\r\n                </li>\r\n            </ul>\r\n        </li>\r\n\r\n        <li><b>HTTP методы</b></li>\r\n        <li>что содержится в теле самого запроса</li>\r\n    </ul>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://habr.com/ru/post/351890/\">\r\n        https://habr.com/ru/post/351890/\r\n    </a>\r\n</div>\r\n\r\n<div id=\"http_codes\">\r\n    <ul>\r\n        <li>1xx Информирование о процессе передачи.</li>\r\n        <li>\r\n            2xx Информирование о случаях успешного принятия и обработки запроса клиента.\r\n        </li>\r\n        <li>\r\n            3xx Сообщает клиенту, что для успешного выполнения операции необходимо сделать другой запрос\r\n        </li>\r\n        <li>4xx Указание ошибок со стороны клиента.</li>\r\n        <li>5xx ошибка сервера</li>\r\n    </ul>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://developer.mozilla.org/ru/docs/Web/HTTP/Methods\">\r\n        https://developer.mozilla.org/ru/docs/Web/HTTP/Methods\r\n    </a>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://ru.wikipedia.org/wiki/HTTP\">\r\n        https://ru.wikipedia.org/wiki/HTTP\r\n    </a>\r\n</div>\r\n\r\n\r\n<div id=\"access_token\">\r\n    <p>\r\n        Oauth,tokens\r\n    </p>\r\n    <p>access token - ключ (обычно просто набор символов), предъявление которого является пропуском к защищенным\r\n        ресурсам. Обращение к ним в самом простом случае происходит по HTTPS с указанием в заголовках или в качестве\r\n        одного из параметров полученного access token\'а.\r\n    </p>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://habr.com/ru/company/mailru/blog/115163/\">\r\n        https://habr.com/ru/company/mailru/blog/115163/\r\n    </a>\r\n</div>\r\n\r\n<div id=\"refresh_token\">\r\n    <p>\r\n        Обычно, access token имеет ограниченный срок годности. Это может быть полезно, например, если он передается по\r\n        открытым каналам. Чтобы не заставлять пользователя проходить авторизацию после истечения срока действия access\r\n        token\'а, во всех перечисленных выше вариантах, в дополнение к access token\'у может возвращаться еще refresh\r\n        token. По нему можно получить access token с помощью HTTP-запроса, аналогично авторизации по логину и паролю.\r\n        Неограничено\r\n    </p>\r\n</div>\r\n\r\n<p><br></p>','api-rest-oauth-http-methods',1,7,9,'2021-09-30 16:57:02','2021-12-01 17:43:30');
INSERT INTO `infos`
VALUES (115, 'Архитектура',
        '<ul class=\"main_list\">\r\n    <li><a href=\"#auth\">Нам нужно отдавать файл только авторизованным пользователям. Как это сделать?</a></li>\r\n    <li><a href=\"#immutable_object\">Immutable object – в чем суть? Когда можно/нужно использовать?</a></li>\r\n    <li><a href=\"#microservices\">Микросервисная архитектура: Зачем и когда использовать? Какие сложности?</a></li>\r\n</ul>\r\n\r\n<div id=\"auth\">\r\n    <p>\r\n        header authorisation Bearer or check is userAuth by session\r\n    </p>\r\n</div>\r\n\r\n<div id=\"immutable_object\">\r\n    <p>\r\n        Неизменяемыми называются объекты, чьё состояние остаётся постоянным с момента их создания. Обычно такие объекты\r\n        очень просты.\r\n    </p>\r\n    При реализации неизменяемых объектов необходимо:\r\n    <ul>\r\n        <li>\r\n            Объявить класс как final, чтобы его нельзя было переопределить при добавлении методов, изменяющих внутреннее\r\n            состояние.\r\n        </li>\r\n        <li>\r\n            Объявить свойства как private, чтобы опять же их нельзя было изменить.\r\n        </li>\r\n        <li>\r\n            Избегать сеттеров и использовать конструктор для задания параметров.\r\n        </li>\r\n        <li>\r\n            Не хранить ссылки на изменяемые объекты или коллекции. Если вы внутри неизменяемого объекта храните\r\n            коллекцию, то она тоже должна быть неизменяемой.\r\n        </li>\r\n        <li>\r\n            Проверять, что, если вам нужно модифицировать неизменяемый объект, вы делали его копию, а не\r\n            переиспользовали существующий.\r\n        </li>\r\n    </ul>\r\n    <a target=\"_blank\" href=\" https://habr.com/ru/company/mailru/blog/301004/\" class=\"btn btn-secondary\">\r\n        https://habr.com/ru/company/mailru/blog/301004/ </a>\r\n</div>\r\n\r\n<div id=\"microservices\">\r\n    <a target=\"_blank\" href=\"https://habr.com/ru/company/raiffeisenbank/blog/346380/\" class=\"btn btn-secondary\">\r\n        https://habr.com/ru/company/raiffeisenbank/blog/346380/ </a> <a target=\"_blank\"\r\n                                                                        href=\"https://habr.com/ru/post/249183/\"\r\n                                                                        class=\"btn btn-secondary\">\r\n    https://habr.com/ru/post/249183/ </a> <a target=\"_blank\"\r\n                                             href=\"https://www.dataart.ru/news/microservices-kak-pravil-no-delat-i-kogda-primenyat/\"\r\n                                             class=\"btn btn-secondary\">\r\n    https://www.dataart.ru/news/microservices-kak-pravil-no-delat-i-kogda-primenyat/ </a> <a target=\"_blank\"\r\n                                                                                             href=\"https://proglib.io/p/microservices/\"\r\n                                                                                             class=\"btn btn-secondary\">\r\n    https://proglib.io/p/microservices/ </a>\r\n</div>\r\n\r\n<p><br></p>',
        'arxitektura', 1, 7, 8, '2021-09-30 17:15:37', '2021-09-30 17:18:49');
INSERT INTO `infos`
VALUES (116, 'Вопрос-ответ',
        '<ul class=\"main_list\">\r\n    <li><a href=\"#q1\">Если ты хочешь после каждой созданной задачи отправлять почту тому, на кого эту задачу поставили -\r\n        опиши свои действия.</a></li>\r\n    <li><a href=\"#q2\">Должны ли фигурировать в коде вызовы функции env()?</a></li>\r\n    <li><a href=\"#q3\">Зачем нужны параметры роутинга?</a></li>\r\n    <li><a href=\"#q4\">Как можно создать новый класс?</a></li>\r\n    <li><a href=\"#q5\">Если ты хочешь проверить может ли юзер изменять объект, как ты будешь это делать?(Authorization,\r\n        Policies)</a></li>\r\n    <li><a href=\"#q6\">Как можно кастомизировать ошибку валидации формы?</a></li>\r\n\r\n</ul>\r\n\r\n<div id=\"q1\">\r\n    <p>\r\n        Observer, Mail drivers, Queue\r\n    </p>\r\n</div>\r\n\r\n<div id=\"q2\">\r\n    <p>Нет</p>\r\n</div>\r\n\r\n<div id=\"q3\">\r\n    <p> захватить сегменты URI\r\n    </p>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://laravel.su/docs/8.x/routing\">\r\n        https://laravel.su/docs/8.x/routing </a>\r\n</div>\r\n\r\n<div id=\"q4\">\r\n    <ul>\r\n        <li>new Class</li>\r\n        <li>app(Class::class)</li>\r\n        <li>DI: __construct(Class $class)</li>\r\n    </ul>\r\n</div>\r\n<div id=\"q5\">\r\n    <a href=\"https://laravel.su/docs/8.x/authorization\" target=\"_blank\">https://laravel.su/docs/8.x/authorization</a>\r\n</div>\r\n<div id=\"q6\">\r\n    <p>Используя в form request метод messages: </p>\r\n    <pre><code class=\"php\">\r\npublic function messages()\r\n{\r\n    return [\r\n        \'title.required\' => \'A title is required\',\r\n        \'body.required\'  => \'A message is required\',\r\n    ];\r\n}\r\n</code>\r\n</pre>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://laravel.su/docs/8.x/validation\">\r\n        https://laravel.su/docs/8.x/validation </a>\r\n    <p>\r\n        При необходимости, вы можете использовать свои сообщения об ошибках вместо значений по умолчанию. Существует\r\n        несколько способов для указания кастомных сообщений. Во-первых, можно передать сообщения в качестве третьего\r\n        аргумента в метод Validator::make:\r\n    </p>\r\n    <pre><code class=\"php\">\r\n$messages = [\r\n    \'required\' => \'The :attribute field is required.\',\r\n];\r\n\r\n$validator = Validator::make($input, $rules, $messages);\r\n</code>\r\n</pre>\r\n    <p>\r\n        В этом примере :attribute будет заменен на имя проверяемого поля. Вы также можете использовать и другие\r\n        строки-переменные. Пример:\r\n    </p>\r\n    <pre><code class=\"php\">\r\n$messages = [\r\n    \'same\'    => \'The :attribute and :other must match.\',\r\n    \'size\'    => \'The :attribute must be exactly :size.\',\r\n    \'between\' => \'The :attribute must be between :min - :max.\',\r\n    \'in\'      => \'The :attribute must be one of the following types: :values\',\r\n];\r\n</code>\r\n</pre>\r\n    <p>\r\n        Иногда есть необходимость указать собственное сообщение для конкретного поля, это можно сделать с помощью\r\n        синтаксиса с точкой. Просто укажите имя атрибута и текст сообщения:\r\n    </p>\r\n    <pre><code class=\"php\">\r\n$messages = [\r\n    \'email.required\' => \'We need to know your e-mail address!\',\r\n];\r\n</code>\r\n</pre>\r\n    <p>\r\n        Также можно определять сообщения в файле локализации вместо того, чтобы передавать их в валидатор напрямую. Для\r\n        этого добавьте сообщения в массив custom файла локализации resources/lang/xx/validation.php.\r\n    </p>\r\n    <pre><code class=\"php\">\r\n\'custom\' => [\r\n\'email\' => [\r\n        \'required\' => \'We need to know your e-mail address!\',\r\n    ],\r\n],\r\n</code>\r\n</pre>\r\n    <p>\r\n        Если вы хотите, чтобы :attribute был заменен на кастомное имя, можно указать в массиве attributes файле\r\n        локализации resources/lang/xx/validation.php\r\n    </p>\r\n    <pre><code class=\"php\">\r\n\'attributes\' => [\r\n\'email\' => \'email address\',\r\n]\r\n</code>\r\n</pre>\r\n    \r\n</div>\r\n\r\n\r\n<p><br></p>',
        'laravel-vopros-otvet', 1, 41, 6, '2021-09-30 17:52:57', '2021-09-30 18:03:14');
INSERT INTO `infos`
VALUES (117, 'Модульное тестирование (Unit)',
        '<ul class=\"main_list\">\r\n    <li>\r\n        <a href=\"#phpunit\">Что такое PHPUnit?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#tdd\">Что такое TDD?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#mock_fixture_stub_fake\">Mock, Fixture, Stub, Fake - в чем разница?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#data-provider\">Для чего нужен Data Provider в PHPUnit?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#percent\">Что такое покрытие и как его считать? Процент покрытого кода покрытого тестами</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#source\">Источники</a>\r\n    </li>\r\n</ul>\r\n\r\n<div id=\"phpunit\">\r\n    <p>\r\n        PHPUnit – это система для юнит-тестирования приложений, написанных на языке PHP. <br> Идея юнит-тестирования\r\n        состоит в том, чтобы проверять на корректность небольшие участки больших программ – прогонять на некоторых\r\n        «хитрых» тестовых наборах данных.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"tdd\">\r\n    <p>\r\n        Test drive development сначало тесты потом код(разработка через тестирование)\r\n    </p>\r\n</div>\r\n\r\n<div id=\"mock_fixture_stub_fake\">\r\n    <p>\r\n        моки - Тестовые двойники,имитируют поведение. Тестирование функции,которая зависит от какого-то другого класса\r\n        или части программы и нам не важно что в этой части программы, поэтому эту зависимость мокаю чтобы проверить\r\n        работу нужного ф-ционала\r\n    </p>\r\n    <p>\r\n        стабы - заглушки,имитируют данные(поддменяет реализацию какой-то сущности)\r\n    </p>\r\n\r\n    <pre><code>\r\nclass StubTest extends TestCase\r\n{\r\n    public function testStub()\r\n    {\r\n        // Создать подставной объект для класса Observer, имитируя\r\n        // метод reportError()\r\n        $observer = $this-&gt;getMockBuilder(Observer::class)\r\n                         -&gt;setMethods([\'reportError\'])\r\n                         -&gt;getMock();\r\n\r\n        // Создать заглушку для класса SomeClass.\r\n        $stub = $this-&gt;createMock(SomeClass::class);\r\n\r\n        // Настроить заглушку.\r\n        $stub-&gt;method(\'doSomething\')\r\n             -&gt;willReturn(\'foo\');\r\n                ||\r\n                returnValue\r\n\r\n        // Вызов $stub-&gt;doSomething() теперь вернёт \'foo\'.\r\n        $this-&gt;assertSame(\'foo\', $stub-&gt;doSomething());\r\n    }\r\n}\r\n</code>\r\n</pre>\r\n    <p>Fake - фейковые данные</p>\r\n    <p>Фикстуры - написание кода для настройки тестового окружения в известное состояние, а затем возврат его в исходное\r\n        состояние, когда тест будет завершён <br> Но в phpunit моки могут и то и другое </p>\r\n</div>\r\n\r\n<div id=\"data-provider\">\r\n    <p>\r\n        Data Provider - Набор входных данных для тестирования\r\n    </p>\r\n    <pre><code>\r\n/**\r\n * @dataProvider additionProvider\r\n */\r\npublic function testAdd($a, $b, $expected)\r\n{\r\n    $this-&gt;assertSame($expected, $a + $b);\r\n}\r\n\r\npublic function additionProvider()\r\n{\r\n    return [\r\n        [0, 0, 0],\r\n        [0, 1, 1],\r\n        [1, 0, 1],\r\n        [1, 1, 3]\r\n    ];\r\n}\r\n</code>\r\n</pre>\r\n</div>\r\n\r\n<div id=\"percent\">\r\n    <p>\r\n        Процент покрытого кода тестами\r\n    </p>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://phpunit.readthedocs.io/ru/latest/code-coverage-analysis.html\">\r\n        https://phpunit.readthedocs.io/ru/latest/code-coverage-analysis.html\r\n    </a>\r\n</div>\r\n\r\n<div id=\"source\">\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://phpunit.readthedocs.io/ru/latest/test-doubles.html\">\r\n        https://phpunit.readthedocs.io/ru/latest/test-doubles.html\r\n    </a>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://phpunit.readthedocs.io/ru/latest/fixtures.html\">\r\n        https://phpunit.readthedocs.io/ru/latest/fixtures.html\r\n    </a>\r\n</div>\r\n\r\n<p><br></p>',
        'modulnoe-testirovanie-unit', 1, 42, 1, '2021-09-30 18:10:49', '2021-10-29 11:34:54');
INSERT INTO `infos`
VALUES (118, 'Функциональное тестирование',
        '<ul class=\"main_list\">\r\n    <li><a href=\"#codeception\">Что такое Codeception?</a></li>\r\n    <li><a href=\"#unit_vs_functional\">В чем отличие Unit-тестов от функциональных тестов</a></li>\r\n    <li><a href=\"#bdd\">В Что такое BDD?</a></li>\r\n    <li><a href=\"#selenium_web_driven\">Что такое Selenium WebDriver?</a></li>\r\n    <li><a href=\"#cest_codeception\">Что такое Cest в Codeception?</a></li>\r\n    <li><a href=\"#q1\">Как работать с зависимостями от внешних систем, например, чужого API или файловой системы? </a>\r\n    </li>\r\n</ul>\r\n\r\n<div id=\"codeception\">\r\n    <p>\r\n        Либа для тестов\r\n    </p>\r\n</div>\r\n\r\n<div id=\"unit_vs_functional\">\r\n    <p>\r\n        unit - определенный модуль(небольшие участки), функциональный - взаимосвязь модулей\r\n    </p>\r\n</div>\r\n\r\n<div id=\"bdd\">\r\n    <p>\r\n        BDD(Behavior-driven development) методология является расширением TDD в том смысле, что перед тем как написать\r\n        какой-либо тест необходимо сначала описать желаемый результат от добавляемой функциональности на\r\n        предметно-ориентированном языке. После того как это будет проделано, конструкции этого языка переводятся\r\n        специалистами или специальным программным обеспечением в описание теста.\r\n    </p>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://dou.ua/forums/topic/8897/\">\r\n        https://phpunit.readthedocs.io/ru/latest/code-coverage-analysis.html </a>\r\n</div>\r\n\r\n<div id=\"selenium_web_driven\">\r\n    <p>\r\n        Емуляция всего веб браузера\r\n    </p>\r\n</div>\r\n\r\n<div id=\"cest_codeception\">\r\n    <p>\r\n        ?\r\n    </p>\r\n</div>\r\n<div id=\"q1\">\r\n    <p>\r\n        ?\r\n    </p>\r\n</div>\r\n\r\n<p><br></p>',
        'funkcionalnoe-testirovanie', 1, 42, 2, '2021-09-30 18:20:30', '2021-09-30 18:27:56');
INSERT INTO `infos`
VALUES (119, 'Интеграционное тестирование',
        '<ul class=\"main_list\">\r\n    <li><a href=\"#q1\">Для чего нужно интеграционное тестирование?</a></li>\r\n    <li><a href=\"#q2\">Какими средствами можно проводить интеграционное тестирование?</a></li>\r\n    <li><a href=\"#q3\">Какие нюансы есть в проведении интеграционного тестирования на продакшене?</a></li>\r\n</ul>\r\n\r\n<div id=\"q1\">\r\n    <p>\r\n        Интеграция со стронними сервисами\r\n    </p>\r\n</div>\r\n\r\n<div id=\"q2\">\r\n    <p>\r\n        ?\r\n    </p>\r\n</div>\r\n\r\n<div id=\"q3\">\r\n    <p>\r\n        ?\r\n    </p>\r\n</div>\r\n\r\n<p><br></p>',
        'integracionnoe-testirovanie', 1, 42, 3, '2021-09-30 18:29:01', '2021-09-30 18:32:56');
INSERT INTO `infos`
VALUES (120, 'Нагрузочное тестирование',
        '<ul class=\"main_list\">\r\n    <li><a href=\"#q1\">Что такое нагрузочное тестирование, и для чего оно нужно?</a></li>\r\n    <li><a href=\"#q2\">Какими единицами можно расчитывать нагрузку?</a></li>\r\n    <li><a href=\"#q3\">Какие средства для проведения нагрузочного тестирования вы знаете</a></li>\r\n    <li><a href=\"#q3\">Как провести нагрузочное тестирование таким образом, чтобы не уронить сервис, работающий в\r\n        продакшене?</a></li>\r\n</ul>\r\n\r\n<div id=\"q1\">\r\n    <p>\r\n        Тестирования производительности, сбор показателей и определение производительности и времени отклика\r\n    </p>\r\n</div>\r\n\r\n<div id=\"q2\">\r\n    <ul>\r\n        <li>Время выполнения запроса</li>\r\n        <li>Потребление оперативной памяти</li>\r\n        <li> Работа с дисковой подсистемой</li>\r\n    </ul>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\"\r\n       href=\"https://ru.wikipedia.org/wiki/%D0%9D%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BE%D1%87%D0%BD%D0%BE%D0%B5_%D1%82%D0%B5%D1%81%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5\">\r\n        https://ru.wikipedia.org/wiki/%D0%9D%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BE%D1%87%D0%BD%D0%BE%D0%B5_%D1%82%D0%B5%D1%81%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5 </a>\r\n\r\n</div>\r\n\r\n<div id=\"q3\">\r\n    <p>\r\n        JMeter ,HP LoadRunner\r\n    </p>\r\n</div>\r\n<div id=\"q4\">\r\n    <p>\r\n        Сделать копию и погонять, увеличивать нагрузку и наблюдать за ресурсами сервера\r\n    </p>\r\n</div>\r\n\r\n<p><br></p>',
        'nagruzocnoe-testirovanie', 1, 42, 4, '2021-09-30 18:29:24', '2021-09-30 18:37:05');
INSERT INTO `infos`
VALUES (122, 'Git',
        '<ul class=\"main_list\">\r\n    <li><a href=\"#introduction\">Введение</a></li>\r\n    <li><a href=\"#branch_vs_pull_request\">Чем отличается branch от pull request</a></li>\r\n    <li><a href=\"#cancel_commit\">Какими способами можно отменить предыдущий коммит?</a></li>\r\n    <li><a href=\"#pull_vs_fetch\">Зачем нужны команды pull и fetch? В чем разница между ними?</a></li>\r\n    <li><a href=\"#commit_vs_push\">В чем разница между commit и push?</a></li>\r\n    <li><a href=\"#reset_commit\">Какие типы reset?</a></li>\r\n    <li><a href=\"#cherry_pick\">Что такое cherry-pick, и как его использовать?</a></li>\r\n    <li><a href=\"#reset_revert_rebase\">git reset, git revert, git rebase</a></li>\r\n    <li><a href=\"#stash\">Когда мне стоит использовать git stash</a></li>\r\n    <li><a href=\"#merge_vs_rebase\">В чем разница между командами merge и rebase? Что лучше использовать?</a></li>\r\n    <li><a href=\"#rebase\">Rebase: руководство по использованию</a></li>\r\n</ul>\r\n\r\n<div id=\"introduction\">\r\n    <p>Есть 3 зоны:</p>\r\n    <ul>\r\n        <li>рабочая директория - untracked</li>\r\n        <li>проиндексированная - git add file</li>\r\n        <li>репозиторий</li>\r\n    </ul>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://learn.javascript.ru/screencast/git#basics-first-commit\">\r\n        https://learn.javascript.ru/screencast/git#basics-first-commit </a>\r\n</div>\r\n\r\n<div id=\"branch_vs_pull_request\">\r\n    <p>\r\n        Branch - ветка, pull request -запрос на применения изменение\r\n    </p>\r\n</div>\r\n\r\n<div id=\"cancel_commit\">\r\n    <p>\r\n        git --amend, git reset , git revert commit\r\n    </p>\r\n</div>\r\n\r\n<div id=\"pull_vs_fetch\">\r\n    <p>\r\n        При использовании fetch, git собирает все коммиты из целевой ветки, которых нет в текущей ветке, и сохраняет их\r\n        в локальном репозитории. Однако он не сливает их в текущую ветку. <br> Pull обновить и применить fetch-обновить.\r\n        <br> Грубо говоря, по дефолту git pull — это шоткод для последовательности двух команд: git fetch (получение\r\n        изменений с сервера) и git merge (сливание в локальную копию).\r\n    </p>\r\n</div>\r\n\r\n<div id=\"commit_vs_push\">\r\n    <p>\r\n        commit - Запись изменений в репозиторий <br> push - отправить коммиты на удаленный репозиторий\r\n    </p>\r\n</div>\r\n\r\n<div id=\"reset_commit\">\r\n    <ul>\r\n        <li><code>reset --hard LOG_HASH|HEAD</code> - открывается до рабочей директории коммита, хеда</li>\r\n        <li><code>reset --soft LOG_HASH|HEAD</code> - открывается до коммита, не трогая рабочую директорию и\r\n            проидексированные файлы\r\n        </li>\r\n        <li><code>reset --mixed LOG_HASH|HEAD</code> - открывается до коммита, не трогая рабочую директорию (без git\r\n            add.)\r\n        </li>\r\n    </ul>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://learn.javascript.ru/screencast/git#reset-mixed\">\r\n        https://learn.javascript.ru/screencast/git#reset-mixed </a>\r\n</div>\r\n\r\n<div id=\"cherry_pick\">\r\n    <p>\r\n        Копирование коммитов - <code>git cherry-pick COMMIT_HASH</code>\r\n    </p>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://learn.javascript.ru/screencast/git#copy-cherry-pick\">\r\n        https://learn.javascript.ru/screencast/git#copy-cherry-pick </a>\r\n</div>\r\n\r\n<div id=\"reset_revert_rebase\">\r\n    <ul>\r\n        <li><code>git reset</code> - отмена коммита</li>\r\n        <li><code>git rebase</code> - отредактирование историю разработки</li>\r\n        <li><code>git revert</code> - коммит с противополжными изменениями коммита(смотрит изменения в указаном коммите\r\n            и отменяет изменения еще одним коммитом)\r\n        </li>\r\n    </ul>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://learn.javascript.ru/screencast/git#revert-starting-video\">\r\n        https://learn.javascript.ru/screencast/git#revert-starting-video </a>\r\n</div>\r\n\r\n<div id=\"stash\">\r\n    <p>\r\n        stash - как корзина на винде удаляем и затем можно восстановить\r\n    </p>\r\n</div>\r\n\r\n<div id=\"merge_vs_rebase\">\r\n    <ul>\r\n        <li><code>merge</code>- слияние с сохраненной историей</li>\r\n        <li><code>rebase</code> - можно переписывать историю объединить,редактировать коммиты.</li>\r\n    </ul>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://learn.javascript.ru/screencast/git#move-rebase\">\r\n        https://learn.javascript.ru/screencast/git#move-rebase </a>\r\n</div>\r\n<div id=\"rebase\">\r\n    <ul>\r\n        <li>\r\n            <b>pick,p</b> - скопировать коммит\r\n        </li>\r\n        <li>\r\n            <b>reword,r</b> - изменить сообщение коммита(в редакторе который ребейз вызовет позже)\r\n        </li>\r\n        <li>\r\n            <b>edit,e</b> - разширенное возможность по редактированию коммита(ребейз копирует коммиты по очереди,а edit\r\n            заставить ребейз остановиться после копи етого коммита и можно будет редактировать)\r\n        </li>\r\n        <li>\r\n            <b>squash,s</b> - изменения слить с предыдущим(обьединить). Не должен быть в первой строке\r\n        </li>\r\n        <li>\r\n            <b>fixup,f</b> -тоже что и squash, но сообщение коммита при етом отбрасывается\r\n        </li>\r\n        <li>\r\n            <b>exec,f</b> - -x < make test>\r\n        </li>\r\n        <li>\r\n            <b>drop,d</b> - пропустить коммит\r\n        </li>\r\n    </ul>\r\n</div>\r\n<p><br></p>',
        'git', 1, 48, 1, '2021-10-21 14:22:47', '2021-10-21 15:00:07');
INSERT INTO `infos`
VALUES (123, 'Composer',
        '<ul class=\"main_list\">\r\n    <li>\r\n        <a href=\"#introduction\">Что такое Composer?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#require_vs_dev\">Чем отличается require от require-dev</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#install_update\">Что делает команда Install, Update и какие файлы ей нужны для работы?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#composer_lock\">Зачем нужен файл composer.lock?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#semver\">Что такое semver (семантическое версионирование)?</a>\r\n    </li>\r\n</ul>\r\n<div id=\"introduction\">\r\n    <p>\r\n        Composer - это менеджер зависимостей для языка программирования PHP,которая работает через консоль (терминал).\r\n    </p>\r\n</div>\r\n<div id=\"require_vs_dev\">\r\n    <p>\r\n        В require добавляются зависимости, которые необходимы для работы пакета. В require-dev добавляются зависимости,\r\n        которые нужны для разработки самого пакета. Для режима разработки, мы просто запускаем: <code>composer\r\n        install</code> - зависимости из require и require-dev будут обработаны и установлены.\r\n\r\n        Для продакшен режима, мы используем опцию --no-dev, вот так <code>composer install --no-dev</code> в этом\r\n        случае, будут установлены только зависимости из раздела require.\r\n\r\n    </p>\r\n</div>\r\n\r\n<div id=\"install_update\">\r\n    <p>\r\n        Install смотрит сначало в composer.lock затем composer.json <br> Update в composer.json\r\n    </p>\r\n</div>\r\n\r\n<div id=\"composer_lock\">\r\n    <p>\r\n        Записываются текущие версии жестко! Версии мы можем жестко указать прям в composer.json.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"semver\">\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://semver.org/lang/ru/\"> https://semver.org/lang/ru/</a>\r\n</div>\r\n<p><br></p>',
        'composer', 1, 48, 2, '2021-10-21 15:00:33', '2021-10-26 13:16:31');
INSERT INTO `infos`
VALUES (124, 'Nginx ,PHP-FPM , Apache, Virtual hosts',
        '<ul class=\"main_list\">\r\n    <li>\r\n        <a href=\"#virtual_hosts\">Зачем нужны virtual hosts?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#apache_vs_nginx\">Какие принципиальные отличия между apache и nginx?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#phpfpm\">Зачем нужен PHP-FPM?</a>\r\n    </li>\r\n     <li>\r\n        <a href=\"#nginx_php-fpm\">Nginx и PHP-FPM</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#php_s\">Встроенный в PHP вебсервер (php -S). Для чего он нужен?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#500_error\">HTTP — 500 Internal Server Error . Последованность поиска проблемы</a>\r\n    </li>\r\n</ul>\r\n\r\n<div id=\"virtual_hosts\">\r\n    <p>\r\n        добавление локальных хостов\r\n    </p>\r\n</div>\r\n\r\n<div id=\"apache_vs_nginx\">\r\n    <ul>\r\n        <li> Apache на каждый запрос от клиента создает отдельный процесс. Выглядит это следующим образом - клиент\r\n            отправляет запрос, веб-сервер создает отдельный процесс на этот запрос, отвечает клиенту и блокирует процесс\r\n            до тех пор, пока клиент не закроет соединение. Процесс в любой ОС требует памяти и ресурсов, а когда\r\n            процессов становиться неприлично много, обработка соединений неприлично замедляется, память кончается, CPU\r\n            растет.\r\n        </li>\r\n        <li>\r\n            Apache можно конфигурировать обработку соединений на уровне директорий. Делается это с помощью скрытого\r\n            файла .htaccess, позволяющего настраивать права доступа, авторизацию, аутентификацию, политику кеширования и\r\n            др правила в отличии от Nginx\r\n        </li>\r\n        <li>\r\n            Nginx создан, чтобы работать и в качестве веб-сервера, и в качестве прокси-сервера\r\n        </li>\r\n        <li>nginx - примерно в 2.5 раза быстрее отдает статику, чем Apache</li>\r\n        <li>nginx Легковесный и высокопроизводительный, использует меньше памяти, чем Apache и может лучше обрабатывать\r\n            конкурентные запросы\r\n        </li>\r\n        <li>На nginx, каждый виртуалхост будет выполняться в отдельном процессе и, соответственно, может использовать\r\n            разные версии php (python/ruby/perl и др.). Каждый процесс может иметь свою собственную независимую\r\n            конфигурацию.\r\n        </li>\r\n    </ul>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://ekaterinagoltsova.github.io/posts/apache-vs-nginx/\">\r\n        https://ekaterinagoltsova.github.io/posts/apache-vs-nginx/\r\n    </a>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://habr.com/ru/post/267721/\">\r\n        https://habr.com/ru/post/267721/\r\n    </a>\r\n</div>\r\n\r\n<div id=\"phpfpm\">\r\n    <p>\r\n        простой, легкий и быстрый менеджер процессов для взаимодействия веб-сервера с PHP\r\n    </p>\r\n    <a target=\"_blank\" class=\"btn btn-secondary\" href=\"https://perfect-inc.com/blog/nginx-php-fpm-i-chto-eto-voobshche/\">\r\n        https://perfect-inc.com/blog/nginx-php-fpm-i-chto-eto-voobshche/\r\n    </a>\r\n</div>\r\n<div id=\"nginx_php-fpm\">\r\n    <p>\r\n        В Linux существует два способа связи между nginx и php-fpm: сокет tcp и сокет unix.\r\n\r\n        Преимущество сокета tcp в том, что его можно использовать на разных серверах. Если связка nginx/php работает на\r\n        одном сервере, лучше использовать unix-сокеты. Поскольку сокетам Unix не нужно проходить через стек сетевого\r\n        протокола, не нужно упаковывать и распаковывать, вычислять контрольные суммы, поддерживать серийные номера и\r\n        ответы и т. Д., Они просто копируют данные прикладного уровня из одного процесса в другой. Следовательно, его\r\n        эффективность выше, чем у сокета tcp, что может уменьшить ненужные накладные расходы tcp. Однако сокеты unix\r\n        работают нестабильно, когда возникает высокий уровень параллелизма. Когда количество подключений резко\r\n        возрастает, создается большое количество долгосрочных кэшей. Без поддержки протоколов, ориентированных на\r\n        подключение, большие пакеты данных могут пойти не так, не возвращая исключения. Протокол с установлением\r\n        соединения, такой как tcp, может лучше гарантировать правильность и целостность связи.\r\n    </p>\r\n</div>\r\n<div id=\"php_s\">\r\n    <p>\r\n        встроенный сервер, созданный специально для разработки и тестирования. Теперь вы можете писать и тестировать\r\n        свой код не имея полноценного веб-сервера\r\n    </p>\r\n    <pre><code>\r\n     $ cd ~/public_html\r\n     $ php -S localhost:8000\r\n\r\n     Кроме того,. вы может указать имя конкретного файла-роутера. Например:\r\n     php -S >localhost or your public IP>:8080 -t /home/ec2-user/public public/index.php\r\n    </code>\r\n</pre>\r\n</div>\r\n<div id=\"500_error\">\r\n    <p>\r\n        Ошибка означает обычно проблему:\r\n    </p>\r\n    <ul>\r\n        <li>настройка веб-сервера - для решение нужно глянуть логи <code>/var/log/ ..</code></li>\r\n        <li>В работе скрипта <code>display_errors =1; error_log = /var/log/php/error.log</code></li>\r\n        <li>Неправильные права доступа - для решение нужно глянуть логи php (для папок рекомендуется значение 755, для\r\n            скриптов — 600, а для других файлов — 644)\r\n        </li>\r\n        <li>Нехватка оперативной памяти - для решение нужно глянуть free -uG</li>\r\n        <li>Превышено время ожидания: возможно, истекло время ожидания ответа от PHP или другого серверного скрипта. Это\r\n            происходит из-за того, что недоступен определённый ресурс или коде была допущена ошибка, запускающая\r\n            бесконечный цикл.\r\n        </li>\r\n        <li>проблемы з бд</li>\r\n    </ul>\r\n</div>\r\n\r\n<p><br></p>',
        'nginx-php-fpm-apache-virtual-hosts', 1, 49, 1, '2021-10-21 17:05:30', '2021-12-01 21:18:04');
INSERT INTO `infos`
VALUES (125, 'XSS, CSRF, Brute-force',
        '<ul class=\"main_list\">\r\n    <li>\r\n        <a href=\"#xss\">Что такое уязвимость XSS? Как бороться?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#sql_injection\">Что такое SQL-инъекция? Как ее предотвратить?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#csrf\">Что такое CSRF? Как бороться?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#save_pass\">Как правильно хранить пароли? Чем плох md5?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#brute_force\">Что такое Brute-force, и как с ним бороться</a>\r\n    </li>\r\n</ul>\r\n\r\n<div id=\"xss\">\r\n    <p>\r\n        Cross Site Sсriрting - Яваскрипты атака. Ее суть довольно проста, злоумышленнику удается внедрить на страницу\r\n        JavaScript-код, который не был предусмотрен разработчиками. Этот код будет выполняться каждый раз, когда жертвы\r\n        (обычные пользователи) будут заходить на страницу приложения, куда этот код был добавлен.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"sql_injection\">\r\n    <p>\r\n        SQL-инъекция - внедрение в данные произвольного SQL кода. Нужно экранировать (mysql_real_escape_string)\r\n    </p>\r\n</div>\r\n\r\n<div id=\"csrf\">\r\n    <p>\r\n        Сross Site Request Forgery — «межсайтовая подделка запроса», если жертва заходит на сайт, созданный\r\n        злоумышленником, от её лица тайно отправляется запрос на другой сервер. Для предотвращения каждый раз обновлять\r\n        токен CSRF\r\n    </p>\r\n</div>\r\n\r\n<div id=\"save_pass\">\r\n    <p>\r\n        md5(md5($pass).md5($salt)) мдп5-перебор\r\n    </p>\r\n    <pre><code>\r\n$hash = crypt(\'password\'); // crypt генерирует соль и хэширует, используя алгоритм по умолчанию\r\n// crypt извлекает соль из существующего хэша и хэширует входящий пароль с её использованием\r\nif (crypt($password, $hash) == $hash) {\r\n   // Пароль верен\r\n}\r\n\r\n|| hash_hmac ( string $algo , string $data , string $key [, bool $raw_output = FALSE ] ) : string\r\n//algo - Имя выбранного алгоритма хеширования (например, \"md5\", \"sha256\", \"haval160,4\" и т.д.)\r\n//key - Общий секретный ключ, используемый для генерации HMAC хеш-кода.\r\n</code>\r\n</pre>\r\n</div>\r\n\r\n<div id=\"brute_force\">\r\n    <p>\r\n        Перебор, количество считать\r\n    </p>\r\n</div>\r\n\r\n<p><br></p>',
        'xss-csrf-brute-force', 1, 50, 1, '2021-10-21 17:12:58', '2021-12-01 21:26:01');
INSERT INTO `infos`
VALUES (126, 'Redis && memcached',
        '<ul class=\"main_list\">\r\n  <li>\r\n    <a href=\"#memcache_introduce\">Что такое Memcache?</a>\r\n  </li>\r\n  <li>\r\n    <a href=\"#redis_introduce\">Что такое Redis?Преимущества Redis?</a>\r\n  </li>\r\n  <li>\r\n    <a href=\"#cache_lenght\">Стоит ли в кеш ложить данные размером в 2 МБ?</a>\r\n  </li>\r\n  <li>\r\n    <a href=\"#redis_vs_memcache\">В чем принципиальное отличие между Redis и Memcached? Где нам лучше\r\n      использовать Redis, а где Memcached?\r\n    </a>\r\n  </li>\r\n  <li>\r\n    <a href=\"#cache_used\">Общее применение</a>\r\n  </li>\r\n</ul>\r\n<div id=\"memcache_introduce\">\r\n  <p>Mемкеш -демон который берет памят,размещает строки(байты)</p>\r\n  <p>\r\n    что умеет: считать записать по ключу. Надежности нет,демон или сервер\r\n    перезагрузился - данные умерли\r\n  </p>\r\n  <p>\r\n    Какие плюсы: производительность, сотни тысяч операций в секунду.\r\n    Незначительного логирования.\r\n  </p>\r\n</div>\r\n<div id=\"redis_introduce\">\r\n  <p>\r\n    Redis (расшифровывается как Remote Dictionary Server) – это быстрое\r\n    хранилище данных типа «ключ‑значение», которая хранит данные в памяти.\r\n    Основные преимущества:\r\n  </p>\r\n  <ul>\r\n    <li>\r\n      Производительность - Все данные Redis хранятся в памяти, что обеспечивает\r\n      низкую задержку и высокую пропускную способность доступа к данным. В\r\n      отличие от традиционных баз данных, хранилища данных в памяти не требуют\r\n      перемещения на диск, что сокращает задержку ядра до микросекунд. Благодаря\r\n      этому хранилища данных в памяти могут многократно увеличивать количество\r\n      выполняемых операций и сокращать время отклика. В результате\r\n      обеспечивается чрезвычайно высокая производительность. Операции чтения и\r\n      записи в среднем занимают менее миллисекунды, скорость работы достигает\r\n      миллионов операций в секунду.\r\n    </li>\r\n    <li>\r\n      Гибкие структуры данных - Redis поддерживает огромное разнообразие\r\n      структур данных, позволяющее удовлетворить потребности разнообразных\r\n      приложений. Типы данных Redis включают:\r\n      <ul>\r\n        <li>строки – текстовые или двоичные данные размером до 512 МБ;</li>\r\n        <li>списки – коллекции строк, упорядоченные в порядке добавления;</li>\r\n        <li>\r\n          множества – неупорядоченные коллекции строк с возможностью\r\n          пересечения, объединения и сравнения с другими типами множеств;\r\n        </li>\r\n        <li>сортированные множества – множества, упорядоченные по значению;</li>\r\n        <li>\r\n          хэш‑таблицы – структуры данных для хранения списков полей и значений;\r\n        </li>\r\n        <li>\r\n          битовые массивы – тип данных, который дает возможность выполнять\r\n          операции на уровне битов;\r\n        </li>\r\n        <li>\r\n          структуры HyperLogLog – вероятностные структуры данных, служащие для\r\n          оценки количества уникальных элементов в наборе данных;\r\n        </li>\r\n        <li>потоки – очереди сообщений со структурой журналов данных;</li>\r\n        <li>\r\n          пространственные данные – записи карт на основе долготы/широты,\r\n          «поблизости».\r\n        </li>\r\n      </ul>\r\n    </li>\r\n    <li>\r\n      Простота и удобство - Redis позволяет писать меньше строк для хранения,\r\n      использования данных и организации доступа к данным в приложениях\r\n    </li>\r\n    <li>\r\n      Межпроцесорные взаимодействия -разные процессы либо сервера,которые будут\r\n      доступные между ними\r\n    </li>\r\n    <li>\r\n      Масштабирование: Репликация и постоянное хранение - В Redis применяется\r\n      архитектура узлов «ведущий‑подчиненный» и поддерживается асинхронная\r\n      репликация, при которой данные могут копироваться на несколько подчиненных\r\n      серверов. Это обеспечивает как улучшенные характеристики чтения (так как\r\n      запросы могут быть распределены между серверами), так и ускоренное\r\n      восстановление в случае сбоя основного сервера. Для обеспечения\r\n      постоянного хранения Redis поддерживает снимки состояния на момент времени\r\n      (копирование наборов данных Redis на диск).\r\n    </li>\r\n  </ul>\r\n</div>\r\n<div id=\"cache_lenght\">\r\n  <p>\r\n    нет,не поддерживает,макс 1 мб\r\n  </p>\r\n</div>\r\n<div id=\"redis_vs_memcache\">\r\n  <p>\r\n    REDIS - Удобней,масшатибируемый,раззные данные,надежность\r\n  </p>\r\n  <ul>\r\n    <li>\r\n      мемкеш- сет,гет,делить,и только стр ложить.Если память полная -вытисняет\r\n    </li>\r\n    <li>\r\n      Редис — типы данных разные ложить, периодически делать снепшот и и\r\n      скидывает на диск,макс можно потерять запись за n сек. Также&nbsp; может\r\n      логировать каждую операцию записи, затем производить запись и в слчая сбоя\r\n      может восстановить. Замедлить но надежность\r\n    </li>\r\n  </ul>\r\n</div>\r\n<div id=\"cache_used\">\r\n  <ul>\r\n    <li>\r\n      кеширование данных\r\n    </li>\r\n    <li>\r\n      хранение данных сессий. Это дает увеличение производитольности и\r\n      отсутствие блокировок\r\n    </li>\r\n    <li>\r\n      очереди задач\r\n    </li>\r\n    <li>\r\n      многовенные сортируммые множества\r\n    </li>\r\n    <li>\r\n      подключать сервера(репликация) - рассходиться по серверам\r\n    </li>\r\n    <li>\r\n      мониторинг процессов. НА практике: 5-10 тыс. файлов - скармливаем воркерам\r\n      и нужна видеть процесс завис или медленно работает. Была организованная\r\n      очередь. 1 пхп сервис добавлял инфу о файлах готовых к отработки , некий\r\n      процес,воркер, брал и выполнял процесс и ложил инфу в редис что взял в\r\n      работу и на какой стадии. Были требование по количеству воркеров. Как\r\n      понять что не завис? редис сообщал что я сдесь и я работаю, инкременты\r\n      файлов\r\n    </li>\r\n  </ul>\r\n</div>',
        'redis-memcached', 1, 48, 1, '2021-10-21 17:26:26', '2023-02-07 23:12:33');
INSERT INTO `infos`
VALUES (127, 'Other',
        '<ul class=\"main_list\">\r\n    <li>\r\n        <a href=\"#ssh\">SSH протокол</a>\r\n    </li>\r\n</ul>\r\n\r\n<div id=\"redis_vs_memcache\">\r\n    <p>\r\n        SSH-протокол (от англ. Secure Shell) — криптографический сетевой протокол, предназначенный для удаленного\r\n        доступа к операционной системе и осуществления безопасного удаленного управления в рамках незащищенной сети\r\n        (например, через интернет).\r\n\r\n        SSH обеспечивает защищённый канал связи между клиентом и сервером, через который можно передавать данные,\r\n        работать в командной строке, удаленно запускать программы, в том числе графические.\r\n\r\n        Для создания SSH подключения клиент должен инициировать соединение с сервером, обеспечив защищенное соединение и\r\n        подтвердив свой идентификатор (проверяются соответствие идентификатора с предыдущими записями, хранящимися в\r\n        RSA-файле, и личные данные пользователя, необходимые для аутентификации).\r\n    </p>\r\n</div>\r\n\r\n<p><br></p>',
        'other', 1, 48, 4, '2021-10-26 12:43:29', '2021-10-26 12:58:20');
INSERT INTO `infos`
VALUES (129, 'Что нового в PHP 7.*',
        '<ul class=\"main_list\">\r\n  <li>\r\n    <a href=\"#changes_php_7_0\"> Новое в php 7.0</a>\r\n  </li>\r\n  <li>\r\n    <a href=\"#changes_php_7_1\"> Новое в php 7.1</a>\r\n  </li>\r\n  <li>\r\n    <a href=\"#changes_php_7_2\"> Новое в php 7.2</a>\r\n  </li>\r\n  <li>\r\n    <a href=\"#changes_php_7_3\"> Новое в php 7.3</a>\r\n  </li>\r\n  <li>\r\n    <a href=\"#changes_php_7_4\"> Новое в php 7.4</a>\r\n  </li>\r\n  <li>\r\n    <a href=\"#changes_php_8_0\"> Новое в php 8.0</a>\r\n  </li>\r\n  <li>\r\n    <a href=\"#changes_php_8_1\"> Новое в php 8.1</a>\r\n  </li>\r\n</ul>\r\n\r\n<div id=\"changes_php_7_0\">\r\n  <p>\r\n    Новое в php 7.0 (\r\n    <a target=\"_blank\" href=\"https://habr.com/ru/post/280071/\">хабр</a>\r\n    /\r\n    <a target=\"_blank\" href=\"https://www.php.net/manual/ru/migration70.new-features.php\">документация</a>\r\n    )\r\n  </p>\r\n  <ul>\r\n    <li>Объявления возвращаемых значений</li>\r\n    <li>\r\n      Оператор объединения с null\r\n      <pre><code>$username = $_GET[\'user\'] ?? \'nobody\';\r\n// Это идентично следующему коду:\r\n$username = isset($_GET[\'user\']) ? $_GET[\'user\'] : \'nobody\';</code></pre>\r\n    </li>\r\n    <li>Определение констант массивов с помощью define()</li>\r\n    <li>Анонимные классы</li>\r\n    <li>Групповые объявления use</li>\r\n    <li>Выражение return в генераторах</li>\r\n  </ul>\r\n</div>\r\n\r\n<div id=\"changes_php_7_1\">\r\n  <p>\r\n    Новое в php 7.1 (\r\n    <a target=\"_blank\" href=\"https://habr.com/ru/post/309858/\">хабр</a>\r\n    /\r\n    <a target=\"_blank\" href=\"https://www.php.net/manual/ru/migration71.new-features.php\">документация</a>\r\n    )\r\n  </p>\r\n  <ul>\r\n    <li>Обнуляемые типы <code>?string</code></li>\r\n    <li>Ничего не возвращающие функции<code>:void</code></li>\r\n    <li>Видимость констант класса</li>\r\n    <li>Псевдотип iterable</li>\r\n    <li>\r\n      Обработка нескольких исключений в одном блоке catch\r\n      <code>atch (FirstException | SecondException $e)</code>\r\n    </li>\r\n  </ul>\r\n</div>\r\n\r\n<div id=\"changes_php_7_2\">\r\n  <p>\r\n    Новое в php 7.2 (\r\n    <a target=\"_blank\" href=\"https://habr.com/ru/company/avito/blog/335584/\">хабр</a>\r\n    /\r\n    <a target=\"_blank\" href=\"https://www.php.net/manual/ru/migration72.new-features.php\">документация</a>\r\n    )\r\n  </p>\r\n  <ul>\r\n    <li>Новый тип object</li>\r\n    <li>\r\n      Разрешено переопределение абстрактных методов(у наследника можно добавить\r\n      возвращаемый тип )\r\n    </li>\r\n    <li>\r\n      Sodium криптографическая библиотека для шифрования, дешифрования, подписи,\r\n      хеширования паролей и многого другого теперь является основным модулем\r\n    </li>\r\n    <li>\r\n      Типы параметров из переопределённых методов и реализаций интерфейсов\r\n      теперь могут быть опущены\r\n    </li>\r\n  </ul>\r\n</div>\r\n\r\n<div id=\"changes_php_7_3\">\r\n  <p>\r\n    Новое в php 7.3 (\r\n    <a target=\"_blank\" href=\"https://habr.com/ru/post/422507/\">хабр</a>\r\n    /\r\n    <a target=\"_blank\" href=\"https://www.php.net/manual/ru/migration73.new-features.php\">документация</a>\r\n    )\r\n  </p>\r\n  <ul>\r\n    <li>\r\n      Добавлено новое исключение CompileError, которое наследуется от\r\n      ParseError.\r\n    </li>\r\n  </ul>\r\n</div>\r\n\r\n<div id=\"changes_php_7_4\">\r\n  <p>\r\n    Новое в php 7.4 (\r\n    <a target=\"_blank\" href=\"https://habr.com/ru/company/funcorp/blog/454410/\">хабр</a>\r\n    /\r\n    <a target=\"_blank\" href=\"https://www.php.net/manual/ru/migration74.new-features.php\">документация</a>\r\n    )\r\n  </p>\r\n  <ul>\r\n    <li>Типизированные свойства<code>public string $str</code></li>\r\n    <li>Стрелочные функции</li>\r\n    <li>\r\n      Присваивающий оператор объединения с null\r\n      <pre><code class=\"php\">\r\n$array[\'key\'] ??= computeDefault();\r\n// примерно то же самое\r\nif (!isset($array[\'key\'])) {\r\n    $array[\'key\'] = computeDefault();\r\n}</code></pre>\r\n    </li>\r\n    <li>\r\n      Распаковка внутри массивов\r\n      <pre><code class=\"php\">\r\n$parts = [\'apple\', \'pear\'];\r\n$fruits = [\'banana\', \'orange\', ...$parts, \'watermelon\'];\r\n// [\'banana\', \'orange\', \'apple\', \'pear\', \'watermelon\'];</code></pre>\r\n    </li>\r\n    <li>Выбрасывание исключений из метода __toString() теперь разрешено</li>\r\n    <li>Добавлена поддержка предварительной загрузки кода OPCACHE</li>\r\n    <li>Пользовательская сериализация объектов</li>\r\n  </ul>\r\n</div>\r\n<div id=\"changes_php_8_0\">\r\n  <p>\r\n    Новое в php 8.0 (\r\n    <a target=\"_blank\" href=\"https://www.php.net/releases/8.0/ru.php\">документация</a>\r\n    )\r\n  </p>\r\n  <ul>\r\n    <li>Именованные аргументы&nbsp;<pre class=\"hljs linenums\"><code class=\"language-php\">htmlspecialchars($string, double_encode: false);</code></pre></li>\r\n    <li>Объявление свойств в конструкторе&nbsp;<pre class=\"hljs linenums\"><code class=\"language-php\">class Point {\r\n  public function __construct(\r\n    public float $x = 0.0,\r\n    public float $y = 0.0,\r\n    public float $z = 0.0,\r\n  ) {}\r\n}</code></pre></li>\r\n    <li>Тип Union&nbsp;<pre class=\"hljs linenums\"><code class=\"language-php\">class Number {\r\n  public function __construct(\r\n    private int|float $number\r\n  ) {}\r\n}</code></pre></li>\r\n    <li>Выражение Match&nbsp;<pre class=\"hljs linenums\"><code class=\"language-php\">echo match (8.0) {\r\n  \'8.0\' =&gt; \"О нет!\",\r\n  8.0 =&gt; \"То, что я и ожидал\",\r\n};\r\n//&gt; То, что я и ожидал</code></pre></li>\r\n    <li>Оператор Nullsafe&nbsp;<pre class=\"hljs linenums\"><code class=\"language-php\">$country =  null;\r\n\r\nif ($session !== null) {\r\n  $user = $session-&gt;user;\r\n\r\n  if ($user !== null) {\r\n    $address = $user-&gt;getAddress();\r\n  \r\n    if ($address !== null) {\r\n      $country = $address-&gt;country;\r\n    }\r\n  }\r\n}\r\ncan change to:\r\n$country = $session?-&gt;user?-&gt;getAddress()?-&gt;country;</code></pre></li>\r\n    <li>Компиляция Just-In-Time - PHP 8 представляет два механизма JIT-компиляции. Трассировка JIT, наиболее перспективная из них, на синтетических бенчмарках показывает улучшение производительности примерно в 3 раза и в 1,5–2 раза на некоторых долго работающих приложениях. Стандартная производительность приложения находится на одном уровне с PHP 7.4.</li>\r\n  </ul>\r\n</div>\r\n<div id=\"changes_php_8_1\">\r\n  <p>\r\n    Новое в php 8.0 (\r\n    <a target=\"_blank\" href=\"https://www.php.net/releases/8.1/ru.php\">документация</a>\r\n    )\r\n  </p>\r\n</div>',
        'cto-novogo-v-php-7', 1, 7, 1, '2021-11-08 14:54:33', '2023-02-09 11:12:09');
INSERT INTO `infos`
VALUES (130, 'Questions',
        '<ul class=\"main_list\">\r\n    <li>\r\n        <a href=\"#delete_vs_truncate\">В чем разница между операторами DELETE и TRUNCATE?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#char_vs_varchar\">В чем разница между типом данных CHAR и VARCHAR</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#primary_key\">Что такое первичный ключ (Primary key), когда используется</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#unique_vs_primary\">В чем разница между первичным и уникальным ключами</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#foreign_key\">Что такое внешний ключ?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#constraints\">Какие ограничения вы знаете, как они работают и указываются?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#cluster_index\">Разницу между кластерными и некластерными индексами?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#normalization_denormalization\">Что такое нормализация и денормализация?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#index\">Что такое индекс?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#indexes\">Виды индексов?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#null_vs_space_vs_zero\">Совпадают ли значения NULL со значениями нуля или пробела?</a>\r\n    </li>\r\n    <li>\r\n        <a target=\"_blank\" href=\"https://jsehelper.blogspot.com/2016/05/mongodb.html\">Ответы на вопросы по NoSql?</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#if_case\">Конструкции IF, CASE-WHEN</a>\r\n    </li>\r\n</ul>\r\n\r\n<div id=\"delete_vs_truncate\">\r\n    <p>\r\n        Команда DELETE — это DML-операция, которая удаляет записи из таблицы, по заданному условию. При этом создаются\r\n        логи удаления, то есть операцию можно отменить, работает медленнее:<br> <code>DELETE FROM table_name WHERE\r\n        condition;</code>\r\n    </p>\r\n    <p>\r\n        Команда TRUNCATE — это DDL-операция, которая полностью пересоздаёт таблицу, и отменить такое удаление\r\n        невозможно:<br> <code>TRUNCATE TABLE table_name;</code>\r\n    </p>\r\n</div>\r\n\r\n<div id=\"char_vs_varchar\">\r\n    <p>\r\n        Char(10) может хранить только 10 символов и не сможет хранить строку любой другой длины, тогда как varchar(10)\r\n        может хранить строку любой длины до 10, т.е. например 6, 8 или 2.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"primary_key\">\r\n    <p>\r\n        Первичный ключ или PRIMARY KEY предназначен для однозначной идентификации каждой записи в таблице и является\r\n        строго уникальным (UNIQUE): две записи таблицы не могут иметь одинаковые значения первичного ключа. Нулевые\r\n        значения (NULL) в PRIMARY KEY не допускаются. Если в качестве PRIMARY KEY используется несколько полей, их\r\n        называют составным ключом.\r\n    </p>\r\n    <p>\r\n        Используется в качестве основного ключа и может быть использован для связи с дочерней таблицей, содержащей\r\n        внешний ключ.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"unique_vs_primary\">\r\n    <p><b>Primary</b> - в таблице может быть только один первичный ключ; Первичный ключ-это уникальный идентификатор\r\n        ключа записи<br> <b>Unique</b> Может быть более одного уникального ключа в одной таблице; Уникальный ключ может\r\n        иметь значения NULL\r\n    </p>\r\n</div>\r\n\r\n<div id=\"foreign_key\">\r\n    <p>\r\n        Внешний ключ или FOREIGN KEY также является атрибутом ограничения и обеспечивает связь двух таблиц. По сути, это\r\n        поле или несколько полей, которые ссылаются на PRIMARY KEY в родительской таблице.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"constraints\">\r\n    <ul>\r\n        <li>UNIQUE — гарантирует уникальность значений в столбце;</li>\r\n        <li>NOT NULL — значение не может быть NULL;</li>\r\n        <li>INDEX — создаёт индексы в таблице для быстрого поиска/запросов;</li>\r\n        <li>CHECK — значения столбца должны соответствовать заданным условиям;</li>\r\n        <li>DEFAULT — предоставляет столбцу значения по умолчанию.</li>\r\n    </ul>\r\n</div>\r\n\r\n<div id=\"cluster_index\">\r\n    <p>\r\n        Кластерный индекс используется для сортировки данных в строках по их ключевым значениям. Кластерный индекс\r\n        напоминает телефонный справочник. Мы можем открыть справочник на David (например, в поисках «David, Thompson») и\r\n        найти информацию обо всех Дэвидах, по порядку. Поскольку данные расположены друг за другом, это помогает\r\n        выбирать их в запросах с указанием диапазона. Также кластерный индекс имеет отношение к тому, как, собственно,\r\n        хранятся данные. В таблице может быть только один кластерный индекс.\r\n    </p>\r\n    <p>\r\n        Некластерный индекс хранит данные в одном месте, а индексы — в другом. Этот индекс имеет указатели на\r\n        расположение данных. Поскольку индекс не хранится там же, где и данные, для каждой таблицы может существовать\r\n        много некластерных индексов.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"normalization_denormalization\">\r\n    <p>\r\n        Нормализация отношений в SQL призвана организовать информацию в базе данных таким образом, чтобы она не занимала\r\n        много места и с ней было удобно работать. Это удаление избыточных данных, устранение дублей, идентификация\r\n        наборов связанных данных через PRIMARY KEY, etc. Соответственно, денормализация является обратным процессом,\r\n        который вносит в нормализованную таблицу избыточные данные.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"index\">\r\n    <p>\r\n        Индексы помогают ускорить поиск в базе данных. Если в выражении WHERE не задан индекс никакого столбца,\r\n        SQL-сервер в поиске соответствия будет проверять каждую строку во всей таблице.\r\n    </p>\r\n</div>\r\n\r\n<div id=\"indexes\">\r\n    <ul>\r\n        <li>Простые индексы. Создаются только для одного столбца таблицы.</li>\r\n        <li>Составные индексы. Создаются для двух или большего количества столбцов таблицы.</li>\r\n        <li>Уникальные индексы. Используются для поддержания целостности данных таблицы. Они не дают вставлять в таблицу\r\n            несколько значений.\r\n\r\n        </li>\r\n    </ul>\r\n</div>\r\n\r\n<div id=\"null_vs_space_vs_zero\">\r\n    <p>\r\n        Значение NULL вовсе не равно нулю или пробелу. Значение NULL представляет значение, которое недоступно,\r\n        неизвестно, присвоено или неприменимо, тогда как ноль — это число, а пробел — символ.\r\n    </p>\r\n</div>\r\n<div id=\"if_case\">\r\n    <p>\r\n        Оператор IF - это аналог тернарного оператора PHP:<br> IF (логическое выражение, значение-1, значение-2) вернет:<br>\r\n        значение-1, если логическое выражение - истина,<br> иначе - будет возвращено значение-2.<br> Например,<br>\r\n    </p>\r\n    <pre>    <code>\r\n        SELECT IF (0 > 2, \'yes\', \'nope\') AS testing;\r\n    </code>\r\n</pre>\r\n\r\n    <p>Оператор <b>CASE</b> - это аналог оператора switch в PHP. Его конструкция выглядит следующим образом:</p>\r\n    <pre>    <code>\r\n        CASE val\r\n        WHEN compare-1 THEN result-1\r\n        [ WHEN compare-2 THEN result-2\r\n        ...\r\n        WHEN compare-N THEN result-N\r\n        ELSE default-result ]\r\n        END;\r\n    </code>\r\n</pre>\r\n    <pre>    <code>\r\n        SELECT name,\r\n        CASE age\r\n         WHEN 20 THEN \'is twenty\'\r\n         WHEN 21 THEN \'is tweny one\'\r\n         WHEN 22 THEN \'is twenty two\'\r\n         ELSE \'is older than 22\'\r\n        END\r\n        AS age_test\r\n        FROM student\r\n        ORDER BY age;\r\n    </code>\r\n</pre>\r\n</div>\r\n<p><br></p>',
        'questions', 1, 11, 11, '2021-11-09 13:49:02', '2021-12-02 19:45:15');
INSERT INTO `infos`
VALUES (135, 'RabbitMq && AMQP',
        '<p>https://www.youtube.com/watch?v=XiyXOMYoXAw</p>\r\n<p>RabbitMq - брокер сообщений.</p>\r\n<h2>зачем нужен и что решает?</h2>\r\n<p> Работа тяжелого скрипта в фоне,ассинхронно</p>\r\n<p>логика:</p>\r\n<p> - публикация сообщений в брокер. Сообщение могут сохранться на диск,таки находиться в памяти системы в зависимости от настроек кластера\r\n - а сервисы полчать сообщения и будут отрабатывать их, это позволит не блокировать приложение\r\n Самое худшее - сообщение будут скапливать в виде сообщений,но в этом случае можно добавить больше свервисов для обработки.\r\n</p><p>\r\n Кроме того использование брокеров позволить наим сервсам ничего не знать кто отрабатывает их,что позволить компонентам быть изолированым и самостоятельными. Достаточно подписать под нужный топик(очередь)\r\n  </p>\r\n <p>Любой сервис может послать сообщение другому сервису либо целой группе сервисом.\r\n </p>',
        'rabbitmq-amqp', 1, 49, 1, '2022-12-28 11:15:14', '2022-12-28 11:19:47');
/*!40000 ALTER TABLE `infos`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations`
(
    `id`        int unsigned                                                  NOT NULL AUTO_INCREMENT,
    `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `batch`     int                                                           NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 7
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
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
INSERT INTO `migrations`
VALUES (6, '2020_12_03_195058_create_todo_lists_table', 1);
/*!40000 ALTER TABLE `migrations`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo_lists`
--

DROP TABLE IF EXISTS `todo_lists`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todo_lists`
(
    `id`          bigint unsigned                                       NOT NULL AUTO_INCREMENT,
    `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `status`      tinyint(1)                                            NOT NULL DEFAULT '1',
    `label`       tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    `sort`        int                                                            DEFAULT NULL,
    `created_at`  timestamp                                             NULL     DEFAULT NULL,
    `updated_at`  timestamp                                             NULL     DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1021
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo_lists`
--

LOCK TABLES `todo_lists` WRITE;
/*!40000 ALTER TABLE `todo_lists`
    DISABLE KEYS */;
INSERT INTO `todo_lists`
VALUES (11, 'Add count info for each  category', 1, 'category', 3, '2021-02-08 23:22:06', '2021-11-29 23:04:38');
INSERT INTO `todo_lists`
VALUES (12, 'Add list for info by category(for sort and moving to another category)', 0, 'category', 5,
        '2021-02-08 23:25:14', '2021-11-29 23:04:38');
INSERT INTO `todo_lists`
VALUES (13, 'add ability for change editor in article(codemiror, simple texarea or ck_editor)', 0, 'editor', 6,
        '2021-02-08 23:41:27', '2021-11-29 23:04:38');
INSERT INTO `todo_lists`
VALUES (14, 'category,todo,table_list(save,del,edit) refactor  function', 1, 'JS', 1, '2021-02-10 23:08:59',
        '2021-11-29 23:04:38');
INSERT INTO `todo_lists`
VALUES (17, 'Show log file edit log filessdfsdfqwdqwd\r\nwqe\r\nwqeqw', 0, 'config', 2, '2021-08-20 06:54:09',
        '2021-11-29 23:04:38');
INSERT INTO `todo_lists`
VALUES (20,
        '<p>update cat list when delete category (No query results for model [App\\Models\\Category] 18 when save is click in category crud)</p>',
        1, 'category', 4, '2021-10-21 17:33:54', '2021-11-29 23:04:38');
INSERT INTO `todo_lists`
VALUES (21, 'Praesentium dignissimos illum iure. Quod quas vel non officiis. Natus illo alias saepe sunt vel.', 1,
        'category', 1, '2022-07-15 17:32:18', '2022-07-15 17:32:18');
INSERT INTO `todo_lists`
VALUES (22, 'Quo nihil natus inventore possimus rerum. Vel sint doloremque eum voluptatem quod impedit tempora.', 0,
        'category', 1, '2022-07-15 17:32:18', '2022-07-15 17:32:18');
INSERT INTO `todo_lists`
VALUES (23, 'Dicta quasi dicta dolores. Qui vitae et a consequatur nisi.', 1, 'todo', 1, '2022-07-15 17:32:18',
        '2022-07-15 17:32:18');
INSERT INTO `todo_lists`
VALUES (24, 'Nisi at numquam quo quam maxime ut similique nulla. Architecto dolores sit aut assumenda.', 1, 'todo', 1,
        '2022-07-15 17:32:18', '2022-07-15 17:32:18');
INSERT INTO `todo_lists`
VALUES (25, 'Ullam sequi illum numquam. Odit nostrum laborum aspernatur sint et et ad quibusdam.', 0, 'todo', 1,
        '2022-07-15 17:32:18', '2022-07-15 17:32:18');
INSERT INTO `todo_lists`
VALUES (26, 'Fuga sed et sunt amet. Non qui hic doloremque dolores dolor error culpa. Non et et qui.', 1, 'category', 1,
        '2022-07-15 17:32:18', '2022-07-15 17:32:18');
INSERT INTO `todo_lists`
VALUES (27, 'Qui dolor nam magnam laborum cupiditate ut similique. Illo incidunt quia eum tempora qui dolores.', 0,
        'todo', 1, '2022-07-15 17:32:18', '2022-07-15 17:32:18');
INSERT INTO `todo_lists`
VALUES (28, 'Consectetur voluptas nobis quos illum non autem. Eius quo magni sed eos qui dolorum.', 1, 'todo', 1,
        '2022-07-15 17:32:18', '2022-07-15 17:32:18');
INSERT INTO `todo_lists`
VALUES (29, 'A et voluptatem eius accusamus. Assumenda culpa officiis nostrum nemo nihil officia.', 1, 'todo', 1,
        '2022-07-15 17:32:18', '2022-07-15 17:32:18');
INSERT INTO `todo_lists`
VALUES (30, 'Quod iste ea neque quae quia quod. Dolor aut ut distinctio soluta a eum dolores.', 0, 'todo', 1,
        '2022-07-15 17:32:18', '2022-07-15 17:32:18');
INSERT INTO `todo_lists`
VALUES (31, 'Odit error veniam culpa quos. Consectetur molestiae vero autem pariatur qui.', 1, 'todo', 1,
        '2022-07-15 17:32:18', '2022-07-15 17:32:18');
INSERT INTO `todo_lists`
VALUES (32, 'Iure provident magnam sed ut laudantium. Eius et deleniti facilis veniam laboriosam culpa.', 1, 'category',
        1, '2022-07-15 17:32:18', '2022-07-15 17:32:18');
INSERT INTO `todo_lists`
VALUES (33, 'Nostrum ducimus et sed ab voluptatem. Mollitia expedita cupiditate ipsum omnis sed labore qui.', 1, 'todo',
        1, '2022-07-15 17:32:18', '2022-07-15 17:32:18');
INSERT INTO `todo_lists`
VALUES (34, 'Nemo eos sequi accusantium. Nemo deserunt velit natus quia et laborum alias delectus.', 0, 'info', 1,
        '2022-07-15 17:32:18', '2022-07-15 17:32:18');
INSERT INTO `todo_lists`
VALUES (35, 'Veniam ut perspiciatis et cupiditate. Rem quia sed recusandae molestias.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (36, 'Et qui quo est iusto labore in. Atque et incidunt consequatur illo explicabo quis esse.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (37, 'Omnis sint alias dolore incidunt aut est rerum. Occaecati sapiente nam perspiciatis.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (38, 'Eos voluptas nulla est veniam facere. Qui sunt quidem qui neque.', 1, 'info', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (39, 'Est dolor aliquid eveniet at est. Quaerat libero est nisi est perferendis.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (40, 'Sunt sit harum et. Doloribus at amet aliquid et natus vero molestiae.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (41, 'Qui provident expedita qui velit non voluptas sed. Molestiae distinctio voluptatem id sit.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (42, 'Deleniti qui est quam ut. Minus voluptas adipisci ab optio qui.', 1, 'info', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (43, 'Eum ab laudantium ipsam sed. Dolor doloremque optio aliquid. Vero totam debitis amet fugit.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (44, 'Aut vel tempora id quia asperiores. Voluptate similique et autem minima quia. Aut nulla nulla non.', 1,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (45, 'Ipsum quod minima odit quia sequi sed. Debitis sequi est repudiandae. Iure ab ut facilis sint.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (46, 'Doloremque veritatis recusandae ea sed animi. Rerum saepe est enim ipsum excepturi voluptatem est.', 0,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (47, 'Nemo laboriosam fugiat ipsam placeat vero quia. Autem ea et eum beatae.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (48, 'Vero non aspernatur sunt praesentium. Quas omnis nulla ab ipsa aliquid vero.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (49, 'Et est fugiat ut nihil. Et asperiores exercitationem nesciunt occaecati nam.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (50, 'Qui et magni dolorum quaerat ab dicta a. Id in et est autem neque quo molestiae.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (51, 'Delectus ab velit inventore porro amet rerum deserunt. Quibusdam voluptas et sint sunt.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (52, 'Molestiae ab quia ea non. Accusantium vitae ut debitis.', 1, 'todo', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (53, 'Aut quo qui debitis voluptas minima. Sit voluptate esse deserunt repellat.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (54, 'Explicabo rerum consequatur quaerat quia. Omnis natus a dignissimos voluptas dolorem.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (55, 'Ut odit alias quos ipsam. Iusto sed voluptatem aut et ullam earum.', 0, 'info', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (56, 'Et autem tenetur qui omnis sunt. Aut ipsa voluptate exercitationem illo.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (57, 'Quod autem omnis laborum labore dicta. Non aut numquam quia. Dolore eum aut ea.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (58, 'Ea sint ea labore. Quae excepturi aliquam cumque laborum. Laudantium vel corrupti ipsa ut.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (59, 'Ex et distinctio dolores quia. Et excepturi velit qui et eos earum magni. Illum fuga quibusdam quo.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (60, 'Vitae vel non occaecati. Ut aut et corrupti aliquid nihil illum qui. Dolores quasi accusantium id.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (61, 'Enim animi eveniet ducimus ipsa porro facere natus. Dolorum et consequuntur qui magnam.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (62, 'Voluptates cumque qui enim. Est vel quibusdam nulla facilis.', 0, 'category', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (63, 'Minima a ut ex rerum rerum. Enim ut voluptas quis quae aliquid est rem.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (64, 'Minima incidunt voluptate ad ea consequatur enim. Officiis dolore deleniti quia et sunt.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (65, 'Culpa enim ratione ut vel. Distinctio consequatur quam quia nostrum consequatur aliquam maiores.', 0,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (66, 'Culpa omnis cumque in eius sed et. Repudiandae corrupti rerum ad animi corrupti totam eveniet.', 0, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (67, 'Ut aliquid autem nemo ut voluptatibus eveniet voluptas expedita. Eaque quis quibusdam sit cumque.', 1,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (68, 'Aut sunt omnis sit quisquam ea. Occaecati optio vel ex quis. Sit fugiat nam rerum.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (69, 'Qui officia inventore eos suscipit et eum illo quia. Molestiae illo quam et nihil.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (70, 'Non aut sint qui sed et. Deleniti perspiciatis voluptates et voluptate dolores.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (71, 'Minus consequuntur est doloribus aliquam odit. Ipsam ex aut natus minus aut.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (72, 'Beatae eaque nisi et eius. Eius aut deserunt et molestias vitae delectus omnis.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (73, 'Et quod hic praesentium aut voluptas. Atque repellendus omnis nesciunt officiis nesciunt non.', 0, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (74, 'Sint eligendi occaecati assumenda ut eum unde cumque. Explicabo suscipit quia reprehenderit.', 1, 'todo',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (75, 'Eveniet commodi dignissimos earum commodi officia odio ut. Ducimus et corporis ut dolor.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (76, 'Ex saepe ratione ut impedit illum velit inventore. Dolorum doloremque laudantium culpa expedita.', 1,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (77, 'Quasi omnis non in perferendis velit. Dolores error illo tempore quo repellat voluptatem.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (78, 'Qui et eligendi iure. Accusamus cumque illum rerum.', 1, 'category', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (79, 'Id possimus molestiae dolore mollitia. Voluptas non et magnam est eum. Dolore ea aut aliquid nihil.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (80, 'Nemo est repellendus quo velit saepe. Nobis repudiandae voluptas vero cumque dicta.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (81, 'Qui natus ad et. Est enim quia eos et quidem. Hic iusto voluptas est voluptatem.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (82, 'Perspiciatis et et non et quia. Ab non nihil atque fuga sed. Qui cum non id alias.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (83, 'Tempore iusto est dolorem et et. Doloremque dolorum a tenetur est. Rerum autem aliquid non.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (84, 'Culpa rerum iste at et eveniet numquam. Qui expedita et nemo nihil doloremque laboriosam sed.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (85, 'Et omnis voluptatem perspiciatis magni aut sed ducimus. Et molestias veritatis voluptatum ut.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (86, 'Ut ex quos dolor ut. Unde aliquam et rerum iure sit enim. Maxime distinctio odio et molestiae.', 1, 'todo',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (87, 'Amet id eius est soluta dignissimos aut modi. Voluptas accusantium at fugiat fugiat ipsam.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (88, 'Sed hic consequatur ducimus adipisci. Quo ipsa aut iusto. Hic dolor modi et pariatur est.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (89, 'Nisi doloribus rem fuga magni. Iure et quia ullam consequatur esse voluptatem consectetur.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (90, 'Vero incidunt dolor fugit similique molestiae. Dolor aliquid veniam ut unde saepe.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (91, 'Ut nihil laudantium aut qui. Et aut blanditiis esse neque.', 1, 'category', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (92, 'Rerum debitis et vel commodi quas dolorem. Et facilis voluptas veniam ea laboriosam et.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (93, 'Exercitationem est ut et sed. Sequi nam consequatur sunt est excepturi necessitatibus quaerat.', 0, 'todo',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (94, 'Consequatur ut dolores rerum iusto quod rerum. Laboriosam ut possimus voluptatem officia dicta.', 0,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (95, 'Deserunt sit voluptate quia numquam libero. Eius hic voluptas facere voluptatibus incidunt.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (96, 'Vitae praesentium est non et. Tempore et non repellendus culpa et impedit. Quod nam vel id sunt.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (97, 'Facilis fugiat in voluptatem quia molestiae. Dolor deleniti consectetur ab odit quia quas.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (98, 'Velit velit saepe assumenda. Neque magnam sint quis. Quas perspiciatis et nulla et omnis nostrum.', 0,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (99, 'Voluptas velit optio est. Sed amet vitae doloribus et. Modi sit nam accusamus.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (100, 'Aut distinctio inventore est consequatur. Occaecati facere vero quia minima iure nobis eveniet.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (101, 'Natus animi quia libero sint reiciendis. Aspernatur adipisci quae odio possimus dicta.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (102, 'Aut et occaecati sit. Non et soluta accusamus ipsum voluptas.', 1, 'category', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (103, 'Impedit itaque aut quos ipsa ut nihil. Magnam cumque sequi possimus at reprehenderit aperiam.', 0, 'todo',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (104, 'Autem perferendis deleniti veniam. Reprehenderit unde iure laborum et et. Nam id ullam esse aut.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (105, 'Occaecati placeat delectus nostrum. Ea ea debitis reiciendis blanditiis.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (106, 'Qui suscipit in consectetur. Explicabo dolore officia animi explicabo nihil asperiores.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (107, 'Nobis et dolorem molestiae officia veritatis dolores maiores. Voluptas impedit et odit ullam fugit.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (108, 'Pariatur enim qui porro ducimus qui. Voluptatem vel eligendi accusantium.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (109, 'In dignissimos quia cumque iure sit. Et earum expedita sed qui dolorum iste earum.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (110, 'Omnis ex consequatur amet ut est. Veniam veniam animi consequatur voluptates eveniet.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (111, 'Voluptates accusamus quos ipsam consequatur quisquam sed vero. Qui sunt aut quam et fugit eveniet.', 0,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (112, 'Quam consequuntur sint ea veritatis non. Asperiores dolorum modi odit.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (113, 'Dolorem sit quisquam aut quia. Quia iste iusto enim aut aut ullam. Facere nihil possimus vel quo.', 1,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (114, 'Ut pariatur recusandae odit illum sunt voluptas. Autem est sequi cumque repellat sequi est.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (115, 'Et ea sit facilis ipsum et. Aut voluptas voluptatum consequuntur totam. Velit ut fugit non.', 1, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (116, 'Voluptatibus error hic dolore et. Culpa nesciunt enim doloribus dolorem quia voluptatum.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (117, 'Ullam dolor soluta iure neque iure. Quo error repellat maiores non. Dicta aut neque quidem.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (118, 'Qui sed quas omnis consequatur quis. Unde harum et hic. Ut illo laboriosam est ex.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (119, 'Maiores nihil temporibus iure aut voluptatem magnam. Voluptatem eum tempore illum.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (120, 'Est exercitationem ut assumenda nisi. Illum ab quia ut nobis.', 1, 'info', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (121, 'Est dolorem sunt atque qui. Corrupti reprehenderit rerum alias aspernatur.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (122, 'Officiis et ad qui. Unde qui rerum atque iste. Dicta repellat qui voluptatibus neque quia quasi et.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (123, 'Tempora blanditiis id quam. Similique iste eaque placeat occaecati tenetur est.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (124, 'Nulla sunt accusamus quia esse omnis velit ut. Omnis facere est corporis sint.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (125, 'Laudantium laudantium quasi sit. Reprehenderit sapiente nam itaque reiciendis quasi velit.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (126, 'Voluptas qui qui quo et nam debitis. Qui minus distinctio esse. Qui cum consequatur voluptas magni.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (127, 'Excepturi ut autem eveniet et. Est quis quia nihil voluptas culpa ut suscipit.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (128, 'Assumenda et earum molestiae officiis tempora. Voluptatem sit voluptatibus eos deserunt ea tenetur.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (129, 'Aspernatur officia ut magni quas ab autem. Dignissimos porro perferendis dolores id inventore et.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (130, 'Dolore asperiores facere quae nihil ut id sit. Odit optio qui nesciunt vero.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (131, 'Eos magnam id qui. Magnam est autem libero velit. Cumque assumenda et expedita atque.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (132, 'Consectetur quae deleniti quia sed. Non sit velit nihil hic voluptatum et placeat.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (133, 'Inventore officiis molestiae sed numquam. Ipsa consequatur reiciendis dolorem omnis autem.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (134, 'Fugiat et voluptatum rerum est non. Eos voluptas omnis quia sed velit dolor.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (135, 'Ipsam consequatur dolorum fugiat velit quis. Necessitatibus in ad et illo.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (136, 'Consequatur ea distinctio qui. Quia cum ut dolores placeat. Est similique hic rerum sint et alias.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (137, 'Et molestiae culpa quia tenetur qui odit repudiandae. Voluptatem veritatis ut eligendi dolorem est.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (138, 'Voluptatem alias ea et. Iure esse aut quia eaque debitis. Et quo amet non voluptate alias.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (139, 'Deleniti minus impedit ut mollitia vitae aut qui. Ut repellendus dolore sit sequi dignissimos.', 0,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (140, 'Amet et quo harum consequatur eligendi. Ipsa incidunt unde sit cumque.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (141, 'Ut qui est corporis sint. Sit nulla enim beatae quam. Rerum error exercitationem sit omnis facilis.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (142, 'Sit iusto commodi eveniet rerum vitae alias id. Atque est fugit possimus laudantium.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (143, 'Consequatur debitis inventore ea. Adipisci eaque recusandae labore voluptatem nisi quasi.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (144, 'Et ex cumque laboriosam blanditiis. Maxime aut eligendi tempora nulla consequatur voluptatum minus.', 0,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (145, 'Doloremque provident omnis velit saepe harum et. Cumque vel sit aspernatur.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (146, 'Magnam est nisi aut accusantium. Dolorem autem sint natus deleniti illo. Iusto ex eos eum qui.', 1,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (147, 'Adipisci aut est porro excepturi. Assumenda ea ut quisquam repellendus. Et ad sit rem voluptas.', 1,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (148, 'Debitis dicta dignissimos quaerat. Nihil ut similique magnam consectetur. Magni omnis quo est et.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (149, 'Et aut animi et exercitationem ut. Mollitia voluptatem id commodi et voluptatem provident velit.', 1,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (150, 'Asperiores qui quod ut ut beatae quia. Error aut asperiores voluptate optio rem earum consequuntur.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (151, 'Repudiandae repellat at et exercitationem commodi exercitationem. Qui quam sit rerum.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (152, 'Velit deserunt iusto facere. Debitis perferendis modi cumque animi magni molestias.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (153, 'Reiciendis aut quam quidem ut at inventore. Omnis est distinctio debitis animi nostrum quaerat.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (154, 'Animi natus fugit eveniet similique. Earum cum a minima. Tempora culpa aut delectus.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (155, 'Aspernatur fuga et porro temporibus. Consequatur explicabo et fugiat eos eos sunt.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (156, 'Doloremque labore nam impedit est occaecati velit. Asperiores ipsa possimus eveniet illum.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (157, 'Minima fuga sapiente odit. Nulla sint et sint vel quasi aspernatur saepe.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (158, 'Voluptate sed perferendis in. Ad ea aliquam et officia. Ut et repellat optio nemo.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (159, 'Aut quo velit quaerat. Fugit dolorum dolor ipsam aliquam rerum est.', 1, 'info', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (160, 'Dolores facere maiores aspernatur. Eum quia voluptatem magni.', 1, 'category', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (161, 'Reprehenderit possimus voluptate et non. Molestiae ab doloribus autem est dolores repudiandae qui.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (162, 'Ea autem iure tenetur. Aut dolor alias omnis incidunt. Sint id temporibus sed.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (163, 'Omnis laboriosam aut placeat beatae non iure. Maxime animi ipsum ut omnis.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (164, 'Explicabo in voluptatem esse natus. Vel et omnis quis voluptas veniam voluptas.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (165, 'Ut odio quasi harum possimus. Quia vel libero cum aut illo atque dolores.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (166, 'Quia eos aut voluptate quos. Nostrum id aperiam ex eum quae consequatur harum.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (167, 'Saepe est ducimus at amet facilis ipsam. Voluptas est perferendis necessitatibus natus.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (168, 'Ex sequi non in. Molestias veritatis quia aliquam doloremque perferendis quibusdam.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (169, 'Et cum facere totam ut delectus aut. Temporibus error omnis iste voluptates.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (170, 'Temporibus distinctio ut quia molestiae necessitatibus iure aut. Non nulla sit ducimus numquam.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (171, 'Quo sint in dolorem beatae ea. Hic illo soluta ab vitae eius eligendi.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (172, 'Ea quas eveniet ipsa. Et et dicta odio placeat. Qui maiores unde nihil culpa.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (173, 'Enim aut qui itaque unde eaque. Non libero molestiae error et est non.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (174, 'Ut nemo praesentium aut consequatur. Eius officiis est est in.', 0, 'info', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (175, 'Et est vel nemo dolorem cupiditate molestiae dolorum. Ex accusamus dignissimos error ullam commodi.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (176, 'Impedit rerum odit laboriosam. Et laborum odio et atque consectetur vero. Pariatur quae et est.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (177, 'Odit similique ipsa ratione consequatur doloribus. Incidunt doloribus qui non quis.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (178, 'Ipsam officia officiis ut. Magni est harum possimus aut hic. Nostrum aspernatur at aspernatur cum.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (179, 'Temporibus rerum est veritatis. Officiis voluptatem quis ut suscipit temporibus.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (180, 'Velit eum enim autem ipsum consequatur. Aliquid a delectus voluptatum similique omnis perferendis.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (181, 'Sapiente a aut dolorum totam unde a. Quidem ut quaerat sit consectetur velit voluptates.', 0, 'category',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (182, 'Recusandae eum dolor modi sed. Ut voluptate nihil inventore qui.', 0, 'info', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (183, 'Quaerat quia sunt tenetur asperiores quia blanditiis voluptatem omnis. Qui hic quis odio.', 0, 'category',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (184, 'Et sed voluptate laboriosam et. Quos doloribus a eius. Officia labore officia nam nemo enim.', 0, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (185, 'Rem et sed et et et. Maxime id fuga aspernatur in dignissimos voluptatem.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (186, 'Neque explicabo dolorem non. Et quisquam excepturi et sit. Non non id est dolor quam temporibus.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (187, 'Ut corrupti ut consequatur. Sint mollitia quae ducimus.', 0, 'category', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (188, 'Eligendi error dolor quas mollitia. Et non sit deserunt qui quis.', 0, 'todo', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (189, 'Modi et aperiam et asperiores. Qui quas rerum nostrum et consequatur. Sed animi et iste non aut.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (190, 'Quia dignissimos ut quo sint cupiditate et dicta. Sint autem sed accusamus tempora autem alias.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (191, 'Enim et sit perspiciatis placeat. Culpa mollitia sunt id qui enim voluptas.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (192, 'Quo in id qui impedit et. Molestias nihil eos ipsum nobis libero. Et aut velit soluta.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (193, 'Quo ullam suscipit ea. Quo quia unde quod qui recusandae quisquam. Voluptatem ab aliquam odio.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (194, 'Sint sunt distinctio qui. Omnis numquam veniam ut quia praesentium illum minus.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (195, 'Enim qui velit laudantium dolore. Eos consequatur ipsam qui ut sunt et.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (196, 'Earum vel fugit eligendi et. Molestiae fuga sed explicabo nihil assumenda quia enim.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (197, 'Omnis in qui vel sit qui. Explicabo earum maxime aut.', 1, 'category', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (198, 'Sint ad aut autem alias quo non. Sit molestiae qui inventore voluptatibus.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (199, 'Impedit ut aut sed ut. Est iste et magnam. Praesentium velit dicta perferendis et et quia eos.', 1,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (200, 'Odit nam sunt quo voluptas. Tenetur dolore sit provident eius et iusto.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (201, 'Veritatis et qui est vitae earum accusantium officiis. Ipsa a ut est sint.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (202, 'Possimus voluptatem minus ea ut. Et porro consectetur et corporis totam.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (203, 'Aliquid eaque assumenda et voluptatem doloremque quaerat ea. Et totam tempore ipsa sunt.', 0, 'category',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (204, 'Ut hic numquam recusandae et blanditiis veniam. Officia ut minima quia minima eos dolor accusamus.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (205, 'Doloremque et aut id doloremque unde aliquid. Vel omnis reprehenderit libero ipsam aut.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (206, 'Sed ex non quidem et illum. Qui rem consequatur magnam nisi sunt. Ab impedit soluta vel aliquam.', 0,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (207, 'Soluta eum et aut occaecati. Autem doloribus explicabo autem aperiam.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (208, 'Et quae culpa quo ea quaerat sit ipsum. Sit eaque adipisci dolores odit explicabo eum quas vero.', 1,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (209, 'Impedit sed est omnis qui voluptatem quos. Nobis sit eum aut ullam.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (210, 'Perferendis aspernatur qui aut perferendis expedita esse. Adipisci eum nesciunt non a doloremque.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (211, 'Illo aut nihil et nesciunt qui ipsam. Minima voluptas nulla placeat at voluptas et.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (212, 'Saepe expedita veritatis sequi consequatur adipisci sunt. Sed voluptate quo omnis facere animi.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (213, 'Laboriosam delectus et earum. Maxime quia in eos quos quia illo veniam. Ut ut illo ullam et dicta.', 0,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (214, 'Et est vitae debitis rerum. Voluptates sapiente vero sit. Cum dolorum hic rerum saepe esse earum.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (215, 'Exercitationem qui temporibus quo illo possimus et. Et dicta harum labore sequi.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (216, 'Ab atque natus eum in. Optio voluptatem sunt animi. Adipisci aspernatur itaque corporis assumenda.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (217, 'Sequi sit ea excepturi. Necessitatibus recusandae veniam qui non adipisci corporis excepturi.', 0, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (218, 'Iste quia voluptatum nisi. Cum velit aliquam voluptatem assumenda.', 1, 'info', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (219, 'Omnis tempora qui qui. Temporibus unde a adipisci molestiae.', 0, 'info', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (220, 'Cum repellat ad modi officia. Dolores autem aut optio distinctio. Sint sint ut eaque architecto.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (221, 'Repudiandae consequatur nostrum aperiam nisi et. Sequi fugiat vel aut et. Culpa et placeat a nobis.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (222, 'Inventore nulla voluptatem amet quia debitis. Sint et fugit similique. Ex veniam sunt quia.', 0, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (223, 'Commodi omnis cum libero asperiores maxime et. Fugit beatae saepe nostrum non.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (224, 'Illum maxime fugit ullam ut. Dolor temporibus exercitationem minima et qui ipsum iusto.', 0, 'category',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (225, 'Consequatur sed quo natus repudiandae sint pariatur occaecati. Consectetur distinctio minus ipsa.', 0,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (226, 'Placeat sed voluptatem beatae. Et sint aperiam id nemo. Eos illo ut aut dolor.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (227, 'Similique ut molestiae est est. Ducimus quasi qui rem veniam laborum est.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (228, 'Magni explicabo maiores suscipit. Fugit adipisci sit sint officiis.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (229, 'Architecto saepe sed numquam placeat. Voluptatum facere in autem est.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (230, 'Fuga voluptatem omnis aut recusandae ut totam enim. Non ex omnis numquam consectetur aut.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (231, 'Fugiat fuga rerum omnis est. Est vel quaerat autem est ab praesentium.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (232, 'Sit magnam commodi ipsam alias. Quidem nisi rerum animi perferendis accusamus.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (233, 'Aut soluta recusandae quia non laudantium. Vero quae voluptas voluptatem quisquam aut sit.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (234, 'Aut rerum ad minima reiciendis. Ab eligendi et aliquam sed sapiente.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (235, 'Qui odit ullam commodi perferendis. Quaerat voluptas eos dolorum totam laborum est dolor delectus.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (236, 'Quas expedita facilis officia. Sint assumenda enim temporibus. Et aut asperiores ea.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (237, 'Quod voluptas omnis quia aut molestias. Maxime voluptates est maxime possimus.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (238, 'Debitis magni mollitia ut porro beatae. Voluptate recusandae voluptas non voluptatem eos quis.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (239, 'Cumque blanditiis ad deserunt ut. Eum ut sint magnam nihil.', 0, 'info', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (240, 'Sapiente odio doloremque harum est unde. Dignissimos exercitationem qui cumque id modi et ut.', 0, 'todo',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (241, 'Voluptates quod illum quia aperiam. Itaque rerum odit quod et iure. Id necessitatibus ad sunt.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (242, 'Possimus nulla magni architecto ut et. Voluptas incidunt vitae rerum dicta.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (243, 'Fugit autem consequuntur itaque et quo repellendus eos. Quaerat non doloremque nam natus.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (244, 'Eos est eum consequatur. Est ut rerum consequatur nemo.', 1, 'info', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (245, 'Facere sit dolor eum vel quo vero totam. Laboriosam est sapiente culpa itaque.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (246, 'Quia error voluptates nemo natus ex. Necessitatibus voluptas sequi suscipit vel ut quo eaque.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (247, 'Natus magni corrupti quaerat quibusdam voluptas. Quia dolor repellat odit et.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (248, 'Aut et vel repellat. Ut est quas consequatur adipisci sit rem officia.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (249, 'Perferendis fuga reiciendis quod accusamus. Nobis et quia veritatis. Vel distinctio in et.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (250, 'Est qui ut corporis fuga voluptatem tenetur. Et optio adipisci repudiandae qui et dolor laboriosam.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (251, 'Rerum sunt at cumque. Ut ea unde et sed placeat et. Qui necessitatibus et ex ipsum doloribus.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (252, 'Unde sunt ut aliquam aut. Iusto sed repudiandae sunt quidem laboriosam vitae ea.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (253, 'Et vero quam atque odio. Accusamus error ea alias maiores quo.', 0, 'todo', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (254, 'Distinctio molestiae non qui porro. Possimus ad facilis explicabo aspernatur accusantium.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (255, 'Molestias aut quo est. Sint voluptas qui a doloribus provident et.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (256, 'Quia omnis culpa at laborum alias. Dolore id et voluptas praesentium.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (257, 'Maxime amet quisquam doloremque molestiae omnis. Excepturi pariatur velit ratione velit quod.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (258, 'Odio dolores minus nihil doloremque nesciunt quia ut maiores. Et asperiores itaque ex.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (259, 'Est sunt quas omnis qui enim deserunt porro. Reiciendis est doloribus rem praesentium quis sit.', 1,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (260, 'Quisquam omnis unde culpa voluptas explicabo. Voluptas sed aut eveniet nesciunt. At ad cum quasi.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (261, 'Ea quo aut quod quos. Sequi consectetur neque culpa ut. Magni laboriosam et sit assumenda.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (262, 'Magni quibusdam ut nemo sed. Earum doloribus iste culpa similique.', 1, 'info', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (263, 'Et corporis ea modi nulla. Sunt magnam et repellendus possimus voluptatem ut.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (264, 'Doloribus esse dolores ut dignissimos. Debitis est facere pariatur ipsam et magni fuga.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (265, 'Est pariatur laboriosam sit dignissimos vel vel. Debitis molestiae excepturi et et.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (266, 'Ut rem nam non possimus quia nemo vero. Architecto fuga similique iusto voluptatum.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (267, 'Excepturi reprehenderit dicta ut quibusdam. Quae culpa et qui.', 0, 'category', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (268, 'Molestiae illo reprehenderit autem. Et est non id sed ipsum.', 1, 'category', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (269, 'Qui ipsa praesentium magnam beatae id magni illum. Ipsa saepe a deleniti aut.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (270, 'Itaque nisi quia inventore atque magnam reprehenderit quos. Sunt deleniti est dolorum unde.', 0, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (271, 'Hic numquam qui perspiciatis dolor nesciunt earum soluta. Aut voluptates ut nihil.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (272, 'Aut magnam necessitatibus modi quia et velit. Et est quidem unde totam nesciunt et.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (273, 'Dolor qui odio hic exercitationem quia. Quis dolor ut et quas assumenda officiis.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (274, 'Aspernatur animi neque et. Mollitia omnis nihil eos qui optio unde.', 0, 'info', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (275, 'Nobis quis aut eveniet cumque voluptas ut debitis. Ut quo modi quia adipisci.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (276, 'Unde officia amet qui mollitia. Non et ullam tempore incidunt veritatis maiores.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (277, 'Eius aut qui voluptatibus. Dolorum numquam non quam nisi eum facere.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (278, 'Qui assumenda in corporis sint. Accusamus nemo libero est omnis cumque reprehenderit qui.', 1, 'category',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (279, 'Libero fugiat qui ea ipsum ut. Nesciunt facere ut impedit. Modi facere recusandae quia dignissimos.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (280, 'Eos facere temporibus sunt et. Nihil ut ut quis et vero sed. Cum voluptas aut amet dolorem et.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (281, 'Delectus debitis praesentium quam totam vero. Omnis qui reprehenderit sequi quia.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (282, 'Quia deserunt porro pariatur molestiae enim. Non est qui suscipit. Expedita id eaque modi officiis.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (283, 'Adipisci libero aperiam sed voluptatem. Et laborum iure dolores ut rerum ullam.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (284, 'Magnam illum est porro dolorum impedit. Vel reiciendis dolor unde recusandae ut. Illum animi et et.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (285, 'Voluptatibus natus facilis omnis. Adipisci at sit cum eligendi voluptatibus.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (286, 'Molestiae tempore voluptatem accusamus consequuntur officiis et. Aut quia et recusandae.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (287, 'Aut ut eum magni. Nesciunt nostrum dolorem possimus asperiores enim.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (288, 'Est porro maiores esse. Ipsa ut ut sint. Labore nisi omnis non repellendus quibusdam aut totam ab.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (289, 'Aut voluptate impedit aspernatur hic. Sed sint nihil praesentium et aliquid veritatis.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (290, 'Maxime in veritatis perferendis assumenda soluta ipsum consequatur. Eos velit ut eius.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (291, 'Alias doloribus praesentium eaque quisquam libero. Eum rerum ipsam omnis quis omnis impedit maxime.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (292, 'Aut adipisci accusamus aliquam adipisci. Autem officiis distinctio vel natus maxime dolore.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (293, 'Impedit harum architecto veniam nemo ab. Esse doloremque eaque debitis ut.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (294, 'Provident illum dolor explicabo et. Ea est vitae sed rerum.', 1, 'category', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (295, 'Illo sed consequatur quia necessitatibus. Placeat error culpa inventore sint quasi alias accusamus.', 1,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (296, 'At id ut officia aut ullam. Consequatur nihil dolores repellendus.', 1, 'todo', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (297, 'Est ea qui dolores quia. Voluptatem ipsam consequatur accusantium vel.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (298, 'Aut non facilis hic et illo molestiae. Fuga est tempora nisi ut.', 0, 'todo', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (299, 'Autem vitae nihil et ut. Exercitationem porro ab quia corrupti.', 1, 'category', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (300, 'Dolorem voluptas magni et tempore harum. Sunt vel ex aperiam. Quod dolorem quia et saepe et.', 0, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (301, 'Magnam id laborum non fugit. Dolor quibusdam magni harum consequuntur.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (302, 'Dicta eos eos aut et. Est sunt rem modi occaecati atque. Qui asperiores est aliquid ex.', 1, 'category',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (303, 'Doloremque quis molestiae et. Nisi ut at nulla nulla. Id reiciendis veritatis iste excepturi.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (304, 'Officiis et debitis et dicta fuga. Expedita ipsam in quo accusantium doloribus rem sit sint.', 1, 'todo',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (305, 'Eum veritatis reiciendis ea. Voluptate amet provident aut ut. Ut magnam enim est cum ut fuga.', 1, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (306, 'Dignissimos dicta impedit officia ut repellendus magnam sed. Error modi dolore fugiat quod.', 0, 'todo',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (307, 'Et consequatur ipsum sapiente sed in. Laboriosam sapiente ab qui omnis.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (308, 'Assumenda aut iure sequi. Dolores molestias aspernatur cupiditate facere temporibus ullam pariatur.', 0,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (309, 'Molestiae rerum modi eum aut. Mollitia soluta voluptatum non ut exercitationem perspiciatis.', 0, 'todo',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (310, 'Sequi sunt blanditiis eius et aut. Sunt vero tempore quia fuga deserunt tempore.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (311, 'Officiis quas dolorum suscipit iusto culpa ea. Voluptates et est molestias aut ab iusto.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (312, 'Aut et est non culpa doloribus. Quo placeat rem deserunt hic. Modi suscipit amet quidem.', 1, 'category',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (313, 'Magnam nisi mollitia est sed corrupti. Dolorum aut neque ipsam et qui nobis voluptates ut.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (314, 'Sed quidem ratione dolorum sed ut neque. Sit nisi magnam omnis ipsam minus harum et.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (315, 'Perferendis aut ut odio ex. Velit sed voluptatem minima dicta in.', 0, 'info', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (316, 'Dolorem ut id accusamus consequatur. Aut porro voluptas commodi. Commodi beatae nemo sint.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (317, 'Itaque minima quae illum excepturi reprehenderit nihil. Consequatur nostrum expedita voluptates id.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (318, 'Cumque molestias ut et adipisci molestiae. Quis vel quis omnis distinctio eius voluptatum.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (319, 'Sit voluptatem incidunt sit autem recusandae necessitatibus. Provident ipsam rerum aut blanditiis.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (320, 'Facilis et quo dolore. Reiciendis rerum labore et omnis alias.', 0, 'todo', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (321, 'Adipisci debitis odio quod tempore modi et. Ex quod nisi fugiat.', 1, 'todo', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (322, 'Est magnam a et vitae temporibus. Aliquam labore placeat debitis ea nulla qui repellat.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (323, 'Eum accusantium ab in sit. Dolor molestias nam repellat voluptatem.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (324, 'Est est asperiores non quas. Rerum ut ut commodi in. Et doloremque delectus odit dolor nihil.', 0, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (325, 'Qui velit culpa quis. Aut quasi assumenda nam occaecati dolorem aut possimus.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (326, 'Voluptatem qui praesentium repellat eos est. Ea beatae sit architecto quis.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (327, 'Rem velit ut officiis illo. Ut ut illum repellat et. Velit aut dolores nemo quo sed voluptas enim.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (328, 'Dolorem alias expedita autem magni. Dolore eum voluptatem ea voluptates eaque eum possimus atque.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (329, 'Voluptatem quidem fuga sed. Aut enim vel eum eligendi non neque. Quaerat modi sed et.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (330, 'Veniam omnis nesciunt blanditiis nemo optio aut. Corrupti impedit voluptatum laboriosam rem.', 1, 'todo',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (331, 'Aut accusantium et ullam qui qui ex. Sit aut quas odit non.', 1, 'todo', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (332, 'Libero veniam at voluptate et non. Eveniet quia placeat libero est cum soluta eaque.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (333, 'Ipsam qui qui sed. Molestiae eligendi dolor enim hic non aut natus.', 1, 'todo', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (334, 'Similique sit et aut veritatis dolorem cumque. Consequatur temporibus facere quo.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (335, 'Rerum quis molestiae rerum adipisci corrupti quia. In ut sed iusto vel et.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (336, 'Fugiat optio ea quia et qui. Ex voluptatem ipsa repellat. Debitis veniam nisi qui.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (337, 'Beatae et sed qui. Velit alias facere consequatur hic est. Et delectus eum sapiente asperiores.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (338, 'Vero quia sit quia magnam rerum sit et. Reiciendis corporis quo sint in molestiae maiores itaque.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (339, 'Aliquid dicta fuga voluptatum esse dolores. Qui doloremque in dolores.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (340, 'Quia et et minus eum et occaecati. Vero dolores aut voluptates dolor eos necessitatibus.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (341, 'Voluptatibus et et quis voluptatem ut omnis. Modi ratione voluptatum voluptas voluptas.', 0, 'category',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (342, 'Et nihil a nobis ipsam iste accusamus qui reiciendis. Illo tempora debitis laudantium et ab.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (343, 'Totam ut omnis quam eum. Exercitationem rerum ut cum.', 1, 'category', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (344, 'Unde numquam sequi eaque quis omnis fuga. Dolor deleniti occaecati accusamus omnis optio.', 1, 'category',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (345, 'Quis quia aliquam quis dolorem voluptatem sunt non. Ullam explicabo non sint tempora.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (346, 'Nostrum dolores voluptas qui est. Perspiciatis error natus et sit at libero totam.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (347, 'Ipsam voluptatibus dolorum praesentium fugit. Animi voluptas sit enim dolor.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (348, 'Quaerat autem qui voluptas ratione. Fuga magni qui necessitatibus temporibus illo.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (349, 'Qui quis adipisci et quibusdam tempora. Et voluptatibus exercitationem vitae sit sint amet.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (350, 'Sed aut et aut qui. At itaque corporis possimus et et nobis. Aperiam esse eos esse voluptas.', 1, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (351, 'Harum esse dolores hic officiis. Rerum voluptate facere laboriosam voluptatum minus aut repellat.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (352, 'Autem labore a nihil aut optio placeat assumenda. Sed ab suscipit et molestiae.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (353, 'Voluptatem qui facere provident omnis libero. Eum perspiciatis sed odio. Eos eos ut vitae.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (354, 'Et qui dolorum laborum ab sed. Qui repudiandae quia vitae adipisci ea voluptatem atque.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (355, 'Incidunt libero laudantium sunt. Et omnis voluptas voluptas ipsam.', 0, 'todo', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (356, 'Saepe corporis cumque et voluptatem. A aut non error sit. Ea velit velit est itaque.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (357, 'Reprehenderit a laudantium magni fuga. Totam veritatis quo explicabo placeat.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (358, 'Voluptate explicabo dignissimos quaerat provident. Rerum necessitatibus eos perspiciatis voluptas.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (359, 'Voluptatem dolores asperiores temporibus deleniti. Voluptas est nisi perspiciatis rerum est.', 1, 'todo',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (360, 'Sunt ea vitae quas quos necessitatibus cum. In qui enim aut ut est fugit rem.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (361, 'Voluptas et in nisi est est aut. Excepturi qui qui magnam et illum.', 1, 'todo', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (362, 'Consequuntur in et dicta ab molestiae maiores nulla suscipit. Occaecati dolorem illo libero quia.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (363, 'Enim occaecati est repellat nihil. Deserunt commodi deleniti cumque ut voluptatibus pariatur.', 0, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (364, 'Dolorum eum a cum eius similique. Accusantium ut in cupiditate explicabo unde quia natus.', 1, 'category',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (365, 'Impedit aut et voluptate quod odio. Et minima autem itaque exercitationem. Ut vel cum animi.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (366, 'Nemo et temporibus voluptate tempora pariatur. Nemo nam ut eos et eaque odio.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (367, 'Quod repellat ullam ea nam ducimus vel quis. Eius ut et vitae. Ea et quia eveniet iusto.', 1, 'category',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (368, 'Dolorum et neque velit et nulla rem repellat. Et necessitatibus rerum at.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (369, 'Nemo qui similique assumenda repudiandae molestias nobis. Cum cumque tempore reprehenderit.', 1, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (370, 'Sint dolores velit totam dolores voluptas dolor impedit. Explicabo velit enim ducimus eligendi.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (371, 'Maxime iure voluptatem maiores. Et ut earum consequatur sed. Eligendi molestias neque asperiores.', 0,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (372, 'Doloremque possimus dolores sequi sit et ipsam voluptas. Perferendis exercitationem quae sunt.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (373, 'Ad repellat quos debitis. Sequi autem ut velit.', 0, 'todo', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (374, 'In quam quia ipsam quo. Distinctio ut ut aut accusamus sequi nostrum. Quae in recusandae mollitia.', 1,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (375, 'Voluptatem maxime est ut. Id amet ut soluta voluptas repudiandae. Neque assumenda quod sequi quasi.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (376, 'Cumque quaerat esse rerum aut. Ad aut nihil doloremque numquam hic perferendis quidem.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (377, 'Numquam non culpa maxime. Ut temporibus sit sequi. Temporibus neque cumque quae dolores.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (378, 'Eos itaque inventore sit rerum odio porro. Temporibus necessitatibus quaerat voluptate atque qui.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (379, 'Dolores ipsam est molestiae. Assumenda impedit nisi repudiandae.', 0, 'info', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (380, 'Molestias minima ea ex enim qui. Minus tenetur ad consectetur labore.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (381, 'Ipsa maxime rerum et enim possimus magni nisi. Pariatur harum fugit consequatur molestiae aperiam.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (382, 'Debitis ut aut vel id. Quia voluptates provident consectetur dolor quos. Non maiores enim est.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (383, 'Eveniet ut minus autem et modi non consequatur. Omnis eius repellendus amet omnis.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (384, 'Harum repellat nostrum quia. Voluptas aliquam nostrum minima. Laudantium aliquid corrupti sed est.', 1,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (385, 'Nisi eligendi aspernatur accusamus iusto et. Ut voluptatum at voluptatem quidem.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (386, 'Molestiae magnam in doloribus eligendi. Recusandae ullam quam eos voluptates natus.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (387, 'Qui assumenda asperiores ea laudantium. Voluptatem aut et adipisci voluptatem.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (388, 'Est quis sit ut magnam. Rerum laborum omnis quia.', 0, 'category', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (389, 'Aut asperiores voluptates qui sit atque. Aperiam dolores blanditiis ipsum aliquam aut debitis et.', 0,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (390, 'Quia sapiente est nam voluptatem. Sapiente fugit ad recusandae necessitatibus totam eaque.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (391, 'Et vero odio aut quos rem. Aut et repudiandae rerum nisi omnis quas non.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (392, 'Pariatur at nam delectus ut. Blanditiis voluptatem nisi ad sunt voluptatum.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (393, 'Odio ut aliquid sequi tenetur. Alias harum et non sapiente.', 0, 'todo', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (394, 'Aut sint deserunt illum est quasi velit porro. Amet laudantium nihil eum velit in voluptatum.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (395, 'Repellendus a fugit aut itaque vel et harum corporis. Nobis qui id quidem nihil molestias.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (396, 'Ratione rerum deleniti dolores molestias maxime et. Quos quam commodi voluptatibus vitae.', 1, 'category',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (397, 'Quisquam earum non at harum sequi. Molestias est quod repudiandae est porro rerum.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (398, 'Commodi vero sit facilis facilis eos cumque. Repellendus eum fugiat dolor aperiam.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (399, 'Eius possimus quod architecto distinctio excepturi molestias a. Architecto non soluta vero.', 0, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (400, 'Quisquam et itaque nobis consequatur. Id sint vel est vel. Sit qui et tempore et rerum illo ut hic.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (401, 'Cumque soluta sit soluta. Quas sit et aut porro. Est minus asperiores aut ipsam.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (402, 'Magni non odio sit voluptatem iste. Consectetur totam non sint est consectetur.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (403, 'Qui et non ea veritatis qui. Illum qui aliquam nulla deleniti.', 0, 'category', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (404, 'Sed nemo excepturi vero id quam. Sit ipsam reiciendis quia mollitia laudantium.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (405, 'Qui expedita repudiandae omnis quo sed ut. Perferendis similique nemo atque harum quia.', 1, 'category',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (406, 'Labore placeat perferendis distinctio velit et sunt aut odio. Dolor neque quaerat quibusdam.', 0, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (407, 'Natus adipisci ut et ea. In minima dolores est non illo error. Consequatur optio sapiente a.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (408, 'Et enim atque quo. Ipsa accusamus a necessitatibus dolorem. Unde quos aut quibusdam soluta.', 0, 'todo',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (409, 'Nostrum porro libero nihil animi. Id voluptatem voluptas necessitatibus alias.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (410, 'Dicta et et debitis et. Debitis enim quos quis ipsa. At perferendis harum et sed.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (411, 'Sapiente et perferendis est. Culpa atque ex reprehenderit. Porro et harum sunt eos.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (412, 'Molestias magnam molestiae saepe officia. Non odio nostrum dolor dolor.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (413, 'Cupiditate reprehenderit nihil qui. Distinctio saepe eum ab aliquam maxime.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (414, 'Deserunt illum totam accusamus sint. Amet quos fugit delectus omnis. Omnis odio ut accusantium.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (415, 'Enim quia odio magnam. Repudiandae laborum deserunt ut assumenda. Ea ut animi vel nam quod.', 0, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (416, 'Aut sunt labore aut quisquam quae iusto. Atque unde omnis eius est aut et.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (417, 'Iusto vel natus quo qui in. Deserunt quas omnis vitae deleniti ut aut.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (418, 'Tempore sapiente aut voluptatem accusamus facilis facilis. Id iure ut ab dolor illum ipsam impedit.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (419, 'Voluptatem culpa suscipit ullam laboriosam. Est unde exercitationem minima sed quia aliquam et.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (420, 'Et est odio quo. In beatae quo consequatur. Debitis dolores sapiente exercitationem.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (421, 'Maiores culpa et ipsum aut et ad asperiores. Rerum deserunt officiis voluptate et veritatis sit.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (422, 'Alias hic possimus harum quod odio rem suscipit. Commodi aut id amet et. Possimus totam hic porro.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (423, 'Distinctio mollitia aut aliquam eligendi mollitia totam. Ut assumenda aliquid ipsum est ducimus ad.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (424, 'Ducimus sint officiis incidunt et. Sint sed cupiditate fugit alias cum. Impedit quia sit commodi.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (425, 'Dolorum velit minima ipsa et tempora. Maiores nisi repudiandae eligendi.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (426, 'Culpa voluptates laborum culpa debitis quo incidunt. Et amet magnam ea dolores quia nihil facilis.', 0,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (427, 'Architecto est aut ut ipsam aliquid tenetur non. Vitae sit et explicabo illo qui eligendi.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (428, 'Cum dignissimos nam nihil. Ducimus cumque ut assumenda ipsum. Eaque eveniet ex ducimus et.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (429, 'Qui ea aut id quia. Magni hic iste aut at. Occaecati nobis consequatur corporis omnis voluptatem.', 1,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (430, 'Praesentium eum dolores explicabo veritatis dolor. Veniam et alias at quis consequatur ullam aut.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (431, 'Sunt qui ipsam quo qui fugit et aut. Ullam id cum debitis quo rerum.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (432, 'Facere facere culpa iste voluptatem dolore. Nulla tempora illo alias vel perferendis reprehenderit.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (433, 'Ad ipsam hic qui eligendi laborum quibusdam. Sint dignissimos ducimus alias enim qui eaque.', 1, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (434, 'Esse hic omnis delectus. Eius et quas quo. Enim impedit ipsum quam similique.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (435, 'Occaecati ut doloremque corrupti culpa ut. Itaque ut tempore delectus.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (436, 'Similique omnis harum aspernatur rerum quae magni quidem. Hic laudantium rem voluptatem.', 0, 'category',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (437, 'Dolorum at quis et nisi. Illum temporibus dignissimos facere soluta voluptatum labore voluptatem.', 1,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (438, 'Optio accusantium optio delectus. Sunt est voluptatibus assumenda inventore id.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (439, 'Ut quo ad et atque. Quia nostrum voluptas est eos. Dolorem quos repellat culpa unde et.', 0, 'category',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (440, 'Debitis sed aut laborum. Consequatur dolorem aliquam officiis quibusdam porro possimus.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (441, 'Maiores assumenda earum a. Vel ab ut natus voluptas fuga illum. Nihil hic et qui enim.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (442, 'Quam labore distinctio quia quidem in. Vitae commodi omnis rerum. Ut dolorum impedit sunt.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (443, 'Ut animi magnam molestiae repellendus tempora. Officia consequatur ea magnam quae.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (444, 'Deleniti a dolorem eum animi reiciendis. Est et magni at ut earum. Iste eaque omnis rerum atque.', 0,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (445, 'Accusantium soluta unde alias sint. Aut adipisci consequuntur ipsum.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (446, 'Quo sit amet facilis non minima. Eos rerum eveniet est numquam illo modi. Quia et in tempora.', 0, 'info',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (447, 'Rerum dolore molestiae quia et recusandae id sint. Qui ut molestias reprehenderit nostrum quia.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (448, 'Ipsa minima et molestias magnam quasi. Non ut numquam sit in. Et eius dolor minus placeat vitae.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (449, 'Et ab est et itaque. Velit qui tempora rerum minima nemo quasi quis.', 1, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (450, 'Aspernatur consequatur sunt earum dolorem quaerat fuga quia. Qui incidunt sed et ut voluptates.', 0,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (451, 'Minus necessitatibus sunt omnis sed. Qui quod ad quaerat sed.', 1, 'info', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (452, 'Similique veritatis veritatis non et. Quo maxime a aliquam neque praesentium.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (453, 'Non exercitationem non doloremque. Nam sed enim perferendis. Tempore facilis ipsa suscipit eum.', 0,
        'todo', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (454, 'Sit provident nesciunt consequuntur minus ut et. Commodi dicta incidunt in.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (455, 'Amet sed et esse corrupti. Ipsum eum dolor aut molestiae error sit asperiores.', 0, 'todo', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (456, 'Sequi odit nihil fugiat. Non et autem rerum dolores ut ab. Aut recusandae cumque aut unde et.', 1,
        'category', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (457, 'Nostrum delectus ut inventore quae autem animi quas. Est et autem quod non neque sint.', 0, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (458, 'Fuga eaque quas sed. Ad in expedita suscipit eaque reiciendis et. Sequi corporis et sed voluptate.', 1,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (459, 'Recusandae dolores dolorem ex. Fugiat sed ducimus doloribus. Ut aliquid facilis et commodi.', 1, 'todo',
        1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (460, 'Voluptatem dolor enim animi. Natus illo autem animi nulla quia.', 0, 'todo', 1, '2022-07-15 17:32:19',
        '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (461, 'Iure facilis eos neque necessitatibus. Voluptas sint provident atque doloribus.', 0, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (462, 'Eligendi quod animi optio hic autem qui. Quaerat inventore quasi est ut.', 1, 'category', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (463, 'Ipsum quis omnis dolor. Est maxime nam ad odio. Quia sed nesciunt autem aspernatur est.', 1, 'info', 1,
        '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (464, 'Voluptate quia libero ex placeat. Omnis non ipsum est. Est veritatis molestiae veritatis voluptate.', 1,
        'info', 1, '2022-07-15 17:32:19', '2022-07-15 17:32:19');
INSERT INTO `todo_lists`
VALUES (465, 'Tempora non et ipsam voluptatem. Quis voluptatem corporis quod perferendis magni omnis animi.', 0, 'info',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (466, 'Blanditiis velit velit cum consequatur. Eum similique aut sapiente voluptate a. Hic iure id sit ut.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (467, 'Eius id ut quaerat molestias quibusdam. Aut qui ex vel ullam. Enim quo ut est omnis neque nihil a.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (468, 'Et eum alias et explicabo quo. Incidunt corrupti magni ex atque. Quia et est recusandae voluptatem.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (469, 'Sed sit laboriosam adipisci quia quo ut aperiam. Iure ut qui maxime incidunt quaerat magnam et.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (470, 'Et minima vel et quibusdam. Debitis mollitia sequi nihil officia quia.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (471, 'Voluptas non sed facilis magni. Aut ea magni fuga vero. Odit fugiat quaerat magnam maxime.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (472, 'Quas eius dolorem adipisci perferendis. Molestiae eaque ipsum quam cupiditate ut nemo.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (473, 'Ipsam exercitationem nihil consequatur voluptatum. Sed quo inventore exercitationem corrupti.', 0, 'info',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (474, 'Debitis nulla at sapiente dolor tempore. Nobis quam sit sit. Optio excepturi enim animi officiis.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (475, 'Eius omnis omnis odio qui laudantium nemo maxime. Ducimus quas fuga non quae.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (476, 'Beatae quod excepturi magni minima qui autem quo. Est sit modi voluptas. Soluta cum sint et.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (477, 'Sit quod sit vero eum non. Sed et sint quasi sed non autem. Id neque odit officia.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (478, 'Temporibus porro praesentium ut odio ut. Itaque quaerat amet magni repudiandae officiis.', 1, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (479, 'Cum ducimus enim id nulla. Possimus est et quas numquam sunt. Cupiditate iusto autem qui.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (480, 'Minima sapiente natus deleniti sit explicabo accusamus. Est quidem sequi sequi.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (481, 'Est laborum nostrum aut molestiae ducimus nihil. Accusamus sit animi ad.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (482, 'Optio debitis nesciunt ipsum quibusdam optio voluptas voluptates. Amet aliquid quaerat qui sint.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (483, 'Esse voluptas consequatur odit. Quidem sapiente aut libero mollitia.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (484, 'Ipsum impedit qui et. Ex mollitia soluta quisquam dignissimos magnam ea.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (485, 'Non voluptatem vero ea ut repellat. Earum vero dolor non. Rem et culpa similique inventore odio.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (486, 'Ut est placeat dignissimos ut velit ad et. Animi quod repellat molestias quisquam vero.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (487, 'Rem libero quaerat ea. Mollitia qui eligendi et quis ut voluptas consequatur.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (488, 'Laudantium et deleniti sed quae. Ut est velit animi natus molestias.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (489, 'Beatae sit harum iste id. Molestiae expedita qui totam magnam. Dolor iusto rerum omnis suscipit.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (490, 'Repellendus omnis eveniet eius fugit quae. Vitae praesentium eum excepturi.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (491, 'Modi eius animi ab. Delectus et eum labore ipsam ipsa voluptatem quo. Expedita minus quam a et.', 0,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (492, 'Nam qui libero sit officiis. Animi dolorem eveniet non beatae. Ut vitae ipsam doloribus.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (493, 'Et rerum quasi sit. Est deleniti sint quis voluptate est sapiente dolorem dolores.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (494, 'Neque vel optio ipsam sit. Nesciunt maiores quae qui. Id itaque sit nostrum deleniti numquam dicta.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (495, 'Numquam aliquam asperiores iusto voluptatem. Voluptates architecto quibusdam quas quam in.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (496, 'Blanditiis iure eum ut qui et. Temporibus harum beatae minus ad libero.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (497, 'Fugit nobis sapiente dolorem quasi ad. Magni sint mollitia tenetur quam voluptate rerum rerum eum.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (498, 'Sed illo hic ducimus ducimus qui et iusto. Quas ad nesciunt qui doloremque perferendis temporibus.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (499, 'Unde fugit porro qui doloremque sit et. Et eius odit assumenda corrupti.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (500, 'Quis quis aut repellat. Quia ut error non laudantium non placeat. Sit sunt qui ipsa non quidem.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (501, 'Sed unde fugiat officia voluptatibus facere. Qui eligendi reiciendis distinctio et labore eveniet.', 0,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (502, 'Est cum tempore nisi. Repellat aliquid quaerat et. Eaque sit ut delectus aut ducimus ut eum vero.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (503, 'Eos rerum sapiente ea molestias quisquam vero. Et placeat deserunt quidem.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (504, 'Sed eum totam dolor doloribus. In distinctio fugiat dolores aliquam. Adipisci et rerum et.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (505, 'Enim exercitationem qui ipsam sit. Provident adipisci aut ipsam aliquam eos. Cum ut eum neque sed.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (506, 'Aut dolorem aliquid esse soluta. Ab voluptatum provident sed ut id autem placeat.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (507, 'Reprehenderit dolorem iusto culpa pariatur tempora hic. Doloribus aut a aut sit et sint.', 1, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (508, 'Vel fuga voluptates possimus dolorem placeat tempore. Aut dolor minus est maiores totam et est.', 0,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (509, 'Aut id est aut quam. Placeat quo totam a amet deleniti.', 1, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (510, 'Facere nihil ad non excepturi quidem et reprehenderit. Eum quia id ipsa. Ut facere aliquam odio.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (511, 'Recusandae suscipit fuga possimus voluptatum. Necessitatibus modi illum quia esse magni quo.', 0, 'info',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (512, 'Nihil odit quia at ut. Distinctio fugiat asperiores temporibus numquam omnis possimus qui dolorem.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (513, 'Aut tempora commodi quidem possimus et. Eum illo error unde soluta et ut.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (514, 'Deleniti quod dolor nostrum aut sed. Adipisci accusantium officia nihil voluptates.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (515, 'Et est non nostrum placeat. Tempora est amet voluptatem ex. Id animi dolore consequuntur deserunt.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (516, 'Earum iusto sed temporibus. Est ipsam aut delectus iste.', 1, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (517, 'Quidem et tenetur sit. Esse culpa dolorem sapiente sint sit enim occaecati.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (518, 'Et enim nihil est quos ut. Quidem veniam impedit quia debitis facilis magni impedit.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (519, 'Sint minus ad sit dolore qui. Facilis aliquam quod voluptates et ut qui asperiores est.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (520, 'Labore accusamus et deserunt nisi ut autem doloribus. Odit illum libero nisi. Vero et numquam qui.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (521, 'Eius illo iusto ea explicabo pariatur in. Eum sed aut praesentium quia placeat rerum.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (522, 'Quos harum veritatis doloremque illum rerum modi. Ipsam provident impedit fugit aut magni officia.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (523, 'Qui ut ipsum et aliquid exercitationem et. Ab dolore voluptas animi molestiae.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (524, 'Quaerat placeat dolorem ut necessitatibus voluptate. Qui nemo porro rem quia ut.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (525, 'Quia qui qui debitis adipisci officiis temporibus. Et aut consectetur in totam.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (526, 'Saepe cupiditate et voluptatem itaque nisi deserunt. Rem nihil cum itaque ducimus.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (527, 'Nisi eius quidem voluptatem quo. Aut est quia eos quis exercitationem veritatis minus.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (528, 'Voluptatem nisi dolorum et. Natus corporis et velit reprehenderit velit harum.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (529, 'Facere fugiat optio saepe. Et itaque dolor est aliquid et quia qui.', 0, 'todo', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (530, 'Voluptate veritatis veritatis ut qui aut. Id delectus sunt soluta explicabo.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (531, 'Ad culpa et sed qui veritatis. Nihil voluptate rerum error. Totam aut velit voluptatem ut.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (532, 'Enim harum inventore ut. Ea fugiat qui labore et. Eaque eveniet et placeat delectus.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (533, 'Enim enim quam magni beatae unde. Placeat quasi minus quia officiis repudiandae totam nulla.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (534, 'A esse cum temporibus sequi sit saepe nostrum totam. Voluptas soluta maiores asperiores.', 1, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (535, 'Neque omnis delectus et et ullam neque. Eveniet corporis hic iusto.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (536, 'Est esse dolore cupiditate. Sit similique provident culpa autem ea. Quae cum aut illo facere.', 1, 'info',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (537, 'Maiores nihil magnam quia. Harum numquam dolore architecto debitis. Omnis veniam sunt at odio.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (538, 'Soluta maiores natus nesciunt natus. Sed aliquam ipsam dolor quidem eaque ut voluptas.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (539, 'Dolorem eius quos aut non amet et. Accusantium autem natus dolorem explicabo nobis nostrum.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (540, 'Non provident delectus vero. Recusandae nulla aliquid harum tempore.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (541, 'Vitae quia et et impedit. Modi molestiae ipsum quas soluta. Est suscipit aut inventore.', 0, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (542, 'Sed dignissimos iusto accusantium voluptatem ratione eum. Saepe ullam in vitae aspernatur.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (543, 'Et magni labore in blanditiis qui excepturi officiis. Et enim quod exercitationem.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (544, 'Quibusdam eaque et hic non ipsam esse. Est rem voluptatum sequi et.', 1, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (545, 'Repellat voluptatem et nemo laboriosam. Consequuntur sapiente voluptatem aut.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (546, 'Accusamus beatae rerum sed illum et. Similique a in asperiores harum facilis.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (547, 'Illum voluptatem qui molestiae. Et odio deserunt quos qui vel. Enim vitae delectus ut et.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (548, 'Omnis libero alias animi cupiditate. Possimus sit fugiat tenetur voluptatum nihil.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (549, 'Aliquam et impedit cum quisquam. Et corrupti veniam a ipsa est illum in.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (550, 'Aspernatur eius dolore amet totam sed cumque. In voluptatem et voluptate.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (551, 'Non veritatis eos odit. Quo ipsa necessitatibus dignissimos aliquam vitae quia.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (552, 'Rem autem pariatur vel quis commodi quia ea. Earum qui dolorem et eaque et corrupti.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (553, 'Optio doloribus ut nulla quia maiores qui velit labore. Optio dolorem incidunt ratione esse quia.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (554, 'Nostrum veritatis sunt repellendus magni. Et numquam tempore illum eius consequatur alias.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (555, 'Dolorem aliquam molestias vel illum totam provident. Accusantium laboriosam minima a dolor.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (556, 'Recusandae incidunt ut natus alias veniam eos quis. Nulla sunt quas aspernatur a.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (557, 'Iure ut aut omnis earum non omnis. Vel est voluptatem repudiandae.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (558, 'Dolores occaecati ducimus est maiores dicta. Est eum eos quo nostrum. A molestiae eum non aut ea.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (559, 'Quis quisquam recusandae saepe id. Ut aut eligendi reiciendis dolor at reprehenderit.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (560, 'Labore dolore natus reiciendis id quo. Saepe consequuntur possimus optio.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (561, 'Quia non laudantium iusto et vero blanditiis. Explicabo vel modi optio cum repellendus veniam.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (562, 'Et nobis omnis sit. Praesentium repudiandae reprehenderit nisi.', 1, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (563, 'Est fugiat quod dignissimos qui et. At ipsa possimus quis corrupti a. Expedita sed inventore minus.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (564, 'Nostrum soluta provident error. Est omnis consequatur optio molestiae. Id autem sunt rerum quaerat.', 0,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (565, 'Culpa odit sequi nihil ab recusandae consequatur maiores. Saepe quaerat ad optio esse.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (566, 'Molestias aut rerum ipsam accusamus. Iure nulla qui eligendi. Repellat omnis sapiente nihil enim.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (567, 'Fugiat deserunt vel sit voluptas illo. Qui quia earum tempora adipisci. In molestiae et nulla aut.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (568, 'Repudiandae eos qui tempore aut. Corrupti odit rerum cupiditate et adipisci corrupti qui.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (569, 'Ducimus et et unde. Dicta temporibus et dolorem ut aut. Velit et occaecati earum.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (570, 'Aut mollitia numquam sunt maiores dolorem necessitatibus. Natus et et sunt.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (571, 'Aut aut sapiente necessitatibus quia excepturi quia pariatur. Vel maxime fugit earum ut et ad.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (572, 'Qui quidem maxime vitae earum. Eum quia sint blanditiis alias.', 1, 'todo', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (573, 'Veniam aliquid voluptatibus optio vero perferendis. Maiores natus dolor aliquam voluptatum.', 0, 'todo',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (574, 'Impedit rerum quo sequi omnis. Ex facere id sed voluptate ducimus aut. Odit laboriosam et et.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (575, 'Ut sed voluptatem dolor voluptatem. Numquam hic reprehenderit fuga.', 1, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (576, 'Nihil illo illum ut veritatis velit. Beatae distinctio reprehenderit atque eligendi sit harum ipsa.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (577, 'Hic cumque consectetur ut explicabo non assumenda qui et. Voluptas omnis voluptate quia libero.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (578, 'Eaque dolorum omnis minima nisi. Minima est repudiandae et qui in qui et.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (579, 'Quod quis delectus non est nisi omnis. Iure beatae accusamus et id.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (580, 'Dolorem aut ratione optio modi. Beatae nostrum nobis incidunt animi. Velit autem numquam ut harum.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (581, 'Ut facere natus accusamus. Hic atque harum velit consequatur. Facilis voluptatum qui mollitia eius.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (582, 'Aut et recusandae temporibus. Molestiae quas est unde illum dolores libero ullam.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (583, 'Rerum amet veniam ratione sed tenetur dolorem. Repudiandae in temporibus quo quas.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (584, 'Est sapiente pariatur qui corrupti asperiores enim vel quo. Ex commodi assumenda nihil earum.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (585, 'Qui vel earum inventore eaque velit corporis a. Et temporibus excepturi nihil numquam quasi natus.', 0,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (586, 'Molestias rerum cum laboriosam ut facere. Rerum eos nihil voluptates.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (587, 'Repellat quibusdam sed illo ab. Omnis sit eius et eum praesentium. Modi earum ratione error dolor.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (588, 'Voluptates aliquid explicabo quis. Nulla aperiam veritatis eos optio distinctio tenetur culpa.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (589, 'Exercitationem accusamus ut nihil itaque sequi eum. Blanditiis ab ducimus eos natus ipsum eos.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (590, 'Eos mollitia optio nemo. Illum dolores inventore velit quaerat.', 0, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (591, 'Non id hic excepturi autem. Fuga ut corporis consequatur consequatur. Magni ut ipsam non.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (592, 'Est ut fuga nostrum vel. Aspernatur sint laboriosam repudiandae ut. Nemo magnam et placeat porro.', 0,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (593, 'Aut consequatur aut at est incidunt laboriosam. Saepe est voluptatem amet ducimus ea.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (594, 'Incidunt vitae aut neque omnis consequatur harum. Pariatur possimus sint natus sit.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (595, 'Qui minus facere perspiciatis suscipit. Ut architecto tenetur consequatur odit aut et.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (596, 'Nihil illum atque porro qui. Molestiae aliquam asperiores optio necessitatibus. Quas quo quia id.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (597, 'Quo atque ipsa atque voluptatem harum. At quo tempora rerum quo rerum est.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (598, 'Corporis sed voluptatem aut. Nisi facilis enim minus sed.', 0, 'todo', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (599, 'Eos vero minus et nulla praesentium. Voluptatem veniam illo modi in perferendis omnis impedit.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (600, 'Alias dolorem excepturi et aperiam aut velit. Quos qui et ut voluptas cum eum.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (601, 'Aut quaerat est cumque aut omnis. Harum quia recusandae qui amet. Rerum magnam nihil occaecati aut.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (602, 'Iure sint perspiciatis qui velit reiciendis esse est. Eos tempora sequi in consequatur dolores.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (603, 'Quam dolores magni et quia excepturi animi ab et. Voluptates est eligendi velit et autem molestias.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (604, 'Autem placeat maiores ipsum et quae. Sint cumque quo optio dolor.', 0, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (605, 'Est perspiciatis hic nostrum eveniet laborum eius qui. Autem ut eveniet aut corrupti quia.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (606, 'Dolores rerum ut natus. Vel porro amet vero maxime inventore quo. Et facilis dolore atque aut.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (607, 'Ducimus assumenda eius repellat cum. Quos ut voluptatem ut iste voluptates illum velit ut.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (608, 'Accusantium rerum distinctio atque eius velit. Ut vitae est quisquam.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (609, 'Sequi quo fuga quaerat ea quis eius nesciunt. Nesciunt in est molestiae magnam.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (610, 'Aut nihil itaque aut unde. Ad et voluptatum tenetur tempore. Tenetur et ut omnis excepturi libero.', 0,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (611, 'Enim libero expedita temporibus laudantium nam. Qui est voluptatem aut sed quidem pariatur aut.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (612, 'Aliquid voluptas quis qui modi nulla. Est et aut aut qui praesentium.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (613, 'Amet veniam magnam ut id. Modi et necessitatibus provident dolor. Aut qui laudantium assumenda.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (614, 'Unde necessitatibus et numquam. Reprehenderit est aut est rerum. Vitae earum quis dignissimos.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (615, 'Est libero molestias eum sint. Et rem enim minima voluptatem officiis.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (616, 'Labore distinctio doloribus est vero aspernatur quidem sit. A magni esse facilis rerum non.', 0, 'todo',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (617, 'Sequi rerum aut non consequatur minus. Ad quas consequuntur amet qui corporis ipsam.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (618, 'Quo possimus est a veritatis. In non itaque ut id. Aut consequatur eos beatae et.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (619, 'Quia ut corporis voluptas maiores unde. Eum et pariatur ipsa necessitatibus sed.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (620, 'Omnis et beatae tempora corporis. Cupiditate molestiae quo porro iure.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (621, 'Quo sunt maiores quisquam omnis. Impedit sed nobis voluptas quasi ullam.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (622, 'Consequuntur dolorem animi reprehenderit aliquam. Quod qui et eligendi iste.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (623, 'Odit aut voluptatem minima ea expedita repellendus. Ratione ut eaque optio sed voluptas ut.', 0, 'todo',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (624, 'Voluptas eaque id perspiciatis pariatur facilis et. Dicta nihil rerum neque ratione dolor sunt.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (625, 'Praesentium corporis placeat neque pariatur. Modi totam error at.', 1, 'todo', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (626, 'Minus et soluta voluptatem sed. Ab laboriosam eum optio qui. Aliquam neque maxime et alias.', 0, 'info',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (627, 'Aut nemo quidem et. Sunt nemo enim consequuntur voluptatem quasi.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (628, 'Ut culpa consequatur impedit voluptatem. Aut deleniti quas dolores molestias ea.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (629, 'Eos modi fuga laudantium. Vero non quia facilis at voluptates commodi.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (630, 'Dolores laborum atque fugiat ut. Est qui quia dolores ut ea voluptatem ratione.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (631, 'Molestias magni unde molestiae nihil. Nemo est amet voluptas dolore quo itaque cumque.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (632, 'Quia ex totam doloremque. Et mollitia repudiandae tenetur minima recusandae quis.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (633, 'Sed velit et accusamus adipisci. Omnis quia dolores consectetur quae illo cum sint.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (634, 'Voluptates et nostrum enim ipsa beatae magni. Incidunt esse sunt qui laboriosam non.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (635, 'Possimus aut quam tempora tenetur. Qui et reiciendis perferendis eum quia veniam.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (636, 'Atque est ab est voluptas itaque. Corporis consequuntur aliquid qui ab laboriosam facere et.', 1, 'todo',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (637, 'Consequatur molestiae omnis voluptates sint itaque commodi vitae. Magnam laboriosam rem numquam.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (638, 'Fugit non et nihil. Et sequi sequi ad aut voluptas id aut. Dolor necessitatibus provident eligendi.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (639, 'Unde eos quia enim earum iusto consequatur ut. Et maxime quia repellendus ducimus quia.', 0, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (640, 'Facilis explicabo quod et qui esse iusto numquam. Mollitia neque occaecati odit modi neque quia.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (641, 'Aut aliquid commodi dolorem deserunt recusandae cumque vel. Voluptate ea ut sed quis quam.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (642, 'Tenetur reprehenderit occaecati in quas eos vitae provident. Quis quia nostrum nulla.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (643, 'Sequi labore aliquid expedita et non ea est. Quia quis molestias pariatur.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (644, 'Et quam et animi veniam. Eaque ipsa fuga sed expedita qui deleniti est. A harum sit aut eum qui at.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (645, 'Voluptatem sed numquam vel eum. Alias qui similique ea sit saepe sed.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (646, 'Sed qui magni qui sit beatae. Sed ut voluptatem tenetur aperiam. Nihil ex enim tempora et.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (647, 'Iusto rerum et odit. Maiores iusto voluptatibus est. Quibusdam dicta rerum recusandae autem quas.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (648, 'Natus eum labore tenetur soluta. Ab eaque quidem odit minus ut corrupti.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (649, 'Molestiae ratione esse dolore dolor. Temporibus ratione est et et. Placeat corporis sunt sint nam.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (650, 'Est dolores et quas recusandae. Sunt soluta facilis id harum.', 0, 'category', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (651, 'Tempora omnis sed deleniti. Eos sequi animi quo. Quia nobis magni dignissimos odio fuga.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (652, 'Ea voluptatem ratione dicta ab eos vero sapiente. Incidunt quis asperiores tempora et.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (653, 'Porro quod voluptatem voluptate et. Sit neque dolorum laudantium non magnam officiis eius.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (654, 'Laboriosam ipsa rerum veniam neque consequatur molestiae amet. Nesciunt nihil placeat quo sint.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (655, 'Molestias qui et veritatis eos in. Omnis pariatur ipsum doloribus non. In ab soluta facere ipsa.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (656, 'Fugit nihil doloribus atque voluptas. Neque maxime quia ut sapiente autem.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (657, 'Aut exercitationem consectetur est odio. Adipisci deleniti ea ducimus alias placeat.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (658, 'Tempore in ratione nam ut quas minus. Dignissimos maiores neque similique quo vel tenetur.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (659, 'Beatae necessitatibus eos quia aut. Assumenda architecto nostrum possimus vel ex expedita.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (660, 'Corporis ratione nihil unde. Rerum deleniti sunt nisi numquam qui.', 1, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (661, 'Voluptates voluptas ad sed. Exercitationem aspernatur ad laboriosam est sapiente distinctio.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (662, 'Distinctio voluptatibus consequatur consequatur. Magni eaque sunt sed non asperiores ad in.', 1, 'todo',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (663, 'Non et consequatur cumque vero. Laudantium ut quasi blanditiis qui aut dolor officiis.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (664, 'Et et rem sint rerum quas. Reiciendis quod et fugit tenetur. Doloremque tenetur aut amet dolores.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (665, 'Est qui ipsum quo unde libero aspernatur nihil. Sed atque nesciunt aut consequatur sunt.', 1, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (666, 'Numquam omnis ab quia ducimus. Ut veniam similique ratione. Rerum dicta nihil ut.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (667, 'Amet vel repellendus ut qui. Deserunt deserunt a voluptatem voluptatum cumque ut.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (668, 'Expedita ex optio veniam doloremque hic. Perspiciatis voluptatibus cupiditate explicabo.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (669, 'In omnis id deleniti sed repellendus. Mollitia error commodi libero sapiente.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (670, 'Quaerat et dolores quisquam voluptatibus distinctio. Quia culpa ratione hic enim.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (671, 'Ut laborum nostrum repudiandae qui enim molestiae. Modi non exercitationem tempore ullam.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (672, 'Natus dolore placeat dolorem veritatis qui voluptas modi eum. Voluptates totam unde corrupti.', 0, 'info',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (673, 'Molestiae quo voluptas tenetur asperiores commodi enim. Fugiat eligendi sit nemo.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (674, 'Veniam dolor similique molestias. Libero quia iusto nihil non blanditiis.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (675, 'Nihil quis ea quam. Qui eveniet quia accusamus neque.', 0, 'category', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (676, 'Ut ex consectetur fugit dolor et autem enim. Doloribus quia autem nemo est.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (677, 'Ea hic omnis itaque. Eveniet dicta voluptas ea optio magni. Facere odio explicabo nam est nisi eos.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (678, 'Rerum voluptatum consequuntur dignissimos ipsam possimus. Assumenda amet ut hic ea distinctio quia.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (679, 'Est voluptas vel modi placeat autem vel totam. Deleniti nam quia ut. Optio laborum ipsum natus.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (680, 'Qui ab qui libero placeat laborum. Ducimus quia autem nihil occaecati qui ducimus exercitationem.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (681, 'Inventore a et omnis doloribus quis sunt. Facilis officiis dicta natus incidunt ut.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (682, 'Incidunt alias nesciunt et iste. Accusantium quaerat praesentium eum sint earum cumque autem aut.', 0,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (683, 'Aut delectus alias atque. Consequuntur et alias est magni at quam voluptatem sunt.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (684, 'Porro fugit sunt at et odio. Nesciunt dignissimos eum enim omnis in. Est quod minima eaque a.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (685, 'Voluptas magnam animi et totam. Eos tempora voluptas nobis molestias atque earum.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (686, 'Voluptatum nemo dolorem voluptatem dolorum. Nostrum id et soluta aspernatur.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (687, 'Necessitatibus et amet qui. Consequuntur quaerat nulla tempora.', 0, 'todo', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (688, 'Omnis ullam tempore qui voluptatibus consectetur omnis. Fugit dicta aperiam rem odio et dicta qui.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (689, 'Saepe ut eum et quis quas cum. Nisi cumque quia voluptates id eius ea.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (690, 'Ut quas debitis animi facilis. Magni corporis qui natus. Cum est occaecati sint earum.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (691, 'Non eligendi et aut et magni. Perferendis nam qui delectus. Quis et laudantium impedit eaque.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (692, 'Et unde autem id. Omnis nam minus eveniet. Accusamus cumque quasi assumenda nesciunt aut.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (693, 'Eos quis tempora hic itaque. Aut rem natus ipsum voluptas excepturi a.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (694, 'Expedita aut fugit architecto magni. Sint nihil voluptates similique ipsam cupiditate ut.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (695, 'Non et quaerat eos nobis. Incidunt quisquam repudiandae ut quos.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (696, 'Inventore dolorem sunt eius mollitia minima. Sed perspiciatis expedita ex dolor explicabo.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (697, 'Nam cumque rem fuga. In sed est error aut ratione aliquid.', 0, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (698, 'Ex ut illo nemo nemo quia. Aliquid assumenda facere nulla vero. Ab maxime enim sit at et.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (699, 'Ut aperiam nostrum culpa magni quia et. Ut sit est culpa qui impedit.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (700, 'Non voluptatem eos eius velit ut natus. Nostrum repellat eum illum sed similique.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (701, 'Nesciunt voluptate ea enim adipisci amet aut numquam. Et eligendi totam est consequatur.', 1, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (702, 'Aut tempore illum at rerum. Libero rem at pariatur autem. Nihil iusto qui nulla.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (703, 'Sed nihil voluptatem ut. Magni quibusdam sit quia debitis. Dolorum numquam tenetur vel.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (704, 'Aut nostrum dolor sunt nam. Enim sit repellat aut inventore provident. Maxime qui aliquid non.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (705, 'Quis ut illo rerum fugit. Id ipsam aut facere et. Accusantium omnis ipsum accusamus.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (706, 'Et aliquid et porro nam cum. Est sint eum ipsa nihil. Dolores non consequatur voluptates corrupti.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (707, 'Ducimus rerum at sint autem. Labore adipisci eveniet sed quisquam ut.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (708, 'Quisquam a omnis itaque incidunt aut minus animi. Quia est vero enim culpa.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (709, 'Illum accusantium itaque commodi sit sed in dicta. Hic et sed et.', 1, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (710, 'Aspernatur deserunt et sed tempore totam voluptas. Saepe neque rerum est consequatur perspiciatis.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (711, 'Sint cupiditate quod dicta ut et sunt. Non saepe aut dolor earum aperiam illo.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (712, 'Sapiente quos repellat aliquid. Velit eos dicta commodi voluptas.', 0, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (713, 'Eum voluptas blanditiis expedita. Et et voluptatum rerum consectetur.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (714, 'Voluptas magnam error non ipsam. Explicabo beatae voluptatem rerum error.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (715, 'Officia dolor et perspiciatis nam voluptates et. Fuga porro consequatur ut reprehenderit velit qui.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (716, 'Harum sit illo est atque. At odio molestiae aut quam. Quos enim esse quia in qui id.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (717, 'Quibusdam et quidem occaecati omnis. Nihil perferendis adipisci a neque laboriosam.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (718, 'Odio saepe fugit nihil dolor. Veniam quam earum earum.', 0, 'category', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (719, 'Iure harum eaque optio neque. Omnis quod in nostrum. Voluptatem assumenda odio nesciunt velit.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (720, 'Consectetur commodi aspernatur et atque. Ipsum quia quidem quod. Et dolorem voluptate expedita.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (721, 'Autem tenetur excepturi totam. Quo harum voluptatem maiores est. Ab nihil eligendi officia fuga.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (722, 'Veniam qui et atque quia autem. Mollitia hic et distinctio nihil aliquid et.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (723, 'Laudantium repellat excepturi et. Necessitatibus id officia incidunt. Ea sit ut vero quas.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (724, 'Amet quia doloremque quam distinctio numquam. Ipsa alias quia consectetur.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (725, 'Ut quia cumque cum. Similique dolores recusandae veritatis sit porro voluptate doloremque.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (726, 'Et corrupti fuga saepe omnis. Aut saepe iste sunt odio similique. Vel aut eum delectus qui.', 1, 'info',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (727, 'Et earum suscipit non. Aliquam nulla rem deserunt vero in. Consequatur odio cupiditate sint quo.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (728, 'Alias accusamus aut dolorem rerum amet. Earum dolore debitis dolorem magnam explicabo.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (729, 'Est nobis ut dolor hic. Labore deserunt accusamus et tempore. Sit qui aut atque debitis.', 0, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (730, 'Aspernatur quisquam facilis est eveniet. Debitis qui repellendus omnis et et qui id.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (731, 'Officia rerum ratione facilis deleniti. Impedit ad dolorum sint qui saepe.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (732, 'Dolores cumque eum consectetur reprehenderit. Et impedit voluptas voluptatem eos.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (733, 'Magni quisquam qui ut libero ea non et. Qui et sed labore sed. Et aut voluptatem reprehenderit.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (734, 'Id ea eius explicabo ex. Ipsam dolores error necessitatibus et in et dolores.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (735, 'Incidunt eum a et in omnis. Dolore eius mollitia asperiores. Accusamus magnam soluta odit et.', 0, 'info',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (736, 'Eos veniam odit iure magni qui voluptas. Et aperiam amet distinctio praesentium quidem omnis nihil.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (737, 'Quod doloribus illum deserunt facilis delectus in. Natus dolores provident voluptatem ut.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (738, 'Quo voluptatum ullam quos asperiores. Aperiam neque tenetur vitae non placeat.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (739, 'Maxime enim et blanditiis et. Non assumenda dolore accusamus dolor. Sunt maxime porro fugiat.', 0, 'todo',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (740, 'Quo quo illo deserunt nam. Non autem deserunt omnis veniam. Consequatur unde sed odit dolorum.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (741, 'Sint recusandae sint eius cumque in sit. Sit reprehenderit modi dolor rerum quos fuga est.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (742, 'Autem reprehenderit rerum autem sit omnis. Sed aut voluptatem rerum nemo reprehenderit saepe.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (743, 'Ad qui id eligendi quod non dolore. Quia saepe ratione et odit et.', 1, 'todo', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (744, 'Facilis animi aperiam id. Quaerat odit quisquam sunt.', 0, 'todo', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (745, 'Nihil ex perspiciatis animi voluptatum ullam. At velit sed aut autem dolorem.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (746, 'Minus quos praesentium quis. Alias et laborum numquam quisquam ea et. Non cum quidem veniam quos.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (747, 'Voluptatem quo earum sed delectus labore temporibus corrupti. Ut harum aut deleniti quidem dolores.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (748, 'Non nihil cupiditate magni iure. Et sint est quia. Aut rerum et explicabo esse aspernatur quia.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (749, 'Ullam omnis et accusantium. Eos odio molestiae inventore provident quo.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (750, 'Quam occaecati cumque sed voluptatem. Optio aut sapiente ut reiciendis commodi soluta numquam.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (751, 'Vel ut occaecati laudantium ipsam. Quo in vero voluptatibus quia.', 0, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (752, 'Esse cupiditate aut placeat. Repellat soluta aut quia modi eaque corrupti.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (753, 'Et beatae sed corporis qui et optio dolor temporibus. Minima aspernatur fugit sit laudantium.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (754, 'Et libero sunt dolores sit itaque et. Consequatur qui hic cum rerum in.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (755, 'Eos fuga ut optio et maxime facere. Enim suscipit sed consequatur iste dignissimos.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (756, 'Adipisci temporibus ipsa ut aliquid. Ex consequuntur et temporibus quia et ut ut.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (757, 'Dolore vero iure reiciendis qui. Recusandae quia earum est debitis dignissimos.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (758, 'Voluptatem non omnis quis non sint incidunt. Non molestiae quae deleniti sed debitis aut.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (759, 'Sapiente dolorum et est. Nesciunt nam ratione qui earum. Quis et molestias debitis et.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (760, 'Nihil expedita ducimus dignissimos esse delectus non. Quod laboriosam ullam illo odit.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (761, 'Non autem et molestiae suscipit ducimus fugit ut. Alias ullam voluptatum magnam eum ut.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (762, 'Sed ea quaerat voluptatem aut vero. Optio pariatur qui et odit. Odit expedita quis saepe voluptas.', 0,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (763, 'Quis numquam nam aut fuga voluptatum aliquid rerum. Aut omnis officia nemo iste possimus autem.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (764, 'Autem reiciendis architecto iure aut et quos omnis. Dolore at expedita blanditiis et.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (765, 'Dolorem nihil similique sed excepturi aut. Quas quibusdam eius voluptates qui.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (766, 'Non debitis consequatur et aperiam. Aut in mollitia doloribus nihil dolore iusto voluptates nisi.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (767, 'Quibusdam est quaerat quam natus ratione. Autem nisi blanditiis architecto. Recusandae ut est aut.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (768, 'Qui facilis consequatur odit et. Molestiae id et dignissimos voluptatibus sequi.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (769, 'Est asperiores aut praesentium aut. Quia quia explicabo ut impedit. Sint et dolore eaque quidem.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (770, 'At quia corrupti iusto officia quia. Qui et voluptatibus repudiandae.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (771, 'Aut molestiae nostrum optio. Rerum similique et culpa quis qui molestiae.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (772, 'Porro sed neque veniam voluptas. Odio qui illum nesciunt.', 0, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (773, 'Ut distinctio et aliquid aut. Unde quos nihil quam ex.', 1, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (774, 'Est eligendi blanditiis reiciendis quidem. Ut impedit eligendi alias sed.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (775, 'Ab nihil eum sit. Non et cum tempore consequatur cumque sequi quia.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (776, 'Quia deleniti nostrum adipisci ea. Quidem quidem atque quibusdam architecto et omnis.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (777, 'Rerum et magnam ut consequuntur error sunt id. Et fugit qui voluptatem aut quo non voluptatibus.', 0,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (778, 'Maiores necessitatibus nihil neque. Aut natus non eaque voluptas omnis id.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (779, 'Natus adipisci laboriosam id sit dolores beatae. Quia aut optio accusantium corporis expedita a.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (780, 'Tempora unde excepturi dolores blanditiis earum libero. Et est non repudiandae itaque aperiam.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (781, 'Recusandae aut sed voluptatem. Est ea velit dolores quo nesciunt consequatur fugiat.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (782, 'Quia pariatur placeat odio voluptatem praesentium tempora. Neque sit error eos et sapiente.', 0, 'info',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (783, 'Rerum atque sit molestiae velit cumque. Quia vel distinctio incidunt unde praesentium.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (784, 'Harum dolorem quo ut dolores. Labore et eum libero. Temporibus et cumque omnis eos et officia quam.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (785, 'Sequi est ut at ut aut earum. Aut distinctio saepe qui blanditiis velit sunt.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (786, 'Voluptate dolorem eaque error atque. Voluptas adipisci expedita molestias non.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (787, 'Eaque quis ut et atque possimus neque quo occaecati. Qui voluptate debitis veniam fuga doloribus.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (788, 'Officia aut voluptatibus et. Nihil qui laudantium vitae aspernatur ut.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (789, 'Mollitia harum laborum vel iure. Delectus quia ut illum ut.', 1, 'category', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (790, 'Velit distinctio unde perferendis aliquid ad. Nostrum cumque id veritatis sunt est ea.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (791, 'Quae at soluta et labore. Neque ad ut dolor repellat. Nostrum quia eveniet consequatur quidem.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (792, 'Eum amet rerum magni doloribus. Ut ut placeat voluptatibus qui vel.', 1, 'todo', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (793, 'Laborum voluptate omnis quaerat. Modi sit dignissimos rerum voluptas iusto esse.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (794, 'Architecto rem ipsam qui nemo doloremque cum. Qui eos veritatis et qui.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (795, 'Et id eum suscipit aut vitae animi impedit. In et ut vel. Animi sed vel ut non consectetur.', 0, 'todo',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (796, 'Doloribus delectus facilis illo animi. Delectus dolorem illum illo esse repellat dolor voluptatem.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (797, 'Ducimus temporibus ullam illum eveniet illum nihil. Rem sit amet cupiditate fugit omnis.', 0, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (798, 'Qui quaerat non impedit in consequatur. Et quia molestiae iusto odio aut qui.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (799, 'Atque occaecati consequatur voluptatem rerum non. Nostrum adipisci quis eius asperiores et.', 0, 'todo',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (800, 'Commodi optio qui distinctio quaerat sint odit. Facilis similique nisi dolor.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (801, 'Sed minus aut commodi voluptatibus delectus maiores. Nemo aut aut quo quos suscipit dolor dolore.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (802, 'Temporibus est sapiente praesentium qui. Et nemo vitae error id voluptate.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (803, 'Quis optio dolore dignissimos at dolores omnis. Quidem ipsa aspernatur ducimus velit officiis.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (804, 'Enim soluta et accusamus id eos est. Fugiat ut deserunt rem laudantium.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (805, 'Velit iusto reprehenderit quam culpa. Iusto repellendus vel adipisci voluptas quis sit aut.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (806, 'Iusto et illum similique cum. Atque consequatur quasi ad perspiciatis aperiam assumenda qui.', 1, 'info',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (807, 'Et ab consequuntur neque omnis repellendus a. Cum nulla ratione tempora commodi deleniti.', 0, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (808, 'Nam quos sunt corporis in. Eum nobis sit non. Temporibus consequatur qui ad et dicta corrupti.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (809, 'Corporis consequatur velit voluptas quod. Rerum voluptas aut qui asperiores quibusdam.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (810, 'Ipsum culpa itaque rerum. Quam sit velit sit excepturi repudiandae repudiandae maxime.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (811, 'Et pariatur sit voluptatem dolorum tenetur est expedita. Odit eum nihil eos placeat excepturi sit.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (812, 'Aliquid placeat et ipsum cupiditate. Sed sunt facere beatae impedit repellat sapiente.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (813, 'Sint sed ut qui culpa sed ab vitae. Et dolorem dignissimos et. Aut deleniti blanditiis soluta.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (814, 'Velit optio quia inventore molestiae aut qui deserunt. Quaerat ut repellendus illo omnis quasi.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (815, 'Nam et ut est aut laborum reprehenderit numquam ad. Unde cum ex at aliquam.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (816, 'Iusto unde quasi aut minus voluptate dolorum. Ut et consequatur eos assumenda enim voluptas qui.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (817, 'Asperiores excepturi sed quo fugiat iste nihil qui. Qui quasi possimus deserunt enim occaecati.', 0,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (818, 'Aut id vero soluta officiis eos. At quo quo atque eveniet.', 0, 'category', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (819, 'Et rerum ea esse sit incidunt quia quas. Aliquid est sapiente consectetur.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (820, 'Excepturi possimus sunt facere non. Velit fugit dolorem facere iure est.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (821, 'Vero id et rerum dolore. Rem aliquam animi et atque neque.', 0, 'category', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (822, 'Laborum quod tempora neque earum. Id quia sit voluptatem et ea dolor ut.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (823, 'Vitae est similique iste odit dolor aut. Qui qui assumenda voluptas fugiat non non magnam.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (824, 'Et earum praesentium ab dolorum in asperiores aut. Cupiditate vel incidunt reprehenderit est.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (825, 'Perspiciatis totam aut beatae aut non adipisci facere. Autem veniam qui ducimus.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (826, 'Et omnis quo nemo mollitia. Quis accusamus saepe et quo et cumque. Eum sit ut excepturi saepe vero.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (827, 'Itaque soluta eos est repellat vitae qui. Odit non ut accusamus excepturi aut cupiditate.', 0, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (828, 'Quaerat quis libero iste esse eius occaecati. Ut accusantium expedita ducimus et earum.', 1, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (829, 'Eum id similique distinctio delectus velit dolores non. Omnis est eligendi ipsam.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (830, 'Optio sint qui neque sapiente. Voluptatum velit ex consequatur ut iusto sed consectetur.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (831, 'Ea doloremque consequatur architecto qui. Suscipit error eum nihil qui itaque occaecati cum.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (832, 'Dicta ut velit alias id consectetur. Rem delectus dolores nulla sed assumenda voluptates modi.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (833, 'Rerum quas laboriosam consequatur non. Rerum quod eos quia qui iste dignissimos.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (834, 'Labore sequi perferendis veritatis quos quibusdam. Natus unde ut explicabo est.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (835, 'Sed labore quos consequatur mollitia omnis. Fugiat et eveniet unde aliquam et laudantium.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (836, 'Incidunt velit id illo. Perferendis quis aliquam odio excepturi. Qui et corporis quis qui hic.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (837, 'Eum eum qui vitae. Maiores est quis ducimus.', 1, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (838, 'Ipsum voluptate rerum ad sit qui quasi facilis. Praesentium quia impedit autem alias quia.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (839, 'Perferendis facere quos repudiandae commodi sunt. Aut autem qui quam delectus pariatur est.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (840, 'Ut architecto soluta dolor pariatur. Architecto neque vero nam ea.', 1, 'todo', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (841, 'Illum ipsum commodi sed. Exercitationem ut eius sapiente quisquam facere sunt.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (842, 'Vitae id placeat ut qui veniam porro. Quo et non quisquam ut. Aperiam eos placeat fuga quo ut modi.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (843, 'Et voluptatem vero omnis qui non. Et beatae nesciunt quasi illum sunt nobis inventore nostrum.', 0,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (844, 'Dolore velit praesentium corrupti molestiae tempore laboriosam culpa. Molestiae nihil natus quis.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (845, 'Eum iure quia et fuga quia. Repudiandae in dolore non. Ad quos tempora sequi ipsa.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (846, 'Odit sunt aut aliquam omnis commodi aut. Rerum accusantium aspernatur voluptas.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (847, 'Asperiores placeat incidunt dignissimos. In est autem ipsum.', 1, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (848, 'Rem ut nisi sit eaque. Omnis vitae et doloremque corporis. Tempore fugiat adipisci et facilis.', 0,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (849, 'Vero facilis aspernatur incidunt omnis voluptate. Consectetur ut ipsam voluptatum totam debitis.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (850, 'Incidunt maxime at dolore. Et qui vero harum in. Aut delectus illum quae doloremque a.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (851, 'Quibusdam molestiae aut id sunt officia est dolorum. Accusantium possimus ad fuga veritatis.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (852, 'Sed dolorem et dolor quia est qui. Iste vel reiciendis aut.', 1, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (853, 'Qui rerum et molestiae id. Et laborum sunt ipsa ab.', 0, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (854, 'Earum eius qui rem repudiandae veritatis omnis fugit. Et ut et odio mollitia.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (855, 'Magni repudiandae rerum est. Et neque hic quasi sunt. At ex debitis nobis labore.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (856, 'At molestias fugit perspiciatis dicta explicabo illo. Quibusdam iusto quis et qui.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (857, 'Explicabo libero est nemo. Fugit odit facilis aut ea voluptas dolores voluptas.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (858, 'Animi quos quis blanditiis ullam. Rerum ducimus consequuntur illo maiores rem ad id.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (859, 'Mollitia nam voluptatum eos et. Amet libero expedita fugit. Assumenda consequuntur enim reiciendis.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (860, 'Labore nulla possimus et eum est ullam vitae. Quisquam quasi minima aspernatur mollitia aperiam.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (861, 'Dolores et sequi rerum accusantium et voluptatem. Architecto sed voluptatem voluptatem ratione.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (862, 'Error fugiat libero omnis fugit sunt. Qui consequatur commodi dolorum placeat culpa.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (863, 'Quod necessitatibus totam excepturi. Doloribus nemo ut illo quod. Eaque rerum eum dolor aut est.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (864, 'Esse labore qui provident pariatur odio. Pariatur officia et voluptate omnis ipsa similique.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (865, 'Laudantium quia eum doloribus commodi aut quam odit. Ut iure vel est ut facere aliquid.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (866, 'Ut consequatur ipsum aut. At quos quaerat sint amet. Laborum sint non in.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (867, 'Et delectus dolores labore iusto dignissimos. Id voluptatem quo ex qui nobis.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (868, 'Dolorem ut ea dicta omnis. Et odit ut similique illum id. Minima voluptatibus molestiae facilis.', 0,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (869, 'Quos sint consectetur sequi facere id aut dolorum. Et voluptates recusandae voluptatem voluptas.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (870, 'Ratione deleniti incidunt repellat inventore commodi. Voluptatum nemo sapiente ut et sed.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (871, 'Quas ullam sed non. Non quia et suscipit. Distinctio voluptas illum repellendus itaque.', 1, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (872, 'Repellat libero vero sequi in illo. Ad et est aliquam ut nostrum et ut voluptatem.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (873, 'Et incidunt molestiae quia voluptas eveniet esse. Porro occaecati quod ex at reiciendis similique.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (874, 'Facere aut repellat rerum unde voluptas vel. Et tenetur ipsum inventore enim soluta.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (875, 'Ut autem eligendi nihil quod nesciunt. Iure nulla necessitatibus laboriosam adipisci.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (876, 'Odio veritatis ut consequatur et animi maxime. Assumenda officia nostrum similique itaque velit.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (877, 'Vel alias repudiandae mollitia qui assumenda fugiat. Odit rerum odit ea molestiae accusantium ut.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (878, 'Accusantium totam et laboriosam eos et dignissimos quidem in. Quo impedit at excepturi et.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (879, 'Aut ab est non. Qui ut neque ea. Ut sint a ut ipsa.', 1, 'todo', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (880, 'Aut maxime non repudiandae ut rerum consequatur. Omnis qui aut consequatur repellendus ullam esse.', 0,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (881, 'Harum voluptates enim et ad sunt eligendi. Pariatur atque est ipsam saepe quam ullam et.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (882, 'Animi inventore nemo quisquam aperiam. Asperiores praesentium autem recusandae aspernatur.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (883, 'Quasi nostrum hic enim inventore. Facere amet eos at veritatis nihil.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (884, 'Inventore enim aut voluptatem nemo consequatur minus. Quo similique dolore eos ut iusto.', 1, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (885, 'Eum possimus laudantium unde maxime. Ut culpa mollitia beatae aut aliquam optio ea.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (886, 'Eum est quia consequuntur eos. Veritatis qui accusamus mollitia.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (887, 'Voluptatum asperiores ut officia nam. Quo dolores odit ipsum explicabo. Sit eveniet et maiores ea.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (888, 'Aliquam tempora et quis. Unde officia id consequatur cum corporis id.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (889, 'Esse ad eaque sunt. Officiis magnam dolor ut aut non voluptatum. Ipsa inventore nisi et ipsa.', 0, 'info',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (890, 'Quia ex omnis nam et veniam eligendi. Qui eligendi fugiat magnam iure. Sint accusamus nihil sed et.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (891, 'Veniam quia sint illum voluptatem. Velit qui ut dolores ipsam.', 1, 'todo', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (892, 'Qui quibusdam et impedit. Voluptate corrupti nam sed assumenda.', 1, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (893, 'Ex fuga ipsa quo est. Aut quisquam voluptates ab dolore. Dolor qui vel est eligendi est.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (894, 'In rerum ipsum laboriosam. Nulla aut pariatur doloremque. Quis earum eos natus vel.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (895, 'Sed odit modi ut corrupti eveniet consequuntur. Dolor et consectetur porro nostrum neque.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (896, 'Vero cum et illo nihil et labore. Est inventore ab quia reiciendis. Id est ullam sit.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (897, 'Laudantium debitis pariatur inventore atque. Ex est et consequatur repellendus.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (898, 'Rerum excepturi minima quas. Dolores sed vel atque id dolor error.', 0, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (899, 'Iste deleniti minus voluptate quod sed non. Ipsa dolorum aut ipsam sed odio labore qui.', 0, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (900, 'Non qui sunt quis voluptatem aliquid. Animi ad et debitis. Nemo et voluptatem est eum.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (901, 'Inventore est voluptatum quo quia voluptatem quisquam. Tenetur dolorum ut labore.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (902, 'Delectus quaerat sed qui nesciunt facilis. Placeat accusantium rem earum minus. Iusto aut quo vero.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (903, 'Omnis voluptatem possimus est. Facere debitis fugiat et est omnis. Odit numquam officia quo.', 1, 'info',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (904, 'Sed incidunt delectus quo qui. Quibusdam minus iusto inventore atque nisi.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (905, 'Voluptate sit ducimus nihil est. Veniam minus est inventore rerum. Atque ut fugiat rerum.', 1, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (906, 'Suscipit ut ipsum illum quia quod fugit voluptatum ab. Et excepturi nulla vel ipsum.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (907, 'Harum unde aliquid ea modi. Et totam ipsum qui.', 1, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (908, 'Incidunt ab nobis velit omnis. Animi vitae neque dolores sunt et illum vero.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (909, 'Magnam alias id temporibus. In nemo cumque nihil. Id similique harum ratione et itaque expedita.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (910, 'Ut ex libero adipisci aliquam repudiandae et. Nostrum sequi nemo sit ut.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (911, 'Autem ratione itaque vel quaerat sunt fugit. Quas fugiat nihil non numquam corporis.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (912, 'Ipsa aut similique non est cum quo. A mollitia nemo excepturi sit ad.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (913, 'Et voluptates ea neque deserunt recusandae eum quos quia. Omnis ipsum ut quis fugiat.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (914, 'Dolorem occaecati qui voluptate assumenda est. Temporibus eaque laborum et atque possimus eum.', 1,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (915, 'Aut tenetur eligendi cum ipsum. In et omnis consequuntur.', 0, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (916, 'Similique est animi molestiae temporibus incidunt. Unde dolores totam aut quia natus.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (917, 'Quaerat dolor ut et. Qui et tempore libero rerum repellendus. Est quos placeat sequi aut qui.', 1, 'info',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (918, 'Accusamus aut incidunt aspernatur omnis. Odio eligendi deleniti magnam et et aut et.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (919, 'Omnis quia quibusdam ipsam nisi numquam qui. Porro laboriosam in ullam.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (920, 'Sit nihil corporis corporis dolorum accusamus quia. Nostrum vitae et sit ut voluptas.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (921, 'Animi adipisci sit odit veritatis. Velit sed fuga rerum consectetur ut.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (922, 'Omnis ipsa velit autem ullam. Vero ut esse ducimus consequuntur ut blanditiis.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (923, 'Et facere corporis esse similique. Vel ab numquam consequatur accusantium dolore officia fugit.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (924, 'Odio est consequatur quis. Autem qui pariatur ut ad. Nihil assumenda quia fugiat nam.', 0, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (925, 'Pariatur modi eos mollitia mollitia nobis aut. Itaque earum eum quasi atque assumenda ad quia enim.', 0,
        'todo', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (926, 'In nesciunt labore non rerum. Saepe dolores minus beatae ut recusandae corporis.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (927, 'Non eaque inventore in suscipit rem facere. Ab nobis ab eius consequuntur quod autem modi.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (928, 'Quo aliquid non ipsa vitae et qui. Id rerum alias rerum. Nulla ullam consequuntur libero aut.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (929, 'Consequatur sunt laborum consequatur autem optio. Voluptas fuga temporibus ea voluptates fugiat.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (930, 'Numquam quia at et praesentium officiis. Qui est non optio. Et quo dolor nostrum a sunt aliquam et.', 1,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (931, 'Sit iure est unde quibusdam. Quas rem earum iste quis.', 0, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (932, 'Modi sit sunt harum possimus qui. Rerum nemo provident consequuntur aut cupiditate aut.', 1, 'category',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (933, 'Officia molestias et ducimus. Aut error et tempore numquam officia.', 0, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (934, 'Neque sequi repellendus ea libero. Quaerat non quibusdam dicta. Amet nesciunt culpa iure maxime.', 1,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (935, 'Ut voluptatum vitae sunt molestias eveniet. Soluta facere similique quis ut ea nam.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (936, 'Aspernatur animi sed error vero. Eius est dolor id ipsum. Quam rem voluptate doloribus fuga.', 1, 'info',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (937, 'Sequi officia facilis voluptas. Est ea voluptatum officia accusantium quos vitae.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (938, 'Porro reprehenderit sed aperiam enim iusto. Ea laboriosam modi cupiditate et. Et vero non fuga et.', 0,
        'category', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (939, 'Accusamus unde nostrum nesciunt. Minima architecto excepturi laudantium.', 0, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (940, 'Minima maxime quasi quas magni. Error dolores quidem velit. Sed blanditiis quia ut iusto nulla.', 0,
        'info', 1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (941, 'Omnis quia alias est. Optio reprehenderit distinctio rerum iure.', 0, 'info', 1, '2022-07-15 17:32:20',
        '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (942, 'Officia aut optio non quia ad soluta. Eius facere incidunt sequi quo ab in.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (943, 'Repellat molestias in corporis est deleniti. Aut odio ut voluptas est dolorem.', 1, 'info', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (944, 'Voluptatem sit asperiores rerum non et. Voluptates sit deserunt qui ut officiis placeat.', 1, 'todo', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (945, 'Sed nobis praesentium sit. Officia aliquam praesentium praesentium et.', 1, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (946, 'Laboriosam necessitatibus in illo non. Necessitatibus qui dolor soluta sed quas quod.', 0, 'category', 1,
        '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (947, 'Dolor et animi quaerat distinctio exercitationem cumque. Deserunt modi eaque magni adipisci.', 1, 'info',
        1, '2022-07-15 17:32:20', '2022-07-15 17:32:20');
INSERT INTO `todo_lists`
VALUES (948, 'Omnis voluptate incidunt nostrum sed. Qui eum ut asperiores dolorem assumenda.', 1, 'info', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (949, 'Distinctio et autem laboriosam vel eos quia. Mollitia ullam rerum dolorem aut.', 1, 'todo', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (950, 'Aut aliquid veritatis ipsum aliquam libero. Nobis ut officia voluptatem eveniet.', 1, 'category', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (951, 'Ut est quia qui quos optio autem eligendi et. Omnis vero impedit ut corporis provident.', 1, 'category',
        1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (952, 'Provident unde rerum molestias aut aut in. Rem voluptatem nemo ipsum eius aut tempore omnis.', 0,
        'category', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (953, 'Accusantium officiis ea sed nesciunt saepe. Cumque sequi optio velit ut.', 1, 'todo', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (954, 'Fugit iure et autem velit. Ea rerum in vitae. Itaque aliquid incidunt repellendus ex ut unde fugit.', 1,
        'info', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (955, 'Qui et velit ut quos autem. Distinctio eos optio et aperiam aut ut.', 1, 'todo', 1, '2022-07-15 17:32:21',
        '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (956, 'Nobis aperiam maiores et debitis maxime. Vero voluptas ut quia. Quis culpa ut quis.', 1, 'todo', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (957, 'Distinctio et repellat cupiditate. Tempora qui illum et.', 0, 'info', 1, '2022-07-15 17:32:21',
        '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (958, 'Corrupti aliquid nulla qui et. Non at rerum et itaque similique.', 1, 'info', 1, '2022-07-15 17:32:21',
        '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (959, 'Unde esse quia error recusandae. Quaerat sit aut dolore aliquam.', 1, 'todo', 1, '2022-07-15 17:32:21',
        '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (960, 'Voluptatem minus necessitatibus at repellendus nihil ea. Consequuntur ipsa eum sit et.', 0, 'category', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (961, 'Provident ea impedit et qui. Excepturi rerum quasi tempore possimus. Vero et et sit.', 0, 'info', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (962, 'Dolorem sed aut totam iste explicabo voluptas. Aut ea eos ut quis assumenda.', 0, 'category', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (963, 'Repudiandae ullam cum labore aspernatur consequatur. Ea quia dolorem odio optio.', 1, 'info', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (964, 'Illum aliquam quasi minus temporibus. Adipisci soluta sint nisi saepe dolore quisquam.', 1, 'category', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (965, 'Voluptatum quibusdam velit dolores velit necessitatibus. Vel aut omnis sint.', 1, 'category', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (966, 'Aut corporis voluptatum qui in temporibus omnis. Nihil quibusdam veritatis ut dolorum.', 1, 'info', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (967, 'In sint dolore reprehenderit veritatis. Quia esse necessitatibus blanditiis atque repellat.', 1, 'info',
        1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (968, 'Repellat cum ipsam consequatur numquam praesentium. Est recusandae ullam quia quidem id.', 0, 'category',
        1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (969, 'Sit sit eos aut. Non alias non autem reiciendis. Aliquid ex hic repellendus excepturi laborum quod.', 1,
        'todo', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (970, 'Dolor enim voluptates eligendi sunt commodi facere voluptatum. Sunt ipsam ex quisquam ut et.', 1, 'todo',
        1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (971, 'Vero quia velit vero harum possimus. Enim voluptate velit repellat necessitatibus. Aut eius ut ut.', 0,
        'category', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (972, 'Sed magnam esse nihil rerum. Quod nostrum asperiores et. Atque labore facere quas molestias.', 1, 'info',
        1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (973, 'Et vel optio quia ut non. Fugiat commodi qui sed mollitia.', 0, 'info', 1, '2022-07-15 17:32:21',
        '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (974, 'Mollitia dolor eos facere est. Ut delectus ut omnis amet inventore aspernatur delectus voluptatem.', 1,
        'info', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (975, 'Et qui ad odit. Qui ut quisquam magnam nihil. Cum in et reiciendis esse deleniti.', 0, 'todo', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (976, 'Esse ullam deserunt aut ut. Voluptas ut et et ullam voluptatem facilis sapiente.', 0, 'category', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (977, 'Deserunt veniam harum aut officia quia illum pariatur. Dolores tempora fuga voluptatum nam et.', 1,
        'todo', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (978, 'Illum nobis voluptas consequatur eos ut occaecati. Vitae quia et nisi enim ab illum dolor.', 1,
        'category', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (979, 'Nihil est corrupti aut. Non aut ut quasi placeat nesciunt maxime.', 0, 'info', 1, '2022-07-15 17:32:21',
        '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (980, 'Beatae voluptatem sint assumenda culpa doloremque. Distinctio aut dolore molestias sint.', 0, 'todo', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (981, 'Laborum deserunt illum sit nesciunt ut. Rem sed provident deleniti quos sit suscipit.', 1, 'todo', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (982, 'Eaque delectus quidem sed illo magni. Incidunt non optio quisquam debitis voluptates accusamus nam.', 1,
        'info', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (983, 'Soluta vitae aliquid asperiores eos. Voluptates minima eos nemo.', 1, 'info', 1, '2022-07-15 17:32:21',
        '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (984, 'Dolores culpa aut autem. Optio sit dolore qui autem id.', 0, 'category', 1, '2022-07-15 17:32:21',
        '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (985, 'Molestiae autem cum modi quia molestiae. Quae nihil eum libero quidem. Non est quam ad.', 1, 'todo', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (986, 'Illum numquam natus error consectetur. Vel perspiciatis rerum voluptate animi sint perferendis et.', 1,
        'info', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (987, 'Illo nihil perferendis maiores quisquam illo molestiae. Omnis est cupiditate asperiores aliquam.', 0,
        'info', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (988, 'Nihil est quod ullam harum. Rem enim velit soluta quos provident. Magni sunt numquam ullam labore.', 0,
        'category', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (989, 'Ipsam at et temporibus repellendus ut veritatis. Ut ea eaque libero qui. Culpa a id sed qui.', 1, 'info',
        1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (990, 'Quia id deleniti nihil excepturi. Nihil recusandae et earum nesciunt. Ullam sit animi quia eius.', 0,
        'category', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (991, 'Reiciendis tempore est cupiditate sunt maiores. Facilis magni quasi officiis ab quidem.', 1, 'todo', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (992, 'Cumque non est odio sunt. Eius sint et amet similique.', 1, 'info', 1, '2022-07-15 17:32:21',
        '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (993, 'Ut magnam impedit ad quam distinctio consequatur. Nostrum eligendi et sint eos ipsam.', 1, 'info', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (994, 'Ut aliquid minus expedita natus vel ut. Molestiae placeat qui dignissimos enim est.', 0, 'category', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (995, 'Ut aut labore ipsum et. Qui veniam sapiente consequatur et ipsa. Aut laudantium quia suscipit quia.', 0,
        'info', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (996, 'Quia ut et ab similique voluptatem sit. Cum eum consequuntur sunt. A commodi adipisci in harum.', 0,
        'category', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (997, 'Et est explicabo sapiente. Voluptatem iste id aut animi aut pariatur. Quibusdam aliquid nisi est.', 0,
        'info', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (998, 'At pariatur pariatur labore totam illo ratione voluptatibus. Tenetur aliquam fugiat aut beatae.', 1,
        'info', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (999, 'Iusto possimus voluptate beatae libero est dolore. Ratione nobis sint ea eum.', 1, 'category', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1000, 'Et deserunt qui dolores. Dignissimos qui qui officiis a. Fuga ipsam animi similique sit incidunt.', 0,
        'category', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1001, 'Provident neque suscipit non molestiae. A asperiores est et quae voluptatum.', 0, 'todo', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1002, 'Et error excepturi qui esse. Vitae sint et molestiae et ex quidem eligendi. Ea vitae qui animi.', 0,
        'todo', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1003, 'Nam reiciendis fuga sit quia. Sit eius et est autem. Totam natus quae optio.', 0, 'category', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1004, 'Unde magni repellendus delectus voluptates rerum. Qui sit qui nemo velit voluptas voluptas.', 1, 'todo',
        1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1005, 'Sunt sit nihil natus asperiores. Aspernatur iste nemo molestiae eum tempore doloribus.', 0, 'todo', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1006, 'Iusto et consectetur voluptatum. Totam sed distinctio totam saepe non est.', 1, 'info', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1007, 'Sequi totam quo soluta assumenda doloremque cum. Perferendis aut qui eum.', 0, 'todo', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1008, 'Ut facilis facilis debitis sint quis. Tempora nemo nemo est quos.', 0, 'category', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1009, 'Enim voluptatem dolorem error. Est ab voluptas consequatur quaerat quia.', 1, 'todo', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1010, 'Quisquam et alias amet sunt modi. Quo quia et aliquid sapiente aut dolorem aspernatur.', 1, 'category',
        1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1011, 'Est perspiciatis provident ut sed. Cupiditate amet magni ut. Optio beatae aut enim voluptatem.', 0,
        'info', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1012, 'Et sequi earum quia a. Itaque deserunt nostrum ullam maiores. Reiciendis porro qui et.', 0, 'category',
        1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1013, 'Expedita totam impedit sit. Exercitationem ea laudantium corporis nemo. Non ut vel reprehenderit.', 1,
        'todo', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1014, 'Et voluptatem vitae unde non nostrum nulla. Neque quia aut aut. Nihil quibusdam enim harum non.', 0,
        'todo', 1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1015, 'Esse tempore quis vitae sunt. Et omnis maiores dolores tempore quas.', 0, 'category', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1016, 'Dicta aut expedita eius dolores voluptas aperiam. Delectus quos aut rerum.', 1, 'todo', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1017, 'Eius quisquam hic quia ex. Eveniet id sequi voluptatem inventore eius.', 0, 'todo', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1018, 'Voluptas voluptatum laborum magnam fugit et iure rerum. Sequi est impedit tempore.', 1, 'info', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1019, 'Officia eos non minus voluptas. Veritatis et debitis laudantium enim nemo accusantium.', 0, 'todo', 1,
        '2022-07-15 17:32:21', '2022-07-15 17:32:21');
INSERT INTO `todo_lists`
VALUES (1020, 'Velit voluptate tempora laudantium inventore qui pariatur quia. Illum velit aut ut quod ut.', 0, 'info',
        1, '2022-07-15 17:32:21', '2022-07-15 17:32:21');
/*!40000 ALTER TABLE `todo_lists`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users`
(
    `id`                bigint unsigned                                               NOT NULL AUTO_INCREMENT,
    `name`              varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email`             varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `email_verified_at` timestamp                                                     NULL DEFAULT NULL,
    `password`          varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `remember_token`    varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci      DEFAULT NULL,
    `created_at`        timestamp                                                     NULL DEFAULT NULL,
    `updated_at`        timestamp                                                     NULL DEFAULT NULL,
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

-- Dump completed on 2023-02-09 13:40:17
