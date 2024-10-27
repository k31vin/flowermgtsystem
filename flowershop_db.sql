-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2024 at 10:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flowershop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'Vaughan Nieves', 'milecureq@mailinator.com', '571', 'Culpa minus praesentium sapiente nostrud ipsum sit magnam sed pariatur Tenetur');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'Vera ', '441', 'rywiraboky@mailinator.com', 'paytm', 'Molestias quam facere ipsum aliquip natus unde cup, Inventore at non et alias eaque incidunt voluptat, At illum at sunt quis sit odio consequatur Pari, Accusamus deleniti quam labore rerum sed, Consequatur magnam excepturi quis qui ut culpa of, Similique velit consequatur sunt aperiam non od, Rerum reiciendis assumenda ex dicta - 968326', 'Jamal May (678 x 1) - ', 678, '2024-10-23', 'completed'),
(2, 1, 'Vera ', '441', 'rywiraboky@mailinator.com', 'paytm', 'Molestias quam facere ipsum aliquip natus unde cup, Inventore at non et alias eaque incidunt voluptat, At illum at sunt quis sit odio consequatur Pari, Accusamus deleniti quam labore rerum sed, Consequatur magnam excepturi quis qui ut culpa of, Similique velit consequatur sunt aperiam non od, Rerum reiciendis assumenda ex dicta - 968326', 'Duncan Mercer (773 x 1) - ', 773, '2024-10-24', 'pending'),
(3, 1, 'Vera ', '441', 'rywiraboky@mailinator.com', 'cash on delivery', 'Molestias quam facere ipsum aliquip natus unde cup, Inventore at non et alias eaque incidunt voluptat, At illum at sunt quis sit odio consequatur Pari, Accusamus deleniti quam labore rerum sed, Consequatur magnam excepturi quis qui ut culpa of, Similique velit consequatur sunt aperiam non od, Rerum reiciendis assumenda ex dicta - 968326', 'Geoffrey Stafford (984 x 1) - Selma Roberts (602 x 1) - ', 1586, '2024-10-26', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(4, 'Geoffrey Stafford', 'bouquets', 984, 'nordwood-themes-bp1ydkAtwFI-unsplash.jpg'),
(5, 'Silas Stuart', 'today&#39;s deal', 227, 'cute.jpeg'),
(6, 'Kerry Michael', 'fresh flowers', 166, 'b7.avif'),
(7, 'Judah Juarez', 'bouquets', 884, 'b.avif'),
(8, 'Selma Roberts', 'fresh flowers', 602, 'hd.avif'),
(9, 'Tad Berg', 'today&#39;s deal', 728, 'maoj.avif'),
(10, 'Rhea Simpson', 'today&#39;s deal', 980, 'shamm.avif'),
(11, 'Tana Crane', 'fresh flowers', 169, 'ashliee.avif'),
(12, 'Diana Osborne', 'cards', 845, 'leafy.avif'),
(13, 'Lisandra Williams', 'bouquets', 430, 'tulip.avif'),
(14, 'Kenyon Chaney', 'bouquets', 389, 'cute.jpeg'),
(15, 'Hedda Sawyer', 'bouquets', 467, 'b2.avif'),
(16, 'Sawyer Fry', 'bouquets', 982, 'b.avif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'Vera ', 'rywiraboky@mailinator.com', '441', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'Molestias quam facere ipsum aliquip natus unde cup, Inventore at non et alias eaque incidunt voluptat, At illum at sunt quis sit odio consequatur Pari, Accusamus deleniti quam labore rerum sed, Consequatur magnam excepturi quis qui ut culpa of, Similique velit consequatur sunt aperiam non od, Rerum reiciendis assumenda ex dicta - 968326');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
