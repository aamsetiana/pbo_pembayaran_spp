-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 04:14 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spp2`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kompetensi_keahlian` enum('RPL','TKJ','OTKP','AKL','BDP','UPW') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`) VALUES
(11, 'X RPL1', 'RPL'),
(12, 'X RPL2', 'RPL'),
(13, 'X RPL3', 'RPL'),
(14, 'XI RPL1', 'RPL'),
(15, 'XIRPL2', 'RPL'),
(16, 'XI RPL 3', 'RPL'),
(17, 'XII RPL 1', 'RPL'),
(18, 'XII RPL 2', 'RPL'),
(19, 'XII RPL 3', 'RPL'),
(20, 'X TKJ 1', 'TKJ'),
(21, 'X TKJ 2', 'TKJ'),
(22, 'X TKJ 3', 'TKJ'),
(23, 'XI TKJ 1', 'TKJ'),
(24, 'XI TKJ 2', 'TKJ'),
(25, 'XI TKJ 3', 'TKJ'),
(26, 'XII TKJ 1', 'TKJ'),
(27, 'XII TKJ 2', 'TKJ'),
(28, 'XII TKJ 3', 'TKJ'),
(29, 'X BDP 1', 'BDP'),
(30, 'X BDP 2', 'BDP'),
(31, 'X  BDP 3', 'BDP'),
(32, 'XI BDP 1', 'BDP'),
(33, 'XI BDP 2', 'BDP'),
(34, 'XI BDP 3', 'BDP'),
(38, 'XII BDP 1', 'BDP'),
(39, 'XII BDP 2', 'BDP'),
(40, 'XII BDP 3', 'BDP'),
(41, 'X UPW 1', 'UPW'),
(42, 'X UPW 2', 'UPW'),
(43, 'XI UPW 1', 'UPW'),
(44, 'XI UPW 2', 'UPW'),
(45, 'XII UPW 1', 'UPW'),
(46, 'XII UPW 2', 'UPW'),
(47, 'X AKL 1', 'AKL'),
(48, 'X AKL 2', 'AKL'),
(49, 'X AKL 3', 'AKL'),
(50, 'X AKL 4', 'AKL'),
(52, 'XI AKL 1', 'AKL'),
(53, 'XI AKL 2', 'AKL'),
(54, 'XI AKL 3', 'AKL'),
(55, 'XI AKL4', 'AKL'),
(56, 'XII AKL 1', 'AKL'),
(57, 'XII AKL 2', 'AKL'),
(58, 'XII AKL 3', 'AKL'),
(59, 'XII AKL4', 'AKL'),
(60, 'X OTKP 1', 'OTKP'),
(61, 'X OTKP 2', 'OTKP'),
(62, 'X OTKP 3', 'OTKP'),
(63, 'XI OTKP 1', 'OTKP'),
(64, 'XI OTKP 1', 'OTKP'),
(65, 'XI OTKP 2', 'OTKP'),
(66, 'XI OTKP 3', 'OTKP'),
(67, 'XII OTKP 1', 'OTKP'),
(68, 'XII OTKP 2', 'OTKP'),
(69, 'XII OTKP 3', 'OTKP');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` varchar(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bulan_dibayar` varchar(8) NOT NULL,
  `tahun_dibayar` varchar(4) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_bayar`, `bulan_dibayar`, `tahun_dibayar`, `id_spp`, `jumlah_bayar`) VALUES
('TRS0002', 2, '121212', '2023-01-31', 'januari', '2022', 1, 100000),
('TRS0003', 1, '12345', '2023-01-31', 'februari', '2022', 1, 100000),
('TRS0004', 1, '1111', '2023-02-01', 'januari', '2022', 1, 100000),
('TRS0005', 2, '12345', '2023-02-01', 'maret', '2022', 1, 100000),
('TRS0006', 1, '12345', '2023-02-01', 'april', '2022', 1, 100000),
('TRS0007', 2, '1111', '2023-02-01', 'februari', '2022', 1, 100000),
('TRS0009', 1, '1335', '2023-05-08', 'januari', '2023', 2, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `level` enum('admin','petugas','siswa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(1, 'adila', '123', 'adila zahra', 'admin'),
(3, 'aryaw', '135', 'sidik', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` char(10) NOT NULL,
  `nis` char(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `id_spp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`) VALUES
('1111', '13', 'yani', 3, 'palembang', '08122222', 1),
('122', '1233', 'arif', 26, 'kertayasa', '039939', 1),
('1234', '12', 'Arifzzz', 3, 'Jakarta', '0874838884', 1),
('12345', '11', 'julia', 1, 'lubuklinggau', '1111', 1),
('1335', '8779', 'desta', 12, 'clly', '08765', 2),
('2222', '1111', 'hufad', 16, 'Tokyo', '0283466', 1),
('324', '143', 'Koni', 3, 'Jepun', '5634', 1),
('67543', '9876', 'alda', 5, 'tugumulyo', '9875444', 1);

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_spp` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
(1, 2022, 1000000),
(2, 2023, 2000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
