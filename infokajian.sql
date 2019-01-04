-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 29, 2018 at 07:42 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infokajian`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kajian`
--

CREATE TABLE `tb_kajian` (
  `id` int(5) NOT NULL,
  `judul_kajian` varchar(100) NOT NULL,
  `penceramah` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `waktu` text NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi` text NOT NULL,
  `kota` varchar(20) NOT NULL,
  `kategori` varchar(10) NOT NULL,
  `no` varchar(15) NOT NULL,
  `deskripsi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kajian`
--

INSERT INTO `tb_kajian` (`id`, `judul_kajian`, `penceramah`, `image`, `waktu`, `tanggal`, `lokasi`, `kota`, `kategori`, `no`, `deskripsi`) VALUES
(1, 'Tiga Pokok Dasar Seorang Muslim', 'Uztadz Said Abu Ukkasyah', 'banner.jpg', '08:15 - Selesai', '2019-01-01', 'Masjid Pogung Dalangan - MPD\r\n\r\nMasjid Pogung Dalangan - MPD, Pogung Dalangan, RT.11 RW.50 Sinduadi, Mlati, Sinduadi, Sleman, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55284', 'Jogja', 'Fiqh', '081347484438', '-'),
(2, 'Bukan Sekedar Ucapan', 'Uztadz Sulaiman Rasyid', 'mulut.jpg', '18:00 - 19:00', '2018-12-28', 'Masjid Manhajul Hidayah (belakang IndoPoint UNY) Yogyakarta', 'Jogja', 'Sirah', '081347448423', '-'),
(3, 'Bahagia Menjadi Penghuni Surga', 'Ust Muhammad Reza Nurudin', 'surga.png', '(Jumat) 18:15 - 20:00', '2018-12-28', 'Masjid Al Masyhur (MSH) Bantul', 'Jogja', 'Tauhid', '07879797979', '-'),
(4, 'Persiapan Pernikahan #1', 'Ustadzah Bunga Erlita', 'IMG-20181102-WA0002.jpg', '15.30 - 17.00 WIB', '2018-12-31', 'Masjid Jami\' at-Taqwa Minomartani', 'Yogyakarta', 'Bab Nikah', '-', '? Ikuti Kuliah Akbar\r\n*Pra, Proses, & Pasca Nikah RTQU* Angkatan 5 (Pertemuan 5)\r\n________________________________\r\n? *\"Persiapan Pernikahan #1\"*\r\nGaais..\r\n.\r\nTerbayang belum besok pesta pernikahannya pingin seperti apa?Pinginnya ngundang artis papan atas kah?papan seluncur kah?papan skateboard kah?\r\n.\r\nHmmm tak terbayang deh berapa modal kalau buat itu semua, berat kan?banget lah pasti. Amannya sih kita pilih yang sesuai syariat aja yee kaan..\r\n.\r\n```So, sudah syar\'i kah perencanaan walimah kit');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nope` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `email`, `nope`) VALUES
(17, 'Muhamm', 'admin', 'admin', 'najajaja', '00191919@'),
(21, 'Kurniayam', 'ayam', 'Qwerty', 'kukuruyuk@gmail.com', '0813474848484'),
(18, 'Khalid Basalamah', 'khalid', 'Qwerty123456', 'khalid21@gmail.com', '08137382991'),
(19, 'Muhammad Shiddiq', 'khalidpp', '123', 'messidiq27@gmail.com', '0191919192'),
(22, 'muhammadnurman', 'nurmanid', 'pusaran8', 'nurman.internusa@gmail.com', '0823 2283 8884'),
(0, 'Muhammad Shiddiq', 'sidd', 'mess', 'messidiq27@gmail.com', '08144949493');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kajian`
--
ALTER TABLE `tb_kajian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kajian`
--
ALTER TABLE `tb_kajian`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
