-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Mar 2019 pada 07.06
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax_lat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `id_propinsi` int(11) NOT NULL,
  `nama_kabupaten` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `id_propinsi`, `nama_kabupaten`) VALUES
(80, 11, 'KOTA LANGSA'),
(81, 11, 'SIMEULUE'),
(82, 11, 'ACEH UTARA'),
(83, 11, 'ACEH SELATAN'),
(84, 11, 'ACEH TENGGARA'),
(85, 11, 'ACEH TIMUR'),
(86, 11, 'ACEH TENGAH'),
(87, 11, 'ACEH BARAT'),
(88, 11, 'PIDIE'),
(89, 11, 'ACEH SINGKIL'),
(90, 11, 'BIREUEN'),
(91, 11, 'ACEH BARAT DAYA'),
(92, 11, 'KOTA LHOKSEUMAWE'),
(93, 11, 'KOTA SABANG'),
(94, 11, 'KOTA BANDA ACEH'),
(95, 11, 'BENER MERIAH'),
(96, 11, 'ACEH TAMIANG'),
(97, 11, 'NAGAN RAYA'),
(98, 11, 'ACEH BESAR'),
(99, 11, 'ACEH JAYA'),
(100, 11, 'GAYO LUES'),
(101, 12, 'MANDAILING NATAL'),
(102, 12, 'NIAS SELATAN'),
(103, 12, 'PAKPAK BHARAT'),
(104, 12, 'HUMBANG HASUNDUTAN'),
(105, 12, 'SAMOSIR'),
(106, 12, 'TOBA SAMOSIR'),
(107, 12, 'DAIRI'),
(108, 12, 'TAPANULI TENGAH'),
(109, 12, 'TAPANULI UTARA'),
(110, 12, 'TAPANULI  SELATAN'),
(111, 12, 'NIAS'),
(112, 12, 'LANGKAT'),
(113, 12, 'KARO'),
(114, 12, 'DELI SERDANG'),
(115, 12, 'SIMALUNGUN.'),
(116, 12, 'ASAHAN'),
(117, 12, 'LABUHAN BATU'),
(118, 12, 'SERDANG BEDAGAI'),
(119, 12, 'KOTA MEDAN'),
(120, 12, 'KOTA PADANG SIDIMPUAN'),
(121, 12, 'KOTA TEBING TINGGI'),
(122, 12, 'KOTA BINJAI'),
(123, 12, 'KOTA TANJUNG BALAI'),
(124, 12, 'KOTA SIBOLGA'),
(125, 12, 'KOTA PEMATANG SIANTAR'),
(126, 13, 'KOTA PADANG PANJANG'),
(127, 13, 'KOTA  BUKIT TINGGI '),
(128, 13, 'KOTA PAYAKUMBUH'),
(129, 13, 'KOTA PARIAMAN'),
(130, 13, 'TANAH DATAR'),
(131, 13, 'DHARMASRAYA'),
(132, 13, 'KOTA SAWAHLUNTO'),
(133, 13, 'PADANG PARIAMAN'),
(134, 13, 'KOTA PADANG'),
(135, 13, 'PASAMAN BARAT'),
(136, 13, 'SOLOK SELATAN'),
(137, 13, 'KEPULAUAN MENTAWAI.'),
(138, 13, 'PASAMAN'),
(139, 13, 'LIMA PULUH KOTA'),
(140, 13, 'AGAM'),
(141, 13, 'SAWAHLUNTO/SIJUNJUNG'),
(142, 13, 'SOLOK'),
(143, 13, 'PESISIR SELATAN'),
(144, 13, 'KOTA SOLOK'),
(145, 14, 'KOTA DUMAI'),
(146, 14, 'PELALAWAN'),
(147, 14, 'ROKAN HULU'),
(148, 14, 'KAMPAR'),
(149, 14, 'ROKAN HILIR'),
(150, 14, 'SIAK'),
(151, 14, 'KUANTAN SINGINGI'),
(152, 14, 'KOTA PEKANBARU'),
(153, 14, 'INDRAGIRI HILIR'),
(154, 14, ' BENGKALIS'),
(155, 14, ' INDRAGIRI HULU'),
(156, 15, '   MUARO JAMBI'),
(157, 15, ' TANJUNG JABUNG BARAT'),
(158, 15, ' BUNGO '),
(159, 15, 'KOTA JAMBI'),
(160, 15, '  SAROLANGUN '),
(161, 15, '  MERANGIN'),
(162, 15, ' KERINCI'),
(163, 15, '  TEBO'),
(164, 15, '  BATANG HARI'),
(165, 15, ' TANJUNG JABUNG TIMUR'),
(166, 16, ' OGAN KOMERING ULU SELATAN'),
(167, 16, 'KOTA  LUBUK LINGGAU'),
(168, 16, 'KOTA PAGAR ALAM '),
(169, 16, 'KOTA PALEMBANG'),
(170, 16, ' OGAN KOMERING ULU TIMUR'),
(171, 16, ' OGAN  ILIR'),
(172, 16, '  BANYUASIN'),
(173, 16, ' OGAN KOMERING ILIR'),
(174, 16, '  MUSI RAWAS'),
(175, 16, '  MUSI BANYUASIN'),
(176, 16, '  LAHAT'),
(177, 16, '  MUARA ENIM'),
(178, 16, ' OGAN KOMERING ULU'),
(179, 16, 'KOTA  PRABUMULIH'),
(180, 17, ' BENGKULU SELATAN'),
(181, 17, ' BENGKULU UTARA'),
(182, 17, '  MUKOMUKO'),
(183, 17, '   SELUMA'),
(184, 17, ' LEBONG'),
(185, 17, ' KEPAHIANG'),
(186, 17, 'KOTA BENGKULU'),
(187, 17, ' REJANG LEBONG'),
(188, 17, '   KAUR'),
(189, 18, ' LAMPUNG SELATAN'),
(190, 18, ' LAMPUNG UTARA'),
(191, 18, ' LAMPUNG TENGAH'),
(192, 18, ' LAMPUNG BARAT'),
(193, 18, 'KOTA BANDAR LAMPUNG'),
(194, 18, 'KOTA METRO'),
(195, 18, ' WAY KANAN'),
(196, 18, ' TULANG BAWANG'),
(197, 18, ' LAMPUNG TIMUR'),
(198, 18, ' TANGGAMUS'),
(199, 19, '  BANGKA TENGAH'),
(200, 19, ' BANGKA BARAT'),
(201, 19, ' BELITUNG TIMUR'),
(202, 19, 'KOTA PANGKALPINANG'),
(203, 19, '  BANGKA SELATAN'),
(204, 19, '  BELITUNG'),
(205, 19, '  BANGKA'),
(206, 21, ' KEPULAUAN RIAU'),
(207, 21, ' NATUNA'),
(208, 21, ' KARIMUN'),
(209, 21, ' LINGGA'),
(210, 21, 'KOTA BATAM'),
(211, 21, 'KOTA TANJUNG PINANG'),
(212, 31, 'KOTA JAKARTA PUSAT'),
(213, 31, 'KOTA JAKARTA TIMUR'),
(214, 31, ' KEPULAUAN SERIBU'),
(215, 31, 'KOTA JAKARTA SELATAN'),
(216, 31, 'KOTA JAKARTA BARAT'),
(217, 31, 'KOTA JAKARTA UTARA'),
(218, 32, ' PURWAKARTA'),
(219, 32, 'KOTA BANJAR'),
(220, 32, 'KOTA TASIKMALAYA'),
(221, 32, 'KOTA CIMAHI'),
(222, 32, 'KOTA DEPOK'),
(223, 32, 'KOTA BEKASI'),
(224, 32, ' CIAMIS'),
(225, 32, ' TASIKMALAYA'),
(226, 32, ' GARUT'),
(227, 32, ' CIANJUR'),
(228, 32, ' SUKABUMI'),
(229, 32, ' BOGOR'),
(230, 32, ' BANDUNG'),
(231, 32, ' SUMEDANG'),
(232, 32, ' KUNINGAN'),
(233, 32, ' CIREBON'),
(234, 32, ' INDRAMAYU'),
(235, 32, 'KOTA BOGOR'),
(236, 32, 'KOTA CIREBON'),
(237, 32, 'KOTA BANDUNG'),
(238, 32, ' BEKASI'),
(239, 32, ' KARAWANG'),
(240, 32, ' MAJALENGKA'),
(241, 32, ' SUBANG'),
(242, 32, 'KOTA SUKABUMI'),
(243, 33, ' BREBES'),
(244, 33, 'KOTA MAGELANG'),
(245, 33, 'KOTA SURAKARTA'),
(246, 33, 'KOTA SALATIGA'),
(247, 33, ' PEMALANG'),
(248, 33, ' BATANG'),
(249, 33, ' KENDAL'),
(250, 33, ' BANJARNEGARA'),
(251, 33, ' TEGAL'),
(252, 33, ' BOYOLALI'),
(253, 33, ' TEMANGGUNG'),
(254, 33, 'KOTA SEMARANG'),
(255, 33, 'KOTA PEKALONGAN'),
(256, 33, 'KOTA TEGAL'),
(257, 33, ' GROBOGAN'),
(258, 33, ' JEPARA'),
(259, 33, ' BLORA'),
(260, 33, ' REMBANG'),
(261, 33, ' PATI'),
(262, 33, ' KUDUS'),
(263, 33, ' DEMAK'),
(264, 33, ' SEMARANG'),
(265, 33, ' PEKALONGAN'),
(266, 33, ' SRAGEN'),
(267, 33, ' KARANGANYAR'),
(268, 33, ' WONOGIRI'),
(269, 33, ' CILACAP'),
(270, 33, ' BANYUMAS'),
(271, 33, ' PURBALINGGA'),
(272, 33, ' KEBUMEN'),
(273, 33, ' PURWOREJO'),
(274, 33, ' WONOSOBO'),
(275, 33, ' MAGELANG'),
(276, 33, ' KLATEN'),
(277, 33, ' SUKOHARJO'),
(278, 34, ' BANTUL'),
(279, 34, ' GUNUNG KIDUL'),
(280, 34, 'KOTA YOGYAKARTA'),
(281, 34, ' KULONPROGO'),
(282, 34, ' SLEMAN'),
(283, 35, ' MADIUN'),
(284, 35, 'KOTA KEDIRI'),
(285, 35, ' SUMENEP'),
(286, 35, ' PAMEKASAN'),
(287, 35, ' SAMPANG'),
(288, 35, ' BANGKALAN'),
(289, 35, ' GRESIK'),
(290, 35, ' BLITAR'),
(291, 35, 'KOTA MALANG'),
(292, 35, 'KOTA PROBOLINGGO'),
(293, 35, 'KOTA MOJOKERTO'),
(294, 35, 'KOTA MADIUN'),
(295, 35, 'KOTA SURABAYA'),
(296, 35, 'KOTA BATU'),
(297, 35, 'KOTA PASURUAN'),
(298, 35, ' MALANG'),
(299, 35, ' LAMONGAN'),
(300, 35, ' PACITAN'),
(301, 35, ' PONOROGO'),
(302, 35, ' SIDOARJO'),
(303, 35, ' PASURUAN'),
(304, 35, ' PROBOLINGGO'),
(305, 35, 'KOTA BLITAR'),
(306, 35, ' LUMAJANG'),
(307, 35, ' JEMBER'),
(308, 35, ' BANYUWANGI'),
(309, 35, ' BONDOWOSO'),
(310, 35, ' MOJOKERTO'),
(311, 35, ' JOMBANG'),
(312, 35, ' TRENGGALEK'),
(313, 35, ' TULUNGAGUNG'),
(314, 35, ' TUBAN'),
(315, 35, ' KEDIRI'),
(316, 35, ' BOJONEGORO'),
(317, 35, ' NGAWI'),
(318, 35, ' MAGETAN'),
(319, 35, ' NGANJUK'),
(320, 35, ' SITUBONDO'),
(321, 36, 'KOTA  CILEGON'),
(322, 36, ' LEBAK'),
(323, 36, ' TANGGERANG'),
(324, 36, ' SERANG'),
(325, 36, 'KOTA TANGGERANG'),
(326, 36, ' PANDEGLANG'),
(327, 36, 'KOTA TANGGERANG'),
(328, 36, 'KOTA  CILEGON'),
(329, 51, ' KARANG ASEM'),
(330, 51, ' BANGLI'),
(331, 51, ' BULELENG'),
(332, 51, ' KLUNGKUNG'),
(333, 51, 'KOTA DENPASAR'),
(334, 51, ' GIANYAR'),
(335, 51, ' BADUNG'),
(336, 51, ' JEMBRANA'),
(337, 51, ' TABANAN'),
(338, 52, ' SUMBAWA'),
(339, 52, 'KOTA  BIMA'),
(340, 52, 'KOTA MATARAM'),
(341, 52, ' SUMBAWA BARAT'),
(342, 52, '  BIMA'),
(343, 52, ' DOMPU'),
(344, 52, ' LOMBOK TIMUR'),
(345, 52, ' LOMBOK BARAT'),
(346, 52, ' LOMBOK TENGAH'),
(347, 53, '  B E L U'),
(348, 53, ' TIMOR TENGAH  UTARA'),
(349, 53, ' TIMOR TENGAH SELATAN'),
(350, 53, ' KUPANG'),
(351, 53, '  FLORES TIMUR'),
(352, 53, '  ALOR'),
(353, 53, 'KOTA KUPANG'),
(354, 53, '  SUMBA BARAT'),
(355, 53, '  LEMBATA.'),
(356, 53, '  SIKKA'),
(357, 53, '  ROTE NDAO'),
(358, 53, '  SUMBA TIMUR'),
(359, 53, '  MANGGARAI'),
(360, 53, '  MANGGARAI BARAT'),
(361, 53, '  NGADA'),
(362, 53, '  ENDE'),
(363, 61, ' KAPUAS HULU'),
(364, 61, ' SEKADAU'),
(365, 61, ' PONTIANAK'),
(366, 61, ' SANGGAU'),
(367, 61, ' KETAPANG'),
(368, 61, ' SINTANG'),
(369, 61, ' BENGKAYANG'),
(370, 61, ' LANDAK'),
(371, 61, 'KOTA PONTIANAK'),
(372, 61, ' MELAWI'),
(373, 61, 'KOTA SINGKAWANG'),
(374, 62, ' PULANG PISAU'),
(375, 62, '  MURUNG RAYA'),
(376, 62, '  BARITO TIMUR'),
(377, 62, 'KOTA PALANGKARAYA'),
(378, 62, ' LAMANDAU'),
(379, 62, ' GUNUNG MAS'),
(380, 62, ' KOTA WARINGIN BARAT'),
(381, 62, ' KOTA WARINGIN TIMUR'),
(382, 62, ' SUKAMARA'),
(383, 62, ' SERUYAN'),
(384, 62, ' KATINGAN'),
(385, 62, ' BARITO UTARA'),
(386, 62, ' BARITO SELATAN'),
(387, 62, ' KAPUAS'),
(388, 63, 'KOTA BANJARMASIN'),
(389, 63, 'KOTA BANJAR BARU'),
(390, 63, ' TANAH LAUT'),
(391, 63, ' KOTA BARU'),
(392, 63, ' BANJAR'),
(393, 63, ' BALANGAN'),
(394, 63, ' TANAH BUMBU'),
(395, 63, ' TABALONG'),
(396, 63, ' HULU SUNGAI UTARA'),
(397, 63, ' HULU SUNGAI TENGAH'),
(398, 63, ' HULU SUNGAI SELATAN'),
(399, 63, ' BARITO KUALA'),
(400, 63, ' TAPIN'),
(401, 64, ' MALINAU'),
(402, 64, ' KUTAI BARAT'),
(403, 64, ' KUTAI TIMUR'),
(404, 64, ' PENAJAM PASER UTARA'),
(405, 64, ' BULUNGAN'),
(406, 64, 'KOTA BALIKPAPAN'),
(407, 64, 'KOTA SAMARINDA'),
(408, 64, 'KOTA  TARAKAN'),
(409, 64, 'KOTA  BONTANG'),
(410, 64, ' BERAU'),
(411, 64, ' KUTAI KARTANEGARA'),
(412, 64, ' NUNUKAN'),
(413, 64, ' PASIR'),
(414, 71, 'KOTA TOMOHON'),
(415, 71, 'KAB. BOLOANG MONGONDOW'),
(416, 71, 'KAB. MINAHASA'),
(417, 71, 'KAB. KEPULAUAN SANGIHE'),
(418, 71, 'KAB. MINAHASA SELATAN'),
(419, 71, 'KOTA MANADO'),
(420, 71, 'KAB. KEPULAUAN TALAUD'),
(421, 71, 'KOTA BITUNG'),
(422, 72, 'PARIGI MOUTONG'),
(423, 72, 'BUOL'),
(424, 72, 'MOROWALI'),
(425, 72, 'TOJO UNA UNA'),
(426, 72, 'KOTA PALU'),
(427, 72, 'TOLI TOLI'),
(428, 72, 'DONGGALA'),
(429, 72, 'POSO'),
(430, 72, 'BANGGAI KEPULAUAN'),
(431, 72, 'BANGGAI'),
(432, 73, 'TAKALAR'),
(433, 73, 'GOWA'),
(434, 73, 'SINJAI'),
(435, 73, 'JENEPONTO'),
(436, 73, 'BANTAENG'),
(437, 73, 'BULUKUMBA'),
(438, 73, 'SELAYAR'),
(439, 74, 'KOLAKA'),
(440, 74, 'KENDARI'),
(441, 74, 'MUNA'),
(442, 74, 'BUTON'),
(443, 74, 'WAKATOBI'),
(444, 74, 'BOMBANA'),
(445, 74, 'KOTA BAU BAU'),
(446, 74, 'KOTA KENDARI'),
(447, 74, 'KONAWE SELATAN'),
(448, 74, 'KOLAKA TIMUR'),
(449, 75, 'POHUWATO'),
(450, 75, 'BONE BOLANGO'),
(451, 75, 'BOALEMO'),
(452, 75, 'GORONTALO'),
(453, 75, 'KOTA GORONTALO'),
(454, 81, 'MALUKU TENGAH'),
(455, 81, 'SERAM BAGIAN TIMUR'),
(456, 81, 'SERAM BAGIAN BARAT'),
(457, 81, 'KEPULAUAN ARU'),
(458, 81, 'KOTA AMBON'),
(459, 81, 'BURU'),
(460, 81, 'MALUKU TENGGARA  BARAT'),
(461, 81, 'MALUKU TENGGARA'),
(462, 82, 'HALMAHERA TIMUR'),
(463, 82, 'KEPULAUAN SULA'),
(464, 82, 'HALMAHERA SELATAN'),
(465, 82, 'HALMAHERA UTARA'),
(466, 82, 'HALMAHERA TENGAH'),
(467, 82, 'KOTA TERNATE'),
(468, 82, ' MALUKU UTARA'),
(469, 82, 'KOTA TIDORE KEPULAUAN'),
(470, 91, 'PUNCAK JAYA'),
(471, 91, 'WAROPEN'),
(472, 91, 'SARMI'),
(473, 91, 'PANIAI'),
(474, 91, 'BIAK NUMFOR'),
(475, 91, 'MANOKWARI'),
(476, 91, 'SORONG '),
(477, 91, 'FAK FAK '),
(478, 91, 'NABIRE '),
(479, 91, 'YAYAPURA'),
(480, 91, 'YAPEN WAROPEN'),
(481, 91, 'KEEROM'),
(482, 91, 'KOTA JAYAPURA'),
(483, 91, 'TELUK WONDAMA'),
(484, 91, 'MAPPI'),
(485, 91, 'KOTA  SORONG '),
(486, 91, 'MIMIKA'),
(487, 91, 'SUPIORI'),
(488, 91, 'BOVEN DIGUL'),
(489, 91, 'KAIMANA'),
(490, 91, 'TOLIKARA'),
(491, 91, 'YAHUKIMO  '),
(492, 91, 'PEGUNUNGAN BINTANG'),
(493, 91, 'RAJA AMPAT'),
(494, 91, 'SORONG SELATAN'),
(495, 91, 'ASMAT'),
(496, 92, 'SORONG SELATAN'),
(497, 92, 'KOTA  SORONG '),
(498, 92, 'TELUK WONDAMA'),
(499, 92, 'TELUK BINTUNI'),
(500, 92, 'KAIMANA'),
(501, 92, 'FAK FAK '),
(502, 92, 'SORONG '),
(503, 92, 'MANOKWARI'),
(504, 92, 'RAJA AMPAT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`member_id`, `username`, `password`) VALUES
(1, 'ventus', 'efe6398127928f1b2e9ef3207fb82663'),
(2, 'kedua', 'efe6398127928f1b2e9ef3207fb82663');

-- --------------------------------------------------------

--
-- Struktur dari tabel `propinsi`
--

CREATE TABLE `propinsi` (
  `id_propinsi` int(11) NOT NULL,
  `nama_propinsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `propinsi`
--

INSERT INTO `propinsi` (`id_propinsi`, `nama_propinsi`) VALUES
(11, 'Nanggroe Aceh Darussalaam'),
(12, 'Sumatra Utara'),
(13, 'Sumatra Barat'),
(14, 'Riau'),
(15, 'Jambi'),
(16, 'Sumatra Selatan'),
(17, 'Bengkulu'),
(18, 'Lampung'),
(19, 'Kep. Bangka Belitung'),
(21, 'Kep. Riau'),
(31, 'DKI Jakarta'),
(32, 'Jawa Barat'),
(33, 'Jawa Tengah'),
(34, 'DI Yogyakarta'),
(35, 'Jawa Timur'),
(36, 'Banten'),
(51, 'Bali'),
(52, 'Nusa Tenggara Barat'),
(53, 'Nusa Tenggara Timur'),
(61, 'Kalimantan Barat'),
(62, 'Kalimantan Tengah'),
(63, 'Kalimantan Selatan'),
(64, 'Kalimantan Timur'),
(71, 'Sulawesi Utara'),
(72, 'Sulawesi Tengah'),
(73, 'Sulawesi Selatan'),
(74, 'Sulawesi Tenggara'),
(75, 'Gorontalo'),
(81, 'Maluku'),
(82, 'Maluku Utara'),
(91, 'Papua'),
(92, 'Irian Jaya Barat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` text NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`status_id`, `tanggal`, `status`, `member_id`) VALUES
(1, '2014-09-03', 'learning ajax bro', 2),
(2, '2014-09-03', 'nice nice nice', 1),
(3, '2014-09-03', 'learning ajax bro', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indeks untuk tabel `propinsi`
--
ALTER TABLE `propinsi`
  ADD PRIMARY KEY (`id_propinsi`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `propinsi`
--
ALTER TABLE `propinsi`
  MODIFY `id_propinsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
