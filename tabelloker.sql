-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2016 at 12:41 PM
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
-- Table structure for table `tabelloker`
--

CREATE TABLE `tabelloker` (
  `tanggal` date DEFAULT NULL,
  `jenisPekerjaan` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `noKTP` varchar(30) NOT NULL,
  `NPWP` varchar(30) DEFAULT NULL,
  `noTelp` varchar(20) DEFAULT NULL,
  `perusahaan` varchar(50) DEFAULT NULL,
  `penempatan` varchar(50) DEFAULT NULL,
  `syarat` varchar(100) DEFAULT NULL,
  `fasilitas` varchar(100) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `kodeIklan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabelloker`
--

INSERT INTO `tabelloker` (`tanggal`, `jenisPekerjaan`, `job`, `owner`, `noKTP`, `NPWP`, `noTelp`, `perusahaan`, `penempatan`, `syarat`, `fasilitas`, `keterangan`, `kodeIklan`) VALUES
('2016-06-22', 'SATPAM', '-', 'AKUNG', '', 'AASSSAA88898989', '081232121222', 'PT SINAR MBAK', 'SAMBAS', 'UMUR MAKSIMAL 27', 'TEMPAT TINGGGAL', '-', 'SAT-00003'),
('2016-06-27', 'SATPAM', '-', 'TOTOK', '', 'QWQQQAAASS222111', '085151232123', 'PT JAGO', 'SINGKAWANG', 'UMUR MAKSIMAL 29', 'TEMPAT TINGGAL\r\nMAKAN', '-', 'SAT-00002'),
('2016-05-03', 'BABY SITER', '-', 'NEMO', '', 'ADASSA11122321', '08525269081', 'PT LALA', 'JAKARTA', 'UMUR MAKSIMAL 25TH', 'TEMPAT TINGGAL', '-', 'BS000112');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
