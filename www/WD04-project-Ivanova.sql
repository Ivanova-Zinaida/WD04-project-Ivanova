-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 07 2018 г., 18:29
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `WD04-project-Ivanova`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`) VALUES
(1, 'Егор Казаков', 'Я веб-разработчик');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(1, 'Путешествие'),
(2, 'Учеба по PHP'),
(3, 'Языки программирования ');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `date` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_image_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `date`, `author_id`, `date_time`, `post_image`, `post_image_small`) VALUES
(6, 'Колизей', 'Главная арена Древнего Рима, театр для гладиаторских боев, травли пленников дикими животными и других не менее кровавых представлений ежегодных Игр столицы Империи. В честь открытия Колизея в 80 году н.э. были устроены Великие Игры, которые продолжались больше 3-х месяцев. Древние камни Арены до сих пор помнят убитых на потеху публике гладиаторов и растерзанных ради удовольствия рабов из захваченных провинций.', 1538844249, 5, '2018-10-06 19:44:09', '56561901.jpg', '320-56561901.jpg'),
(7, ' Витториано', 'Памятный архитектурный комплекс XVIII-XIX вв. в честь короля Виктора Эммануила – первого правителя объединенной Италии. На площадке перед монументальным дворцом горит Вечный огонь и дежурит почетный караул. Жители Рима не слишком жалуют эту громаду из белого мрамора, так как считают, что она не вписывается в архитектуру города. Некоторые римляне зовут Витториано нелепым «свадебным тортом»', 1538844305, 5, '2018-10-06 19:45:05', '-368083161.jpg', '320--368083161.jpg'),
(8, 'Римский форум', 'Самое сердце Древнего Рима, где происходили важные государственные и общественные события – решались судьбы законов, выбирались консулы, проходили триумфы императоров после победоносных войн. После падение Империи форум был разрушен и разорен, да и время делало свою работу, поэтому до наших дней дошли только фрагменты. Остатки форума входят в охраняемую археологическую зону, где работает музей под открытым небом.', 1538844372, 5, '2018-10-06 19:46:12', '1179104986.jpg', '320-1179104986.jpg'),
(9, 'Пьяцца-дель-Пополо', 'Дворец XVI столетия, построенный для кардинала Сципионе Боргезе на месте бывших виноградников. Здание окружено огромным парком в английском стиле с многочисленными античными статуями. На территории находится ипподром, зоопарк, театр и несколько музеев. До начала XX столетия особняк с парком принадлежал семейству Боргезе, потом все имущество отошло государству.', 1538844477, 5, '2018-10-06 19:47:57', '314100444.jpg', '320-314100444.jpg'),
(10, 'Замок Святого Ангела', 'Сооружение начали строить еще в эпоху Римской империи во II веке н.э. За время своего существования оно выполняло роль папского жилища, тюрьмы, склада и даже усыпальницы. В наши дни в крепости размещается Военно-исторический музей. Замок получил такое название в VI веке н.э. после того, как Папе Григорию явился образ архангела Михаила. Прямо от замка через реку Тибр перекинут живописный мост, который был построен при императоре Адриане. По мосту можно было добраться до Марсова поля кратчайшим путем.', 1538844619, 5, '2018-10-06 19:50:19', '1164813761.jpg', '320-1164813761.jpg'),
(11, ' Собор и площадь Святого Петра', 'Собор Св. Петра – это духовный центр католической ветви христианства. Здесь проводит праздничный мессы сам Папа Римский. Храм возник на месте бывшего цирка Нерона в IV веке. Сначала это была небольшая базилика, где хранились мощи апостола Петра. В XV веке ее перестроили в грандиозное здание. Над собором Св. Петра работали Рафэль, Микеланджело, Перуцци, Мадерно и другие. Перед храмом раскинулась широкая площадь с колоннадой из 284 дорических колонн.', 1538848297, 5, '2018-10-06 20:51:37', '708206167.jpg', '320-708206167.jpg'),
(12, ' Базилика Сан-Джованни ин Латерано', 'Одна из самых древних христианский церквей, первый храм Рима. В церковной иерархии она находится выше всех остальных, даже выше собора Святого Петра. Католические иерархи присвоили ей титул «базилика майор», то есть «старшая». Ее признают «главой и матерью всех церквей». Храм появился во времена правления Константина при Папе Сильвестре I в IV веке н.э. В базилике захоронены шесть Пап и хранятся мощи апостолов Святого Павла и Святого Петра.', 1538848549, 5, '2018-10-06 20:55:49', '413961118.jpg', '320-413961118.jpg'),
(13, 'Церковь Иль-Джезу', 'Главный иезуитский храм в Риме, где похоронен Великий магистр Игнатий Лойола. Первый проект храма был разработан Микеланджело, однако он не понравился главе ордена. В 1561 году другой архитектор – Джакомо Бароцци приступил к строительству уже по своему плану. До упразднения Ордена Иезуитов в конце XVIII века в церкви Иль-Джезу хранились значительные богатства. Само здание храма у организации отобрали. Только после 1814 года оно было возвращено обратно.', 1538848983, 5, '2018-10-06 21:03:03', NULL, NULL),
(14, 'Достопримечательности Рима. Самые главные и интересные достопримечательности Рима ', 'Рим - столица Италии и региона Лацио, один из красивейших и интереснейших городов мира. Вечный город расположен на легендарных семи холмах на реке Тибр примерно в 25 км от побережья Тирренского моря. Рим - колыбель великой цивилизации и центр одной из величайших империй в истории человечества. Здесь почти на каждой улице расположена какая-нибудь достопримечательность и легко можно встретить памятники архитектуры и культуры, которым несколько тысяч лет. Поэтому изучить Рим за пару дней просто не возможно.\r\n\r\nИсторический центр города внесён в список объектов Всемирного наследия ЮНЕСКО. В Риме можно прикоснуться к периоду Античности и истории Римской империи: посмотреть знаменитый Форум, легендарный Колизей, древний Пантеон и множество других памятников древности и грандиозных руин, прогуляться по узким улочкам с гладкой, отполированный миллионами ног и веками брусчаткой, посидеть в уютных уличных кафе и тратториях, посетить знаменитые римские площади и фонтаны, дворцы и сады. Кроме этого, Рим - центр католической веры: Ватикан, его музеи, площадь и собор св. Петра, замок Святого Ангела также являются популярными среди туристов.', 1538854324, 5, '2018-10-06 22:32:04', '-168895511.jpg', '320--168895511.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `name`, `secondname`, `city`, `country`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(5, 'info2@mail.com', '$2y$10$wjbRLWv2r9Faefvt5K5jYuHacmik2w6CV3YKcX6UniHGtUo0RLqUG', 'admin', 'Зинаида', 'Иванова', 'Санкт-Петербург', 'Россия', '-522855345.jpg', '48--522855345.jpg', 'WliN2xgI4eSBKMw', 0),
(6, 'info@mail.com', '$2y$10$tgMRNqHe1Y96LersbmKDueQlJPOss6KUwuDMbiLwerIRYouAp7Obq', 'user', 'Сергей', 'Степанов', 'Москва', 'Россия', '202083334.jpg', '48-202083334.jpg', '6Zm8OS5E0QcsgYb', 0),
(9, 'zinok.ilanka@yandex.ru', '$2y$10$J9KxJJnj36ORp8oAujR0...PXiwX8cGSTdclXvfn/nFuhyUes0HHC', 'user', 'Зинаида', 'Степановa', 'Санкт-Петербург', 'Россия', '-451280623.jpg', '48--451280623.jpg', 'irkGYJNfAq4DuwE', -1),
(10, 'ilanka1@yandex.ru', '$2y$10$msMqY/br9As5lKYG.xbeWuYIpwJZNFMUG4T7thd/LkujLM/ut6/kW', 'user', NULL, NULL, NULL, NULL, NULL, NULL, 'fy8H931mAbDQilK', 0),
(11, 'info3@mail.com', '$2y$10$rsQI8sL4yYLpibyvCA9vl.Z/ZgLmOAVCdoVNmvMgREnexerw0pHUG', 'user', 'Антон', 'Смирнов', 'Санкт-Петербург', 'Россия', '1103735083.jpg', '48-1103735083.jpg', 'xc8hCkeNiDE4sr7', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;