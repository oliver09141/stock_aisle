-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2025 at 02:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock_barang`
--

-- --------------------------------------------------------

--
-- Table structure for table `stock_items`
--

CREATE TABLE `stock_items` (
  `id` int(11) NOT NULL,
  `sub_table_code` varchar(5) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_items`
--

INSERT INTO `stock_items` (`id`, `sub_table_code`, `item_name`, `created_at`) VALUES
(3, 'SB01', 'Barang 447', '2025-05-22 18:38:27'),
(7, 'SB01', 'Barang 324', '2025-05-22 18:38:35'),
(8, 'SB01', 'Barang 654', '2025-05-22 18:38:38'),
(9, 'SB01', 'Barang 807', '2025-05-22 18:38:39'),
(10, 'SB01', 'Barang 716', '2025-05-22 18:38:40'),
(43, 'SA01', 'Barang 850', '2025-05-22 19:47:42'),
(45, 'SA01', 'Barang 486', '2025-05-22 19:49:16'),
(46, 'SA01', 'Barang 730', '2025-05-22 19:49:37'),
(47, 'SA01', 'Barang 970', '2025-05-22 19:49:42'),
(48, 'SB01', 'Barang 559', '2025-05-22 19:54:15'),
(49, 'SA01', 'Barang 365', '2025-05-22 19:56:59'),
(51, 'SA03', 'Barang 448', '2025-05-22 19:57:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stock_items`
--
ALTER TABLE `stock_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stock_items`
--
ALTER TABLE `stock_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
