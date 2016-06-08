-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2016 at 12:39 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sptk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabeldaftarpekerja`
--

CREATE TABLE `tabeldaftarpekerja` (
  `username` varchar(20) NOT NULL,
  `kodeIklan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabeldaftarpekerja`
--

INSERT INTO `tabeldaftarpekerja` (`username`, `kodeIklan`) VALUES
('VMuliadi', 'ABC-12345'),
('feliks', 'BS000112'),
('feliks', 'qqqwwerrt'),
('nemo', 'BS000112'),
('armanmaulana', 'SAT-00001'),
('feliksnemo', 'SAT-00003');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
