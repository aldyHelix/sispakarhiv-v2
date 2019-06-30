-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jun 2019 pada 19.12
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sispakarhiv`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `diagnosa`
--

CREATE TABLE `diagnosa` (
  `id_diagnosa` varchar(50) NOT NULL,
  `nama_diagnosa` varchar(255) NOT NULL,
  `solusi_diagnosa` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diagnosa`
--

INSERT INTO `diagnosa` (`id_diagnosa`, `nama_diagnosa`, `solusi_diagnosa`, `keterangan`) VALUES
('K01', 'Stadium tanpa gejala', 'Mengubah gaya hidup buruk dan memulai untuk gaya hidup yang sehat', 'Pada stadium ini ciri-ciri terinfeksi belum  terlihat meskipun telah melakukan tes darah. Tetapi, pada fase ini penderita sudah dapat menularkan virus kepada orang lain.'),
('K02', 'Stadium awal infeksi', 'Menghindari perilaku-perilaku yang berisiko tinggi tertular HIV ', 'Pada stadium ini akan berlangsung lama sekitar 2-10 tahun setelah terinfeksi HIV. Pada fase ini penderita sudah HIV positif dan belum menampakkan gejala sakit.'),
('K03', 'Stadium ARC (AIDS Related Complex)', 'Sebaiknya pergi ke dokter dan mengkonsumsi obat ARV sesuai dengan anjuran dokter', 'Pada stadium ini telah muncul gejala-gejala awal penyakit yang disebut dengan penyakit HIV. Tetapi, pada tahap ini belum dapat disebut dengan gejala AIDS.'),
('K04', 'Stadium AIDS', 'Sebaiknya pergi ke dokter dan mengkonsumsi obat ARV sesuai dengan anjuran dokter', 'Pada stadium ini sudah masuk pada fase AIDS, setelah kekebalan tubuh sangat berkurang dilihat dari jumlah sel-T nya.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dtl_konsultasi`
--

CREATE TABLE `dtl_konsultasi` (
  `id_dtl_konsultasi` int(11) NOT NULL,
  `id_gejala` varchar(50) NOT NULL,
  `id_konsultasi` varchar(50) NOT NULL,
  `bobot_user` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dtl_konsultasi`
--

INSERT INTO `dtl_konsultasi` (`id_dtl_konsultasi`, `id_gejala`, `id_konsultasi`, `bobot_user`) VALUES
(1, 'G01', '9', 0),
(2, 'G02', '9', 1),
(3, 'G03', '9', 0),
(4, 'G04', '9', 1),
(5, 'G05', '9', 0),
(6, 'G09', '9', 1),
(7, 'G10', '9', 0.5),
(8, 'G11', '9', 0),
(9, 'G12', '9', 0.5),
(10, 'G13', '9', 1),
(11, 'G14', '9', 0),
(12, 'G15', '9', 0),
(13, 'G01', '10', 0),
(14, 'G01', '11', 0),
(15, 'G01', '12', 1),
(16, 'G02', '12', 0),
(17, 'G03', '12', 1),
(18, 'G01', '13', 1),
(19, 'G02', '13', 0),
(20, 'G01', '14', 0),
(21, 'G02', '14', 0),
(22, 'G03', '14', 0),
(23, 'G04', '14', 0),
(24, 'G05', '14', 0),
(25, 'G09', '14', 1),
(26, 'G10', '14', 0.5),
(27, 'G11', '14', 0.5),
(28, 'G12', '14', 0),
(29, 'G13', '14', 0),
(30, 'G14', '14', 0),
(31, 'G15', '14', 0),
(32, 'G01', '15', 1),
(33, 'G02', '15', 0),
(34, 'G01', '16', 1),
(35, 'G02', '16', 0),
(36, 'G01', '17', 0),
(37, 'G01', '19', 0),
(38, 'G01', '23', 0),
(39, 'G01', '24', 0),
(40, 'G01', '25', 0),
(41, 'G01', '26', 0),
(42, 'G01', '27', 0),
(43, 'G01', '29', 0),
(44, 'G02', '29', 1),
(45, 'G03', '29', 0),
(46, 'G04', '29', 1),
(47, 'G05', '29', 0),
(48, 'G09', '29', 1),
(49, 'G10', '29', 0.5),
(50, 'G11', '29', 0.5),
(51, 'G12', '29', 0),
(52, 'G13', '29', 0.5),
(53, 'G14', '29', 0.5),
(54, 'G15', '29', 1),
(55, 'G16', '29', 1),
(56, 'G17', '29', 0),
(57, 'G18', '29', 1),
(58, 'G01', '30', 0),
(59, 'G02', '30', 1),
(60, 'G03', '30', 0),
(61, 'G01', '31', 0),
(62, 'G02', '31', 1),
(63, 'G01', '32', 0),
(64, 'G02', '32', 1),
(65, 'G03', '32', 0),
(66, 'G04', '32', 0),
(67, 'G05', '32', 0),
(68, 'G09', '32', 0),
(69, 'G01', '33', 1),
(70, 'G02', '33', 0),
(71, 'G01', '33', 0),
(72, 'G02', '33', 0),
(73, 'G01', '33', 0),
(74, 'G02', '33', 0),
(75, 'G03', '33', 0),
(76, 'G04', '33', 0),
(77, 'G05', '33', 0),
(78, 'G09', '33', 0),
(79, 'G15', '33', 0),
(80, 'G01', '34', 1),
(81, 'G02', '34', 1),
(82, 'G03', '34', 1),
(83, 'G04', '34', 1),
(84, 'G05', '34', 1),
(85, 'G01', '35', 0),
(86, 'G02', '35', 1),
(87, 'G03', '35', 1),
(88, 'G04', '35', 1),
(89, 'G05', '35', 1),
(90, 'G01', '36', 1),
(91, 'G02', '36', 1),
(92, 'G03', '36', 1),
(93, 'G04', '36', 1),
(94, 'G05', '36', 1),
(95, 'G06', '36', 0.5),
(96, 'G07', '36', 0.5),
(97, 'G08', '36', 0.5),
(98, 'G09', '36', 0),
(99, 'G15', '36', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` varchar(50) NOT NULL,
  `nama_gejala` varchar(255) NOT NULL,
  `id_diagnosa` varchar(50) NOT NULL,
  `bobot_pakar` double NOT NULL,
  `penting` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `nama_gejala`, `id_diagnosa`, `bobot_pakar`, `penting`) VALUES
('G01', 'Apakah anda pernah seks bebas dalam 5-7 tahun terakhir?', 'K01', 0.6, 1),
('G02', 'Apakah anda pernah memakai obat-obatan terlarang jenis suntik dalam 5-7 tahun terakhir?', 'K01', 0.6, 1),
('G03', 'Apakah anda pernah melakukan transfusi darah di sembarang tempat?', 'K01', 1, 1),
('G04', 'Apakah anda memiliki garis keturunan yang menderita HIV/AIDS?', 'K01', 0.8, 1),
('G05', 'Apakah terdapat pembengkakan pada kelenjar getah bening? ', 'K02', 0.6, 1),
('G06', 'Apakah anda merasakan pegal-pegal?', 'K02', 0.4, 0),
('G07', 'Apakah anda merasakan demam?', 'K02', 0.8, 0),
('G08', 'Apakah gejala yang anda rasakan terkadang hilang namun terkadang muncul kembali?', 'K02', 0.6, 0),
('G09', 'Apakah feses yang sering anda keluarkan dalam bentuk cair?', 'K03', 0.6, 1),
('G10', 'Apakah anda sering merasakan lelah saat sedang tidak melakukan aktivitas?', 'K03', 0.8, 0),
('G11', 'Apakah berat badan anda menurun secara drastis?', 'K03', 1, 0),
('G12', 'Apakah anda merasakan demam yang telah berlangsung selama 3 minggu atau lebih?', 'K03', 1, 0),
('G13', 'Apakah anda menderita batuk-batuk?', 'K03', 0.6, 0),
('G14', 'Apakah terdapat bercak-bercak merah pada kulit anda?', 'K03', 0.6, 0),
('G15', 'Apakah pada daerah mulut anda terdapat sariawan yang tidak kunjung sembuh?', 'K04', 0.8, 1),
('G16', 'Apakah anda sering merasakan nyeri pada bagian dada?', 'K04', 0.2, 0),
('G17', 'Apakah anda menderita batuk-batuk yang telah berlangsung selama 3 minggu atau lebih?', 'K04', 0.6, 0),
('G18', 'Apakah anda sering merasa berkeringat pada malam hari?', 'K04', 0.6, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id_konsultasi` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `waktu_konsultasi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konsultasi`
--

INSERT INTO `konsultasi` (`id_konsultasi`, `id_pasien`, `waktu_konsultasi`) VALUES
(1, 3, '2019-06-28 14:21:37'),
(2, 3, '2019-06-28 14:53:28'),
(3, 3, '2019-06-28 14:56:25'),
(4, 3, '2019-06-28 14:57:24'),
(5, 3, '2019-06-28 15:00:49'),
(6, 3, '2019-06-28 15:01:38'),
(7, 3, '2019-06-30 13:30:07'),
(8, 3, '2019-06-30 13:35:40'),
(9, 3, '2019-06-30 13:36:16'),
(10, 3, '2019-06-30 15:10:21'),
(11, 3, '2019-06-30 15:51:55'),
(12, 3, '2019-06-30 15:53:46'),
(13, 3, '2019-06-30 15:54:41'),
(14, 3, '2019-06-30 15:56:24'),
(15, 3, '2019-06-30 15:57:59'),
(16, 3, '2019-06-30 16:04:35'),
(17, 3, '2019-06-30 16:05:05'),
(18, 3, '2019-06-30 16:05:28'),
(19, 3, '2019-06-30 16:06:18'),
(20, 3, '2019-06-30 16:11:11'),
(21, 3, '2019-06-30 16:12:50'),
(22, 3, '2019-06-30 16:13:11'),
(23, 3, '2019-06-30 16:16:43'),
(24, 3, '2019-06-30 16:20:40'),
(25, 3, '2019-06-30 16:21:02'),
(26, 3, '2019-06-30 16:21:58'),
(27, 3, '2019-06-30 16:23:26'),
(28, 3, '2019-06-30 16:23:54'),
(29, 3, '2019-06-30 16:24:16'),
(30, 3, '2019-06-30 16:28:05'),
(31, 3, '2019-06-30 16:28:59'),
(32, 3, '2019-06-30 16:33:05'),
(33, 3, '2019-06-30 16:38:25'),
(34, 3, '2019-06-30 16:40:34'),
(35, 3, '2019-06-30 16:40:53'),
(36, 3, '2019-06-30 16:42:34'),
(37, 3, '2019-06-30 16:43:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `umur` int(11) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id`, `id_user`, `nama_pasien`, `tempat_lahir`, `tanggal_lahir`, `umur`, `jenis_kelamin`, `alamat`, `no_telp`, `email`) VALUES
(1, 1, 'admin', 'admin', '2019-06-26', 99, 'laki-laki', 'diadmin', '0899999999999', 'admin@admin.com'),
(2, 2, 'Dr.Pakar', 'Pakarya', '2019-06-04', 15, 'perempuan', 'rumah pakar', '0899999999999', 'pakar@pakarhiv.com'),
(3, 3, 'Pasien Terkena HIV', 'Dilahirkan', '2019-06-02', 55, 'laki-laki', 'tidak punya rumah', '089787878787', 'user@user.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` varchar(255) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `hak_akses`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$12$y5lilxRNYohzcxVVapCVkOaGqk9UmbL/s/Qqeu/BTMJQH1VE4r7V6', '0'),
(2, 'pakar', 'pakar', '$2y$12$y5lilxRNYohzcxVVapCVkOaGqk9UmbL/s/Qqeu/BTMJQH1VE4r7V6', '1'),
(3, 'user', 'user@user.com', '$2y$12$y5lilxRNYohzcxVVapCVkOaGqk9UmbL/s/Qqeu/BTMJQH1VE4r7V6', '2');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_hasil_pertanyaan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_hasil_pertanyaan` (
`id` int(11)
,`id_user` int(11)
,`id_konsultasi` varchar(50)
,`nama_diagnosa` varchar(255)
,`nama_gejala` varchar(255)
,`bobot_pakar` double
,`bobot_user` float
,`nama_pasien` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_pertanyaan_diagnosa`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_pertanyaan_diagnosa` (
`nama_diagnosa` varchar(255)
,`solusi_diagnosa` text
,`keterangan` text
,`id_gejala` varchar(50)
,`nama_gejala` varchar(255)
,`id_diagnosa` varchar(50)
,`bobot_pakar` double
,`penting` int(11)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_hasil_pertanyaan`
--
DROP TABLE IF EXISTS `view_hasil_pertanyaan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hasil_pertanyaan`  AS  select `pasien`.`id` AS `id`,`pasien`.`id_user` AS `id_user`,`dtl_konsultasi`.`id_konsultasi` AS `id_konsultasi`,`diagnosa`.`nama_diagnosa` AS `nama_diagnosa`,`gejala`.`nama_gejala` AS `nama_gejala`,`gejala`.`bobot_pakar` AS `bobot_pakar`,`dtl_konsultasi`.`bobot_user` AS `bobot_user`,`pasien`.`nama_pasien` AS `nama_pasien` from ((((`dtl_konsultasi` join `konsultasi` on((`konsultasi`.`id_konsultasi` = `dtl_konsultasi`.`id_konsultasi`))) join `gejala` on((`gejala`.`id_gejala` = `dtl_konsultasi`.`id_gejala`))) join `diagnosa` on((`diagnosa`.`id_diagnosa` = `gejala`.`id_diagnosa`))) join `pasien` on((`pasien`.`id` = `konsultasi`.`id_pasien`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_pertanyaan_diagnosa`
--
DROP TABLE IF EXISTS `view_pertanyaan_diagnosa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pertanyaan_diagnosa`  AS  select `diagnosa`.`nama_diagnosa` AS `nama_diagnosa`,`diagnosa`.`solusi_diagnosa` AS `solusi_diagnosa`,`diagnosa`.`keterangan` AS `keterangan`,`gejala`.`id_gejala` AS `id_gejala`,`gejala`.`nama_gejala` AS `nama_gejala`,`gejala`.`id_diagnosa` AS `id_diagnosa`,`gejala`.`bobot_pakar` AS `bobot_pakar`,`gejala`.`penting` AS `penting` from (`gejala` join `diagnosa` on((`diagnosa`.`id_diagnosa` = `gejala`.`id_diagnosa`))) order by `gejala`.`id_gejala` ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD PRIMARY KEY (`id_diagnosa`);

--
-- Indeks untuk tabel `dtl_konsultasi`
--
ALTER TABLE `dtl_konsultasi`
  ADD PRIMARY KEY (`id_dtl_konsultasi`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indeks untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dtl_konsultasi`
--
ALTER TABLE `dtl_konsultasi`
  MODIFY `id_dtl_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
