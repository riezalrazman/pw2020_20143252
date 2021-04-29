-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 08:47 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pw_2014263252`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nrp` varchar(9) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nrp`, `email`, `jurusan`, `gambar`) VALUES
(1, 'Riezal Razman', '20143252', 'riezalrazman95@2gmail.com', 'Sistem Maklumat', '60827ab46670a.jpg'),
(2, 'Faris Zikri', '20143265', 'fariszikri@gmail.com', 'Netsentrik', 'zikri.jpeg'),
(3, 'Ryann Aiman', '20146578', 'ryannaiman@yahoo.com', 'perladangan', 'ryan.jpg'),
(12, 'Hamzaid', '20149874', 'hasza@yahoo.com', 'Seni Tari', '608508bd43c95.jpg'),
(13, 'Afiq Zafran', '20149878', 'afiqzafran@gmail.com', 'Kulinari', '60850622b4b04.jpg'),
(14, 'Aqil Ali', '20149845', 'aqilali@gmail.com', 'Undang-undang', '60850878a17ac.jpg'),
(15, 'Abdul Muizz', '20149671', 'abdulmuizz@gmail.com', 'Sistem Maklumat', '6085081620441.jpg'),
(16, 'Muzakkir', '20149009', 'muzakkir@yahoo.com', 'Seni Tari', '608507ed805dc.jpg'),
(17, 'Ainn ', '201498112', 'ainnpetir@gmail.com', 'Kulinari', '608508fdb11b0.jpg'),
(18, 'Muzaffar', '20149555', 'muzaffar@gmail.com', 'Sistem Maklumat', '6085096f91dd0.jpg'),
(19, 'Shafikah', '20149777', 'shafikah@gmail.com', 'Kulinari', '60850a08e331a.jpg'),
(20, 'Aiman', '20145643', 'mirzaaiman@gmail.com', 'Undang-undang', '60850a521d5e2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
