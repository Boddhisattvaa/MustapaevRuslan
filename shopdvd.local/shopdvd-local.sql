-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 25 2021 г., 05:19
-- Версия сервера: 5.6.31
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sdvd_orders`
--

INSERT INTO `sdvd_orders` (`id`, `delivery`, `product_ids`, `price`, `name`, `phone`, `email`, `address`, `notice`, `date_order`, `date_send`, `date_pay`) VALUES
(24, 0, '16,3', 548, 'jhgrg', '1515121', 'emailru@mail.ru', 'jhvjub', 'jhefen', 1619989875, 1619989875, 1619989875),
(25, 1, '3', 14238, 'Иванов Иван Иванович', '0556789500', 'ivanov@mail.ru', '', 'Заберу в течения дня!', 1619989875, 1619989875, 0),
(27, 1, '10', 20430, 'Куркина Анна Владимировна', '0700526396', 'anna@mail.ru', '', 'Заберу в течения дня сама', 1623839207, 1623839207, 1623839634),
(28, 1, '13', 700, 'Куркина Анна Владимировна', '0700526396', 'anna@mail.ru', '', 'Заберу в течения дня сама', 1623839781, 1623839781, 1623839795);

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sdvd_products`
--

INSERT INTO `sdvd_products` (`id`, `section_id`, `img`, `title`, `price`, `year`, `country`, `director`, `play`, `cast`, `description`, `date`) VALUES
(3, 1, '25.jpg', 'Городской Велосипед STELS Navigator-345 Z010, 28', 15820, 2019, 'Китай', 'STELS', '1', 'Целевая аудитория\r\nВзрослая\r\nРазмер рамы, дюймы\r\n20\r\nМатериал рамы\r\nСталь\r\nВид тормозной системы\r\nНожной\r\nАмортизация велосипеда\r\nRigid (Жесткий)', 'Женский дорожный велосипед без переключения передач. Технические особенности: стальная рама Hi-Ten, жесткая стальная вилка, двойные алюминиевые обода, ножные педальные тормоза, защита цепи, длинные крылья, багажник, комфортное седло, звонок. Подходит для прогулочного катания в городских условиях и по несложным маршрутам в лесу. Диаметр колес - 28 дюймов. Вес - 17,31 кг.', 1619989875),
(7, 3, '700.jpg', 'Спальный мешок Saimaa СП2XL/Comfort 200XL', 2100, 2019, 'Россия', 'Saimaa', '1', 'Вид спального мешка\r\nОдеяло\r\nТип\r\nСпальный мешок\r\nБренд Saimaa\r\nНазвание модели СП2XL/Comfort 200XL/\r\nЦвет Зеленый', 'Практичная модель для летнего и демисезонного отдыха на природе. Разъемные молнии позволяют объеденить два спальных мешка в один двойной. Можно расстегнуть молнию и использовать спальник как обыкновенное одеяло. Спальный мешок упакован в чехол для удобного хранения и транспортировки (ткань чехла Oxford 150PU 2000). Прочный и легкий материал, состоит из антистатичных полиэфирных волокон, стойких к ультрафиолету и абсорбирующих влагу. Ткань гиппоаллергенная, отлично защищает от ветра, не впитывает пот и кожный жир. • Внутренний материал Soft Pongee - хлопчатобумажная ткань. • 2 слоя утеплителя, материал - Термофайбер. Легко переносит многократные стирки, не сбивается, быстро восстанавливает объем, и сохнет в самые короткие сроки. Плотность одного слоя - 100 гр. на кв. м.', 1619989875),
(10, 4, '123.jpeg', 'Беговая дорожка CardioPower T20 Plus', 22700, 2017, 'Китай', 'CardioPower', '15', 'Основные характеристики\r\nКласс тренажера: Домашний\r\nВид по системе нагрузки: Электрическая\r\nМаксимальная скорость, км/ч: 14\r\nМаксимальный вес пользователя, кг: 120\r\nКол-во программ: 15\r\n', 'Прежде всего, беговая дорожка CardioPower T20 Plus понравится тем пользователям, которые ищут простое домашнее оборудование для ежедневных кардиотренировок. Рекомендуем данную дорожку именно для безопасной и эффективной семейной эксплуатации.', 1619989875),
(11, 4, '12.png', 'Профессиональная беговая дорожка "BEST OR NOTHING"', 50990, 2020, 'провинция Гуанчжоу (КНР) для США', 'BEST OR NOTHING', '5', 'Основные характеристики\r\n-Максимальный вес пользователя: 180 кг\r\n-Максимальная скорость: 1-18 км/ч\r\n-Количество подъемников: 0-15 %\r\n-Контроль нагрузки и изменение их в зависимости от частоты пульса\r\n-Три режима: для профессионалов, для любителей, для детей и пожилых\r\n-Двойной мотор: 3.0 лс\r\n-MP3(через USB, iPhone, Samsung и т.д.)\r\n-Экран LCD: измерение пульса, дистанция, калории, скорость и т.д.', 'Отметим, что тренажер подходит даже небольшим квартирам, ведь он не занимает много места. При необходимости, быстро и легко складывается благодаря встроенной гидравлической системе. Кроме того, оснащен удобными транспортировочными роликами, держателем для бутылочки и подставкой под планшет.', 1619989875),
(13, 5, 'termo.jpg', 'Термос С термометром, Ударопрочный корпус INTERMOS, 0.5 л', 700, 2020, 'Гонконг', 'INTERMOS', '24:00:00', 'Объем, л 0.5\r\nНазначение Для напитков\r\nСохраняет тепло до, ч 12\r\nОсобенности термоса С термометром, Ударопрочный корпус', 'Стальной Термос с сенсорным термодатчиком T200В-500 на 500 мл. Съемное ситечко. Диаметр 6.3 см, высота 23.3 см.', 1619989875),
(16, 6, '30.jpg', 'Горные лыжи HEAD Shape RX PR ростовка 163 с креплениями TYROLIA PR11 BR.78', 35990, 2016, 'Гонконг', 'TYROLIA ', '1', 'Целевая аудитория:Взрослая\r\nРостовка горных лыж: 163\r\nУровень подготовки: Начинающий\r\nПол: Мужской, Женский\r\nРАДИУС: 12,8/170УРОВЕНЬ', 'Хороший выбор для начинающих горнолыжников. Дружелюбный короткий радиус поворота, умеренная жесткость и талия достаточно широкая, чтобы можно было комфортно учиться кататься на подготовленной трассе в любую погоду. Интерфейс - платформа Power Rail позволяет быстро переставлять крепления под любой размер ноги.', 1619989875),
(17, 1, '24.jpg', 'Горный Велосипед TopGear Style,ВН26431К, 26, 2021.0', 18000, 2010, 'США', 'TopGear', '2', 'Основные характеристики\r\nЦелевая аудитория Взрослая\r\nРазмер рамы, дюймы  16\r\nМатериал рамы  Сталь\r\nВид тормозной системы  Ободной V-brake\r\nАмортизация велосипеда  Hardtail (Жёсткий хвост)', '26 TOPGEAR Style бело-голубой ВН26431К оборудован стальной рамой. Сталь используется в производстве байков бюджетного и среднего ценового сегмента. Благодаря относительной легкости производства и сварки, это позволяет существенно снизить стоимость продукта. Количество скоростей: 21.', 1619989875),
(18, 1, '23.jpg', 'Горный Велосипед RUSH HOUR 7500, 27.5, 2021', 32000, 2021, 'Германия', 'RUSH HOUR 7500', '1', 'Вес в собранном состоянии, кг 15\r\n5\r\nТормоза велосипеда  RUIPUT DS310A\r\nКонструкция рулевой колонки Резьбовая\r\n', 'Дисковые тормоза, 18 скоростей, 5 лет гарантии на раму. Рама велосипеда изготовлена из стали с применением технологии техноформинга и внутренней проводки тросов. На нижней трубе имеется крепеж для держателя бутылки или насоса. Вилка ригидная, легкая, надежная, не требует обслуживания. Трансмиссия 18 скоростная, задний переключатель японского производителя shimano, на руле триггерные манетки тайваньского бренда microshift.', 1619989875),
(19, 6, '29.jpg', 'Сноуборд Olympic (Олимпик) 1020908', 1200, 2018, 'Китай', 'Olympic ', '1', 'Назначение сноуборда: Универсальный\r\nРостовка сноуборда: 100\r\nФорма сноуборда: Directional\r\nПрогиб сноуборда: Комбинированный прогиб (кэмбер + рокер)\r\nТип закладных: The Channel (EST)', 'Этот детский сноуборд поможет Вашему ребёнку полюбить и освоить зимние виды спорта.Пластиковые сноуборды, под торговой маркой “Олимпик” изготовлены специально для начинающих райдеров. Сноуборд сделан из облегчённого морозостойкого пластика, сноуборд может носить сам ребёнок. Стопы фиксируются на доске с помощью ремешков. Ремешки можно регулировать - даже малышам будет легко вставить ножки в крепления или быстро достать их оттуда. Рельефная поверхность сноуборда исключает скольжение ботинок. Модель экономит бюджет родителей: для катания не требуется специализированная обувь.Размер сноуборда: 95*22,5 см.Вес: до 50 кг.Размеры упаковки: 4*23*95 см.', 1619989875),
(20, 7, '27.jpg', 'Шлем PLAY 7 OXELO Х Декатлон', 1500, 2020, 'Китай', 'OXELO Х Декатлон', '48:00:00', 'Целевая аудитория Взрослая\r\nПол Женский\r\nБренд Декатлон\r\nЦвет Белый', 'Шлем для защиты при катании на коньках, скейтборде и самокате. Стильный шлем чашеобразной формы! Пена : 100.0% Пенополистирол кепка : 100.0% Акрилонитрилбутадиенстирол', 1619989875),
(21, 6, '31.jpg', 'Горные Лыжи Fischer 2020-21 Rc4 Worldcup Gs Jr. M/O-Plate', 18000, 2019, 'Китай', 'Fischer ', '1', 'Целевая аудитория:Взрослая\r\nРостовка горных лыж: 170\r\nУровень подготовки: Начинающий\r\nПол: Мужской, Женский\r\nРАДИУС: 12,8/170УРОВЕНЬ', 'RC4 Worldcup GS JR - юниорские лыжи для слалом-гиганта. Обладают полным набором технологий, используемых на Кубке Мира. Лыжи имеют конструкцию, идентичную взрослой модели и выполнены в соответствии с официальными требованиями к инвентарю организаторов соревнований.', 1619989875),
(22, 0, '31.jpg', 'btbvt', 25, 2020, 'tbtb', 'btbt', 'btbt', 'bttrfd', 'xsss', 0);

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
(1, 'Велосипеды'),
(7, 'Гаджеты для фитнеса'),
(6, 'Горнолыжное и альпинистское снаряжение'),
(3, 'Товары для охоты и рыбалки'),
(5, 'Товары для туризма и путешествий'),
(4, 'Тренажеры');

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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `sdvd_products`
--
ALTER TABLE `sdvd_products`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `sdvd_sections`
--
ALTER TABLE `sdvd_sections`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
