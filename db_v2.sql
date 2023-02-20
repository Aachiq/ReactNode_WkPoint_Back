-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2023 at 12:01 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notesapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'clothes'),
(2, 'electronic'),
(3, 'study'),
(4, 'cars');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `name`, `age`, `city`) VALUES
(1, 'ali', 23, 'casa'),
(2, 'simo', 31, 'rabat'),
(3, 'sami', 23, 'rabat'),
(4, 'karim', 26, 'rabat'),
(5, 'zineb', 17, 'Fes'),
(6, 'houda', 31, 'rabat'),
(7, 'sami', 36, 'Oujda'),
(8, 'yassin', 26, 'Tanger');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `body`) VALUES
(2, 'zdzad', 'zdzadzad'),
(6, 'zdazd', 'zadz'),
(10, 'ddd', 'zzdz');

-- --------------------------------------------------------

--
-- Table structure for table `notification_private`
--

CREATE TABLE `notification_private` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `id_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notification_public`
--

CREATE TABLE `notification_public` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date_notif` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `paymentType` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `date_order` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `made_pays` varchar(100) NOT NULL,
  `guess_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `body`, `paymentType`, `category_id`, `date_order`, `made_pays`, `guess_price`) VALUES
(1, 'T-shirt', 'es these days have a system to notify users of specific actions that have been taken in relation to them, perhaps another user on your site has comme', 'cash', 1, '2023-02-16 22:26:41', 'china', 100),
(2, '10 Caps', 'ckable message to display in subscribed user’s web browsers like Chrome, Firefox, Safari etc.', 'virement', 2, '2023-02-16 22:26:41', 'china', 210),
(3, 'T-shirt', 'We will cover this tutorial step by step with live example to create notifications with push details by administrator and normal can login to ', 'cash', 3, '2023-02-16 22:26:41', 'china', 150),
(4, '10 Caps', 'I want it a computer', 'virement', 4, '2023-02-16 22:26:41', 'china', 250),
(5, 'pontalon', 'I want book', 'cash', 4, '2023-02-16 22:26:41', 'maroc', 1000),
(6, '10 Caps', 'I wnat it with Green Color and size of X with name \'Ali\' aI want book', 'virement', 3, '2023-02-16 22:26:41', 'china', 2000),
(7, 'car', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'virement', 1, '2023-02-15 18:50:02', 'germany', 4000),
(8, '10 Caps', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'virement', 3, '2023-02-15 18:54:03', 'china', 2500),
(9, 'book', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'cash', 4, '2023-02-15 18:54:03', 'america', 6000),
(10, '10 Caps', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'virement', 2, '2023-02-15 18:50:02', 'china', 1400),
(11, 'T-shirt', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'cash', 1, '2023-02-15 18:50:02', 'china', 2000),
(12, '10 Caps', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'virement', 2, '2023-02-15 18:50:02', 'china', 3500),
(13, 'pontalon', 'I want pontalon with Green Color and size of X with name \'Ali\' and Happy Birthday', 'cash', 1, '2023-02-15 18:50:02', 'maroc', 5000),
(14, '10 Caps', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'virement', 2, '2023-02-15 18:50:02', 'china', 470),
(15, 'bike', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'virement', 1, '2023-02-15 18:50:02', 'germany', 20000),
(16, '10 Caps', 'I wnat it with Green Color and size of X with name \'Ali\' and Happy Birthday', 'virement', 2, '2023-02-15 18:50:02', 'china', 170);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `date_sale` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `id_client`, `id_product`, `date_sale`, `quantity`) VALUES
(1, 1, 3, '2023-02-20 20:41:28', 4),
(2, 2, 1, '2023-02-20 20:41:28', 6),
(3, 1, 2, '2023-01-20 20:41:28', 4),
(4, 2, 4, '2023-02-20 20:41:28', 10),
(5, 2, 1, '2022-03-20 21:41:28', 20),
(6, 1, 3, '2022-04-20 21:41:28', 6),
(7, 1, 4, '2022-04-12 21:41:28', 4),
(8, 2, 6, '2022-02-20 20:41:28', 17),
(9, 1, 5, '2023-02-20 20:41:28', 4),
(10, 2, 2, '2023-02-20 20:41:28', 6),
(11, 3, 2, '2023-01-20 20:41:28', 4),
(12, 4, 4, '2023-02-20 20:41:28', 10),
(13, 1, 3, '2022-03-20 21:41:28', 20),
(14, 4, 5, '2022-04-20 21:41:28', 6),
(15, 2, 4, '2022-04-12 21:41:28', 4),
(16, 6, 2, '2022-02-20 20:41:28', 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_private`
--
ALTER TABLE `notification_private`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_public`
--
ALTER TABLE `notification_public`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notification_private`
--
ALTER TABLE `notification_private`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_public`
--
ALTER TABLE `notification_public`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
