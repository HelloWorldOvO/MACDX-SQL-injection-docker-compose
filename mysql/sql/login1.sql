-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2023 年 04 月 20 日 18:40
-- 伺服器版本： 8.0.32-0ubuntu0.20.04.2
-- PHP 版本： 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `login`
--

-- --------------------------------------------------------

--
-- 資料表結構 `secret`
--

CREATE TABLE `secret` (
  `ffff` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `llll` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `aaaa` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `gggg` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `secret`
--

INSERT INTO `secret` (`ffff`, `llll`, `aaaa`, `gggg`) VALUES
('MACDX{', 'no', 'sql', 'injection}'),
('MACDX{', 'No', 'sQl', 'InJectIon}'),
('MACDX{', 'No', 'sQl', 'InJectIon}');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `user_id`, `user_name`, `password`) VALUES
(1, 888, 'ghghghg', '5566987'),
(2, 22, 'sdsds', '95595'),
(555, 8899, 'cacaca', '1qaz#EDC$RFV'),
(556, 2, 'uu', 'ii'),
(557, 6197787570462550056, 'jhhgjh', '564846'),
(558, 4148262982, 'fdjfklf', '8458448'),
(559, 69057421229894, 'eeee', '858699'),
(560, 5534996760830, 'sooo', '8884848'),
(561, 38474452550389, 'iii', 'ooo');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_name` (`user_name`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=562;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
