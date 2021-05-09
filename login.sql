-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 19 2021 г., 18:05
-- Версия сервера: 8.0.12
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
-- База данных: `login`
--

-- --------------------------------------------------------

--
-- Структура таблицы `drug`
--

CREATE TABLE `drug` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL,
  `drug` varchar(255) NOT NULL,
  `price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `drug`
--

INSERT INTO `drug` (`id`, `url`, `drug`, `price`) VALUES
(1, 'https://images.unsplash.com/photo-1550572017-738a8a40f286?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1267&q=80', 'Амбробене', 250),
(2, 'https://images.unsplash.com/photo-1562243061-204550d8a2c9?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80', 'Wobecare 5%', 560),
(3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7wuiaKBL3vmju6-oMw7UD26WkQhQCHlWQzg&usqp=CAU', 'Алфавит', 489),
(4, 'https://images.unsplash.com/photo-1549504537-57b91460ba7c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80', 'Гексорал', 310),
(5, 'https://images.unsplash.com/photo-1550572017-4fcdbb59cc32?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1237&q=80', 'Ибупрофен', 126),
(6, 'https://images.unsplash.com/photo-1567427362138-e33c5022aafa?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80', 'Парацетамол', 28),
(7, 'https://images.unsplash.com/photo-1610021684483-b06bf8ed5a41?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80', 'Доктор МОМ', 205);

-- --------------------------------------------------------

--
-- Структура таблицы `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `login` varchar(24) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_info`
--

INSERT INTO `user_info` (`id`, `login`, `password`, `email`) VALUES
(1, 'user_1', 'user_1', ''),
(2, 'user_2', 'user_2', ''),
(3, 'user_3', 'user_3', ''),
(4, 'user_4', 'user_4', ''),
(5, 'user_5', 'user_5', ''),
(6, 'user_6', 'user_6', ''),
(112, 'user_7', 'user_7', ''),
(224, 'user_8', 'user_8', ''),
(226, '123', '', ''),
(230, '', '', ''),
(232, 'user_73', '123', 'wqe@dfds');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `drug`
--
ALTER TABLE `drug`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `drug`
--
ALTER TABLE `drug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
