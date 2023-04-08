-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2023 at 06:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kkp`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `kode_member` char(18) DEFAULT NULL,
  `nama_member` varchar(600) DEFAULT NULL,
  `alamat` varchar(1500) DEFAULT NULL,
  `pic` varchar(300) DEFAULT NULL,
  `kota` varchar(11) DEFAULT NULL,
  `telepon` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `no_rekening` varchar(150) DEFAULT NULL,
  `atas_nama_rekening` varchar(150) DEFAULT NULL,
  `nama_bank` varchar(150) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `kode_member`, `nama_member`, `alamat`, `pic`, `kota`, `telepon`, `email`, `no_rekening`, `atas_nama_rekening`, `nama_bank`, `status`) VALUES
(2, '93', 'PT. Astra International', 'Jl. Prof. DR. Satrio No.3, Karet Semanggi, Kecamatan Setiabudi, Kota Jakarta Selatan', 'Susilo Bambang', 'Jakarta', '0892881828281', 'astra.internasional@gmail.com', '721838128', 'Astra', 'BCA', 'Tidak Aktif'),
(142, '1142', 'PT. SEJAHTERA INDOBALI TRADA (SANUR)', 'Jl. By Pass Ngurah Rai No. 104, Denpasar – Bali', 'Ibu Ayu Febri', 'Tangerang', '0219492192', 'suzuki.bodyrepair@gmail.com', '0402717775', 'PT SEJAHTERA INDOBALI TRADA', 'BCA', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_login` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_login`, `username`, `password`, `level`, `nama_lengkap`, `email`) VALUES
('1111', 'admin', 'admin', 'Admin', 'Admin Sistem SI', 'herpendi@gmail.com'),
('88', 'andreas', 'andreas', 'Dosen', 'Andreas', 'abc@gmail.com'),
('99', 'yoni', 'yoni', 'Dosen', 'Yoni', 'cbaabc@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_login`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
