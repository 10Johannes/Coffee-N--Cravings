-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 02:17 PM
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
-- Database: `coffee-cravings`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `date_made` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `date_made`) VALUES
(1, 'Drinks', '2022-07-11 01:06:44'),
(2, 'Rice Meal', '2022-07-11 01:22:05'),
(3, 'Snacks', '2022-07-11 01:22:05'),
(4, 'Coffee', '2022-08-06 12:38:14'),
(7, 'Fruit Soda', '2022-08-06 12:47:08'),
(8, 'Pasta', '2022-08-06 13:46:14'),
(9, 'Wings', '2022-08-06 13:46:14'),
(10, 'Combo Meals', '2022-08-06 13:46:29');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `customer_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `id`, `customer_type`) VALUES
(1, 1, 'Member'),
(2, 2, 'Member'),
(3, 3, 'Member'),
(4, 4, 'Member'),
(5, 1, 'Walk In'),
(6, 2, 'Walk In'),
(7, 3, 'Walk In'),
(8, 4, 'Walk In'),
(9, 5, 'Walk In'),
(10, 6, 'Walk In'),
(11, 7, 'Walk In'),
(12, 8, 'Walk In'),
(13, 9, 'Walk In'),
(14, 10, 'Walk In');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(11) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `points` float NOT NULL,
  `address` varchar(200) NOT NULL,
  `date_registered` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `lastname`, `firstname`, `middlename`, `fullname`, `email`, `phone`, `points`, `address`, `date_registered`) VALUES
(1, 'Macaya', 'Emmanuel Francis', 'Agustin', 'Macaya, Emmanuel Francis Agustin', 'macayaemmancutie@gmail.com', '09455980481', 1.1, 'San Mateo Rizal', '2022-08-01 13:27:08'),
(2, 'Teves', 'Rj', 'Babida', 'Teves, Rj Babida', 'rjtevescutie@gmail.com', '09668297061', 15.5, 'Angono, Rizal', '2022-08-01 13:28:30'),
(3, 'Reyes', 'Alex', 'Pajarellano', 'Reyes, Alex Pajarellano', 'alexreyescutie@gmail.com', '09456682910', 3.83, 'Marilao, Bulacan', '2022-08-01 13:29:32'),
(4, 'Simon', 'Joshua', 'Pete', 'Simon, Joshua Pete', 'joshuacutie@gmail.com', '09458761274', 5.7, 'Marikina City', '2022-08-01 13:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `pre_order_id` varchar(200) NOT NULL,
  `transaction_id` varchar(200) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `total_amount` float NOT NULL,
  `redeemed_points` float NOT NULL,
  `earned_points` float NOT NULL,
  `discount` float NOT NULL,
  `final_amount` float NOT NULL,
  `reward_points` float NOT NULL,
  `date_made` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `pre_order_id`, `transaction_id`, `member_id`, `total_amount`, `redeemed_points`, `earned_points`, `discount`, `final_amount`, `reward_points`, `date_made`) VALUES
(1, '147', '62e7d5d60dacf-62e7d5d60dad0', 1, 660, 0, 4.4, 0, 660, 4.4, '2022-08-01 13:32:06'),
(2, '188', '62e7d5f349bed-62e7d5f349bef', 3, 1005, 0, 6.7, 0, 1005, 6.7, '2022-08-01 13:32:35'),
(3, '160', '62e7d61c6dda8-62e7d61c6dda9', 2, 1320, 0, 8.8, 0, 1320, 8.8, '2022-08-01 13:33:16'),
(4, '186', '62e7d643f014e-62e7d643f0150', 4, 1305, 0, 8.7, 0, 1305, 8.7, '2022-08-01 13:33:55'),
(5, '168', '62e7d657d8490-62e7d657d8492', 0, 320, 0, 0, 0, 320, 0, '2022-08-01 13:34:15'),
(6, '136', '62e7d6643e71c-62e7d6643e71e', 0, 685, 0, 0, 0, 685, 0, '2022-08-01 13:34:28'),
(7, '143', '62e7d67d7052f-62e7d67d70531', 0, 320, 0, 0, 0, 320, 0, '2022-08-01 13:34:53'),
(8, '180', '62e7d684a3a7a-62e7d684a3a7b', 0, 150, 0, 0, 0, 150, 0, '2022-08-01 13:35:00'),
(9, '56', '62e7d68ba9a95-62e7d68ba9a97', 0, 330, 0, 0, 0, 330, 0, '2022-08-01 13:35:07'),
(10, '165', '62e7d6ad0c392-62e7d6ad0c394', 1, 1005, 0, 6.7, 0, 1005, 6.7, '2022-08-01 13:35:41'),
(11, '131', '62e7d6bb55922-62e7d6bb55924', 2, 1005, 0, 6.7, 0, 1005, 6.7, '2022-08-01 13:35:55'),
(12, '84', '62e7d6c4e60e7-62e7d6c4e60e8', 3, 320, 0, 2.13, 0, 320, 2.13, '2022-08-01 13:36:04'),
(13, '75', '62e7d6d03f929-62e7d6d03f92a', 1, 320, 10, 0, 38.4, 281.6, 0, '2022-08-01 13:36:16'),
(14, '72', '62e7d6df95c67-62e7d6df95c69', 3, 70, 5, 0, 3.5, 66.5, 0, '2022-08-01 13:36:31'),
(15, '127', '62e7d6f0a14c7-62e7d6f0a14c9', 4, 90, 3, 0, 1.8, 88.2, 0, '2022-08-01 13:36:48'),
(16, '53', '62e7d7e5cf560-62e7d7e5cf562', 0, 3000, 0, 0, 0, 3000, 0, '2022-08-01 13:40:53'),
(17, '197', '62ebf1e0e92f0-62ebf1e0e92f2', 0, 195, 0, 0, 0, 195, 0, '2022-08-04 16:20:48'),
(18, '94', '62ebfd32d9697-62ebfd32d9699', 0, 500, 0, 0, 0, 500, 0, '2022-08-04 17:09:06'),
(19, '122', '62ebfdb4b14f1-62ebfdb4b14f3', 0, 400, 0, 0, 0, 400, 0, '2022-08-04 17:11:16'),
(20, '60', '62ebfe09ca4d3-62ebfe09ca4d5', 0, 350, 0, 0, 0, 350, 0, '2022-08-04 17:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `points_history`
--

CREATE TABLE `points_history` (
  `point_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `total_amount` float NOT NULL,
  `redeemed_points` float NOT NULL,
  `earned_points` float NOT NULL,
  `discount` float NOT NULL,
  `final_amount` float NOT NULL,
  `reward_points` float NOT NULL,
  `date_made` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `points_history`
--

INSERT INTO `points_history` (`point_history_id`, `order_id`, `member_id`, `total_amount`, `redeemed_points`, `earned_points`, `discount`, `final_amount`, `reward_points`, `date_made`) VALUES
(1, 1, 1, 660, 0, 4.4, 0, 660, 4.4, '2022-08-01 13:32:06'),
(2, 2, 3, 1005, 0, 6.7, 0, 1005, 6.7, '2022-08-01 13:32:35'),
(3, 3, 2, 1320, 0, 8.8, 0, 1320, 8.8, '2022-08-01 13:33:16'),
(4, 4, 4, 1305, 0, 8.7, 0, 1305, 8.7, '2022-08-01 13:33:56'),
(5, 10, 1, 1005, 0, 6.7, 0, 1005, 6.7, '2022-08-01 13:35:41'),
(6, 11, 2, 1005, 0, 6.7, 0, 1005, 6.7, '2022-08-01 13:35:55'),
(7, 12, 3, 320, 0, 2.13, 0, 320, 2.13, '2022-08-01 13:36:04'),
(8, 13, 1, 320, 10, 0, 38.4, 281.6, 0, '2022-08-01 13:36:16'),
(9, 14, 3, 70, 5, 0, 3.5, 66.5, 0, '2022-08-01 13:36:31'),
(10, 15, 4, 90, 3, 0, 1.8, 88.2, 0, '2022-08-01 13:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `category`, `image`, `date_created`) VALUES
(1, 'Cafe Americano', 70, 'Coffee', 'drinks-62e7904456a9e.jpg', '2022-07-17 15:47:38'),
(2, 'Cafe Latte', 80, 'Coffee', 'drinks-62e7d3583df4c.jpeg', '2022-07-17 15:47:38'),
(3, 'Cappuccino', 85, 'Coffee', 'drinks-62e7d2db4aecf.jpg', '2022-07-17 15:47:38'),
(4, 'Mocha', 85, 'Coffee', 'drinks-62d42f1ae12be.jpg', '2022-07-17 15:47:38'),
(5, 'Caramel Macchiato', 90, 'Coffee', 'drinks-62d42f1aef815.jpg', '2022-07-17 15:47:38'),
(6, 'Caramel Latte', 90, 'Coffee', 'drinks-62d42f1b0c5fb.jpg', '2022-07-17 15:47:39'),
(7, 'Hot Choco Mocha', 80, 'Coffee', 'drinks-62d42f1b173a5.jpg', '2022-07-17 15:47:39'),
(8, 'Cafe Misto', 80, 'Coffee', 'drinks-62d42f1b2147b.jpg', '2022-07-17 15:47:39'),
(9, 'Dark Roast Coffee', 80, 'Coffee', 'drinks-62d42f1b2a387.jfif', '2022-07-17 15:47:39'),
(10, 'Flat White Coffee', 85, 'Coffee', 'drinks-62d42f1b34489.jpg', '2022-07-17 15:47:39'),
(11, 'Affogato', 90, 'Coffee', 'drinks-62d42f1b451dd.jpg', '2022-07-17 15:47:39'),
(12, 'Cold Brew Coffee', 90, 'Coffee', 'drinks-62d42f1b5fb7e.jpeg', '2022-07-17 15:47:39'),
(13, 'Strawberry', 75, 'Fruit Soda', 'drinks-62d42f1b85bce.jpg', '2022-07-17 15:47:39'),
(14, 'Blueberry', 75, 'Fruit Soda', 'drinks-62d42f1b914c5.jpg', '2022-07-17 15:47:39'),
(15, 'Blue Lemonade', 75, 'Fruit Soda', 'drinks-62d42f1b9b348.jpg', '2022-07-17 15:47:39'),
(16, 'Honey Lemonade', 75, 'Fruit Soda', 'drinks-62d42f1ba448a.jpg', '2022-07-17 15:47:39'),
(17, 'Iced Tea', 50, 'Drinks', 'drinks-62d42f1bb0ee3.jpg', '2022-07-17 15:47:39'),
(18, 'Bottled Water', 20, 'Drinks', 'drinks-62e78e9701a50.jpg', '2022-07-17 15:47:39'),
(19, 'Canned Soft Drinks', 50, 'Drinks', 'drinks-62d42f1bc962d.jpg', '2022-07-17 15:47:39'),
(20, 'Hotsilog', 65, 'Rice Meal', 'rice meal-62d42f1bd267a.jpg', '2022-07-17 15:47:39'),
(21, 'Longsilog', 65, 'Rice Meal', 'rice meal-62d42f1bdc674.jpeg', '2022-07-17 15:47:39'),
(22, 'Tapsilog', 85, 'Rice Meal', 'rice meal-62d42f1be568c.jpg', '2022-07-17 15:47:39'),
(23, 'Tocilog', 65, 'Rice Meal', 'rice meal-62d42f1bf01a5.jpg', '2022-07-17 15:47:39'),
(24, 'Malingsilog', 65, 'Rice Meal', 'rice meal-62d42f1c043e1.jpg', '2022-07-17 15:47:40'),
(25, 'Chicksilog', 80, 'Rice Meal', 'rice meal-62d42f1c1066c.jpg', '2022-07-17 15:47:40'),
(26, 'Porksilog', 90, 'Rice Meal', 'rice meal-62d42f1c19f2e.jpg', '2022-07-17 15:47:40'),
(27, 'Bangsilog', 90, 'Rice Meal', 'rice meal-62d42f1c23df7.jpg', '2022-07-17 15:47:40'),
(28, 'Cornsilog', 60, 'Rice Meal', 'rice meal-62d42f1c2cee3.jpg', '2022-07-17 15:47:40'),
(29, 'Extra Rice', 15, 'Rice Meal', 'rice meal-62d42f1c36e6a.png', '2022-07-17 15:47:40'),
(30, 'Fried Rice', 25, 'Rice Meal', 'rice meal-62d42f1c3febf.jpg', '2022-07-17 15:47:40'),
(31, 'Carbonara', 95, 'Pasta', 'snacks-62d42f1c49e93.jpg', '2022-07-17 15:47:40'),
(32, 'Italian Spaghetti', 100, 'Pasta', 'snacks-62d42f1c55a9d.jpg', '2022-07-17 15:47:40'),
(33, 'Creamy Tuna Pesto', 110, 'Pasta', 'snacks-62d42f1c689f7.jpg', '2022-07-17 15:47:40'),
(34, 'Baked Macaroni', 100, 'Pasta', 'snacks-62d42f1c72827.jpg', '2022-07-17 15:47:40'),
(35, 'Garlic Parmesan', 120, 'Wings', 'snacks-62d42f1c7b9bd.jpg', '2022-07-17 15:47:40'),
(36, 'Sweet BBQ Wings', 120, 'Wings', 'snacks-62d42f1c85897.jpg', '2022-07-17 15:47:40'),
(37, 'Signature Buffalo Wings', 120, 'Wings', 'snacks-62d42f1c8e9e6.jpg', '2022-07-17 15:47:40'),
(38, 'Honey Garlic', 120, 'Wings', 'snacks-62d42f1c98923.jfif', '2022-07-17 15:47:40'),
(39, 'Teriyaki', 120, 'Wings', 'snacks-62d42f1ca7096.jfif', '2022-07-17 15:47:40'),
(40, 'Korean', 120, 'Wings', 'snacks-62d42f1cb0e6f.jpg', '2022-07-17 15:47:40'),
(41, 'Classic Homestyle', 110, 'Wings', 'snacks-62d42f1cbf706.jpg', '2022-07-17 15:47:40'),
(42, 'Cheesy Fries', 60, 'Snacks', 'snacks-62d42f1cc958f.jpg', '2022-07-17 15:47:40'),
(43, 'Beef Nachos', 95, 'Snacks', 'snacks-62d42f1cd26a7.jpg', '2022-07-17 15:47:40'),
(44, 'Beef Tacos', 35, 'Snacks', 'snacks-62d42f1cdc58d.jpg', '2022-07-17 15:47:40'),
(48, 'Burger', 40, 'Snacks', 'snacks-62e7cd63ac204.jpg', '2022-08-01 12:56:03'),
(49, 'EMMANMACAYA', 150, 'Rice Meal', 'rice meal-62e7d47bf0f4e.JPG', '2022-08-01 13:26:19'),
(51, 'Bella', 70, 'Snacks', 'snacks-62ebfda7f0a6f.jpg', '2022-08-04 17:11:03'),
(52, 'C1 - Teriyaki Wings with Blue Lemonade', 150, 'Combo Meals', 'combo meals-62ee72ac5dcb1.jpg', '2022-08-06 13:54:52'),
(53, 'C2 - Garlic Parmesan Wings with Iced Tea', 130, 'Combo Meals', 'combo meals-62ee72ca10d6a.jpg', '2022-08-06 13:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `product_order_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `date_ordered` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`product_order_id`, `order_id`, `product_id`, `quantity`, `price`, `total`, `date_ordered`) VALUES
(1, 1, 1, 1, 70, 70, '2022-08-01 13:32:06'),
(2, 1, 2, 1, 80, 80, '2022-08-01 13:32:06'),
(3, 1, 3, 1, 85, 85, '2022-08-01 13:32:06'),
(4, 1, 4, 1, 85, 85, '2022-08-01 13:32:06'),
(5, 1, 5, 1, 90, 90, '2022-08-01 13:32:06'),
(6, 1, 6, 1, 90, 90, '2022-08-01 13:32:06'),
(7, 1, 7, 1, 80, 80, '2022-08-01 13:32:06'),
(8, 1, 8, 1, 80, 80, '2022-08-01 13:32:06'),
(9, 2, 1, 1, 70, 70, '2022-08-01 13:32:35'),
(10, 2, 2, 1, 80, 80, '2022-08-01 13:32:35'),
(11, 2, 3, 1, 85, 85, '2022-08-01 13:32:35'),
(12, 2, 5, 1, 90, 90, '2022-08-01 13:32:35'),
(13, 2, 6, 1, 90, 90, '2022-08-01 13:32:35'),
(14, 2, 7, 1, 80, 80, '2022-08-01 13:32:35'),
(15, 2, 8, 1, 80, 80, '2022-08-01 13:32:35'),
(16, 2, 4, 1, 85, 85, '2022-08-01 13:32:35'),
(17, 2, 9, 1, 80, 80, '2022-08-01 13:32:35'),
(18, 2, 10, 1, 85, 85, '2022-08-01 13:32:35'),
(19, 2, 11, 1, 90, 90, '2022-08-01 13:32:35'),
(20, 2, 12, 1, 90, 90, '2022-08-01 13:32:35'),
(21, 3, 1, 2, 70, 140, '2022-08-01 13:33:16'),
(22, 3, 2, 2, 80, 160, '2022-08-01 13:33:16'),
(23, 3, 3, 2, 85, 170, '2022-08-01 13:33:16'),
(24, 3, 4, 2, 85, 170, '2022-08-01 13:33:16'),
(25, 3, 5, 2, 90, 180, '2022-08-01 13:33:16'),
(26, 3, 6, 2, 90, 180, '2022-08-01 13:33:16'),
(27, 3, 7, 2, 80, 160, '2022-08-01 13:33:16'),
(28, 3, 8, 2, 80, 160, '2022-08-01 13:33:16'),
(29, 4, 1, 1, 70, 70, '2022-08-01 13:33:55'),
(30, 4, 2, 1, 80, 80, '2022-08-01 13:33:55'),
(31, 4, 3, 1, 85, 85, '2022-08-01 13:33:56'),
(32, 4, 4, 1, 85, 85, '2022-08-01 13:33:56'),
(33, 4, 8, 1, 80, 80, '2022-08-01 13:33:56'),
(34, 4, 7, 1, 80, 80, '2022-08-01 13:33:56'),
(35, 4, 6, 1, 90, 90, '2022-08-01 13:33:56'),
(36, 4, 5, 1, 90, 90, '2022-08-01 13:33:56'),
(37, 4, 9, 1, 80, 80, '2022-08-01 13:33:56'),
(38, 4, 10, 1, 85, 85, '2022-08-01 13:33:56'),
(39, 4, 11, 1, 90, 90, '2022-08-01 13:33:56'),
(40, 4, 12, 1, 90, 90, '2022-08-01 13:33:56'),
(41, 4, 14, 1, 75, 75, '2022-08-01 13:33:56'),
(42, 4, 13, 1, 75, 75, '2022-08-01 13:33:56'),
(43, 4, 15, 1, 75, 75, '2022-08-01 13:33:56'),
(44, 4, 16, 1, 75, 75, '2022-08-01 13:33:56'),
(45, 5, 1, 1, 70, 70, '2022-08-01 13:34:15'),
(46, 5, 2, 1, 80, 80, '2022-08-01 13:34:15'),
(47, 5, 3, 1, 85, 85, '2022-08-01 13:34:15'),
(48, 5, 4, 1, 85, 85, '2022-08-01 13:34:15'),
(49, 6, 8, 1, 80, 80, '2022-08-01 13:34:28'),
(50, 6, 7, 1, 80, 80, '2022-08-01 13:34:28'),
(51, 6, 6, 1, 90, 90, '2022-08-01 13:34:28'),
(52, 6, 5, 1, 90, 90, '2022-08-01 13:34:28'),
(53, 6, 9, 1, 80, 80, '2022-08-01 13:34:28'),
(54, 6, 10, 1, 85, 85, '2022-08-01 13:34:28'),
(55, 6, 11, 1, 90, 90, '2022-08-01 13:34:28'),
(56, 6, 12, 1, 90, 90, '2022-08-01 13:34:28'),
(57, 7, 1, 1, 70, 70, '2022-08-01 13:34:53'),
(58, 7, 2, 1, 80, 80, '2022-08-01 13:34:53'),
(59, 7, 3, 1, 85, 85, '2022-08-01 13:34:53'),
(60, 7, 4, 1, 85, 85, '2022-08-01 13:34:53'),
(61, 8, 1, 1, 70, 70, '2022-08-01 13:35:00'),
(62, 8, 2, 1, 80, 80, '2022-08-01 13:35:00'),
(63, 9, 3, 1, 85, 85, '2022-08-01 13:35:07'),
(64, 9, 4, 1, 85, 85, '2022-08-01 13:35:07'),
(65, 9, 8, 1, 80, 80, '2022-08-01 13:35:07'),
(66, 9, 7, 1, 80, 80, '2022-08-01 13:35:07'),
(67, 10, 1, 1, 70, 70, '2022-08-01 13:35:41'),
(68, 10, 2, 1, 80, 80, '2022-08-01 13:35:41'),
(69, 10, 3, 1, 85, 85, '2022-08-01 13:35:41'),
(70, 10, 4, 1, 85, 85, '2022-08-01 13:35:41'),
(71, 10, 8, 1, 80, 80, '2022-08-01 13:35:41'),
(72, 10, 7, 1, 80, 80, '2022-08-01 13:35:41'),
(73, 10, 6, 1, 90, 90, '2022-08-01 13:35:41'),
(74, 10, 5, 1, 90, 90, '2022-08-01 13:35:41'),
(75, 10, 9, 1, 80, 80, '2022-08-01 13:35:41'),
(76, 10, 11, 1, 90, 90, '2022-08-01 13:35:41'),
(77, 10, 12, 1, 90, 90, '2022-08-01 13:35:41'),
(78, 10, 10, 1, 85, 85, '2022-08-01 13:35:41'),
(79, 11, 1, 1, 70, 70, '2022-08-01 13:35:55'),
(80, 11, 2, 1, 80, 80, '2022-08-01 13:35:55'),
(81, 11, 3, 1, 85, 85, '2022-08-01 13:35:55'),
(82, 11, 4, 1, 85, 85, '2022-08-01 13:35:55'),
(83, 11, 8, 1, 80, 80, '2022-08-01 13:35:55'),
(84, 11, 7, 1, 80, 80, '2022-08-01 13:35:55'),
(85, 11, 6, 1, 90, 90, '2022-08-01 13:35:55'),
(86, 11, 5, 1, 90, 90, '2022-08-01 13:35:55'),
(87, 11, 9, 1, 80, 80, '2022-08-01 13:35:55'),
(88, 11, 10, 1, 85, 85, '2022-08-01 13:35:55'),
(89, 11, 11, 1, 90, 90, '2022-08-01 13:35:55'),
(90, 11, 12, 1, 90, 90, '2022-08-01 13:35:55'),
(91, 12, 1, 1, 70, 70, '2022-08-01 13:36:04'),
(92, 12, 2, 1, 80, 80, '2022-08-01 13:36:04'),
(93, 12, 3, 1, 85, 85, '2022-08-01 13:36:04'),
(94, 12, 4, 1, 85, 85, '2022-08-01 13:36:04'),
(95, 13, 1, 1, 70, 70, '2022-08-01 13:36:16'),
(96, 13, 2, 1, 80, 80, '2022-08-01 13:36:16'),
(97, 13, 3, 1, 85, 85, '2022-08-01 13:36:16'),
(98, 13, 4, 1, 85, 85, '2022-08-01 13:36:16'),
(99, 14, 1, 1, 70, 70, '2022-08-01 13:36:31'),
(100, 15, 5, 1, 90, 90, '2022-08-01 13:36:48'),
(101, 16, 49, 20, 150, 3000, '2022-08-01 13:40:53'),
(102, 17, 15, 1, 75, 75, '2022-08-04 16:20:48'),
(103, 17, 35, 1, 120, 120, '2022-08-04 16:20:49'),
(104, 18, 50, 10, 50, 500, '2022-08-04 17:09:06'),
(105, 19, 51, 5, 80, 400, '2022-08-04 17:11:16'),
(106, 20, 51, 5, 70, 350, '2022-08-04 17:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `sales_reports`
--

CREATE TABLE `sales_reports` (
  `sales_report_id` int(11) NOT NULL,
  `report_id` varchar(100) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `total_sales` int(11) NOT NULL,
  `date_made` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_reports`
--

INSERT INTO `sales_reports` (`sales_report_id`, `report_id`, `from_date`, `to_date`, `total_sales`, `date_made`) VALUES
(1, '62e7d709687a0-62e7d709687a2', '2022-07-31', '2022-08-02', 8861, '2022-08-01 13:37:13'),
(2, '62e7d7f28e68e-62e7d7f28e68f', '2022-07-31', '2022-08-02', 11861, '2022-08-01 13:41:06'),
(3, '62ebfd3dbe0bd-62ebfd3dbe0c0', '2022-08-01', '2022-08-06', 12556, '2022-08-04 17:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `sales_report_orders`
--

CREATE TABLE `sales_report_orders` (
  `sales_report_order_id` int(11) NOT NULL,
  `report_id` varchar(100) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_report_orders`
--

INSERT INTO `sales_report_orders` (`sales_report_order_id`, `report_id`, `order_id`, `order_quantity`) VALUES
(1, '62e7d709687a0-62e7d709687a2', 1, 13),
(2, '62e7d709687a0-62e7d709687a2', 2, 12),
(3, '62e7d709687a0-62e7d709687a2', 3, 12),
(4, '62e7d709687a0-62e7d709687a2', 4, 12),
(5, '62e7d709687a0-62e7d709687a2', 5, 9),
(6, '62e7d709687a0-62e7d709687a2', 6, 9),
(7, '62e7d709687a0-62e7d709687a2', 7, 9),
(8, '62e7d709687a0-62e7d709687a2', 8, 8),
(9, '62e7d709687a0-62e7d709687a2', 9, 5),
(10, '62e7d709687a0-62e7d709687a2', 10, 5),
(11, '62e7d709687a0-62e7d709687a2', 11, 0),
(12, '62e7d709687a0-62e7d709687a2', 12, 0),
(13, '62e7d709687a0-62e7d709687a2', 13, 0),
(14, '62e7d709687a0-62e7d709687a2', 14, 0),
(15, '62e7d709687a0-62e7d709687a2', 15, 0),
(16, '62e7d7f28e68e-62e7d7f28e68f', 1, 20),
(17, '62e7d7f28e68e-62e7d7f28e68f', 2, 13),
(18, '62e7d7f28e68e-62e7d7f28e68f', 3, 12),
(19, '62e7d7f28e68e-62e7d7f28e68f', 4, 12),
(20, '62e7d7f28e68e-62e7d7f28e68f', 5, 12),
(21, '62e7d7f28e68e-62e7d7f28e68f', 6, 9),
(22, '62e7d7f28e68e-62e7d7f28e68f', 7, 9),
(23, '62e7d7f28e68e-62e7d7f28e68f', 8, 9),
(24, '62e7d7f28e68e-62e7d7f28e68f', 9, 8),
(25, '62e7d7f28e68e-62e7d7f28e68f', 10, 5),
(26, '62e7d7f28e68e-62e7d7f28e68f', 11, 0),
(27, '62e7d7f28e68e-62e7d7f28e68f', 12, 0),
(28, '62e7d7f28e68e-62e7d7f28e68f', 13, 0),
(29, '62e7d7f28e68e-62e7d7f28e68f', 14, 0),
(30, '62e7d7f28e68e-62e7d7f28e68f', 15, 0),
(31, '62e7d7f28e68e-62e7d7f28e68f', 16, 0),
(32, '62ebfd3dbe0bd-62ebfd3dbe0c0', 1, 20),
(33, '62ebfd3dbe0bd-62ebfd3dbe0c0', 2, 13),
(34, '62ebfd3dbe0bd-62ebfd3dbe0c0', 3, 12),
(35, '62ebfd3dbe0bd-62ebfd3dbe0c0', 4, 12),
(36, '62ebfd3dbe0bd-62ebfd3dbe0c0', 5, 12),
(37, '62ebfd3dbe0bd-62ebfd3dbe0c0', 6, 10),
(38, '62ebfd3dbe0bd-62ebfd3dbe0c0', 7, 9),
(39, '62ebfd3dbe0bd-62ebfd3dbe0c0', 8, 9),
(40, '62ebfd3dbe0bd-62ebfd3dbe0c0', 9, 9),
(41, '62ebfd3dbe0bd-62ebfd3dbe0c0', 10, 8),
(42, '62ebfd3dbe0bd-62ebfd3dbe0c0', 11, 0),
(43, '62ebfd3dbe0bd-62ebfd3dbe0c0', 12, 0),
(44, '62ebfd3dbe0bd-62ebfd3dbe0c0', 13, 0),
(45, '62ebfd3dbe0bd-62ebfd3dbe0c0', 14, 0),
(46, '62ebfd3dbe0bd-62ebfd3dbe0c0', 15, 0),
(47, '62ebfd3dbe0bd-62ebfd3dbe0c0', 16, 0),
(48, '62ebfd3dbe0bd-62ebfd3dbe0c0', 17, 0),
(49, '62ebfd3dbe0bd-62ebfd3dbe0c0', 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_report_populars`
--

CREATE TABLE `sales_report_populars` (
  `sales_report_popular_id` int(11) NOT NULL,
  `report_id` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_report_populars`
--

INSERT INTO `sales_report_populars` (`sales_report_popular_id`, `report_id`, `product_id`) VALUES
(1, '62e7d709687a0-62e7d709687a2', 1),
(2, '62e7d709687a0-62e7d709687a2', 2),
(3, '62e7d709687a0-62e7d709687a2', 3),
(4, '62e7d709687a0-62e7d709687a2', 4),
(5, '62e7d709687a0-62e7d709687a2', 5),
(6, '62e7d709687a0-62e7d709687a2', 7),
(7, '62e7d709687a0-62e7d709687a2', 8),
(8, '62e7d709687a0-62e7d709687a2', 6),
(9, '62e7d709687a0-62e7d709687a2', 9),
(10, '62e7d709687a0-62e7d709687a2', 10),
(11, '62e7d7f28e68e-62e7d7f28e68f', 49),
(12, '62e7d7f28e68e-62e7d7f28e68f', 1),
(13, '62e7d7f28e68e-62e7d7f28e68f', 2),
(14, '62e7d7f28e68e-62e7d7f28e68f', 3),
(15, '62e7d7f28e68e-62e7d7f28e68f', 4),
(16, '62e7d7f28e68e-62e7d7f28e68f', 5),
(17, '62e7d7f28e68e-62e7d7f28e68f', 7),
(18, '62e7d7f28e68e-62e7d7f28e68f', 8),
(19, '62e7d7f28e68e-62e7d7f28e68f', 6),
(20, '62e7d7f28e68e-62e7d7f28e68f', 9),
(21, '62ebfd3dbe0bd-62ebfd3dbe0c0', 49),
(22, '62ebfd3dbe0bd-62ebfd3dbe0c0', 1),
(23, '62ebfd3dbe0bd-62ebfd3dbe0c0', 2),
(24, '62ebfd3dbe0bd-62ebfd3dbe0c0', 3),
(25, '62ebfd3dbe0bd-62ebfd3dbe0c0', 4),
(26, '62ebfd3dbe0bd-62ebfd3dbe0c0', 50),
(27, '62ebfd3dbe0bd-62ebfd3dbe0c0', 5),
(28, '62ebfd3dbe0bd-62ebfd3dbe0c0', 7),
(29, '62ebfd3dbe0bd-62ebfd3dbe0c0', 8),
(30, '62ebfd3dbe0bd-62ebfd3dbe0c0', 6);

-- --------------------------------------------------------

--
-- Table structure for table `walk_in`
--

CREATE TABLE `walk_in` (
  `walk_in_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `walk_in`
--

INSERT INTO `walk_in` (`walk_in_id`, `order_id`) VALUES
(1, 5),
(2, 6),
(3, 7),
(4, 8),
(5, 9),
(6, 16),
(7, 17),
(8, 18),
(9, 19),
(10, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_name` (`category_name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `points_history`
--
ALTER TABLE `points_history`
  ADD PRIMARY KEY (`point_history_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`product_order_id`),
  ADD KEY `order_id` (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sales_reports`
--
ALTER TABLE `sales_reports`
  ADD PRIMARY KEY (`sales_report_id`),
  ADD UNIQUE KEY `report_id` (`report_id`);

--
-- Indexes for table `sales_report_orders`
--
ALTER TABLE `sales_report_orders`
  ADD PRIMARY KEY (`sales_report_order_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `sales_report_populars`
--
ALTER TABLE `sales_report_populars`
  ADD PRIMARY KEY (`sales_report_popular_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `walk_in`
--
ALTER TABLE `walk_in`
  ADD PRIMARY KEY (`walk_in_id`),
  ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `points_history`
--
ALTER TABLE `points_history`
  MODIFY `point_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `product_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `sales_reports`
--
ALTER TABLE `sales_reports`
  MODIFY `sales_report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales_report_orders`
--
ALTER TABLE `sales_report_orders`
  MODIFY `sales_report_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `sales_report_populars`
--
ALTER TABLE `sales_report_populars`
  MODIFY `sales_report_popular_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `walk_in`
--
ALTER TABLE `walk_in`
  MODIFY `walk_in_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `points_history`
--
ALTER TABLE `points_history`
  ADD CONSTRAINT `points_history_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `points_history_ibfk_3` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`category_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD CONSTRAINT `product_orders_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_report_orders`
--
ALTER TABLE `sales_report_orders`
  ADD CONSTRAINT `sales_report_orders_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `sales_reports` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_report_orders_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_report_populars`
--
ALTER TABLE `sales_report_populars`
  ADD CONSTRAINT `sales_report_populars_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `sales_report_orders` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_report_populars_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `walk_in`
--
ALTER TABLE `walk_in`
  ADD CONSTRAINT `walk_in_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
