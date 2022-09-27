-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 05:57 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi_saung`
--

-- --------------------------------------------------------

--
-- Table structure for table `bulan`
--

CREATE TABLE `bulan` (
  `id_bln` int(10) NOT NULL,
  `nama_bln` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bulan`
--

INSERT INTO `bulan` (`id_bln`, `nama_bln`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Table structure for table `catatan`
--

CREATE TABLE `catatan` (
  `id_cat` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_bln` int(10) NOT NULL,
  `id_hri` int(10) NOT NULL,
  `id_tgl` int(10) NOT NULL,
  `isi_cat` longtext NOT NULL,
  `status_cat` enum('Menunggu','Dikonfirmasi','Ditolak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catatan`
--

INSERT INTO `catatan` (`id_cat`, `id_user`, `id_bln`, `id_hri`, `id_tgl`, `isi_cat`, `status_cat`) VALUES
(31, 2, 1, 4, 14, 'Fixed : Navbar link, bug absen pulang, empty input data', 'Dikonfirmasi'),
(32, 4, 1, 4, 14, 'Tes fixes bug empty note', 'Dikonfirmasi'),
(33, 4, 1, 4, 14, 'Tidak ada kegiatan, rencannya mau beresin kabel tapi wktunya ngga memungkinkan jadi di tunda.dikasih minum es kelapa muda. :D', 'Dikonfirmasi'),
(34, 4, 1, 5, 15, 'Identifikasi pc yg tidak bisa masuk bios, ternyata masalah di power supplynya. Setelah di ganti power supplynya baru bisa masuk bios kemudian di install ulang paki windows 7', 'Dikonfirmasi'),
(35, 4, 1, 5, 15, 'Identifikasi pc yg tidak bisa masuk bios, ternyata masalah di power supplynya. Setelah di ganti power supplynya baru bisa masuk bios kemudian di install ulang paki windows 7', 'Dikonfirmasi'),
(44, 3, 1, 7, 17, 'Semoga lebih baik :D', 'Menunggu'),
(43, 2, 1, 7, 17, 'Tes ya', 'Menunggu'),
(39, 4, 1, 7, 17, 'Mysqli fix bug real escape string', 'Dikonfirmasi'),
(40, 4, 1, 7, 17, 'Testing 2nd Migration to MySQLi', 'Menunggu'),
(41, 2, 1, 7, 17, 'Testing 2nd Migrations To MySQLi', 'Menunggu'),
(45, 4, 1, 2, 19, 'Senin bersihin Ram trus install ulang', ''),
(46, 5, 2, 5, 19, 'Hemmm tes aja deh :D Hahaha :*', 'Dikonfirmasi'),
(47, 3, 2, 5, 19, 'Terimakasih Untuk hari ini :D\\r\\nTerimakasih atas semua kebaikan ini :D', 'Menunggu'),
(48, 3, 2, 5, 19, 'Tes fix Bug :D\r\nSemangaaatt :D ''''" <- tesss', 'Menunggu');

-- --------------------------------------------------------

--
-- Table structure for table `data_absen`
--

CREATE TABLE `data_absen` (
  `id_absen` int(11) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `id_bln` int(10) NOT NULL,
  `id_hri` int(10) NOT NULL,
  `id_tgl` int(10) NOT NULL,
  `jam_msk` varchar(50) NOT NULL,
  `st_jam_msk` enum('Menunggu','Dikonfirmasi','Ditolak') NOT NULL,
  `jam_klr` varchar(50) NOT NULL,
  `st_jam_klr` enum('Belum Absen','Menunggu','Dikonfirmasi','Ditolak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_absen`
--

INSERT INTO `data_absen` (`id_absen`, `id_user`, `id_bln`, `id_hri`, `id_tgl`, `jam_msk`, `st_jam_msk`, `jam_klr`, `st_jam_klr`) VALUES
(48, '4', 1, 5, 15, '12.58 WIB', 'Dikonfirmasi', '16.25 WIB', 'Dikonfirmasi'),
(49, '4', 1, 6, 16, '09.37 WIB', 'Dikonfirmasi', '', 'Belum Absen'),
(50, '2', 1, 6, 16, '15.41 WIB', 'Dikonfirmasi', '', 'Belum Absen'),
(51, '3', 1, 7, 17, '06.43 WIB', 'Ditolak', '', 'Belum Absen'),
(53, '4', 1, 7, 17, '18.00 WIB', 'Ditolak', '18.01 WIB', 'Ditolak'),
(54, '2', 1, 7, 17, '18.09 WIB', 'Ditolak', '18.09 WIB', 'Dikonfirmasi'),
(56, '4', 1, 1, 18, '07.16 WIB', 'Ditolak', '12.46 WIB', 'Dikonfirmasi'),
(58, '4', 1, 3, 20, '07.20 WIB', 'Ditolak', '07.20 WIB', 'Dikonfirmasi'),
(59, '4', 1, 4, 21, '07.14 WIB', 'Dikonfirmasi', '', 'Belum Absen'),
(60, '2', 1, 2, 26, '10.01 WIB', 'Dikonfirmasi', '10.01 WIB', 'Ditolak'),
(61, '2', 2, 3, 10, '16.58 WIB', 'Dikonfirmasi', '16.59 WIB', 'Menunggu'),
(66, '8', 3, 5, 4, '16.05 WIB', 'Menunggu', '', 'Belum Absen');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pb`
--

CREATE TABLE `detail_pb` (
  `id_user` int(10) NOT NULL,
  `name_user` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pb`
--

INSERT INTO `detail_pb` (`id_user`, `name_user`) VALUES
(3, 'Dafik'),
(8, 'Fajar'),
(1, 'Akhid'),
(7, 'Reynaldi');

-- --------------------------------------------------------

--
-- Table structure for table `detail_user`
--

CREATE TABLE `detail_user` (
  `id_user` int(10) NOT NULL,
  `nis_user` int(25) NOT NULL,
  `name_user` varchar(255) NOT NULL,
  `sklh_user` varchar(255) NOT NULL,
  `jk_user` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_user`
--

INSERT INTO `detail_user` (`id_user`, `nis_user`, `name_user`, `sklh_user`, `jk_user`) VALUES
(5, 232351, 'Entahlah Siapa', 'Dan Entah Dimana', 'L'),
(8, 123321, 'anggi wahyuni', 'smk kerabat', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `hari`
--

CREATE TABLE `hari` (
  `id_hri` int(10) NOT NULL,
  `nama_hri` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hari`
--

INSERT INTO `hari` (`id_hri`, `nama_hri`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jum''at'),
(6, 'Sabtu'),
(7, 'Minggu');

-- --------------------------------------------------------

--
-- Table structure for table `tanggal`
--

CREATE TABLE `tanggal` (
  `id_tgl` int(10) NOT NULL,
  `nama_tgl` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tanggal`
--

INSERT INTO `tanggal` (`id_tgl`, `nama_tgl`) VALUES
(1, '01'),
(2, '02'),
(3, '03'),
(4, '04'),
(5, '05'),
(6, '06'),
(7, '07'),
(8, '08'),
(9, '09'),
(10, '10'),
(11, '11'),
(12, '12'),
(13, '13'),
(14, '14'),
(15, '15'),
(16, '16'),
(17, '17'),
(18, '18'),
(19, '19'),
(20, '20'),
(21, '21'),
(22, '22'),
(23, '23'),
(24, '24'),
(25, '25'),
(26, '26'),
(27, '27'),
(28, '28'),
(29, '29'),
(30, '30'),
(31, '31');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `pwd_user` varchar(255) NOT NULL,
  `level_user` enum('sw','pb') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email_user`, `pwd_user`, `level_user`) VALUES
(1, 'fauzi@gmail.com', 'b480c074d6b75947c02681f31c90c668c46bf6b8', 'pb'),
(5, 'entah@gmail.com', 'b480c074d6b75947c02681f31c90c668c46bf6b8', 'sw'),
(4, 'rizal@gmail.com', '7c6d1abd196ae7d105998f689b9d17a259bcfa96', 'sw'),
(7, 'fajar@gmail.com', 'b480c074d6b75947c02681f31c90c668c46bf6b8', 'pb'),
(3, 'yasmuz@gmail.com', 'b480c074d6b75947c02681f31c90c668c46bf6b8', 'sw'),
(2, 'siswa@siswa.siswa', '7a24156a1971d85acf2ae64d9dbdf5322566636f', 'sw'),
(8, 'anggiwahyuni@gmail.com', '52c779bd4ed9e49e06eb777e7937b0e2b17e6808', 'sw');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bulan`
--
ALTER TABLE `bulan`
  ADD PRIMARY KEY (`id_bln`);

--
-- Indexes for table `catatan`
--
ALTER TABLE `catatan`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indexes for table `data_absen`
--
ALTER TABLE `data_absen`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `detail_pb`
--
ALTER TABLE `detail_pb`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `detail_user`
--
ALTER TABLE `detail_user`
  ADD PRIMARY KEY (`id_user`,`nis_user`);

--
-- Indexes for table `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id_hri`);

--
-- Indexes for table `tanggal`
--
ALTER TABLE `tanggal`
  ADD PRIMARY KEY (`id_tgl`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`,`email_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bulan`
--
ALTER TABLE `bulan`
  MODIFY `id_bln` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `catatan`
--
ALTER TABLE `catatan`
  MODIFY `id_cat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `data_absen`
--
ALTER TABLE `data_absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `hari`
--
ALTER TABLE `hari`
  MODIFY `id_hri` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tanggal`
--
ALTER TABLE `tanggal`
  MODIFY `id_tgl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
