-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 14 2017 г., 12:51
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kp_blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `kp_articles`
--

CREATE TABLE `kp_articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `date_added` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kp_news`
--

CREATE TABLE `kp_news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `date_added` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kp_news`
--

INSERT INTO `kp_news` (`id`, `title`, `body`, `date_added`) VALUES
(1, 'Сагинтаев жизнерадостно ответил на критику \"ЭКСПО-2017\"', 'Сагинтаев напомнил, что до начала «ЭКСПО» в Астане осталось три месяца.\n\n«Я понимаю, много скептиков, зачем мы столько денег потратили? Посмотрев на Универсиаду, какой эффект получил город Алматы? Поэтому по «ЭКСПО» не только Астана, страна получит колоссальный эффект.\n\nПоэтому всем надо сейчас собраться и провести на высоком уровне уже следующее знаковое имиджевое мероприятие нашей страны – «ЭКСПО»-2017. Думаю, что мы на очень высоком уровне проведем выставку», — сказал премьер на заседании правительства.', '2017-02-14'),
(2, 'Cтоит ли ожидать укрепления нацвалюты до 300 тенге', 'На фоне достаточно высоких цен на нефть и продолжающегося укрепления российской валюты, которая в начале недели, впервые с июля 2015 года, взяла рубеж 58 рублей за доллар, курс тенге обосновался в диапазоне 321-323 тенге за доллар. Последние тенденции привели к тому, что в кулуарах валютного сегмента KASE стали обсуждать вероятность снижения доллара США в область 300 тенге. Корреспондент Tengrinews.kz обратился к экспертам и попросил оценить потенциал роста нацвалюты.', '2017-02-16'),
(3, 'Третья новость', 'фдлыврадлфыгнвашщгн щшгйцунщк дйцу', '2017-02-02'),
(4, 'Четвертая новость на сегодня', 'Текст новости', '2017-02-14'),
(5, 'Пятая новость', 'Текст новости', '2017-02-12');

-- --------------------------------------------------------

--
-- Структура таблицы `kp_tags`
--

CREATE TABLE `kp_tags` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kp_users`
--

CREATE TABLE `kp_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'myname', 'n.absagat@gmail.com', '$2y$10$6NjDTPTz056TVHciXIqzyeLFBiK2wZZUIHLfe7MQPgmzSIOiFokei', NULL, '2017-02-14 05:15:14', '2017-02-14 05:15:14'),
(2, 'new', 'new@new.com', '$2y$10$VibWzSUlJVv9z5y8P76epOAV5Ofs8Ymrh3fpLFvn9YV90qOvjC9mC', 'vG5kSNUpfxmXGkQtIzy7sIcW5Uu0ZYYJFH2cxEBXcEgeHTF7FtnQPoCnat50', '2017-02-14 05:33:56', '2017-02-14 05:33:56'),
(3, 'Russell Crowe', 'russ@email.com', '$2y$10$8Dugh4zobHxeyrmQ84RIU.lAqjxkFXfPFrnX3YZCOwZ/7GCHjIRAe', 'gSWEWJ3t6LGwFDrGVqSxrSnGpWs2THPb2fcRnXsMfa0nsmEKKCXzjphA8LnG', '2017-02-14 05:50:07', '2017-02-14 05:50:07');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `kp_articles`
--
ALTER TABLE `kp_articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kp_news`
--
ALTER TABLE `kp_news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kp_tags`
--
ALTER TABLE `kp_tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kp_users`
--
ALTER TABLE `kp_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT для таблицы `kp_articles`
--
ALTER TABLE `kp_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kp_news`
--
ALTER TABLE `kp_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `kp_tags`
--
ALTER TABLE `kp_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `kp_users`
--
ALTER TABLE `kp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
