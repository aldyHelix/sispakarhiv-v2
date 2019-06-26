-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2019 pada 15.45
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` varchar(50) NOT NULL,
  `nama_gejala` varchar(255) NOT NULL,
  `id_diagnosa` varchar(50) NOT NULL,
  `bobot_pakar` double NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `nama_gejala`, `id_diagnosa`, `bobot_pakar`, `priority`) VALUES
('G01', 'Apakah anda pernah seks bebas dalam 5-7 tahun terakhir?', 'K01', 0.06, 1),
('G02', 'Apakah anda pernah memakai obat-obatan terlarang jenis suntik dalam 5-7 tahun terakhir?', 'K01', 0.06, 1),
('G03', 'Apakah anda pernah melakukan transfusi darah di sembarang tempat?', 'K01', 1, 1),
('G04', 'Apakah anda memiliki garis keturunan yang menderita HIV/AIDS?', 'K01', 0.08, 1),
('G05', 'Apakah terdapat pembengkakan pada kelenjar getah bening? ', 'K02', 0.06, 1),
('G06', 'Apakah anda merasakan pegal-pegal?', 'K02', 0.04, 0),
('G07', 'Apakah anda merasakan demam?', 'K02', 0.08, 0),
('G08', 'Apakah gejala yang anda rasakan terkadang hilang namun terkadang muncul kembali?', 'K02', 0.06, 0),
('G09', 'Apakah feses yang sering anda keluarkan dalam bentuk cair?', 'K03', 0.06, 1),
('G10', 'Apakah anda sering merasakan lelah saat sedang tidak melakukan aktivitas?', 'K03', 0.08, 0),
('G11', 'Apakah berat badan anda menurun secara drastis?', 'K03', 1, 0),
('G12', 'Apakah anda merasakan demam yang telah berlangsung selama 3 minggu atau lebih?', 'K03', 1, 0),
('G13', 'Apakah anda menderita batuk-batuk?', 'K03', 0.06, 0),
('G14', 'Apakah terdapat bercak-bercak merah pada kulit anda?', 'K03', 0.06, 0),
('G15', 'Apakah pada daerah mulut anda terdapat sariawan yang tidak kunjung sembuh?', 'K04', 0.08, 1),
('G16', 'Apakah anda sering merasakan nyeri pada bagian dada?', 'K04', 0.02, 0),
('G17', 'Apakah anda menderita batuk-batuk yang telah berlangsung selama 3 minggu atau lebih?', 'K04', 0.06, 0),
('G18', 'Apakah anda sering merasa berkeringat pada malam hari?', 'K04', 0.06, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id_konsultasi` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `waktu_konsultasi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
,`priority` int(11)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_pertanyaan_diagnosa`
--
DROP TABLE IF EXISTS `view_pertanyaan_diagnosa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pertanyaan_diagnosa`  AS  select `diagnosa`.`nama_diagnosa` AS `nama_diagnosa`,`diagnosa`.`solusi_diagnosa` AS `solusi_diagnosa`,`diagnosa`.`keterangan` AS `keterangan`,`gejala`.`id_gejala` AS `id_gejala`,`gejala`.`nama_gejala` AS `nama_gejala`,`gejala`.`id_diagnosa` AS `id_diagnosa`,`gejala`.`bobot_pakar` AS `bobot_pakar`,`gejala`.`priority` AS `priority` from (`gejala` join `diagnosa` on((`diagnosa`.`id_diagnosa` = `gejala`.`id_diagnosa`))) order by `gejala`.`id_gejala` ;

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
  MODIFY `id_dtl_konsultasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT;

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
