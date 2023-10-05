-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 21 2016 г., 07:32
-- Версия сервера: 5.5.50
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shopdvd-local`
--

-- --------------------------------------------------------

--
-- Структура таблицы `sdvd_discounts`
--

CREATE TABLE IF NOT EXISTS `sdvd_discounts` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(255) NOT NULL,
  `value` double unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sdvd_discounts`
--

INSERT INTO `sdvd_discounts` (`id`, `code`, `value`) VALUES
(1, 'ABC', 0.1);

-- --------------------------------------------------------

--
-- Структура таблицы `sdvd_orders`
--

CREATE TABLE IF NOT EXISTS `sdvd_orders` (
  `id` int(10) unsigned NOT NULL,
  `delivery` tinyint(1) unsigned NOT NULL,
  `product_ids` text NOT NULL,
  `price` double unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `notice` text NOT NULL,
  `date_order` int(10) unsigned NOT NULL,
  `date_send` int(10) unsigned NOT NULL,
  `date_pay` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sdvd_orders`
--

INSERT INTO `sdvd_orders` (`id`, `delivery`, `product_ids`, `price`, `name`, `phone`, `email`, `address`, `notice`, `date_order`, `date_send`, `date_pay`) VALUES
(1, 0, '6,6,6,5,5,5,5,5', 300, 'Вася', '8333333', 'asdf@ads.ru', 'ул. Ленина', 'Жду', 1359467164, 0, 0),
(2, 0, '6,6,6,5,5,5,5,5', 2142, 'asdf', 'asdf535', 'asdf@ads.ru', 'adsfasdf', 'asdf', 1359467177, 0, 0),
(3, 0, '6,6,6,5,5,5,5,5', 2142, 'asfd', 'asdfasd', 'asd@asd.ru', 'adsfasdf', 'asdf', 1359468044, 0, 0),
(4, 1, '6,6,6,5,5,5,5,5', 2142, 'asfd', 'asdfasd', 'asd@asd.ru', '15', 'asdf', 1359468056, 0, 0),
(5, 1, '6,6,6,5,5,5,5,5', 2142, 'asfd', 'asdfasd', 'asd@asd.ru', '', '', 1359468068, 0, 0),
(6, 0, '6,6,6,5,5,5,5,5', 2142, 'asfd', 'asdfasd', 'asd@asd.ru', 'asdfsda', '', 1359468416, 0, 0),
(7, 0, '6,6,8,5,3,5,5,5', 2142, 'asfd', 'asdfasd', 'asd@asd.ru', 'asdfsda', '', 1359468424, 0, 0),
(8, 0, '6,6,6,5,5,5,5,5', 2142, 'asfd', 'asdfasd', 'asd@asd.ru', 'asdfsda', '', 1359468457, 0, 0),
(9, 0, '6,6,6,5,5,5,5,5', 2142, 'asdfsd', 'asdfasd', 'asd@asd.ru', 'asdfsda', '', 1359468465, 0, 0),
(10, 0, '6,6,6,5,5,5,5,5', 2142, 'asdfsd', 'asdfasd', 'asd@asd.ru', 'asdfsda', '', 1359469186, 0, 555550),
(11, 0, '6,6,6,5,5,5,5,5', 2142, 'asdfsd', 'asdfasd', 'asd@asd.ru', 'asdfsda', '', 1359469211, 0, 0),
(12, 0, '6,6,6,5,5,5,5,5', 2142, 'asdfsd', 'asdfasd', 'asd@asd.ru', 'asdfsda', '', 1359469223, 5, 0),
(13, 0, '6,6,6,5,5,5,5,5', 2142, 'asdfsd', 'asdfasd', 'asd@asd.ru', 'asdfsda', '', 1359469281, 0, 0),
(16, 0, '6,6,6,5,5,5,5,5', 2142, 'asdfsd', 'asdfasd', 'asd@asd.ru', 'asdfsda', '', 1359469316, 0, 0),
(17, 1, '6,6,6,5,5,5,5,5,5', 21421, 'asdfsd', 'asdfasd', 'asd@asd.ru', 'asdfsda', '', 1359469346, 1359469346, 0),
(18, 0, '1,5,5,5,3,3,3,3,3', 500, 'Василий Пупкин', '85323232', 'mymail@mail.ru', 'ул. Ленина, д. 15, кв. 222, корп. 2', 'Жду', 1360222083, 0, 0),
(20, 0, '1,5,5,5,3,3,3,3,3', 5000, 'Василий Пупкин', '85323232', 'mymail@mail.ru', 'ул. Ленина, д. 15, кв. 222, корп. 2', 'Жду', 1360222187, 1360222187, 1360222187),
(21, 1, '15,15,14', 1, 'Николай', '85395', 'myrusakov.main@gmail.com', '', '', 1360841979, 0, 0),
(22, 1, '15,15,14', 1, 'Николай', '85395', 'myrusakov.main@gmail.com', '', '', 1360845480, 1360845480, 1360845546),
(23, 1, '15,15,14', 1, 'Николай', '85395', 'myrusakov.main@gmail.com', '', '', 1360845626, 1360845626, 1360845672),
(24, 0, '16,3', 548, 'jhgrg', '1515121', 'emailru@mail.ru', 'jhvjub', 'jhefen', 1479378470, 1479378470, 1479630643),
(25, 1, '3', 14238, 'Иванов Иван Иванович', '0556789500', 'ivanov@mail.ru', '', 'Заберу в течения дня', 1479638599, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sdvd_products`
--

CREATE TABLE IF NOT EXISTS `sdvd_products` (
  `id` int(10) unsigned NOT NULL,
  `section_id` int(10) unsigned NOT NULL,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` double unsigned NOT NULL,
  `year` smallint(5) unsigned NOT NULL,
  `country` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `play` varchar(255) NOT NULL,
  `cast` text NOT NULL,
  `description` text NOT NULL,
  `date` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sdvd_products`
--

INSERT INTO `sdvd_products` (`id`, `section_id`, `img`, `title`, `price`, `year`, `country`, `director`, `play`, `cast`, `description`, `date`) VALUES
(3, 1, '123.jpg', 'ASUS ', 15820, 2015, 'ASUS ', 'Intel Celeron N3050 1.6Ghz', '05:00:00', '500Gb жесткого диска, 2Gb Оперативной памяти', 'ASUS R540SA-XX036T (Intel Celeron N3050 1.6Ghz/15.6”/1366х768/2Gb/500Gb/Intel HD Graphics/Wi-Fi/Bluetooth/Win 10)', 1359028434),
(4, 2, 'spartak.jpg', 'Спартак', 350, 1960, 'США', 'Стэнли Кубрик, Энтони Манн', '03:17:00', 'Кирк Дуглас, Лоуренс Оливье, Джин Симмонс, Чарльз Лотон, Питер Устинов, Джон Гэвин, Нина Фош, Джон Айрленд, Херберт Лом, Джон Долл', 'История гладиатора Спартака, его возлюбленной Варинии и честолюбивого римского полководца Красса. Непреодолимая тяга к свободе заставляет Спартака поднять легендарное восстание рабов, ставшее важнейшей вехой мировой истории.', 1359028672),
(5, 2, 'schindler-list.jpg', 'Список Шиндлера ', 350, 1993, 'США', 'Стивен Спилберг', '03:15:00', 'Лиам Нисон, Бен Кингсли, Рэйф Файнс, Кэролайн Гудолл, Эмбет Дэвидц, Джонатан Сагалл, Малгоша Гебель, Шмуэль Леви, Марк Иванир, Беатриче Макола', 'Лента рассказывает реальную историю загадочного Оскара Шиндлера, члена нацистской партии, преуспевающего фабриканта, спасшего во время Второй мировой войны более тысячи ста евреев. Это триумф одного человека, не похожего на других, и драма тех, кто, благодаря ему, выжил в ужасный период человеческой истории.', 1359028672),
(7, 3, 'ultra.jpg', 'Ноутбук ASUS VivoBook Flip TP301UA-C4025T', 205, 1934, 'ASUS ', 'Core i7 6500U 2.5 ГГц 3.1 ГГц', '01:30:00', 'Оперативная память\r\nОбъем оперативной памяти: 8 Гб\r\nТип оперативной памяти: DDR3L\r\nНакопитель\r\nТип накопителя: HDD\r\nОбъем накопителя: 1 Тб', 'Основные характеристики\r\nОперационная система: Windows 10 Профессиональная\r\nЭкран\r\nДиагональ: 13.3 дюйма\r\nРазрешение: 1366x768 Пикс\r\nСенсорный: Есть\r\nГрафическая система\r\nПроизводитель видеокарты: Intel\r\nМодель видеокарты: Intel HD Graphics 520\r\nОптический привод\r\nТип оптического привода: Отсутствует\r\nВстроенное оборудование\r\nBluetooth: Есть\r\nИнтерфейсы\r\nUSB: 3\r\nUSB 2.0: 1\r\nUSB 3.0: 2\r\nЦвет: Черный', 1359029011),
(9, 4, 'mono2.jpg', 'Моноблок APPLE iMac 21.5&quot; MK142RU/A', 83690, 1998, 'Великобритания', 'Intel Core i5 1.6 ГГц 2.7 ГГц', '48:00:00', 'Оперативная память\r\nОбъем оперативной памяти: 8 Гб\r\nТип оперативной памяти: DDR3\r\nЖесткий диск\r\nТип накопителя: HDD\r\nОбъем накопителя: 1 Тб', 'Основные характеристики\r\nОперационная система: Mac OS\r\nЭкран\r\nДиагональ: 21.5&quot; (54.6 см)\r\nРазрешение: 1920x1080 Пикс\r\nГрафическая система\r\nПроизводитель видеокарты: Intel\r\nМодель видеокарты: Intel HD Graphics 6000\r\nОптический привод\r\nТип оптического привода: Отсутствует\r\nВстроенное оборудование\r\nWi-Fi: Есть\r\nBluetooth: Есть\r\nЦвет: Серебристый', 1359029262),
(10, 4, 'mono.jpg', 'Моноблок LENOVO IdeaCentre C260G-J182G5008UK ', 22700, 2016, 'Lenovo', 'Intel J1800 2.41 ГГц 2.58 ГГц', '24:00:00', 'Оперативная память\r\nОбъем оперативной памяти: 2 Гб\r\nТип оперативной памяти: DDR3\r\nЖесткий диск\r\nТип накопителя: HDD\r\nОбъем накопителя: 500 Гб', 'Основные характеристики\r\nОперационная система: Windows 8.1\r\nЭкран\r\nДиагональ: 19.5&quot; (49.5 см)\r\nРазрешение: 1600x900 Пикс\r\nТип матрицы: TFT TN\r\nГрафическая система\r\nПроизводитель видеокарты: Intel\r\nОптический привод\r\nТип оптического привода: DVD±RW\r\nВстроенное оборудование\r\nWi-Fi: Есть\r\nЦвет: Черный', 1359029498),
(11, 4, 'mono1.jpg', 'Моноблок ACER Aspire ZC-606 (DQ.SURER.012)', 24990, 2015, 'Acer', 'Intel Celeron J1900 2Ghz', '01:53:00', 'Оперативная память\r\nОбъем оперативной памяти: 2 Гб\r\nТип оперативной памяти: DDR3\r\nЖесткий диск\r\nТип накопителя: HDD\r\nОбъем накопителя: 500 Гб', 'Основные характеристики\r\nОперационная система: Windows 8 x64\r\nЭкран\r\nДиагональ: 19.5&quot; (49.5 см)\r\nРазрешение: 1600x900 Пикс\r\nГрафическая система\r\nПроизводитель видеокарты: Intel\r\nОптический привод\r\nТип оптического привода: DVD±RW\r\nВстроенное оборудование\r\nWi-Fi: Есть\r\nBluetooth: Есть\r\nЦвет: Белый', 1359029498),
(13, 5, 'pl1.jpg', 'Планшет APPLE iPad Air Wi-Fi + Cellular 16Gb Silver MD794RU/A', 34490, 1991, 'Гонконг', 'А7, 1.4 ГГц, 2 ядра', '24:00:00', 'Память\r\nВстроенная память: 16 Гб\r\nОперативная память: 1 Гб', 'Память\r\nВстроенная память: 16 Гб\r\nОперативная память: 1 Гб\r\nКоммуникации и связь\r\nWi-Fi: Есть\r\n3G-модуль: Есть\r\n4G (LTE): Есть\r\nКамера\r\nРазрешение матрицы: 5 Мпикс\r\nФронтальная камера: 1.2 Мпикс\r\n&lt;br /&gt;&lt;br /&gt;Цвет: Серебристый', 1359029820),
(16, 5, 'plan.jpg', 'Планшет APPLE iPad mini 4 Wi-Fi + Cellular 16Gb Space Gray (MK6Y2RU/A)', 35990, 2016, 'Гонконг', 'A8 1.4 ГГц Количество ядер: 2 ', '24:00:00', 'Память\r\nВстроенная память: 16 Гб\r\nОперативная память: 2 Гб', 'Общие\r\nОперационная система: iOS 9\r\nЭкран\r\nТип экрана: IPS\r\nДиагональ: 7.9&quot;\r\nРазрешение: 2048x1536 Пикс\r\nКоммуникации и связь\r\nWi-Fi: Есть\r\n3G-модуль: Есть\r\n4G (LTE): Есть\r\nКамера\r\nРазрешение матрицы: 8 Мпикс\r\nФронтальная камера: 1.2 Мпикс\r\nЦвет: Серый, Черный', 1359030153),
(17, 1, 'lenovo.jpg', 'LENOVO IdeaPad B5045', 18000, 2010, 'США Lenovo', 'AMD E1 6010 1.35 ГГц', '05:00:00', 'Оперативная память\r\nОбъем оперативной памяти: 2 Гб\r\nТип оперативной памяти: DDR3\r\nНакопитель\r\nТип накопителя: HDD\r\nОбъем накопителя: 250 Гб', 'Основные характеристики\r\n&lt;br /&gt;Операционная система: Windows 10\r\n&lt;br /&gt;Экран\r\n&lt;br /&gt;Диагональ: 15.6 дюйма\r\n&lt;br /&gt;Разрешение: 1366x768 Пикс\r\n&lt;br /&gt;Графическая система\r\n&lt;br /&gt;Производитель видеокарты: AMD\r\n&lt;br /&gt;Модель видеокарты: Radeon R2\r\n&lt;br /&gt;Оптический привод\r\n&lt;br /&gt;Тип оптического привода: Отсутствует\r\n&lt;br /&gt;Встроенное оборудование\r\n&lt;br /&gt;Bluetooth: Есть\r\n&lt;br /&gt;Интерфейсы\r\n&lt;br /&gt;USB: 3\r\n&lt;br /&gt;USB 2.0: 1\r\n&lt;br /&gt;USB 3.0: 2\r\n&lt;br /&gt;Цвет: Черный', 1479469675),
(18, 1, 'HP.jpg', 'Ноутбук HP 15-ba042ur, X5C20EA', 21200, 2010, 'HP', 'AMD E2 7110 1.8 ГГц', '06:00:00', 'Оперативная память\r\nОбъем оперативной памяти: 4 Гб\r\nТип оперативной памяти: DDR3L\r\nНакопитель\r\nТип накопителя: HDD\r\nОбъем накопителя: 500 Гб', 'Основные характеристики\r\nОперационная система: Windows 10 Домашняя\r\nЭкран\r\nДиагональ: 15.6 дюйма\r\nРазрешение: 1366x768 Пикс\r\nГрафическая система\r\nПроизводитель видеокарты: AMD\r\nМодель видеокарты: Radeon HD R2\r\nВстроенное оборудование\r\nBluetooth: Есть\r\nИнтерфейсы\r\nUSB 2.0: 2\r\nUSB 3.0: 1\r\nЦвет: Черный', 1479470101),
(19, 6, 'block.jpg', 'Системный блок HP Pavilion 500-402nr', 28000, 2016, 'HP', 'Core i5 4460S 2.9 ГГц 3.4 ГГц', '48:00:00', 'Оперативная память\r\nОбъем оперативной памяти: 4 Гб\r\nНакопитель\r\nТип накопителя: HDD\r\nОбъем накопителя: 1 Тб', 'Основные характеристики\r\nИгровой системный блок: Есть\r\nОперационная система: Windows 8\r\nГрафическая система\r\nПроизводитель видеокарты: AMD\r\nМодель видеокарты: AMD Radeon R7 240\r\nОбъем видеопамяти: 2000 Мб\r\nОптический привод\r\nТип оптического привода: DVD±RW\r\nЦвет: Черный', 1479629546),
(20, 7, 'tran.jpg', 'Ноутбук-планшет HP Pavilion 10-k002nr', 17900, 2016, 'HP', 'Intel Atom Z3736F 1.33 ГГц 2.16 ГГц 4 ядра', '48:00:00', 'Память\r\nВстроенная память: 32 Гб\r\nОперативная память: 2 Гб', 'Общие\r\nОперационная система: Windows 8.1\r\nЭкран\r\nТип экрана: IPS\r\nДиагональ: 10.1&quot;\r\nРазрешение: 1280x800 Пикс\r\nКоммуникации и связь\r\nWi-Fi: Есть\r\nКамера\r\nФронтальная камера: 2 Мпикс\r\nКомплектация\r\nДок-станция с клавиатурой: Есть\r\nЦвет: Серый', 1479629891);

-- --------------------------------------------------------

--
-- Структура таблицы `sdvd_sections`
--

CREATE TABLE IF NOT EXISTS `sdvd_sections` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sdvd_sections`
--

INSERT INTO `sdvd_sections` (`id`, `title`) VALUES
(6, 'Игровые системные блоки'),
(4, 'Моноблоки'),
(1, 'Ноутбуки'),
(5, 'Планшеты'),
(7, 'Трансформеры 2 в 1'),
(3, 'Ультрабуки');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `sdvd_discounts`
--
ALTER TABLE `sdvd_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Индексы таблицы `sdvd_orders`
--
ALTER TABLE `sdvd_orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sdvd_products`
--
ALTER TABLE `sdvd_products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sdvd_sections`
--
ALTER TABLE `sdvd_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `sdvd_discounts`
--
ALTER TABLE `sdvd_discounts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `sdvd_orders`
--
ALTER TABLE `sdvd_orders`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблицы `sdvd_products`
--
ALTER TABLE `sdvd_products`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `sdvd_sections`
--
ALTER TABLE `sdvd_sections`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
