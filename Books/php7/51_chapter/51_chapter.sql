-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 01 2019 г., 14:49
-- Версия сервера: 5.7.23
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `51_chapter`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalogs`
--

CREATE TABLE `catalogs` (
  `id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `pos` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `pos`, `is_active`, `parent_id`) VALUES
(1, 'Материнские платы', 1, 1, 0),
(2, 'Жесткие диски', 2, 1, 0),
(3, 'Видеокарты', 3, 1, 0),
(4, 'Процессоры', 4, 1, 0),
(5, 'ASUS', 1, 1, 1),
(6, 'Biostar', 2, 1, 1),
(7, 'Foxconn', 3, 1, 1),
(8, 'GIGABYTE', 4, 1, 1),
(9, 'Intel', 5, 1, 1),
(10, 'MSI', 6, 1, 1),
(11, 'Supermicro', 7, 1, 1),
(12, 'Hitachi', 1, 1, 2),
(13, 'Samsung', 2, 1, 2),
(14, 'Seagate', 3, 1, 2),
(15, 'Western Digital', 4, 1, 2),
(16, 'ASUS', 1, 1, 3),
(17, 'GIGABYTE', 2, 1, 3),
(18, 'MSI', 3, 1, 3),
(19, 'Sapphire', 4, 1, 3),
(20, 'AMD', 1, 1, 4),
(21, 'Intel', 2, 1, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `nickname` tinytext NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `nickname`, `content`, `created_at`, `is_visible`) VALUES
(1, 'anstag', 'ты пидр', '2019-10-01 14:37:03', 1),
(2, 'lolo', 'fuck you\n', '2019-10-01 14:37:24', 1),
(3, 'anstag', 'fuck you too\n', '2019-10-01 14:37:40', 1),
(4, 'title', '`yo`\n', '2019-10-01 14:37:59', 1),
(5, 'title', '`yo`\n', '2019-10-01 14:38:00', 1),
(6, 'title', '`yo`\n', '2019-10-01 14:38:01', 1),
(7, 'title', '`yo`\n', '2019-10-01 14:38:03', 1),
(8, 'title', '`yo`\n', '2019-10-01 14:38:04', 1),
(9, 'title', '`yo`\n', '2019-10-01 14:38:18', 1),
(10, 'title', '`yo`\n', '2019-10-01 14:38:19', 1),
(11, 'title', '`yo`\n', '2019-10-01 14:38:20', 1),
(12, 'title', '`yo`\n', '2019-10-01 14:38:20', 1),
(13, 'title', '`yo`\n', '2019-10-01 14:38:21', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `pass` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `first_name` tinytext NOT NULL,
  `last_name` tinytext NOT NULL,
  `created_at` datetime NOT NULL,
  `is_block` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `pass`, `email`, `first_name`, `last_name`, `created_at`, `is_block`) VALUES
(1, 'd.koterov', 'pass', 'dmitry.koterov@gmail.com', 'Дмитрий', 'Котеров', '2016-01-04 19:22:41', 0),
(2, 'i.simdyanov', 'pass', 'igorsimdyanov@gmail.com', 'Игорь', 'Симдянов', '2016-01-04 19:40:01', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
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
-- AUTO_INCREMENT для таблицы `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
