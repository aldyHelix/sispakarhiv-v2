-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jul 2019 pada 16.29
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
(99, 'G15', '36', 0),
(100, 'G01', '38', 1),
(101, 'G02', '38', 0),
(102, 'G03', '38', 1),
(103, 'G04', '38', 1),
(104, 'G01', '39', 0),
(105, 'G02', '39', 1),
(106, 'G03', '39', 1),
(107, 'G04', '39', 1),
(108, 'G01', '40', 1),
(109, 'G01', '41', 1),
(110, 'G01', '42', 1),
(111, 'G01', '43', 0),
(112, 'G02', '43', 1),
(113, 'G03', '43', 1),
(114, 'G01', '43', 1),
(115, 'G02', '43', 1),
(116, 'G03', '43', 0),
(117, 'G04', '43', 0),
(118, 'G05', '43', 1),
(119, 'G06', '43', 0.5),
(120, 'G07', '43', 0),
(121, 'G01', '44', 0),
(122, 'G02', '44', 0),
(123, 'G03', '44', 0),
(124, 'G04', '44', 1),
(125, 'G05', '44', 1),
(126, 'G06', '44', 0),
(127, 'G07', '44', 0),
(128, 'G08', '44', 0),
(129, 'G09', '44', 1),
(130, 'G10', '44', 1),
(131, 'G11', '44', 0),
(132, 'G12', '44', 0),
(133, 'G13', '44', 0.5),
(134, 'G14', '44', 1),
(135, 'G15', '44', 1),
(136, 'G16', '44', 1),
(137, 'G17', '44', 0),
(138, 'G18', '44', 0),
(139, 'G01', '45', 1),
(140, 'G02', '45', 0),
(141, 'G03', '45', 1),
(142, 'G04', '45', 1),
(143, 'G01', '47', 1),
(144, 'G02', '47', 1),
(145, 'G03', '47', 1),
(146, 'G04', '47', 0),
(147, 'G05', '47', 1),
(148, 'G06', '47', 0),
(149, 'G07', '47', 1),
(150, 'G08', '47', 0),
(151, 'G09', '47', 0),
(152, 'G15', '47', 1),
(153, 'G16', '47', 0),
(154, 'G17', '47', 0),
(155, 'G18', '47', 0),
(156, 'G01', '48', 0),
(157, 'G02', '48', 0),
(158, 'G03', '48', 0),
(159, 'G04', '48', 0),
(160, 'G05', '48', 1),
(161, 'G06', '48', 0),
(162, 'G07', '48', 1),
(163, 'G08', '48', 0),
(164, 'G09', '48', 0),
(165, 'G15', '48', 1),
(166, 'G16', '48', 0),
(167, 'G17', '48', 0),
(168, 'G18', '48', 0),
(169, 'G01', '49', 1),
(170, 'G02', '49', 1),
(171, 'G03', '49', 1),
(172, 'G04', '49', 1),
(173, 'G05', '49', 1),
(174, 'G06', '49', 1),
(175, 'G07', '49', 1),
(176, 'G08', '49', 1),
(177, 'G09', '49', 1),
(178, 'G10', '49', 1),
(179, 'G11', '49', 1),
(180, 'G12', '49', 1),
(181, 'G13', '49', 1),
(182, 'G14', '49', 1),
(183, 'G15', '49', 1),
(184, 'G16', '49', 1),
(185, 'G17', '49', 1),
(186, 'G18', '49', 1),
(187, 'G01', '50', 1),
(188, 'G02', '50', 1),
(189, 'G03', '50', 1),
(190, 'G04', '50', 0),
(191, 'G05', '50', 1),
(192, 'G06', '50', 0),
(193, 'G07', '50', 0),
(194, 'G08', '50', 1),
(195, 'G09', '50', 0),
(196, 'G15', '50', 1),
(197, 'G16', '50', 1),
(198, 'G17', '50', 1),
(199, 'G18', '50', 1),
(200, 'G01', '51', 1),
(201, 'G02', '51', 1),
(202, 'G03', '51', 0),
(203, 'G04', '51', 1),
(204, 'G05', '51', 1),
(205, 'G01', '52', 0),
(206, 'G02', '52', 0),
(207, 'G03', '52', 0),
(208, 'G04', '52', 0),
(209, 'G05', '52', 0),
(210, 'G09', '52', 0),
(211, 'G15', '52', 0),
(212, 'G01', '53', 1),
(213, 'G02', '53', 1),
(214, 'G03', '53', 0),
(215, 'G04', '53', 1),
(216, 'G05', '53', 1),
(217, 'G06', '53', 1),
(218, 'G07', '53', 0),
(219, 'G08', '53', 1),
(220, 'G09', '53', 0),
(221, 'G15', '53', 0),
(222, 'G01', '54', 1),
(223, 'G02', '54', 1),
(224, 'G03', '54', 1),
(225, 'G04', '54', 1),
(226, 'G05', '54', 1),
(227, 'G01', '55', 1),
(228, 'G02', '55', 1),
(229, 'G03', '55', 0),
(230, 'G04', '55', 1),
(231, 'G05', '55', 1),
(232, 'G01', '57', 1),
(233, 'G02', '57', 1),
(234, 'G03', '57', 1),
(235, 'G04', '57', 1),
(236, 'G05', '57', 1),
(237, 'G06', '57', 0),
(238, 'G07', '57', 1),
(239, 'G01', '58', 1),
(240, 'G02', '58', 1),
(241, 'G03', '58', 1),
(242, 'G04', '58', 1),
(243, 'G05', '58', 1),
(244, 'G06', '58', 0),
(245, 'G01', '59', 1),
(246, 'G02', '59', 1),
(247, 'G03', '59', 1),
(248, 'G04', '59', 1),
(249, 'G05', '59', 1),
(250, 'G01', '60', 1),
(251, 'G02', '60', 1),
(252, 'G03', '60', 1),
(253, 'G04', '60', 1),
(254, 'G05', '60', 1),
(255, 'G01', '61', 1),
(256, 'G02', '61', 1),
(257, 'G03', '61', 1),
(258, 'G04', '61', 1),
(259, 'G05', '61', 1),
(260, 'G01', '62', 1),
(261, 'G02', '62', 1),
(262, 'G03', '62', 1),
(263, 'G04', '62', 1),
(264, 'G05', '62', 1),
(265, 'G01', '63', 1),
(266, 'G02', '63', 1),
(267, 'G03', '63', 1),
(268, 'G04', '63', 1),
(269, 'G05', '63', 1),
(270, 'G01', '64', 1),
(271, 'G02', '64', 1),
(272, 'G03', '64', 1),
(273, 'G04', '64', 1),
(274, 'G05', '64', 1),
(275, 'G01', '65', 1),
(276, 'G02', '65', 1),
(277, 'G03', '65', 1),
(278, 'G04', '65', 1),
(279, 'G05', '65', 1),
(280, 'G06', '65', 0),
(281, 'G07', '65', 1),
(282, 'G08', '65', 0),
(283, 'G09', '65', 1),
(284, 'G10', '65', 0),
(285, 'G11', '65', 1),
(286, 'G12', '65', 0),
(287, 'G13', '65', 1),
(288, 'G14', '65', 0),
(289, 'G15', '65', 1),
(290, 'G16', '65', 0),
(291, 'G17', '65', 1),
(292, 'G18', '65', 0),
(293, 'G01', '67', 1),
(294, 'G02', '67', 1),
(295, 'G03', '67', 1),
(296, 'G04', '67', 1),
(297, 'G05', '67', 1),
(298, 'G01', '68', 1),
(299, 'G02', '68', 1),
(300, 'G03', '68', 1),
(301, 'G04', '68', 1),
(302, 'G05', '68', 1),
(303, 'G06', '68', 0.6),
(304, 'G07', '68', 0.6),
(305, 'G08', '68', 1),
(306, 'G09', '68', 1),
(307, 'G10', '68', 0.6),
(308, 'G11', '68', 0.6),
(309, 'G12', '68', 0.6),
(310, 'G13', '68', 0.6),
(311, 'G14', '68', 0.6),
(312, 'G15', '68', 1),
(313, 'G16', '68', 0.6),
(314, 'G17', '68', 0),
(315, 'G18', '68', 0.6),
(316, 'G01', '69', 1),
(317, 'G02', '69', 1),
(318, 'G03', '69', 1),
(319, 'G04', '69', 1),
(320, 'G05', '69', 1),
(321, 'G06', '69', 0.6),
(322, 'G01', '70', 1),
(323, 'G02', '70', 1),
(324, 'G03', '70', 1),
(325, 'G04', '70', 1),
(326, 'G05', '70', 1),
(327, 'G06', '70', 0),
(328, 'G07', '70', 0),
(329, 'G08', '70', 0.8),
(330, 'G09', '70', 1),
(331, 'G10', '70', 0),
(332, 'G11', '70', 0),
(333, 'G12', '70', 0),
(334, 'G13', '70', 0),
(335, 'G14', '70', 0),
(336, 'G15', '70', 1),
(337, 'G16', '70', 0),
(338, 'G17', '70', 0),
(339, 'G18', '70', 0),
(340, 'G01', '71', 1),
(341, 'G02', '71', 1),
(342, 'G03', '71', 1),
(343, 'G04', '71', 1),
(344, 'G05', '71', 1),
(345, 'G01', '72', 1),
(346, 'G02', '72', 1),
(347, 'G03', '72', 1),
(348, 'G04', '72', 1),
(349, 'G05', '72', 1),
(350, 'G01', '73', 1),
(351, 'G02', '73', 1),
(352, 'G03', '73', 1),
(353, 'G04', '73', 1),
(354, 'G05', '73', 1),
(355, 'G01', '82', 1),
(356, 'G02', '82', 1),
(357, 'G03', '82', 1),
(358, 'G04', '82', 1),
(359, 'G05', '82', 1),
(360, 'G01', '83', 1),
(361, 'G02', '83', 1),
(362, 'G03', '83', 1),
(363, 'G04', '83', 1),
(364, 'G05', '83', 1),
(365, 'G01', '84', 1),
(366, 'G02', '84', 1),
(367, 'G03', '84', 1),
(368, 'G04', '84', 1),
(369, 'G05', '84', 1),
(370, 'G06', '84', 0),
(371, 'G01', '85', 1),
(372, 'G02', '85', 1),
(373, 'G03', '85', 1),
(374, 'G04', '85', 1),
(375, 'G05', '85', 1),
(376, 'G06', '85', 1),
(377, 'G01', '88', 1),
(378, 'G02', '88', 1),
(379, 'G03', '88', 1),
(380, 'G04', '88', 1),
(381, 'G05', '88', 1),
(382, 'G06', '88', 1),
(383, 'G07', '88', 1),
(384, 'G08', '88', 1),
(385, 'G09', '88', 1),
(386, 'G10', '88', 1),
(387, 'G11', '88', 1),
(388, 'G12', '88', 1),
(389, 'G13', '88', 1),
(390, 'G14', '88', 1),
(391, 'G15', '88', 1),
(392, 'G16', '88', 1),
(393, 'G17', '88', 1),
(394, 'G18', '88', 1),
(395, 'G01', '89', 1),
(396, 'G02', '89', 1),
(397, 'G03', '89', 1),
(398, 'G04', '89', 1),
(399, 'G05', '89', 1),
(400, 'G01', '90', 1),
(401, 'G02', '90', 1),
(402, 'G03', '90', 1),
(403, 'G04', '90', 1),
(404, 'G05', '90', 1),
(405, 'G01', '91', 1),
(406, 'G02', '91', 1),
(407, 'G03', '91', 1),
(408, 'G04', '91', 1),
(409, 'G05', '91', 1),
(410, 'G06', '91', 1),
(411, 'G07', '91', 1),
(412, 'G08', '91', 1),
(413, 'G09', '91', 1),
(414, 'G10', '91', 0),
(415, 'G11', '91', 0),
(416, 'G12', '91', 0),
(417, 'G13', '91', 0),
(418, 'G14', '91', 0),
(419, 'G15', '91', 1),
(420, 'G16', '91', 0),
(421, 'G17', '91', 0),
(422, 'G18', '91', 0);

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
(37, 3, '2019-06-30 16:43:43'),
(38, 3, '2019-07-01 13:42:54'),
(39, 3, '2019-07-02 16:27:31'),
(40, 3, '2019-07-03 14:39:18'),
(41, 3, '2019-07-03 14:41:06'),
(42, 3, '2019-07-03 14:41:59'),
(43, 3, '2019-07-03 14:51:11'),
(44, 3, '2019-07-03 14:59:51'),
(45, 3, '2019-07-03 15:01:26'),
(46, 3, '2019-07-03 15:04:34'),
(47, 3, '2019-07-03 15:07:08'),
(48, 3, '2019-07-03 15:07:45'),
(49, 3, '2019-07-03 15:09:07'),
(50, 3, '2019-07-03 15:10:55'),
(51, 3, '2019-07-04 06:03:13'),
(52, 3, '2019-07-04 06:09:31'),
(53, 3, '2019-07-04 06:13:54'),
(54, 3, '2019-07-04 06:14:11'),
(55, 3, '2019-07-04 16:03:30'),
(56, 3, '2019-07-04 16:05:23'),
(57, 3, '2019-07-04 16:07:58'),
(58, 3, '2019-07-04 16:08:52'),
(59, 3, '2019-07-04 16:13:03'),
(60, 3, '2019-07-04 16:15:26'),
(61, 3, '2019-07-04 16:16:45'),
(62, 3, '2019-07-04 16:18:52'),
(63, 3, '2019-07-04 16:19:43'),
(64, 3, '2019-07-04 16:21:23'),
(65, 3, '2019-07-04 16:22:00'),
(66, 3, '2019-07-04 16:23:20'),
(67, 3, '2019-07-04 16:28:03'),
(68, 3, '2019-07-04 16:28:49'),
(69, 3, '2019-07-04 16:29:58'),
(70, 3, '2019-07-04 16:32:41'),
(71, 3, '2019-07-04 16:36:05'),
(72, 3, '2019-07-04 16:43:49'),
(73, 3, '2019-07-04 16:45:06'),
(74, 3, '2019-07-04 16:52:59'),
(75, 3, '2019-07-04 17:06:04'),
(76, 3, '2019-07-04 17:11:38'),
(77, 3, '2019-07-04 17:12:40'),
(78, 3, '2019-07-04 17:14:01'),
(79, 3, '2019-07-04 17:16:06'),
(80, 3, '2019-07-04 17:17:39'),
(81, 3, '2019-07-04 17:18:39'),
(82, 3, '2019-07-04 17:21:37'),
(83, 3, '2019-07-05 12:57:26'),
(84, 3, '2019-07-05 12:58:50'),
(85, 3, '2019-07-05 12:59:50'),
(86, 3, '2019-07-05 13:01:27'),
(87, 3, '2019-07-05 13:09:14'),
(88, 3, '2019-07-05 13:09:30'),
(89, 3, '2019-07-05 13:10:00'),
(90, 3, '2019-07-05 13:10:33'),
(91, 3, '2019-07-05 13:18:15'),
(92, 3, '2019-07-05 13:18:49');

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
-- Stand-in struktur untuk tampilan `view_hasil`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_hasil` (
`id_dtl_konsultasi` int(11)
,`id_pasien` int(11)
,`id_konsultasi` int(11)
,`id_gejala` varchar(50)
,`id_diagnosa` varchar(50)
,`bobot_pakar` double
,`bobot_user` float
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_hasil_bobot`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_hasil_bobot` (
`id_dtl_konsultasi` int(11)
,`id_konsultasi` int(11)
,`id` int(11)
,`id_gejala` varchar(50)
,`id_diagnosa` varchar(50)
,`bobot_hasil` double
);

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
-- Struktur untuk view `view_hasil`
--
DROP TABLE IF EXISTS `view_hasil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hasil`  AS  select `dtl_konsultasi`.`id_dtl_konsultasi` AS `id_dtl_konsultasi`,`konsultasi`.`id_pasien` AS `id_pasien`,`konsultasi`.`id_konsultasi` AS `id_konsultasi`,`dtl_konsultasi`.`id_gejala` AS `id_gejala`,`gejala`.`id_diagnosa` AS `id_diagnosa`,`gejala`.`bobot_pakar` AS `bobot_pakar`,`dtl_konsultasi`.`bobot_user` AS `bobot_user` from ((((`dtl_konsultasi` join `konsultasi` on((`konsultasi`.`id_konsultasi` = `dtl_konsultasi`.`id_konsultasi`))) join `gejala` on((`gejala`.`id_gejala` = `dtl_konsultasi`.`id_gejala`))) join `pasien` on((`pasien`.`id` = `konsultasi`.`id_pasien`))) join `diagnosa` on((`diagnosa`.`id_diagnosa` = `gejala`.`id_diagnosa`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_hasil_bobot`
--
DROP TABLE IF EXISTS `view_hasil_bobot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hasil_bobot`  AS  select `dtl_konsultasi`.`id_dtl_konsultasi` AS `id_dtl_konsultasi`,`konsultasi`.`id_konsultasi` AS `id_konsultasi`,`pasien`.`id` AS `id`,`gejala`.`id_gejala` AS `id_gejala`,`diagnosa`.`id_diagnosa` AS `id_diagnosa`,(`gejala`.`bobot_pakar` * `dtl_konsultasi`.`bobot_user`) AS `bobot_hasil` from ((((`dtl_konsultasi` join `konsultasi` on((`konsultasi`.`id_konsultasi` = `dtl_konsultasi`.`id_konsultasi`))) join `pasien` on((`pasien`.`id` = `konsultasi`.`id_pasien`))) join `gejala` on((`gejala`.`id_gejala` = `dtl_konsultasi`.`id_gejala`))) join `diagnosa` on((`diagnosa`.`id_diagnosa` = `gejala`.`id_diagnosa`))) ;

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
  MODIFY `id_dtl_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;

--
-- AUTO_INCREMENT untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

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
