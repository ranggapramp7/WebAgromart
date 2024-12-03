-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 09:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agromart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$AIy0X1Ep6alaHDTofiChGeqq7k/d1Kc8vKQf1JZo0mKrzkkj6M626');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `kode_customer` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`kode_customer`, `nama`, `email`, `username`, `password`, `telp`) VALUES
('C0005', 'rangga', 'rangga@gmail.com', 'rangga', '$2y$10$jgpfnxeqgGzlG5hzmb2fluxSgvVX1RreKe6bvkDll9Qc5pRk6lfAK', '+6281232');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `kode_bk` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `satuan` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`kode_bk`, `nama`, `qty`, `satuan`, `harga`, `tanggal`) VALUES
('P0001', 'Nanas', '95', 'kg', 15000, '2024-12-03'),
('P0002', 'Jeruk', '100', 'kg', 12000, '2024-12-03'),
('P0003', 'Lemon', '100', 'kg', 20000, '2024-12-03'),
('P0004', 'Lengkeng', '100', 'kg', 30000, '2024-12-03'),
('P0005', 'Anggur', '100', 'kg', 25000, '2024-12-03'),
('P0006', 'Mangga', '100', 'kg', 15000, '2024-12-03'),
('P0007', 'Salak', '100', 'kg', 12000, '2024-12-03'),
('P0008', 'Pepaya', '100', 'kg', 10000, '2024-12-03'),
('P0009', 'Alpukat', '100', 'kg', 30000, '2024-12-03'),
('P0010', 'Melon', '100', 'kg', 15000, '2024-12-03'),
('P0011', 'Pisang', '100', 'kg', 12000, '2024-12-03'),
('P0012', 'Apel', '100', 'kg', 20000, '2024-12-03'),
('P0013', 'Jambu', '100', 'kg', 15000, '2024-12-03'),
('P0014', 'Kiwi', '100', 'kg', 30000, '2024-12-03'),
('P0015', 'Rambutan', '100', 'kg', 15000, '2024-12-03'),
('P0016', 'Semangka', '100', 'kg', 10000, '2024-12-03'),
('P0017', 'Stroberi', '100', 'kg', 40000, '2024-12-03'),
('P0018', 'Bluberi', '100', 'kg', 50000, '2024-12-03'),
('P0019', 'Pir', '100', 'kg', 20000, '2024-12-03'),
('P0020', 'Belimbing', '100', 'kg', 15000, '2024-12-03'),
('P0021', 'Bawang Merah', '100', 'kg', 8000, '2024-12-03'),
('P0022', 'Bawang Putih', '100', 'kg', 10000, '2024-12-03'),
('P0023', 'Buncis', '100', 'kg', 12000, '2024-12-03'),
('P0024', 'Cabai', '100', 'kg', 15000, '2024-12-03'),
('P0025', 'Kentang', '100', 'kg', 12000, '2024-12-03'),
('P0026', 'Kangkung', '100', 'kg', 8000, '2024-12-03'),
('P0027', 'Sawi', '100', 'kg', 10000, '2024-12-03'),
('P0028', 'Timun', '100', 'kg', 7000, '2024-12-03'),
('P0029', 'Tomat', '100', 'kg', 12000, '2024-12-03'),
('P0030', 'Wortel', '100', 'kg', 15000, '2024-12-03'),
('P0031', 'Kacang Panjang', '100', 'kg', 10000, '2024-12-03'),
('P0032', 'Terong', '100', 'kg', 12000, '2024-12-03'),
('P0033', 'Brokoli', '100', 'kg', 20000, '2024-12-03'),
('P0034', 'Bayam', '100', 'kg', 10000, '2024-12-03'),
('P0035', 'Daun Singkong', '100', 'kg', 8000, '2024-12-03'),
('P0036', 'Pare', '100', 'kg', 12000, '2024-12-03'),
('P0037', 'Petai', '100', 'kg', 15000, '2024-12-03'),
('P0038', 'Terong', '100', 'kg', 12000, '2024-12-03'),
('P0039', 'Jagung', '100', 'kg', 15000, '2024-12-03'),
('P0040', 'Seledri', '100', 'kg', 8000, '2024-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `kode_customer` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`) VALUES
(16, 'C0003', 'P0005', 'Kentang', 5, 7000),
(17, 'C0003', 'P0006', 'Pisang', 2, 8000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kode_produk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  `kategori` enum('Sayuran','Buah') NOT NULL DEFAULT 'Sayuran'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kode_produk`, `nama`, `image`, `deskripsi`, `harga`, `kategori`) VALUES
('P0001', 'Nanas', 'nanas.jpg', 'Buah segar nanas yang kaya akan vitamin C', 15000, 'Buah'),
('P0002', 'Jeruk', 'jeruk.jpg', 'Buah jeruk manis dan segar', 12000, 'Buah'),
('P0003', 'Lemon', 'lemon.jpg', 'Lemon segar yang cocok untuk minuman', 20000, 'Buah'),
('P0004', 'Lengkeng', 'lengkeng.jpg', 'Buah lengkeng dengan rasa manis alami', 30000, 'Buah'),
('P0005', 'Anggur', 'anggur.jpg', 'Anggur segar yang kaya antioksidan', 25000, 'Buah'),
('P0006', 'Mangga', 'mangga.jpg', 'Buah mangga harum dengan rasa manis', 15000, 'Buah'),
('P0007', 'Salak', 'salak.jpg', 'Buah salak dengan daging renyah', 12000, 'Buah'),
('P0008', 'Pepaya', 'pepaya.jpg', 'Buah pepaya kaya serat dan vitamin', 10000, 'Buah'),
('P0009', 'Alpukat', 'alpukat.jpg', 'Alpukat segar untuk kesehatan', 30000, 'Buah'),
('P0010', 'Melon', 'melon.jpg', 'Buah melon manis dan segar', 15000, 'Buah'),
('P0011', 'Pisang', 'pisang.jpg', 'Pisang kaya akan potasium', 12000, 'Buah'),
('P0012', 'Apel', 'apel.jpg', 'Buah apel segar dengan rasa renyah', 20000, 'Buah'),
('P0013', 'Jambu', 'jambu.jpg', 'Jambu kaya akan vitamin C', 15000, 'Buah'),
('P0014', 'Kiwi', 'kiwi.jpg', 'Buah kiwi dengan rasa unik dan segar', 30000, 'Buah'),
('P0015', 'Rambutan', 'rambutan.jpg', 'Buah rambutan manis dengan daging lembut', 15000, 'Buah'),
('P0016', 'Semangka', 'semangka.jpg', 'Buah semangka segar untuk pelepas dahaga', 10000, 'Buah'),
('P0017', 'Stroberi', 'stroberi.jpg', 'Stroberi segar dengan rasa asam-manis', 40000, 'Buah'),
('P0018', 'Bluberi', 'bluberi.jpg', 'Bluberi kaya antioksidan', 50000, 'Buah'),
('P0019', 'Pir', 'pir.jpg', 'Buah pir segar dengan rasa manis alami', 20000, 'Buah'),
('P0020', 'Belimbing', 'belimbing.jpg', 'Belimbing segar kaya vitamin', 15000, 'Buah'),
('P0021', 'Bawang Merah', 'bawang_merah.jpg', 'Bawang merah segar untuk bumbu masakan', 8000, 'Sayuran'),
('P0022', 'Bawang Putih', 'bawang_putih.jpg', 'Bawang putih segar untuk bumbu dapur', 10000, 'Sayuran'),
('P0023', 'Buncis', 'buncis.jpg', 'Buncis segar yang enak untuk tumisan', 12000, 'Sayuran'),
('P0024', 'Cabai', 'cabai.jpg', 'Cabai segar dengan rasa pedas', 15000, 'Sayuran'),
('P0025', 'Kentang', 'kentang.jpg', 'Kentang segar untuk berbagai masakan', 12000, 'Sayuran'),
('P0026', 'Kangkung', 'kangkung.jpg', 'Kangkung segar untuk tumisan atau sayur bening', 8000, 'Sayuran'),
('P0027', 'Sawi', 'sawi.jpg', 'Sawi segar untuk berbagai masakan', 10000, 'Sayuran'),
('P0028', 'Timun', 'timun.jpg', 'Timun segar untuk lalapan atau acar', 7000, 'Sayuran'),
('P0029', 'Tomat', 'tomat.jpg', 'Tomat segar kaya vitamin C', 12000, 'Sayuran'),
('P0030', 'Wortel', 'wortel.jpg', 'Wortel segar untuk masakan atau jus', 15000, 'Sayuran'),
('P0031', 'Kacang Panjang', 'kacang_panjang.jpg', 'Kacang panjang segar untuk tumisan', 10000, 'Sayuran'),
('P0032', 'Terong', 'terong.jpg', 'Terong segar untuk berbagai masakan', 12000, 'Sayuran'),
('P0033', 'Brokoli', 'brokoli.jpg', 'Brokoli segar kaya vitamin', 20000, 'Sayuran'),
('P0034', 'Bayam', 'bayam.jpg', 'Bayam segar untuk tumisan atau rebusan', 10000, 'Sayuran'),
('P0035', 'Daun Singkong', 'daun_singkong.jpg', 'Daun singkong segar untuk masakan tradisional', 8000, 'Sayuran'),
('P0036', 'Pare', 'pare.jpg', 'Pare segar dengan rasa pahit khas', 12000, 'Sayuran'),
('P0037', 'Petai', 'petai.jpg', 'Petai segar dengan rasa khas dan bau tajam', 15000, 'Sayuran'),
('P0038', 'Terong', 'terong.jpg', 'Terong segar, cocok untuk tumisan atau oseng', 12000, 'Sayuran'),
('P0039', 'Jagung', 'jagung.jpg', 'Jagung manis segar, enak direbus atau dibakar', 15000, 'Sayuran'),
('P0040', 'Seledri', 'seledri.jpg', 'Seledri segar untuk lalapan atau bumbu masakan', 8000, 'Sayuran');

-- --------------------------------------------------------

--
-- Table structure for table `produksi`
--

CREATE TABLE `produksi` (
  `id_order` int(11) NOT NULL,
  `invoice` varchar(200) NOT NULL,
  `kode_customer` varchar(200) NOT NULL,
  `kode_produk` varchar(200) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `provinsi` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `terima` varchar(200) NOT NULL,
  `tolak` varchar(200) NOT NULL,
  `cek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produksi`
--

INSERT INTO `produksi` (`id_order`, `invoice`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`, `status`, `tanggal`, `provinsi`, `kota`, `alamat`, `kode_pos`, `terima`, `tolak`, `cek`) VALUES
(8, 'INV0001', 'C0002', 'P0006', 'Pisang', 1, 8000, 'Pesanan Baru', '2020-07-27', 'Jawa Timur', 'Surabaya', 'Jl.Tanah Merah Indah 1', '60129', '2', '1', 0),
(9, 'INV0002', 'C0002', 'P0004', 'Tomat', 3, 5000, '0', '2020-07-27', 'Jawa Barat', 'Bandung', 'Jl.Jati Nangor Blok C, 10', '30712', '1', '0', 0),
(10, 'INV0003', 'C0003', 'P0005', 'Kentang', 2, 7000, '0', '2020-07-27', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro, Blok A 10D', '30123', '1', '0', 0),
(11, 'INV0003', 'C0003', 'P0006', 'Pisang', 1, 8000, '0', '2020-07-27', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro, Blok A 10D', '30123', '1', '0', 0),
(12, 'INV0003', 'C0003', 'P0004', 'Tomat', 1, 5000, '0', '2020-07-27', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro, Blok A 10D', '30123', '1', '0', 0),
(13, 'INV0004', 'C0004', 'P0005', 'Kentang', 1, 7000, '0', '2020-07-26', 'Jawa Timur', 'Sidoarjo', 'Jl.KH Syukur Blok C 18 A', '50987', '1', '0', 0),
(14, 'INV0005', 'C0005', 'P0001', 'Tomat', 1, 15000, '0', '2424-12-03', 'Kepulauan Riau', 'Tanjungpinang', 'Bincen', '121212', '1', '0', 0),
(15, 'INV0005', 'C0005', 'P0005', 'Kentang', 1, 7000, '0', '2424-12-03', 'Kepulauan Riau', 'Tanjungpinang', 'Bincen', '121212', '1', '0', 0),
(16, 'INV0006', 'C0005', 'P0005', 'Kentang', 1, 7000, 'Pesanan Baru', '2424-12-03', '', '', '', '', '2', '1', 0),
(17, 'INV0006', 'C0005', 'P0001', 'Tomat', 1, 15000, 'Pesanan Baru', '2424-12-03', '', '', '', '', '2', '1', 0),
(18, 'INV0007', 'C0005', 'P0001', 'Nanas', 5, 15000, '0', '2424-12-03', 'Kepulauan Riau', 'Tanjungpinang', 'Bincen', '121212', '1', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `report_cancel`
--

CREATE TABLE `report_cancel` (
  `id_report_cancel` int(11) NOT NULL,
  `id_order` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_inventory`
--

CREATE TABLE `report_inventory` (
  `id_report_inv` int(11) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `nama_bahanbaku` varchar(100) NOT NULL,
  `jml_stok_bk` int(11) NOT NULL,
  `tanggal` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report _penjualan`
--

CREATE TABLE `report _penjualan` (
  `id_report_sell` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `jumlah_terjual` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_profit`
--

CREATE TABLE `report_profit` (
  `id_report_profit` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `total_profit` varchar(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kode_customer`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`kode_bk`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode_produk`);

--
-- Indexes for table `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `report_cancel`
--
ALTER TABLE `report_cancel`
  ADD PRIMARY KEY (`id_report_cancel`);

--
-- Indexes for table `report_inventory`
--
ALTER TABLE `report_inventory`
  ADD PRIMARY KEY (`id_report_inv`);

--
-- Indexes for table `report _penjualan`
--
ALTER TABLE `report _penjualan`
  ADD PRIMARY KEY (`id_report_sell`);

--
-- Indexes for table `report_profit`
--
ALTER TABLE `report_profit`
  ADD PRIMARY KEY (`id_report_profit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `report_cancel`
--
ALTER TABLE `report_cancel`
  MODIFY `id_report_cancel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_inventory`
--
ALTER TABLE `report_inventory`
  MODIFY `id_report_inv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report _penjualan`
--
ALTER TABLE `report _penjualan`
  MODIFY `id_report_sell` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_profit`
--
ALTER TABLE `report_profit`
  MODIFY `id_report_profit` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
