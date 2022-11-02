-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2022 at 04:29 AM
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
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_anggota`
--

CREATE TABLE `mst_anggota` (
  `ID_Anggota` int(5) NOT NULL,
  `Nim` char(13) NOT NULL,
  `Nama` varchar(40) NOT NULL,
  `Progdi` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_anggota`
--

INSERT INTO `mst_anggota` (`ID_Anggota`, `Nim`, `Nama`, `Progdi`) VALUES
(1, 'G.231.19.0179', 'Bagus Uli Nuha', 'ti'),
(2, 'G.221.22.0011', 'Gisella', 'ik'),
(3, 'G.231.19.0001', 'Yayayaan', 'si'),
(4, 'G.221.22.0111', 'Ushop', 'ik'),
(5, 'E.221.20.0100', 'Usasxasax', 'pw'),
(6, 'E.221.20.0101', 'asdxacslanceo', 'pw'),
(7, 'G.222.11.1111', 'Rahayiu', 'si'),
(8, 'F.222.22.2222', 'twowaoqt', 'ti');

-- --------------------------------------------------------

--
-- Table structure for table `mst_buku`
--

CREATE TABLE `mst_buku` (
  `ID_Buku` int(8) NOT NULL,
  `Judul` varchar(100) NOT NULL,
  `Pengarang` varchar(150) NOT NULL,
  `Kategori` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_buku`
--

INSERT INTO `mst_buku` (`ID_Buku`, `Judul`, `Pengarang`, `Kategori`) VALUES
(1, 'Pemrogaman Web dengan Framework Django', 'Tejo kurniawan', 'kamus'),
(2, 'One Piece', 'Oda Eichiro', 'fiksi'),
(3, 'Framework flask for beginer', 'Eko\'s Suloyo', 'novel'),
(4, 'Pemrogaman Python', 'Lisa Su', 'novel'),
(5, 'Walang sungsang', 'Fjri Erla', 'pemrogaman'),
(8, 'ritsmme', 'Lisa Su', 'pemrogaman'),
(9, 'Out ', 'Pengarang', 'kamus'),
(11, 'Gisssel', '19', 'komik'),
(12, 'Aku dan Kau', 'Kau dan Dia', 'novel'),
(13, 'fffgssg', 'fhnyjrnyrt', 'pemrogaman'),
(14, 'mjmghdnr', '1234533', 'kamus'),
(15, 'mkdir', 'jaslsa', 'fiksi'),
(17, 'Floridina', 'tatang sutama', 'kamus'),
(18, 'qwertyuiop', 'Joni P', 'pemrogaman'),
(19, 'Kore jo', 'kalomas', 'novel'),
(20, 'Noaysa', 'raapps', 'pemrogaman'),
(21, 'jascasc', 'ascka si', 'pemrogaman'),
(22, 'Kunto Aji', 'Aji Munmpy', 'fiksi'),
(23, 'Iini Tengah yang tidak menengah', 'Sisakas', 'kamus');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `ID_Pinjam` int(5) NOT NULL,
  `ID_Anggota` int(5) NOT NULL,
  `ID_Buku` int(5) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`ID_Pinjam`, `ID_Anggota`, `ID_Buku`, `tgl_pinjam`, `tgl_kembali`) VALUES
(1, 1, 22, '2022-07-12', '2022-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` tinyint(4) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'ulin', '256f401c494288d80229f2e039264b1b'),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'Bagus Uli Nuha', 'b5c7b5c9e62d396321d37101b8936484');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_anggota`
--
ALTER TABLE `mst_anggota`
  ADD PRIMARY KEY (`ID_Anggota`);

--
-- Indexes for table `mst_buku`
--
ALTER TABLE `mst_buku`
  ADD PRIMARY KEY (`ID_Buku`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`ID_Pinjam`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_anggota`
--
ALTER TABLE `mst_anggota`
  MODIFY `ID_Anggota` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mst_buku`
--
ALTER TABLE `mst_buku`
  MODIFY `ID_Buku` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `ID_Pinjam` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
