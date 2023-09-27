-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2023 年 09 月 27 日 09:48
-- 伺服器版本： 8.0.34-0ubuntu0.22.04.1
-- PHP 版本： 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `easyorder`
--

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `ID` int NOT NULL,
  `Username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nickname` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Uid01` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserState` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
  `UserType` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`ID`, `Username`, `Password`, `Nickname`, `Email`, `Uid01`, `UserState`, `UserType`, `Created_at`) VALUES
(4, '444444', 'b857e405c1', '44', '44', '8a322448b9', 'true', '2', '2023-09-13 17:03:46'),
(6, '777777', '30e53e1f92', '11', '11', 'c9f6887b48', 'true', '2', '2023-09-20 06:08:02'),
(8, '222222', 'bae5e3c700', '22', '22', '', 'true', '2', '2023-09-23 03:45:41'),
(9, '333333', 'd27d3c3033', '四海', '33', '6e79aaffbb', 'true', '1', '2023-09-23 03:46:08'),
(10, '111111', 'bae5e3c700', '123', '1111', '7d1b7129b0', 'true', '2', '2023-09-23 06:31:04'),
(11, '55555', 'f638ff0893', '吃飽', '555', 'a1326090a8', 'true', '1', '2023-09-23 06:46:22'),
(12, '666666', '7c497e6d3e', '六當勞', '66666', '0f4ad886b5', 'true', '1', '2023-09-25 18:08:26'),
(13, '11111', '1bbd882701', 'testmember', 'member@', 'a511fc5b0f', 'true', '2', '2023-09-26 00:28:04'),
(14, 'admin', '25d55aa400', '@@@', '@@', '6bb3a1192e', 'true', '1', '2023-09-26 01:42:30');

-- --------------------------------------------------------

--
-- 資料表結構 `merch`
--

CREATE TABLE `merch` (
  `Merch_ID` int NOT NULL,
  `Merch_Name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Merch_Price` int NOT NULL,
  `Company_ID` int NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `merch`
--

INSERT INTO `merch` (`Merch_ID`, `Merch_Name`, `Merch_Price`, `Company_ID`, `Created_at`) VALUES
(1, '燒賣', 800, 9, '2023-09-20 06:03:11'),
(2, '燒餅', 90, 11, '2023-09-20 06:03:12'),
(3, '1', 1, 11, '2023-09-25 17:58:01'),
(4, '雙層漢堡', 200, 12, '2023-09-25 18:09:03'),
(5, '薯條', 60, 12, '2023-09-25 18:09:16'),
(6, '卡拉雞腿堡', 120, 12, '2023-09-25 18:09:31');

-- --------------------------------------------------------

--
-- 資料表結構 `merchorder`
--

CREATE TABLE `merchorder` (
  `ID` int NOT NULL,
  `Order_ID` int NOT NULL,
  `Order_Username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Order_CID` int NOT NULL,
  `Order_CUsername` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Order_Merch_ID` int NOT NULL,
  `Order_Merch` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Total` int NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `merchorder`
--

INSERT INTO `merchorder` (`ID`, `Order_ID`, `Order_Username`, `Order_CID`, `Order_CUsername`, `Order_Merch_ID`, `Order_Merch`, `Total`, `Created_at`) VALUES
(1, 4, '444444', 666666, '六當勞', 4, '雙層漢堡', 200, '2023-09-26 01:25:38'),
(2, 13, '11111', 12, '六當勞', 6, '卡拉雞腿堡', 120, '2023-09-26 01:27:26'),
(3, 13, '11111', 12, '六當勞', 5, '薯條', 60, '2023-09-26 01:27:27'),
(4, 13, '11111', 12, '六當勞', 4, '雙層漢堡', 200, '2023-09-26 01:27:28'),
(5, 13, '11111', 11, '吃飽', 2, '燒餅', 90, '2023-09-26 01:27:32'),
(6, 13, '11111', 11, '吃飽', 3, '1', 1, '2023-09-26 01:27:32');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `merch`
--
ALTER TABLE `merch`
  ADD PRIMARY KEY (`Merch_ID`);

--
-- 資料表索引 `merchorder`
--
ALTER TABLE `merchorder`
  ADD PRIMARY KEY (`ID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member`
--
ALTER TABLE `member`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `merch`
--
ALTER TABLE `merch`
  MODIFY `Merch_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `merchorder`
--
ALTER TABLE `merchorder`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
