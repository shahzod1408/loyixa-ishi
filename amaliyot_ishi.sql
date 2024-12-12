-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 12 2024 г., 14:09
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `amaliyot_ishi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `avariya`
--

CREATE TABLE `avariya` (
  `id` int(11) NOT NULL,
  `xodisa` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `moshina raqami` varchar(30) NOT NULL,
  `avariya_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `foydalanuvchi`
--

CREATE TABLE `foydalanuvchi` (
  `id` int(11) NOT NULL,
  `Last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `shaxar`
--

CREATE TABLE `shaxar` (
  `id` int(11) NOT NULL,
  `Viloyat` varchar(200) NOT NULL,
  `shaxar` varchar(100) NOT NULL,
  `tuman` varchar(100) NOT NULL,
  `avariya_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `avariya`
--
ALTER TABLE `avariya`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `foydalanuvchi`
--
ALTER TABLE `foydalanuvchi`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shaxar`
--
ALTER TABLE `shaxar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `avariya`
--
ALTER TABLE `avariya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `foydalanuvchi`
--
ALTER TABLE `foydalanuvchi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shaxar`
--
ALTER TABLE `shaxar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
