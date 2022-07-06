-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2022 at 08:24 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id`, `produk_id`, `qty`, `pesanan_id`) VALUES
(8, 3, 41, 17),
(9, 9, 40, 17),
(10, 3, 40, 18),
(11, 1, 40, 19),
(12, 9, 40, 20),
(24, 9, 20, 29),
(25, 3, 10, 29),
(26, 1, 20, 30),
(27, 3, 10, 30),
(28, 1, 10, 31),
(29, 9, 10, 31),
(30, 9, 10, 32),
(31, 1, 10, 32),
(32, 9, 20, 33),
(33, 3, 10, 33),
(36, 3, 10, 35),
(37, 1, 10, 35),
(38, 3, 10, 36),
(39, 9, 10, 36),
(40, 9, 10, 37),
(41, 3, 10, 37),
(42, 4, 10, 38),
(43, 1, 10, 38),
(44, 3, 10, 39),
(45, 4, 10, 39),
(46, 3, 10, 40),
(47, 1, 10, 40),
(48, 3, 10, 41),
(49, 9, 10, 41),
(50, 1, 10, 42),
(51, 9, 10, 42),
(52, 3, 10, 43),
(53, 9, 10, 43),
(54, 6, 1, 44),
(55, 9, 1, 44),
(56, 7, 1, 44);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(5) NOT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `tanggal_digunakan` datetime NOT NULL,
  `user_id` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `read` enum('0','1') NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal_pesan`, `tanggal_digunakan`, `user_id`, `nama`, `telephone`, `alamat`, `read`, `status`) VALUES
(17, '2016-09-30 08:27:51', '2016-10-04 07:00:00', 4, 'Shodiqul Muzaki', '087717495260', '', '1', 'lunas'),
(18, '2016-09-30 11:15:02', '2016-10-05 08:02:00', 4, 'Shodiqul Muzaki', '087717495260', '', '1', 'lunas'),
(19, '2016-09-30 11:34:22', '2016-10-07 07:00:00', 4, 'Shodiqul Muzaki', '087717495260', '', '1', 'lunas'),
(20, '2016-10-03 04:53:05', '2016-10-11 09:00:00', 5, 'Mery Ayu Nurita', '089688899260', '', '1', 'belum lunas'),
(29, '2020-10-28 14:02:10', '2020-10-31 00:00:00', 8, 'User Jono', '085381259365', '', '1', 'belum lunas'),
(30, '2021-12-30 10:57:24', '2022-01-02 12:00:00', 11, 'jon', '08956045613', '', '0', 'belum lunas'),
(31, '2022-01-06 14:25:24', '2022-01-10 13:00:00', 12, '123', '08956045613', '', '0', 'belum lunas'),
(32, '2022-06-30 09:24:51', '2022-07-04 14:00:00', 13, 'asdf', '08956045613', '', '0', 'belum lunas'),
(33, '2022-07-15 00:00:00', '2022-07-15 12:00:00', 16, 'zxcv', 'zxcv', '', '1', 'belum lunas'),
(35, '2022-07-04 07:58:22', '2022-07-06 12:00:00', 16, 'zxcv', 'zxcv', '', '1', ''),
(36, '2022-07-04 09:30:14', '2022-07-06 13:00:00', 13, 'asdf', '08956045613', 'asdf', '1', 'belum diambil'),
(37, '2022-07-06 00:00:00', '2022-07-06 16:00:00', 2, 'joki', '08985432330', 'jakarta 1', '1', 'Selesai'),
(38, '2022-07-04 11:10:06', '2022-07-05 16:00:00', 2, 'joki', '08985432330', 'jakarta 1', '1', 'belum diambil'),
(39, '2022-07-04 11:11:31', '2022-07-13 21:00:00', 2, 'joki', '08985432330', 'jakarta 1', '1', 'belum diambil'),
(40, '2022-07-04 11:14:22', '2022-07-13 13:00:00', 13, 'asdf', '08956045613', 'asdf', '0', 'belum diambil'),
(41, '2022-07-04 11:16:02', '2022-07-06 17:00:00', 18, 'qwer', 'qwer', 'qwer', '0', 'belum diambil'),
(42, '2022-07-04 11:27:17', '2022-07-06 10:00:00', 18, 'qwer', '08956045562', 'qwer', '0', 'belum diambil'),
(43, '2022-07-05 08:03:24', '2022-07-06 00:00:00', 18, 'qwer', '08956045562', 'qwer', '0', 'belum diambil'),
(44, '2022-07-05 09:43:25', '2022-07-06 00:00:00', 18, 'qwer', '08956045562', 'qwer', '1', 'belum diambil');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(4) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `harga` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `deskripsi`, `gambar`, `harga`) VALUES
(1, 'Kitchen Flavor 10 Kg Makanan Anjing Antarctic Krill Adult', 'Kitchen Flavor Antarctic Krill adalah makanan anjing jenis small breed yang dapat digunakan untuk usia 1 tahun ke atas. Makanan ini sangat berguna untuk meningkatkan kesehatan tubuh seperti meningkatkan otot, menjadikan bulu lebih berkilau serta mudah disisir, mendukung kecerdasan, dan ingatan yang baik. Kemasan makanan anjing ini dilengkapi zip lock agar mudah disimpan serta kesegaran makanan terjaga dan tetap nikmat ketika disantap oleh anjing peliharaan Anda. ', '49eb6a44db57cba8d66b3404fa9f0ad4makanan.png', '656000'),
(2, 'Happy Dog 300 Gr Makanan Anjing Supreme Minixs Ad Japan', 'Happy Dog menghadirkan makanan anjing dewasa super mini dengan rasa yang lezat dan kaya akan protein. Menggunakan ayam dan ikan trout membuat makanan ini tinggi protein dan rendah lemak. Dilengkapi dengan berbagai vitamin dan mineral penting lainnya untuk mendukung vitalitas serta mobilitas tubuh anjing. Memiliki butiran ekstra kecil sehingga mudah untuk dicerna oleh anjing dewasa yang berukuran sangat kecil sekalipun', '49eb6a44db57cba8d66b3404fa9f0ad4happydog.png', '60000'),
(3, 'Pro Plan 1.5 Kg Makanan Kucing Adult Sterilised Weightloss', 'Makanan dengan gizi dan nutrisi yang sesuai dapat mendukung performa dan kesehatan peliharaan kesayangan Anda. Pro Plan dengan formula khusus untuk kucing yang baru menjalani sterilisasi. Selain itu, makanan kering ini menggunakan bahan salmon dan tuna asli, cocok dikonsumsi untuk kucing dewasa yang sedang diet. Berikan untuk kucing peliharaan Anda makanan berkualitas tinggi dari Pro Plan.', '49eb6a44db57cba8d66b3404fa9f0ad4proplan.png', '275000'),
(4, 'Happy Cat 300gr Makanan Kucing Young Junior Farm Poultry', 'Saatnya lengkapi kebutuhan pangan kucing Anda dengan produk makanan berkualitas dari Happy Cat. Makanan kucing satu ini mampu mendukung pertumbuhan dan meningkatkan sistem kekebalan tubuh anak kucing di fase kedua rentang usia 4 - 12 bulan dengan optimal. Butirannya yang kecil sangat mudah dicerna oleh anak kucing. Terbuat dari unggas, ikan salmon, dan sapi yang diperkaya Omega 3 dan 6, prebiotic, antioksidan, dan vitamin untuk mengoptimalkan kesehatan tubuh sekaligus menghasilkan rasa yang lezat', '49eb6a44db57cba8d66b3404fa9f0ad4happy.png', '55000'),
(5, 'Pawise Mainan Anjing Bentuk Tulang Nylon', 'Kebutuhan hewan peliharaan tidak hanya memenuhi asupan gizi melalu makanan saja. Anda juga perlu memberikan media atau alat untuk melatih stimulus hewan. Salah satu alat yang bisa digunakan adalah mainan tulang braided persembahan dari Pawise. Selain sebagai hiburan, mainan tulang ini juga bisa digunakan untuk melatih rahang, menghilangkan plak dan tar pada mulut anjing. Mainan yang terbuat dari bahan yang aman dari tali nylon ini dirancang untuk melatih stimulus dan kekuatan rahang peliharaan Anda. Ini adalah mainan yang aman dan menyenangkan untuk anjing Anda, dengan bentuk tulang yang unik', '49eb6a44db57cba8d66b3404fa9f0ad4mainan.png', '79999'),
(6, 'Pet Kingdom 500 Ml Sampo Anjing Extra Lembut', 'Berikan perawatan berkualitas terbaik untuk menjaga keindahan dan kebersihan bulu peliharaan kesayangan Anda menggunakan sampo dari Pet Kingdom. Shampo ini diformulasi khusus dengan bahan bebas paraben yang aman digunakan oleh hewan. Shampo dari Pet Kingdom ini selain sangat lembut juga dapat memberikan efek menenagkan dan harum.', '49eb6a44db57cba8d66b3404fa9f0ad4sabun.png', '70000'),
(7, 'Vetocanis Shampo Anak Anjing 300 Ml', 'Sampo yang diformulasikan khusus untuk menjaga bau alami bulu anak anjing. Memberikan nutrisi sehingga bulu tumbuh dengan sehat dan bersih. Dapat juga digunakan untuk anjing yang sedang sakit atau sudah tua. Sampo vetocanis telah etruji secara dermatologi sehingga aman digunakan untuk hewan peliharaan kesayangan Anda.', '49eb6a44db57cba8d66b3404fa9f0ad4shampo.png', '100000'),
(9, 'Whiskas Makanan Kucing Tuna 1.2 Kg', 'Whiskas Dry Food Tuna merupakan makanan kering untuk kucing yang terbuat dari bahan-bahan berkualitas, termasuk ikan tuna. Makanan ini mengandung ragam nutrisi dan vitamin yang baik untuk sistem kekebalan tubuh hewan, serta melembutkan kulit dan bulu. Tekstur yang mudah dicerna dan rasa lezat menjadikan produk Whiskas sebagai salah satu pilihan favorit untuk pangan kucing peliharaan.', '49eb6a44db57cba8d66b3404fa9f0ad4wiskas.png', '70000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `password` char(20) NOT NULL,
  `status` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `telephone`, `alamat`, `password`, `status`) VALUES
(2, 'joki', 'joko@gmail.com', '08985432330', 'jakarta 1', 'joki', 'user'),
(4, 'Shodiqul Muzaki', 'mshodiqul@gmail.com', '087717495260', 'karangasem', 'a63ae42a413740542ce4', 'user'),
(5, 'Mery Ayu Nurita', 'meryayu@gmail.com', '089688899260', 'Semarang aja', 'a63ae42a413740542ce4', 'user'),
(8, 'User Jono', 'user@gmail.com', '085381259365', 'Padang', 'ee11cbb19052e40b07aa', 'user'),
(9, 'Administrator', 'admin@gmail.com', '085381259356', 'Sungai Penuh', 'asdf', 'admin'),
(10, 'user1', 'user1@gmail.com', '08123', 'padang', '24c9e15e52afc47c225b', 'user'),
(11, 'jon', 'asd@gmail.com', '08956045613', 'vip', '7815696ecbf1c96e6894', 'user'),
(12, '123', 'asd@gmail.com', '08956045613', 'vip', '202cb962ac59075b964b', 'user'),
(13, 'asdf', 'asdf@gmail.com', '08956045613', 'asdf', 'asdf', 'user'),
(14, 'asdf', 'asd@gmail.com', '0113181', 'asdf', 'asdf', 'admin'),
(15, 'dimas', 'dimas@gmail.com', '0113181', 'bekasi', 'dimas', 'admin'),
(16, 'zxcv', 'zxcv@gmail.com', 'zxcv', 'zxcv', 'zxcv', 'user'),
(17, 'jon', 'jon@gmail.com', 'as', 'sd', 'jon', 'user'),
(18, 'qwer', 'qwer@gmail.com', '08956045562', 'qwer', 'qwer', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id`,`produk_id`,`pesanan_id`),
  ADD KEY `pesanan_id` (`pesanan_id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `detail_pesanan_ibfk_2` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pesanan_ibfk_3` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
