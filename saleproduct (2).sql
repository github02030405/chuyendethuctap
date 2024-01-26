-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2024 at 02:16 PM
-- Server version: 8.1.0
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saleproduct`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `content`, `author`, `created_at`) VALUES
(1, 'ao mua dong ', 'ao mau dong mang lai hieu qua the nao khi mac', 'nguyen binh khiem', '2023-10-28 19:30:35'),
(2, 'ao mua he ', 'ao mau he mang lai hieu qua the nao khi mac', 'nguyen hung dung', '2023-10-28 19:30:35'),
(3, 'ao mua tay dai ', 'ao tay dai co cong dung gi', 'nguyen hao nam', '2023-10-28 19:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `created_at`, `category_name`) VALUES
(1, '2022-09-02 00:00:00', 'tee shirt fd dfd'),
(2, '2022-09-02 00:00:00', 'tee shirt tay d'),
(3, '2022-09-02 00:00:00', 'jacket');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_date`) VALUES
(1, 1, '2022-04-29'),
(2, 3, '2022-04-29'),
(3, 4, '2022-04-29'),
(4, 2, '2022-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `price` float NOT NULL,
  `total_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `product_id`, `quantity`, `price`, `total_price`) VALUES
(1, 1, 8, 200.004, 500),
(2, 1, 9, 300, 500),
(3, 3, 6, 400, 590),
(4, 2, 8, 300.004, 500.6);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_on_sale` tinyint DEFAULT NULL,
  `sale_price` float DEFAULT NULL,
  `created_At` datetime DEFAULT CURRENT_TIMESTAMP,
  `VIEWS` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `cat_id`, `image`, `price`, `description`, `is_on_sale`, `sale_price`, `created_At`, `VIEWS`) VALUES
(1, 'ao tai dai', '1', 'aonam4.jpg', 300, 'jacket new 2023', 1, 200.5, '2023-05-03 00:00:00', 17),
(2, 'áo trắng họa tiết', '2', 'aonam5.jpg', 300, 'teeshirt tot nhat nam 2023', -1, 300, '2022-05-03 00:00:00', 26),
(3, 'áo polo ', '2', 'aonam1.jpg', 300, 'jacket new 2023', 1, 200, '2023-05-03 00:00:00', 1),
(4, 'áo sơ mi lịch lãm', '3', 'aonam2.jpg', 500, 'tee shirt new 2023', 1, 300, '2020-05-03 00:00:00', 1),
(7, 'áo cottom', '2', 'aonam3.jpg', 300, 'teeshirt tot nhat nam 2023', -1, 300, '2013-05-03 00:00:00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `gender`, `avatar`, `role`, `created_at`) VALUES
(1, 'dat', '123', 'nguyen tien dat', 'tiendat@gmail.com', '324324323', 'phuong thu duc thanh pho hcm', '1', NULL, '2', '2023-10-28 19:30:35'),
(2, 'fds', '423423', '423', 'fsd@gmail', '423', 'fds', NULL, NULL, NULL, '2023-12-14 19:22:01'),
(3, 'datpro', '32432432', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', 'Nam', NULL, NULL, '2023-12-14 19:29:01'),
(4, 'datpro', '32432432', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', 'Nam', NULL, NULL, '2023-12-14 19:50:23'),
(5, '', 'dfsfds', 'sdfs', '432432@gmail.com', '4323', 'dfsfds', 'Nam', NULL, NULL, '2023-12-14 19:50:42'),
(6, '', '3423', 'sdfs', '432432@gmail.com', '4323', 'dfsfds', '', NULL, NULL, '2023-12-14 20:00:51'),
(7, '', '3423', 'sdfs', '432432@gmail.com', '4323', 'dfsfds', '', NULL, NULL, '2023-12-14 20:01:51'),
(8, '', '3423', 'sdfs', 'sdfs@gmail.com', '4323', 'dfsfds', '', NULL, NULL, '2023-12-14 20:05:57'),
(9, '', '3423', 'sdfs', 'sdfs@gmail.com', '4323', 'dfsfds', '', 'aonam2.jpg', NULL, '2023-12-14 20:07:17'),
(10, '', '3423', 'sdfs', 'sdfs@gmail.com', '4323', 'dfsfds', '', 'aonam2.jpg', NULL, '2023-12-14 20:08:54'),
(11, 'sdfs', '3423', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', '', 'icons8-search-50 (1).png', NULL, '2023-12-14 20:15:39'),
(12, 'sdfs', '3423', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', 'Nam', 'temp.png', NULL, '2023-12-21 16:24:45'),
(13, 'sdfs', '3423', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', 'Nam', 'temp.png', NULL, '2023-12-21 16:31:36'),
(14, 'sdfs', '3423', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', '', 'temp.png', NULL, '2023-12-21 16:31:43'),
(15, 'sdfs', '3423', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', 'Nam', 'temp.png', NULL, '2023-12-21 17:24:56'),
(16, 'sdfs', '3423', '', '', '', '', '', 'temp.png', NULL, '2023-12-21 17:25:35'),
(17, 'sdfs', '3423', '', '', '', '', '', 'icons8-cart-50 (1).png', NULL, '2023-12-21 17:26:31'),
(18, 'sdfs', '3423', '', '', '', '', '', 'icons8-instagram-15 (1).png', NULL, '2023-12-21 17:26:37'),
(19, 'sdfs', '3423', '', '', '', '', '', 'temp.png', NULL, '2023-12-21 17:27:16'),
(20, 'sdfs', '3423', '', '', '', '', '', 'temp.png', NULL, '2023-12-21 17:27:22'),
(21, 'sdfs', '3423', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', '', 'temp.png', NULL, '2023-12-21 17:39:44'),
(22, 'sdfs', '3423', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', '', 'temp.png', NULL, '2023-12-21 17:45:01'),
(23, 'sdfs', '3423', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', '', 'temp.png', NULL, '2023-12-21 17:54:37'),
(24, 'sdfs', '3423', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', '', 'temp.png', NULL, '2023-12-21 18:07:33'),
(25, 'sdfs', '3423', '', '', '', '', '', 'temp.png', NULL, '2023-12-21 18:09:08'),
(26, 'sdfs', '3423', '', '', '', '', '', 'temp.png', NULL, '2023-12-21 18:09:49'),
(27, 'sdfs', '3423', '', '', '', '', '', 'th.jpg', NULL, '2023-12-21 18:09:57'),
(28, 'sdfs', '3423', '', '', '', '', '', 'th.jpg', NULL, '2023-12-21 18:16:03'),
(29, 'sdfs', '3423', '', '', '', '', '', 'Untitled.png', NULL, '2023-12-21 18:16:09'),
(30, 'sdfs', '3423', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', 'on', 'temp.png', NULL, '2023-12-21 18:19:55'),
(31, 'dat', '3423', 'Nguyễn Tiến Đạt2', 'tiendat33327@gmail.com', '432432423', 'thu duc thanh pho ho chi minh', 'on', 'icons8-heart-suit-48 (1).png', NULL, '2023-12-21 18:20:39'),
(32, 'tien luc', '0d55c4b6aa7de4036a6a42831cf2f2216aa7e44e', 'nguyen tien luc', 'tiendat@gmail.com', '4033252252222', 'thu duc thanh pho ho chi minh', '', 'icons8-heart-50.png', NULL, '2023-12-21 19:20:20'),
(33, 'tien phat', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'nguyentienphat1234', 'tienphat@gmail.com', '05111111', 'phan thiet binh thuan', '0', 'aonam5.jpg', NULL, '2023-12-21 19:25:16'),
(34, 'dat', '8cb2237d0679ca88db6464eac60da96345513964', 'Nguyễn Tiến Đạt2', 'tiendat33327@gmail.com', '4342432', 'thu duc thanh pho ho chi minh', 'on', 'th.jpg', NULL, '2023-12-21 19:48:16'),
(35, 'tiendat@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', '', 'temp.png', NULL, '2023-12-28 18:16:04'),
(36, 'tiendat@gmail.com', '9a271a92c30658c5c6958fb94dd588a45aab7e12', '', '', '', '', '', 'temp.png', NULL, '2023-12-28 18:20:54'),
(37, 'tien phat', '8cb2237d0679ca88db6464eac60da96345513964', 'nguyen tien phat', 'tiendat33327@gmail.com', '03322', 'phan thiet binh thuan', '1', 'aonam2.jpg', NULL, '2023-12-28 19:36:44'),
(38, 'tien luc12', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', '', 'temp.png', 'admin', '2024-01-11 19:16:49'),
(39, 'tien luc', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', '1', 'temp.png', NULL, '2024-01-24 16:14:59'),
(40, 'tien luc', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', '', 'temp.png', NULL, '2024-01-24 17:30:44'),
(41, 'tien luc', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', '', 'temp.png', NULL, '2024-01-24 17:30:59'),
(42, 'tien dat', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', '1', 's3.jpg', NULL, '2024-01-26 19:59:14'),
(43, 'tien luc', '0d55c4b6aa7de4036a6a42831cf2f2216aa7e44e', '', '', '', '', '', 'temp.png', NULL, '2024-01-26 20:04:06'),
(44, 'tien luc', '0d55c4b6aa7de4036a6a42831cf2f2216aa7e44e', '', '', '', '', '1', 'temp.png', NULL, '2024-01-26 20:04:12'),
(45, 'tien luc', '0d55c4b6aa7de4036a6a42831cf2f2216aa7e44e', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', '', 'temp.png', NULL, '2024-01-26 20:04:19'),
(46, 'tien luc', '0d55c4b6aa7de4036a6a42831cf2f2216aa7e44e', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', '1', 'temp.png', NULL, '2024-01-26 20:04:37'),
(47, 'tien dat', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Nguyễn Tiến Đạt', 'tiendat33327@gmail.com', '+84333227631', 'thu duc thanh pho ho chi minh', '1', 's3.jpg', NULL, '2024-01-26 20:06:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
