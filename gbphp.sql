-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 08 2020 г., 19:08
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gbphp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int DEFAULT NULL,
  `text` text,
  `product_photo_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `price`, `text`, `product_photo_id`) VALUES
(1, 'good1', 100, NULL, NULL),
(2, 'good2', 200, NULL, NULL),
(3, 'good3', 30, NULL, NULL),
(4, 'good4', 40, NULL, NULL),
(5, 'good5', 50, NULL, NULL),
(6, 'good6', 60, NULL, NULL),
(7, 'good7', 70, NULL, NULL),
(8, 'good8', 80, NULL, NULL),
(9, 'good9', 90, NULL, NULL),
(10, 'good10', 100, NULL, NULL),
(11, 'good11', 110, NULL, NULL),
(12, 'good12', 120, NULL, NULL),
(13, 'good13', 130, NULL, NULL),
(14, 'good14', 140, NULL, NULL),
(15, 'good15', 150, NULL, NULL),
(16, 'good16', 160, NULL, NULL),
(17, 'good17', 170, NULL, NULL),
(18, 'good18', 180, NULL, NULL),
(19, 'good19', 190, NULL, NULL),
(20, 'good20', 200, NULL, NULL),
(21, 'good21', 210, NULL, NULL),
(22, 'good22', 220, NULL, NULL),
(23, 'good23', 230, NULL, NULL),
(24, 'good24', 240, NULL, NULL),
(25, 'good25', 250, NULL, NULL),
(26, 'good26', 260, NULL, NULL),
(27, 'good27', 270, NULL, NULL),
(28, 'good28', 280, NULL, NULL),
(29, 'good29', 290, NULL, NULL),
(30, 'good30', 300, NULL, NULL),
(31, 'good31', 310, NULL, NULL),
(32, 'good32', 320, NULL, NULL),
(33, 'good33', 330, NULL, NULL),
(34, 'good34', 340, NULL, NULL),
(35, 'good35', 350, NULL, NULL),
(36, 'good36', 360, NULL, NULL),
(37, 'good37', 370, NULL, NULL),
(38, 'good38', 380, NULL, NULL),
(39, 'good39', 390, NULL, NULL),
(40, 'good40', 400, NULL, NULL),
(41, 'good41', 410, NULL, NULL),
(42, 'good42', 420, NULL, NULL),
(43, 'good43', 430, NULL, NULL),
(44, 'good44', 440, NULL, NULL),
(45, 'good45', 450, NULL, NULL),
(46, 'good46', 460, NULL, NULL),
(47, 'good47', 470, NULL, NULL),
(48, 'good48', 480, NULL, NULL),
(49, 'good49', 490, NULL, NULL),
(50, 'good50', 500, NULL, NULL),
(51, 'good51', 510, NULL, NULL),
(52, 'good52', 520, NULL, NULL),
(53, 'good53', 530, NULL, NULL),
(54, 'good54', 540, NULL, NULL),
(55, 'good55', 550, NULL, NULL),
(56, 'good56', 560, NULL, NULL),
(57, 'good57', 570, NULL, NULL),
(58, 'good58', 580, NULL, NULL),
(59, 'good59', 590, NULL, NULL),
(60, 'good60', 600, NULL, NULL),
(61, 'good61', 610, NULL, NULL),
(62, 'good62', 620, NULL, NULL),
(63, 'good63', 630, NULL, NULL),
(64, 'good64', 640, NULL, NULL),
(65, 'good65', 650, NULL, NULL),
(66, 'good66', 660, NULL, NULL),
(67, 'good67', 670, NULL, NULL),
(68, 'good68', 680, NULL, NULL),
(69, 'good69', 690, NULL, NULL),
(70, 'good70', 700, NULL, NULL),
(71, 'good71', 710, NULL, NULL),
(72, 'good72', 720, NULL, NULL),
(73, 'good73', 730, NULL, NULL),
(74, 'good74', 740, NULL, NULL),
(75, 'good75', 750, NULL, NULL),
(76, 'good76', 760, NULL, NULL),
(77, 'good77', 770, NULL, NULL),
(78, 'good78', 780, NULL, NULL),
(79, 'good79', 790, NULL, NULL),
(80, 'good80', 800, NULL, NULL),
(81, 'good81', 810, NULL, NULL),
(82, 'good82', 820, NULL, NULL),
(83, 'good83', 830, NULL, NULL),
(84, 'good84', 840, NULL, NULL),
(85, 'good85', 850, NULL, NULL),
(86, 'good86', 860, NULL, NULL),
(87, 'good87', 870, NULL, NULL),
(88, 'good88', 880, NULL, NULL),
(89, 'good89', 890, NULL, NULL),
(90, 'good90', 900, NULL, NULL),
(91, 'good91', 910, NULL, NULL),
(92, 'good92', 920, NULL, NULL),
(93, 'good93', 930, NULL, NULL),
(94, 'good94', 940, NULL, NULL),
(95, 'good95', 950, NULL, NULL),
(96, 'good96', 960, NULL, NULL),
(97, 'good97', 970, NULL, NULL),
(98, 'good98', 980, NULL, NULL),
(99, 'good99', 990, NULL, NULL),
(100, 'good100', 1000, NULL, NULL),
(101, 'good101', 1010, NULL, NULL),
(102, 'good102', 1020, NULL, NULL),
(103, 'good103', 1030, NULL, NULL),
(104, 'good104', 1040, NULL, NULL),
(105, 'good105', 1050, NULL, NULL),
(106, 'good106', 1060, NULL, NULL),
(107, 'good107', 1070, NULL, NULL),
(108, 'good108', 1080, NULL, NULL),
(109, 'good109', 1090, NULL, NULL),
(110, 'good110', 1100, NULL, NULL),
(111, 'good111', 1110, NULL, NULL),
(112, 'good112', 1120, NULL, NULL),
(113, 'good113', 1130, NULL, NULL),
(114, 'good114', 1140, NULL, NULL),
(115, 'good115', 1150, NULL, NULL),
(116, 'good116', 1160, NULL, NULL),
(117, 'good117', 1170, NULL, NULL),
(118, 'good118', 1180, NULL, NULL),
(119, 'good119', 1190, NULL, NULL),
(120, 'good120', 1200, NULL, NULL),
(121, 'good121', 1210, NULL, NULL),
(122, 'good122', 1220, NULL, NULL),
(123, 'good123', 1230, NULL, NULL),
(124, 'good124', 1240, NULL, NULL),
(125, 'good125', 1250, NULL, NULL),
(126, 'good126', 1260, NULL, NULL),
(127, 'good127', 1270, NULL, NULL),
(128, 'good128', 1280, NULL, NULL),
(129, 'good129', 1290, NULL, NULL),
(130, 'good130', 1300, NULL, NULL),
(131, 'good131', 1310, NULL, NULL),
(132, 'good132', 1320, NULL, NULL),
(133, 'good133', 1330, NULL, NULL),
(134, 'good134', 1340, NULL, NULL),
(135, 'good135', 1350, NULL, NULL),
(136, 'good136', 1360, NULL, NULL),
(137, 'good137', 1370, NULL, NULL),
(138, 'good138', 1380, NULL, NULL),
(139, 'good139', 1390, NULL, NULL),
(140, 'good140', 1400, NULL, NULL),
(141, 'good141', 1410, NULL, NULL),
(142, 'good142', 1420, NULL, NULL),
(143, 'good143', 1430, NULL, NULL),
(144, 'good144', 1440, NULL, NULL),
(145, 'good145', 1450, NULL, NULL),
(146, 'good146', 1460, NULL, NULL),
(147, 'good147', 1470, NULL, NULL),
(148, 'good148', 1480, NULL, NULL),
(149, 'good149', 1490, NULL, NULL),
(150, 'good150', 1500, NULL, NULL),
(151, 'good151', 1510, NULL, NULL),
(152, 'good152', 1520, NULL, NULL),
(153, 'good153', 1530, NULL, NULL),
(154, 'good154', 1540, NULL, NULL),
(155, 'good155', 1550, NULL, NULL),
(156, 'good156', 1560, NULL, NULL),
(157, 'good157', 1570, NULL, NULL),
(158, 'good158', 1580, NULL, NULL),
(159, 'good159', 1590, NULL, NULL),
(160, 'good160', 1600, NULL, NULL),
(161, 'good161', 1610, NULL, NULL),
(162, 'good162', 1620, NULL, NULL),
(163, 'good163', 1630, NULL, NULL),
(164, 'good164', 1640, NULL, NULL),
(165, 'good165', 1650, NULL, NULL),
(166, 'good166', 1660, NULL, NULL),
(167, 'good167', 1670, NULL, NULL),
(168, 'good168', 1680, NULL, NULL),
(169, 'good169', 1690, NULL, NULL),
(170, 'good170', 1700, NULL, NULL),
(171, 'good171', 1710, NULL, NULL),
(172, 'good172', 1720, NULL, NULL),
(173, 'good173', 1730, NULL, NULL),
(174, 'good174', 1740, NULL, NULL),
(175, 'good175', 1750, NULL, NULL),
(176, 'good176', 1760, NULL, NULL),
(177, 'good177', 1770, NULL, NULL),
(178, 'good178', 1780, NULL, NULL),
(179, 'good179', 1790, NULL, NULL),
(180, 'good180', 1800, NULL, NULL),
(181, 'good181', 1810, NULL, NULL),
(182, 'good182', 1820, NULL, NULL),
(183, 'good183', 1830, NULL, NULL),
(184, 'good184', 1840, NULL, NULL),
(185, 'good185', 1850, NULL, NULL),
(186, 'good186', 1860, NULL, NULL),
(187, 'good187', 1870, NULL, NULL),
(188, 'good188', 1880, NULL, NULL),
(189, 'good189', 1890, NULL, NULL),
(190, 'good190', 1900, NULL, NULL),
(191, 'good191', 1910, NULL, NULL),
(192, 'good192', 1920, NULL, NULL),
(193, 'good193', 1930, NULL, NULL),
(194, 'good194', 1940, NULL, NULL),
(195, 'good195', 1950, NULL, NULL),
(196, 'good196', 1960, NULL, NULL),
(197, 'good197', 1970, NULL, NULL),
(198, 'good198', 1980, NULL, NULL),
(199, 'good199', 1990, NULL, NULL),
(200, 'good200', 2000, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(100) NOT NULL,
  `pssword` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pssword`, `name`) VALUES
(1, 'user', '999', 'Sandi'),
(2, 'Jon', '321', 'Jon'),
(3, 'user', '123', 'San'),
(4, 'Jon', '666', 'Jony'),
(5, 'roman', '555', 'Roman'),
(6, 'admin', '777', 'Roman');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
