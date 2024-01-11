-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 11:49 AM
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
-- Database: `kuis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jawaban`
--

CREATE TABLE `tbl_jawaban` (
  `id` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `pilihan_jawab` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jawaban`
--

INSERT INTO `tbl_jawaban` (`id`, `id_soal`, `pilihan_jawab`) VALUES
(75, 22, 'anti oksidan'),
(76, 22, 'Anti-oksidan'),
(77, 22, 'Menetralisasikan'),
(78, 22, 'Menetralisasi'),
(91, 26, 'Jadi dibicarakan'),
(92, 26, 'Tengah dibicarakan'),
(93, 26, 'Berbagai media massa'),
(94, 26, 'Berbagai media-media massa'),
(104, 32, 'memesankan'),
(105, 32, 'pesan'),
(106, 32, 'es sirup nanas'),
(107, 32, 'sirop nanas'),
(108, 33, 'Ijazah yang berlegalisir'),
(109, 33, 'Ijazah yang dilegalisasi'),
(110, 33, 'Itu adalah syarat'),
(111, 33, 'Syarat itulah'),
(112, 34, 'Tugaskan'),
(113, 34, 'Menugasi'),
(114, 34, 'Mengantarkan'),
(115, 34, 'Antarkan'),
(116, 35, 'Terkait erat'),
(117, 35, 'Berkait erat'),
(118, 35, 'Kami sedang rundingkan'),
(119, 35, 'Sedang kami rundingkan'),
(120, 36, 'Lengkuas'),
(121, 36, 'Langkuas'),
(122, 36, 'Meramu'),
(123, 36, 'Peramu'),
(128, 38, 'Ketakhadirannya'),
(129, 38, 'Mengakibatkan'),
(130, 38, 'Ketakhadirnya'),
(131, 38, 'Berakibat'),
(132, 39, 'Sekedar'),
(133, 39, 'Sekedarnya'),
(134, 39, 'Seperti contohnya'),
(135, 39, 'Misalnya'),
(136, 40, 'masalah kerusakan lapisan ozon di Kutub Utara'),
(137, 40, 'akibat yang ditimbulkan dari kerusakan lapisan ozon'),
(138, 40, 'bencana banjir merupakan akibat dari rusaknya lapisan ozon'),
(139, 40, 'gagal panen terjadi karena pengaruh cuaca ekstrem'),
(157, 50, 'arman menjelaskan cara membuat puisi yang benar kepada shinta'),
(158, 50, ' shinta belajar membuat puisi dan memahami isinya dengan bimbingan arman'),
(159, 50, 'arman menjelaskan cara membuat parafrase yang benar kepada shinta'),
(160, 50, 'arman dan shinta berlatih membuat parafrase yang benar bersama sama'),
(161, 51, 'Banyak sampah berserakan di pasar tradisional karena petugas kebersihan terlambat membersihkan.'),
(162, 51, 'petugas kebersihan pasar tradisional selalu membersihkan sampah sampah itu setiap hari.'),
(163, 51, 'bau menyengat di pasar tradisional tidak bermasalah lagi karena memang sudah biasanya demikian.'),
(164, 51, 'sudut pasar tradisional sudah bersih dari kerumunan lalat karena dibersihkan setiap hari oleh petugas.'),
(165, 52, ' digunakan untuk menjalankan mesin kendaraan sehingga habis'),
(166, 52, 'digunakan secara terus menerus untuk kebutuhan rumah tangga sampai habis.'),
(167, 52, 'memanfaatkan sumber energi fosil untuk memenuhi kebutuhan bahan bakar sampai habis.'),
(168, 52, 'berasal dari fosil yang pembentukannya memerlukan waktu berjuta tahun dan bisa habis.'),
(169, 53, 'Satu tablet'),
(170, 53, '3/4 tablet.'),
(171, 53, '1/2 tablet.'),
(172, 53, '1/4 tablet.'),
(173, 54, 'masyarakat harus menyadari pentingnya sungai.'),
(174, 54, 'masyarakat tidak menghiraukan lingkungan.'),
(175, 54, ' masyarakat sebaiknya menjaga kebersihan lingkungan.'),
(176, 54, 'pengelola pabrik diberi pengarahan.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_score`
--

CREATE TABLE `tbl_score` (
  `id` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_soal`
--

CREATE TABLE `tbl_soal` (
  `id` int(11) NOT NULL,
  `soal` varchar(1000) NOT NULL,
  `jawaban` varchar(1000) NOT NULL,
  `audio` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_soal`
--

INSERT INTO `tbl_soal` (`id`, `soal`, `jawaban`, `audio`) VALUES
(22, 'Zat antioksidan penting karena mampu menetralisir kelainan organ tubuh.', 'Menetralisasi', '-'),
(26, 'Masalah narkoba ini sedang menjadi pembicaraan di berbagai media-media massa.', 'Berbagai media massa', '-'),
(32, 'X: Kamu mau memesan apa? \r\nY : Es sirup nanas.\r\nperbaikilah kata yang kurang tepat!', 'pesan', '-'),
(33, 'Anda harus menyerahkan ijasah yang dilegalisir. Itu merupakan syarat yang harus dipenuhi. \r\nperbaikilah kalimat berikut!', 'Ijazah yang dilegalisasi', '-'),
(34, 'Pimpinan menugaskan kami untuk mengantar tamu mengunjungi objek wisata. \r\nperbaikilah kalimat berikut!', 'Menugasi', '-'),
(35, 'Revisi itu berkaitan erat dengan perubahan anggaran yang sedang dirundingkan oleh kami dengan pihak kontraktor.', 'sedang kami rundingkan', '-'),
(36, 'Rimpang lengkuwas dapat digunakan untuk ramuan obat.', 'Lengkuas', '-'),
(38, 'Ketidakhadirannya dalam pertemuan itu akibatkan adanya spekulasi di kalangan wartawan.', 'Mengakibatkan', '-'),
(39, 'Mereka sekadar mengandalkan tenaga yang dimiliki, seperti misalnya, bertukang dan membuat kerajinan.', 'Misalnya', '-'),
(40, 'Perhatikan paragraf berikut!\r\n\r\nKerusakan alam di muka bumi semakin sulit ditahan. Lapisan ozon di Kutub Utara dan Selatan semakin menganga akibat produksi emisi dari kegiatan industri. Disadari atau tidak, kita sudah merasakan akibat dari kerusakan alam tersebut. Kita mengalami hujan hampir sepanjang tahun. Banjir, tanah longsor, dan gagal panen pun terjadi di seluruh pelosok negeri secara silih berganti. Kerusakan lapisan ozon juga berpengaruh terhadap perubahan iklim dan siklus cuaca yang sangat ekstrem\r\n\r\nGagasan utama paragraf tersebut adalah ….', 'akibat yang ditimbulkan dari kerusakan lapisan ozon', '-'),
(50, 'dengarkanlah isi audio tersebut dan beri kesimpulan isi percakapan tersebut!', 'arman menjelaskan cara membuat parafrase yang benar kepada shinta', 'parafrase1.mp3'),
(51, 'dengarkan isi audio tersebut dan beri pernyataan yang sesuai dengan paragraf tersebut!', 'Banyak sampah berserakan di pasar tradisional karena petugas kebersihan terlambat membersihkan.', 'pasar.mp3'),
(52, 'dengarkan isi audio tersebut, Bahan bakar minyak termasuk sumber daya alam yang tidak dapat diperbarui karena.. ', 'berasal dari fosil yang pembentukannya memerlukan waktu berjuta tahun dan bisa habis.', 'hemat_energi.mp3'),
(53, 'dengarkan isi audio tersebut, Dosis yang tepat untuk anak usia 12 tahun adalah', 'Satu tablet', 'aturan_obat.mp3'),
(54, 'dengarkan isi audio tersebut, Kalimat saran yang tepat sesuai rubrik tersebut adalah.', ' masyarakat sebaiknya menjaga kebersihan lingkungan.', 'bacaan_rubrik.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$dmRDHBpBm/HU6qYXDfhyhuE4US9fsBekoWKuwWd00Im9vh2ke./8y'),
(9, 'jono', 'jono@gmail.com', '$2y$10$7VFNoOsNvI/cPsHkPFnHsON8l/LWkC8w0gVYyt2xsdYVaTn86.psO'),
(14, 'wahyu', 'wahyu@gmail.com', '$2y$10$TRlre8jFEuf7RHSflG0LaeR930Q.fgVZJiu5/n4XExvtNm/PhBdvi'),
(16, 'azriqin', 'azriqin@gmail.com', '$2y$10$Mf7zxRyPJqe7hmKNsrm/4OuZlP8yWa4tnThgOnZRKqw3GlSPRGJIu'),
(17, 'anda', 'anda@gmail.com', '$2y$10$7dx3TlSfFKcKvepPpM7Fd.yRKlsgUTQSCxagmvmzaEsOTYvBjGRyG'),
(22, 'sora', 'sora@gmail.com', '$2y$10$kA56yNb2aud0jzgvSydpfubhV0afImqxn32rq4Qf5BcOy4R/kWTFm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_jawaban`
--
ALTER TABLE `tbl_jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_jawaban`
--
ALTER TABLE `tbl_jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
