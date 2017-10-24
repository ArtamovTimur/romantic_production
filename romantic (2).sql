-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 18 2017 г., 11:23
-- Версия сервера: 5.6.37-log
-- Версия PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `romantic`
--

-- --------------------------------------------------------

--
-- Структура таблицы `rom_cart`
--

CREATE TABLE `rom_cart` (
  `id` int(11) NOT NULL,
  `user_sess_id` varchar(512) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `payment` enum('1','2') NOT NULL,
  `ready_date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `rom_images`
--

CREATE TABLE `rom_images` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `img_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `rom_products`
--

CREATE TABLE `rom_products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `pub_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recomend_gift_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rom_products`
--

INSERT INTO `rom_products` (`id`, `title`, `price`, `description`, `photo_name`, `pub_date`, `recomend_gift_id`) VALUES
(26, 'Красная роза Голландия 60 см', 599, 'Красная роза Голландия 60 см', 'assets/img/products/aG89TY8nfd2.jpg', '2017-10-17 08:33:56', 0),
(27, 'Розовая роза Голландия 60 см', 599, 'Розовая роза Голландия 60 см', 'assets/img/products/R8anSAAGvfhyi.jpg', '2017-10-17 08:34:27', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `rom_products_count`
--

CREATE TABLE `rom_products_count` (
  `id` int(11) NOT NULL,
  `user_id` varchar(256) NOT NULL,
  `product_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `rom_products_images`
--

CREATE TABLE `rom_products_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `rom_users`
--

CREATE TABLE `rom_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` enum('0','1','2','') NOT NULL,
  `reg_date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rom_users`
--

INSERT INTO `rom_users` (`id`, `name`, `login`, `password`, `phone`, `address`, `role`, `reg_date`) VALUES
(1, 'tima', 'tima99', 'qwerty', '', '', '1', '0000-00-00 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `rom_cart`
--
ALTER TABLE `rom_cart`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rom_images`
--
ALTER TABLE `rom_images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rom_products`
--
ALTER TABLE `rom_products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rom_products_count`
--
ALTER TABLE `rom_products_count`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rom_products_images`
--
ALTER TABLE `rom_products_images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rom_users`
--
ALTER TABLE `rom_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `rom_cart`
--
ALTER TABLE `rom_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT для таблицы `rom_images`
--
ALTER TABLE `rom_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `rom_products`
--
ALTER TABLE `rom_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `rom_products_count`
--
ALTER TABLE `rom_products_count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT для таблицы `rom_products_images`
--
ALTER TABLE `rom_products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT для таблицы `rom_users`
--
ALTER TABLE `rom_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
