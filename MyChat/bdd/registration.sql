-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2018 at 08:48 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'jean lohata', 'lohatajean@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'jean lohata', 'lohatajean@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'pakola', 'pakola@yahoo.fr', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'famba', 'famba@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(5, 'john', 'john@gmail.com', 'dfec2024235272389f31b7cbc386d10f'),
(6, 'lohatajohn', 'lohatajohn@outlook.com', '558813098d0d0df9a9d19aaed8df75fd'),
(7, 'lohatta', 'lohatajean@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710'),
(8, 'jose selenge', 'selenge@gmail.com', '662eaa47199461d01a623884080934ab'),
(9, 'fatou', 'fatou@gmail.com', '5c84323b2ac42ebc029f4d9db200b22e'),
(10, 'frank', 'lokongo@yahoo.fr', 'c20ad4d76fe97759aa27a0c99bff6710'),
(11, 'lourd', 'lourd@yahoo.fr', '06564c16b42fa9dbd6b05a6705cb2874'),
(12, 'ali', 'ali@hotmail.com', '86318e52f5ed4801abe1d13d509443de'),
(13, 'damian', 'damian@gmail.com', 'fe0b714aaecbd5c8961994c655d18a0d'),
(14, 'john', 'john@gmail.com', '527bd5b5d689e2c32ae974c6229ff785');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
