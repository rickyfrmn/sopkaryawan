-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2019 at 12:14 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `first_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `email`, `password`, `level`) VALUES
(1, 'fajar', 'fajar', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nip` text NOT NULL,
  `nama` varchar(20) NOT NULL,
  `divisi` varchar(20) NOT NULL,
  `laker` text NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `nilai` decimal(10,0) NOT NULL,
  `gaji` text NOT NULL,
  `gol` text NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nip`, `nama`, `divisi`, `laker`, `jabatan`, `nilai`, `gaji`, `gol`, `ket`) VALUES
(1, '7311417021', 'ALFIA RAHMA PUTRI', 'SDM', '7 TAHUN', 'STAFF', '80', '3.500.000', 'III A', 'Tunjangan Kerja Daerah'),
(2, '7311417061', 'FAJAR ABDURRAFI', 'OPERASIONAL', '5 TAHUN', 'MANAJER', '85', '3.500.000', 'III B', 'Tunjangan Kerja Daerah'),
(3, '7311417152', 'HERDIANTI DIAN DANES', 'PEMASARAN', '4 TAHUN', 'STAFF', '80', '3.500.000', 'III B', 'Tunjangan Kerja Daerah'),
(4, '7311417008', 'RISKA SURANTI', 'KEUANGAN', '3 TAHUN', 'STAFF', '80', '3.500.000', 'III B', 'Tunjangan Kerja Daerah'),
(5, '7311417040', 'JULIANTO ', 'KEUANGAN', '6 TAHUN', 'MANAJER', '80', '3.500.000', 'III A', 'Tunjangan Kerja Daerah'),
(6, '7311417103', 'ERSA NAFADILA YAHYA', 'SDM', '3 TAHUN', 'STAFF', '90', '4.000.000', 'III B', 'Tunjangan Kerja Daerah'),
(7, '7311417140', 'RASTYA SEKAR FADIYAH', 'SDM', '5 TAHUN', 'STAFF', '83', '3.500.000', 'III B', 'Tunjangan Kerja Daerah'),
(8, '7311417214', 'ALDI KURNIAWAN', 'PEMASARAN', '5 TAHUN', 'MANAJER', '90', '4.000.000', 'III B', 'Tunjangan Kerja Daerah'),
(9, '7311417231', 'HERU KURNIAWAN', 'PEMASARAN', '7 TAHUN', 'MANAJER', '75', '3.000.000', 'III A', 'Tunjangan Kerja Daerah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
