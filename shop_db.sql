-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2024 at 06:59 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'Adeeba', 'd2cec24d9050d73836c6893d8f2f28c367330955');

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
(1, 1, 'nina', '23456789', 'abc.123@gmail.com', 'cash on delivery', 'flat no. 456 building no , 3678 street no, Karachi , Sindh, Pakistan - 67899', 'SHEIN Floral Square Neck Shirred A-Line Dress (7995 x 1) - ', 7995, '2024-07-27', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(1, 'SHEIN Floral Square Neck Shirred A-Line Dress', 'Brand: Shein\r\n\r\nDetails: Floral, All-Over Print\r\n\r\nMaterial: Polyester\r\n\r\nNote: Actual product colour may vary from the images shown.', 7995, 'product1.png', 'product1-1.png', 'product1-2.png'),
(2, 'Houndstooth Lapel Collar Outerwear Long Coat', 'Brand: Evolve - Urban Chic\r\n\r\nMaterial: Wool + Polyester\r\n\r\nDelivery Time: 3-5 working days', 6500, 'product4-1.png', 'product4.png', 'product4-2.png'),
(3, 'SHEIN Contrast Lace Puff Sleeve Tie Back Dress', 'Brand: SHEIN\r\n\r\nMaterial: Polyester\r\n\r\nDetails: Sequin, Zipper, Tape', 7590, 'product2.png', 'product2-1.png', 'product2-2.png'),
(4, 'SHEIN MOD Floral Print Puff Short Sleeve Dress', 'Brand: Shein\r\n\r\nMaterial: 95% Polyester, 5% Elastane', 6750, 'product3.png', 'product3-1.png', 'product3-2.png'),
(5, 'Golden Heels Shoes', 'D-Rose Gold Ankle Strap Heels\r\nVegan metallic leather shapes a beautiful single strap Adjustable ankle strap\r\n4&#34; stiletto heel.\r\nCushioned insole.\r\nRubber sole has non-skid markings.\r\nImported.\r\n2 5.5', 3000, 'product12.jpeg', 'product12 (2).jpeg', 'product12 (1).jpeg'),
(6, 'Statement Flower Earrings & Choker Jewellery set', 'fine jewellery necklaces, best places to buy gold jewellery, luxury brand jewellery', 2599, 'product16 (1).jpeg', 'product16 (2).jpeg', 'product16 (3).jpeg'),
(7, 'Womens Cargo Mid Waist Pockets Long Straight Legs Pants', 'Item:Womens Cargo Mid Waist Pockets Long Straight Legs Pants Casual Outdoor Trousers * Condition: 100% Brand New ', 4999, 'product9 (1).jpeg', 'product9 (3).jpeg', 'product9 (2).jpeg'),
(8, 'Vanessas Solid Color PU Leather Crossbody Bag - Lavender', 'Vanessas Solid Colour PU Leather Crossbody Bag\r\nSize: (Width)27cm * (Height)19cm * (Thickness)8cm\r\nInterior: As the picture', 3599, 'product15 (2).jpeg', 'product15 (3).jpeg', 'product15 (1).jpeg'),
(9, 'Womens Clothing Silk Shirt', 'Style: vintage\r\nCollar: Turn-down Collar\r\nShirts Type: Dress Shirts\r\nSleeve Style: Regular\r\nSleeve Length(cm): Full', 1999, 'product7 (2).jpeg', 'product7.jpeg', 'product7 (1).jpeg'),
(10, 'Butterfly necklace Jewellery', 'This set consists of 2 sterling silver necklaces, both of which feature butterfly pendants and are fastened at the centre back with a round spring clasp and have a short extension chain.', 500, 'product17 (1).jpeg', 'product17 (3).jpeg', 'product17 (2).jpeg'),
(11, 'Flower Earrings & Choker jewellery set', 'Elevate your style with this exquisite floral choker and earrings set. The delicate design features sparkling gemstones, adding a touch of elegance to any outfit. ', 2999, 'product16 (1).jpeg', 'product16 (2).jpeg', 'product16 (3).jpeg'),
(12, 'Woolen Long Coat Double Breasted Faux Wool Outerwear Jacket ', 'Winter Woolen Long Coat Casual Women Double Breasted Faux Wool Jacket Fall Fashion Korean Ladies Black Clothes', 5499, 'product5 (2).jpeg', 'product5 (1).jpeg', 'product5 (3).jpeg'),
(13, 'Hoodies Custom 3 Piece Crop Top Sportwear Jogger Set', 'Style: Casual\r\nMaterial:	Polyester / Cotton\r\nFabric Type: Fleece\r\nFeature:	Anti-pilling, Breathable, Sustainable', 7999, 'product11 (1).jpeg', 'product11 (2).jpeg', 'product11 (3).jpeg'),
(14, 'Casual Loose Pullover Sportwear Set', 'Two piece sweatshirt pants set features a straight and loose fit, keeping you comfortable for all day. Adjustable pants drawstring allows you to adjust it for an appropriate tightness.', 4591, 'product10 (2).jpeg', 'product10 (3).jpeg', 'product10 (1).jpeg'),
(15, 'Solid Button Front Lantern Sleeve Shirt', 'Blue Casual Collar Long Sleeve Fabric Plain Shirt Embellished Non-Stretch Spring/Fall Women Tops, Blouses & Tee', 3349, 'product6 (1).jpeg', 'product6 (2).jpeg', 'product6-2.png'),
(16, 'High Waist Wide Leg Pants', 'Fit Type: LOOSE\r\nFabric Type: Laminated Fabric\r\nClothing Patterns: LOOSE\r\nSeason: Autumn/Winter', 3999, 'product8 (1).jpeg', 'product8 (2).jpeg', 'product8 (3).jpeg'),
(17, 'Shoulder Messenger Small Square Chanel bag', 'Colour: Black\r\nStyle: Urban Simplicity\r\nItem No：015\r\nMaterial: PU\r\nBag Size：Small\r\nPopular Elements：Chain', 1650, 'product14 (1).jpeg', 'product14 (2).jpeg', 'product14.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Tania', 'abc.123@gmail.com', '7d0e8ddd3e93b3d414dadb3edb82525105b2b771');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
