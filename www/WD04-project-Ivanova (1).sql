-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 22 2018 г., 20:28
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
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(1, 8, 5, 'Самое сердце Древнего Рима, где происходили важные государственные и общественные события &ndash; решались ', '2018-10-19 14:04:49'),
(2, 18, 6, 'Замечательный парк, обязательно отправлюсь туда этим летом', '2018-10-19 17:34:03'),
(3, 18, 6, 'Замечательный парк, обязательно отправлюсь туда этим летом.', '2018-10-19 17:40:09'),
(4, 18, 6, 'Замечательный парк, обязательно отправлюсь туда этим летом.', '2018-10-19 17:40:46'),
(5, 11, 6, 'Папа Римский. Храм возник на месте бывшего цирка Нерона в IV веке. Сначала это была небольшая базилика, где хранились мощи апостола Петра. В XV веке ее перестроили в грандиозное здание. Над собором Св. Петра работали Рафэль, Микеланджело, Перуцци, Мадерно и другие. ', '2018-10-19 18:13:19'),
(6, 11, 6, ' Петра. В XV веке ее перестроили в грандиозное здание. Над собором Св. Петра работали Рафэль, Микеланджело, Перуцци, Мадерно и другие.', '2018-10-19 18:19:20'),
(7, 11, 6, ' Петра. В XV веке ее перестроили в грандиозное здание. Над собором Св. Петра работали Рафэль, Микеланджело, Перуцци, Мадерно и другие.', '2018-10-19 18:23:08'),
(8, 11, 6, ' Петра. В XV веке ее перестроили в грандиозное здание. Над собором Св. Петра работали Рафэль, Микеланджело, Перуцци, Мадерно и другие.', '2018-10-19 18:23:29');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `secondname` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  `vk` varchar(191) DEFAULT NULL,
  `github` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `fb` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `phone`, `address`, `name`, `secondname`, `skype`, `vk`, `github`, `twitter`, `fb`) VALUES
(1, 'zinok.ilanka@yandex.ru', '+7 (952) 375-96-10', 'улица новая д.4 кв15', 'Степан', 'Иванов', '', 'https://vk.com/ilanka26', 'https://github.com/Ivanova-Zinaida', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `message_file_name_original` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_file` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `name`, `message`, `email`, `date_time`, `message_file_name_original`, `message_file`) VALUES
(12, 'Зинаида', 'Привет, как дела? наконец то написал тебе. Посмотри ТЗ нового проекта. Делаем стартап в B2B сфере, юриспуриденция, контракты, право. Инвестиции уже получены и нам нужен классный фронт энд разработчик, как раз - такой как ты. Будет круто если сможешь поработать с нами.', 'zinok.ilanka@yandex.ru', '2018-10-22 17:53:46', 'business-aboutus.psd', '-574030976.psd');

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
  `post_image_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cat` int(11) UNSIGNED DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `date`, `author_id`, `date_time`, `post_image`, `post_image_small`, `cat`, `update_time`) VALUES
(7, ' Витториано', 'Памятный архитектурный комплекс XVIII-XIX вв. в честь короля Виктора Эммануила – первого правителя объединенной Италии. На площадке перед монументальным дворцом горит Вечный огонь и дежурит почетный караул. Жители Рима не слишком жалуют эту громаду из белого мрамора, так как считают, что она не вписывается в архитектуру города. Некоторые римляне зовут Витториано нелепым «свадебным тортом»', 1538844305, 5, '2018-10-06 19:45:05', '-368083161.jpg', '320--368083161.jpg', 1, NULL),
(8, 'Римский форум', 'Самое сердце Древнего Рима, где происходили важные государственные и общественные события – решались судьбы законов, выбирались консулы, проходили триумфы императоров после победоносных войн. После падение Империи форум был разрушен и разорен, да и время делало свою работу, поэтому до наших дней дошли только фрагменты. Остатки форума входят в охраняемую археологическую зону, где работает музей под открытым небом.', 1538844372, 5, '2018-10-06 19:46:12', '1179104986.jpg', '320-1179104986.jpg', 1, NULL),
(9, 'Пьяцца-дель-Пополо', 'Дворец XVI столетия, построенный для кардинала Сципионе Боргезе на месте бывших виноградников. Здание окружено огромным парком в английском стиле с многочисленными античными статуями. На территории находится ипподром, зоопарк, театр и несколько музеев. До начала XX столетия особняк с парком принадлежал семейству Боргезе, потом все имущество отошло государству.', 1538844477, 5, '2018-10-06 19:47:57', '314100444.jpg', '320-314100444.jpg', 1, NULL),
(10, 'Замок Святого Ангела', 'Сооружение начали строить еще в эпоху Римской империи во II веке н.э. За время своего существования оно выполняло роль папского жилища, тюрьмы, склада и даже усыпальницы. В наши дни в крепости размещается Военно-исторический музей. Замок получил такое название в VI веке н.э. после того, как Папе Григорию явился образ архангела Михаила. Прямо от замка через реку Тибр перекинут живописный мост, который был построен при императоре Адриане. По мосту можно было добраться до Марсова поля кратчайшим путем.', 1538844619, 5, '2018-10-06 19:50:19', '1164813761.jpg', '320-1164813761.jpg', 1, NULL),
(11, ' Собор и площадь Святого Петра', 'Собор Св. Петра – это духовный центр католической ветви христианства. Здесь проводит праздничный мессы сам Папа Римский. Храм возник на месте бывшего цирка Нерона в IV веке. Сначала это была небольшая базилика, где хранились мощи апостола Петра. В XV веке ее перестроили в грандиозное здание. Над собором Св. Петра работали Рафэль, Микеланджело, Перуцци, Мадерно и другие. Перед храмом раскинулась широкая площадь с колоннадой из 284 дорических колонн.', 1538848297, 5, '2018-10-06 20:51:37', '708206167.jpg', '320-708206167.jpg', 1, NULL),
(12, ' Базилика Сан-Джованни ин Латерано', 'Одна из самых древних христианский церквей, первый храм Рима. В церковной иерархии она находится выше всех остальных, даже выше собора Святого Петра. Католические иерархи присвоили ей титул «базилика майор», то есть «старшая». Ее признают «главой и матерью всех церквей». Храм появился во времена правления Константина при Папе Сильвестре I в IV веке н.э. В базилике захоронены шесть Пап и хранятся мощи апостолов Святого Павла и Святого Петра.', 1538848549, 5, '2018-10-06 20:55:49', '413961118.jpg', '320-413961118.jpg', 1, NULL),
(14, 'Достопримечательности Рима. Самые главные и интересные достопримечательности Рима ', 'Рим - столица Италии и региона Лацио, один из красивейших и интереснейших городов мира. Вечный город расположен на легендарных семи холмах на реке Тибр примерно в 25 км от побережья Тирренского моря. Рим - колыбель великой цивилизации и центр одной из величайших империй в истории человечества. Здесь почти на каждой улице расположена какая-нибудь достопримечательность и легко можно встретить памятники архитектуры и культуры, которым несколько тысяч лет. Поэтому изучить Рим за пару дней просто не возможно.\r\n\r\nИсторический центр города внесён в список объектов Всемирного наследия ЮНЕСКО. В Риме можно прикоснуться к периоду Античности и истории Римской империи: посмотреть знаменитый Форум, легендарный Колизей, древний Пантеон и множество других памятников древности и грандиозных руин, прогуляться по узким улочкам с гладкой, отполированный миллионами ног и веками брусчаткой, посидеть в уютных уличных кафе и тратториях, посетить знаменитые римские площади и фонтаны, дворцы и сады. Кроме этого, Рим - центр католической веры: Ватикан, его музеи, площадь и собор св. Петра, замок Святого Ангела также являются популярными среди туристов.								', 1539866199, 5, '2018-10-06 22:32:04', '-168895511.jpg', '320--168895511.jpg', 1, '2018-10-18 15:36:39'),
(19, 'JavaScript', '<p>тест</p>\r\n', 1539898346, 5, '2018-10-19 00:32:26', '-378104808.jpg', '320--378104808.jpg', 3, NULL);

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
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
