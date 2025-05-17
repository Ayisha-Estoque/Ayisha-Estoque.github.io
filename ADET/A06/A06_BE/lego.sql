-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2025 at 01:18 PM
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
-- Database: `lego`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `name`) VALUES
(1, 'Architecture'),
(2, 'Botanical Collection'),
(3, 'Bluey'),
(4, 'Wicked'),
(5, 'Marvel'),
(6, 'Minecraft');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `isAvailable` varchar(5) NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `categoryID`, `name`, `code`, `price`, `image`, `isAvailable`) VALUES
(1, 1, 'Trevi Fountain', 'Trevi', 895, 'image/Architecture/trevi.webp', 'true'),
(2, 1, 'Notre-Dame de Paris', 'Notre', 12880, 'image/Architecture/notre.webp', 'true'),
(3, 1, 'Himeji Castle', 'Himeji', 8960, 'image/Architecture/himeji.webp', 'true'),
(4, 1, 'Great Pyramid of Giza', 'Great', 7280, 'image/Architecture/great.webp', 'true'),
(5, 1, 'Statue of Liberty', 'Statue', 6720, 'image/Architecture/statue.webp', 'true'),
(6, 1, 'London', 'London', 2240, 'image/Architecture/london.webp', 'true'),
(7, 1, 'Paris', 'Paris', 2800, 'image/Architecture/paris.webp', 'true'),
(8, 1, 'New York City', 'NYC', 3360, 'image/Architecture/new.webp', 'true'),
(9, 2, 'Petite Sunny Bouquet', 'Petite', 1680, 'image/Botanical Collection/petite.webp', 'true'),
(10, 2, 'Japanese Red Maple Bonsai Tree', 'Japanese', 3360, 'image/Botanical Collection/japanese.webp', 'true'),
(11, 2, 'Flower Arrangement', 'Flower', 6160, 'image/Botanical Collection/flower.webp', 'true'),
(12, 2, 'Pretty Pink Flower Bouquet', 'Pretty', 3360, 'image/Botanical Collection/pretty.webp', 'true'),
(13, 2, 'Mini Orchid', 'Mini', 1680, 'image/Botanical Collection/mini.webp', 'true'),
(14, 2, 'Lucky Bamboo', 'Lucky', 1680, 'image/Botanical Collection/lucky.webp', 'true'),
(15, 2, 'Pulm Blossom', 'Pulm', 1680, 'image/Botanical Collection/pulm.webp', 'true'),
(16, 2, 'Orchid', 'Orchid', 2800, 'image/Botanical Collection/orchid.webp', 'true'),
(17, 2, 'Chrysanthemum', 'Chry', 1680, 'image/Botanical Collection/chry.webp', 'true'),
(18, 2, 'Bonsai Tree', 'Bonsai', 2800, 'image/Botanical Collection/bonsai.webp', 'true'),
(19, 3, 'Bluey\'s Family House', 'Family', 3920, 'image/Bluey/family.webp', 'true'),
(20, 3, 'Playground Fun with Bluey and Chloe', 'Playground', 1120, 'image/Bluey/playground.webp', 'true'),
(21, 3, 'Bluey\'s Beach and Family Car Trip', 'Beach', 1680, 'image/Bluey/beach.webp', 'true'),
(22, 3, 'Ice Cream Trip with Bluey', 'Ice Cream', 1680, 'image/Bluey/ice.webp', 'true'),
(23, 3, 'Bluey\'s Family House with Memory Game', 'Memory', 3920, 'image/Bluey/memory.webp', 'true'),
(24, 4, 'Welcome to Emerald City', 'Emerald', 5600, 'image/Wicked/emerald.webp', 'true'),
(25, 4, 'Elphaba & Glinda Figures', 'Figures', 3080, 'image/Wicked/figures.webp', 'true'),
(26, 4, 'Glinda & Elphaba\'s Dormitory', 'Dormitory', 3920, 'image/Wicked/dormitory.webp', 'true'),
(27, 4, 'Glinda,Elphaba & Nessarose at Shiz University', 'DShiz', 1680, 'image/Wicked/shiz.webp', 'true'),
(28, 5, 'Iron Spider-Man Bust', 'Bust', 3360, 'image/Marvel/bust.webp', 'true'),
(29, 5, 'Peter Parker\'s Apartment', 'Apartment', 3080, 'image/Marvel/apartment.webp', 'true'),
(30, 5, 'Avengers Tower', 'Tower', 28000, 'image/Marvel/tower.webp', 'true'),
(31, 5, 'X-Men: The X-MAnsion', 'Mansion', 18480, 'image/Marvel/mansion.webp', 'true'),
(32, 5, 'Daily Bugle', 'Bugle', 19600, 'image/Marvel/bugle.webp', 'true'),
(33, 5, 'Infinity Gauntlet', 'Gauntlet', 4480, 'image/Marvel/gauntlet.webp', 'true'),
(34, 5, 'Potted Groot', 'Groot', 560, 'image/Marvel/groot.webp', 'true'),
(35, 5, 'Guardians of the Galaxy: The Milano', 'Milano', 10080, 'image/Marvel/milano.webp', 'true'),
(36, 5, 'Marvel Logo & Minifigures', 'Minifigures', 5600, 'image/Marvel/minifigures.webp', 'true'),
(37, 5, 'Iron Man\'s Laboratory: Hall of Armor', 'Laboratory', 3080, 'image/Marvel/laboratory.webp', 'true'),
(38, 6, 'The Crafting Table', 'Crafting', 5040, 'image/Minecraft/crafting.webp', 'true'),
(39, 6, 'Woodland Mansion Fighting Ring', 'Woodland', 2800, 'image/Minecraft/woodland.webp', 'true'),
(40, 6, 'The Pillager Outpost and Ravager', 'Pillager', 4480, 'image/Minecraft/pillager.webp', 'true'),
(41, 6, 'The Nether Lava Battle', 'Lava', 560, 'image/Minecraft/lava.webp', 'true'),
(42, 6, 'The TNT Jungle House', 'TNT', 1680, 'image/Minecraft/tnt.webp', 'true'),
(43, 6, 'TThe Illager Desert Patrol', 'Illager', 840, 'image/Minecraft/illager.webp', 'true'),
(44, 6, 'The Mooshroom House', 'Mooshroom', 2800, 'image/Minecraft/mooshroom.webp', 'true'),
(45, 6, 'The Armadillo Mine Expedition', 'Armadillo', 1680, 'image/Minecraft/armadillo.webp', 'true'),
(46, 6, 'The Trial Chamber', 'Chamber', 2240, 'image/Minecraft/chamber.webp', 'true'),
(47, 6, 'The Nether Portal Ambush', 'Portal', 2120, 'image/Minecraft/portal.webp', 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
