-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Des 2019 pada 14.03
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_ajax`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bca_cv`
--

CREATE TABLE `bca_cv` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `keterangan` text NOT NULL,
  `cabang` varchar(10) NOT NULL,
  `jumlah` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL,
  `saldo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bpjs`
--

CREATE TABLE `bpjs` (
  `idbpjs` int(11) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `no_akun` varchar(13) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bpjs`
--

INSERT INTO `bpjs` (`idbpjs`, `nik`, `no_akun`, `nama`) VALUES
(1, '121212120', '12129', '12121n'),
(2, '1212', '1212', '1212'),
(4, '121212120', '12129', '12121n'),
(5, '1212', '1212', '1212'),
(7, '1212', '1212', '1212'),
(8, '121212120', '12129', '12121n'),
(9, '1212', '1212', '1212'),
(10, '121212120', '12129', '12121n'),
(11, '1212', '1212', '1212'),
(12, '121212120', '12129', '12121n'),
(13, '1212', '1212', '1212'),
(14, '121212120', '12129', '12121n'),
(15, '1212', '1212', '1212'),
(16, '121212120', '12129', '12121n'),
(17, '1212', '1212', '1212'),
(18, '090', '090', '99');

-- --------------------------------------------------------

--
-- Struktur dari tabel `draf_bpjs_input`
--

CREATE TABLE `draf_bpjs_input` (
  `id` int(11) NOT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `no_bpjs` varchar(13) DEFAULT NULL,
  `no_va` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `hub_keluarga` varchar(100) DEFAULT NULL,
  `terdaftar` varchar(100) DEFAULT NULL,
  `aktif` enum('Y','N') DEFAULT 'Y',
  `parent` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `draf_bpjs_input`
--

INSERT INTO `draf_bpjs_input` (`id`, `nik`, `no_bpjs`, `no_va`, `nama`, `hub_keluarga`, `terdaftar`, `aktif`, `parent`) VALUES
(1, '3603285608680011', '0001309869426', NULL, 'ATIK SUPARTI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(2, '3603284702750002', '0001337000668', NULL, 'ATIN SUPRIATIN', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(3, '3174075401660003', '0001259469404', NULL, 'DASI ASIH', 'PEKERJA', 'PEKERJA MANDIRI KOTA JAKARTA SELATAN', 'Y', NULL),
(4, '3671116605700004', '0001258275789', NULL, 'DEDEH SUPRIYATIN', 'PEKERJA', 'PEKERJA MANDIRI KOTA TANGERANG', 'Y', NULL),
(5, '3603280403600006', '0001737996603', NULL, 'WAHYU SASONGKO', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280403600006'),
(6, '3603286712650007', '0001302760394', NULL, 'ENY RUSDIYATI', 'ISTRI', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280403600006'),
(7, '3603281707000003', '0001737996625', NULL, 'GILANG DAMARJATI S.', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'N', '3603280403600006'),
(8, '3603284103750001', '0001258755412', NULL, 'ERNI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(9, '3603280101700011', '0001307899978', NULL, 'GUNAWAN', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603285504660001'),
(10, '3603285504660001', '0001307901633', NULL, 'HAPIPAH', 'ISTRI	', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603285504660001'),
(11, '3603284605580003', '0001313004756', NULL, 'HASTUTI SUHARTI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(12, '3603284506640015', '0001454769404', NULL, 'LEMI MULYATI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(14, '3603281001620003', '0001309342072', NULL, 'MOCHAMMAD MUCHSIN', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(15, '3671015103680006', '0001258572767', NULL, 'MUNIROH', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(16, '3603284705800002', '0001258072334', NULL, 'MURNINGSIH', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(17, '3603286107590006', '0001258447702', NULL, 'MURTINI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(18, '3211105002730004	', '0001257913855', NULL, 'NANIH', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(19, '3603285106670003', '0001306272688', NULL, 'NGATIYAH', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(20, '3603286003770009', '0001312691782', NULL, 'NUNUNG NURHAYATI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(21, '3603284108760005', '0001309334859', NULL, 'NURHAYATI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(22, '3603285411700003', '0001317845946', NULL, 'NURKAYATI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(23, '3603285507680003', '0001309266268', NULL, 'NURLAELA', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(24, '3603285402690011', '0001312706474', NULL, 'PARSITI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(25, '3173025910740004', '0001312772242', NULL, 'PITRIYANTI', 'PEKERJA', 'PEKERJA MANDIRI KOTA JAKARTA BARAT', 'Y', NULL),
(26, '3671061171188000', '0001337066627', NULL, 'RIANTO WALUYO	', 'PEKERJA', 'PEKERJA MANDIRI KOTA TANGERANG', 'Y', NULL),
(27, '3603286408730003', '0001311138178', NULL, 'RINI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(28, '3603286906700005', '0001309346379', NULL, 'RINI SETIAWATI	', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(29, '3171014401710002', '0001259573455', NULL, 'RISNAWATI', 'PEKERJA', 'PEKERJA MANDIRI KOTA JAKARTA PUSAT', 'Y', NULL),
(30, '3603285909720003', '0001309330067', NULL, 'ROYATI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(31, '3603285806740008', '0001258572385', NULL, 'SAMIRAH', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(32, '3311095010680010', '0001725105723', NULL, 'SARNI', 'PEKERJA', 'PEKERJA MANDIRI KAB. SUKOHARJO', 'Y', NULL),
(33, '3603280103590001', '0002456182359', NULL, 'ARIMAN', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280103590001'),
(34, '3603285101700006', '0001303437396', NULL, 'SITI MAEMUNAH', 'ISTRI', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280103590001'),
(35, '3603281311050005', '0002456183452', NULL, 'MUHAMMAD IRGI TSALASA AL GIFFARY', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280103590001'),
(36, '3273126103730001', '0001303441233', NULL, 'SITI MARIAM', 'PEKERJA', 'PEKERJA MANDIRI KOTA BANDUNG', 'N', NULL),
(37, '3603195012750006', '0001257155919', NULL, 'SITI ROUDOTUL JANAH', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603195012750006'),
(38, '3603192503010005', '0001257209853', NULL, 'BAGUS FARHAN FADILAH', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(39, '3603285010740004', '0001311861701', NULL, 'SUHARYATUN', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603285010740004'),
(40, '3603282108700001', '0002749456269', NULL, 'SUMINO', 'SUAMI', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603285010740004'),
(41, '3603284808000002', '0002749456462', NULL, 'SUCI WIDYAWATI', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603285010740004'),
(42, '3603281512040001', '0002749456596', NULL, 'HARYA MALIK WIJAYA', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603285010740004'),
(43, '3603286003830008', '0001257913743', NULL, 'SUHERNI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(44, '3213175006620005', '0001286814071', NULL, 'SUKAESIH', 'PEKERJA', 'PEKERJA MANDIRI KAB. SUBANG', 'Y', NULL),
(45, '3503035902740001', '0001258840315', NULL, 'SULASTRIANA', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(46, '3603285012740003', '0001310952677', NULL, 'S U N A R M I', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603285012740003'),
(47, '3603280411960004', '0001884256975', NULL, 'BAGUS EKO WIBOWO	', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603285012740003'),
(48, '3603285211010003', '0001884257346', NULL, 'ANI DWI RAHAYU', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603285012740003'),
(49, '3603284101730006', '0001303444708', NULL, 'SUTARTI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(50, '3603286011610003', '0001303436531', NULL, 'SUTIYAH HANDAYANI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(51, '3173014904680012', '0001257670214', NULL, 'TINA WATI', 'PEKERJA', 'PEKERJA MANDIRI KOTA JAKARTA BARAT', 'Y', NULL),
(52, '3603280406820007', '0001305200057', NULL, 'WARIYANTO', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280406820007'),
(53, '1805286312800001', '0002695971532', NULL, 'NUR IDA PUTRI', 'ISTRI', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280406820007'),
(54, '1807135105100001', '0002695971543', NULL, 'RABELA ANATASYA PUTRI', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280406820007'),
(55, '3215275001770003', '0001257517179', NULL, 'WIDIYANTI', 'PEKERJA', 'PEKERJA MANDIRI KAB. KARAWANG', 'Y', NULL),
(56, '3603286004760008', '0001302752654', NULL, 'WIWIN DAMAYANTI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(57, '3671074109760003', '0001324591097', NULL, 'yeni setiawati', 'PEKERJA', 'PEKERJA MANDIRI KOTA TANGERANG', 'Y', NULL),
(58, '3603286308710002', '0001302762161', NULL, 'YETI KUSMIATI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(59, '3174054710660003', '0001257670552', NULL, 'YOYOH SUHARIAH', 'PEKERJA', 'PEKERJA MANDIRI KOTA JAKARTA SELATAN', 'Y', NULL),
(60, '3603286102690006', '0002517691331', NULL, 'SITI FATIMAH', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(61, '3603280606810008', '0001459039162', NULL, 'LILI YUNIARSO', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(62, '3603280706650007', '0001382649377', NULL, 'DARNOTO', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280706650007'),
(63, '3603285608710003', '0001382649838', NULL, 'andriani dhamayanthi', 'ISTRI', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280706650007'),
(64, '3603284703940002', '0001382650209', NULL, 'nurlaillah sari amallah', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280706650007'),
(65, '3603284305990005', '0001382650863', NULL, 'rizqia muharramah', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280706650007'),
(66, '3603281905690004', '0001725105543', NULL, 'AMPADI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603281905690004'),
(67, '3603282402940002', '0001725105576', NULL, 'ROFI ARISJA	', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603281905690004'),
(68, '3603221908810002', '0001721242899', NULL, 'HERNAS HADIANTO', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603221908810002'),
(69, '3603285007820006', '0001721242945', NULL, 'NURMAYA SARI', 'ISTRI', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603221908810002'),
(70, '3603284203040003', '0001721242989', NULL, 'DEVIANA EKA FEBRIANI', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603221908810002'),
(71, '3603282403090002', '0001721359912', NULL, 'MAULANA RIZQI HADIANTO', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603221908810002'),
(73, '3603280404600005', '0001285321061', NULL, 'DANI RAMDANI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280404600005'),
(74, '3603286204670002', '0001285321252', NULL, 'MUHARRAMAH	', 'ISTRI', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280404600005'),
(75, '3603282003920005', '0001285321465', NULL, 'ANDRI RAHMAT WARDANI', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280404600005'),
(76, '3603282701940002', '0001285321566', NULL, 'ANGGRIAWAN SAPUTRA WARDANI', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280404600005'),
(77, '3174074912980001', '0001725369557', NULL, 'TRIA FAJAR ARUM', 'PEKERJA', 'PP Tandra & Associates', 'Y', NULL),
(78, '3174070305670005', '0001725369546', NULL, 'SUGIYONO', 'PEKERJA', 'PEMPROV DKI JAKARTA', 'Y', '3174070305670005'),
(79, '3174076210030002', '0001725369568', NULL, 'DEWI RAHMAWATI', 'ANAK', 'PEMPROV DKI JAKARTA', 'Y', '3174070305670005'),
(80, '3671011505900001', '0001725619307', NULL, 'ARYO BANGGA PRIBADI', 'PEKERJA', 'PEKERJA MANDIRI KOTA TANGERANG', 'Y', '3671011505900001'),
(81, '3671014107860028', '0001725619318', NULL, 'IKA ARIYANTI', 'TAMBAHAN', 'PEKERJA MANDIRI KOTA TANGERANG', 'Y', '3671011505900001'),
(82, '3209260110790015', '0002422986265', NULL, 'BURHANUDIN	', 'PEKERJA', 'PEKERJA MANDIRI KAB. CIREBON', 'Y', '3209260110790015'),
(83, '3209266904870001', '0002422986524', NULL, 'YULIANA', 'ISTRI', 'PEKERJA MANDIRI KAB. CIREBON', 'Y', '3209260110790015'),
(84, '3209265001110001', '0002422986805', NULL, 'DHEA SAFIRA KHAYYA', 'ANAK', 'PEKERJA MANDIRI KAB. CIREBON', 'Y', '3209260110790015'),
(85, '3209263103180001', '0002492620762', NULL, 'MUHAMMAD DAYYAN AL SYAZANI', 'ANAK', 'PEKERJA MANDIRI KAB. CIREBON', 'Y', '3209260110790015'),
(87, '3603285012680002', '0001312215557', NULL, 'WARSINI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603285012680002'),
(88, '3603280809710005', '0001455365338', NULL, 'SUPARMIN', 'SUAMI', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603285012680002'),
(89, '3603280505630004', '0001309872486', NULL, 'ERWIN', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280505630004'),
(90, '3603285007730011', '0001309874512', NULL, 'MARHAMAH', 'ISTRI', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280505630004'),
(91, '3603284303920015', '0001819898638', NULL, 'RINDI SAFITRI YANTI', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603280505630004'),
(92, '3603286705000003', '0001823482923', NULL, 'IRNA AMELIA SAFUTRI', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'N', '3603280505630004'),
(94, '3603175409730005', '0002065131178', NULL, 'SITI NURHAYATI RAHAYU', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG	', 'Y', '3603175409730005'),
(95, '3603174510740010', '0002065132091', NULL, 'MUHAMAD SOLIHIN', 'ANAK', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', '3603175409730005'),
(96, '3603284606680010', '0001259092247', NULL, 'ERNAWATI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(97, '3603175407720005', '0001258572688', NULL, 'MARSUNAH', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(98, '3603286408660006', '0001259093395', NULL, 'RUJIAH', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL),
(99, '3603280402820009', '0002379123437', NULL, 'RONI SARJANI', 'PEKERJA', 'PEKERJA MANDIRI KAB. TANGERANG', 'Y', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL COMMENT 'primary key',
  `employee_name` varchar(255) NOT NULL COMMENT 'employee name',
  `employee_salary` double NOT NULL COMMENT 'employee salary',
  `employee_age` int(11) NOT NULL COMMENT 'employee age'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='datatable demo table';

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`id`, `employee_name`, `employee_salary`, `employee_age`) VALUES
(1, 'Tiger Nixon', 320800, 61),
(2, 'Garrett Winters', 170750, 63),
(3, 'Ashton Cox', 86000, 66),
(4, 'Cedric Kelly', 433060, 22),
(5, 'Airi Satou', 162700, 33),
(6, 'Brielle Williamson', 372000, 61),
(7, 'Herrod Chandler', 137500, 59),
(8, 'Rhona Davidson', 327900, 55),
(9, 'Colleen Hurst', 205500, 39),
(10, 'Sonya Frost', 103600, 23),
(11, 'Jena Gaines', 90560, 30),
(12, 'Quinn Flynn', 342000, 22),
(13, 'Charde Marshall', 470600, 36),
(14, 'Haley Kennedy', 313500, 43),
(15, 'Tatyana Fitzpatrick', 385750, 19),
(16, 'Michael Silva', 198500, 66),
(17, 'Paul Byrd', 725000, 64),
(18, 'Gloria Little', 237500, 59),
(19, 'Bradley Greer', 132000, 41),
(20, 'Dai Rios', 217500, 35),
(21, 'Jenette Caldwell', 345000, 30),
(22, 'Yuri Berry', 675000, 40),
(23, 'Caesar Vance', 106450, 21),
(24, 'Doris Wilder', 85600, 23),
(25, 'Angelica Ramos', 1200000, 47),
(26, 'Gavin Joyce', 92575, 42),
(27, 'Jennifer Chang', 357650, 28),
(28, 'Brenden Wagner', 206850, 28),
(29, 'Fiona Green', 850000, 48),
(30, 'Shou Itou', 163000, 20),
(31, 'Michelle House', 95400, 37),
(32, 'Suki Burks', 114500, 53),
(33, 'Prescott Bartlett', 145000, 27),
(34, 'Gavin Cortez', 235500, 22),
(35, 'Martena Mccray', 324050, 46),
(36, 'Unity Butler', 85675, 47),
(37, 'Howard Hatfield', 164500, 51),
(38, 'Hope Fuentes', 109850, 41),
(39, 'Vivian Harrell', 452500, 62),
(40, 'Timothy Mooney', 136200, 37),
(41, 'Jackson Bradshaw', 645750, 65),
(42, 'Olivia Liang', 234500, 64),
(43, 'Bruno Nash', 163500, 38),
(44, 'Sakura Yamamoto', 139575, 37),
(45, 'Thor Walton', 98540, 61),
(46, 'Finn Camacho', 87500, 47),
(47, 'Serge Baldwin', 138575, 64),
(48, 'Zenaida Frank', 125250, 63),
(49, 'Zorita Serrano', 115000, 56),
(50, 'Jennifer Acosta', 75650, 43),
(51, 'Cara Stevens', 145600, 46),
(52, 'Hermione Butler', 356250, 47),
(53, 'Lael Greer', 103500, 21),
(54, 'Jonas Alexander', 86500, 30),
(55, 'Shad Decker', 183000, 51),
(56, 'Michael Bruce', 183000, 29),
(57, 'Donna Snider', 112000, 27);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs`
--

CREATE TABLE `mhs` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama_mhs` varchar(100) DEFAULT NULL,
  `no_mhs` varchar(25) DEFAULT NULL,
  `matkul_mhs` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mhs`
--

INSERT INTO `mhs` (`id`, `nama_mhs`, `no_mhs`, `matkul_mhs`) VALUES
(1, 'asdasd', 'asdasd', 'asdasd'),
(2, 'ooo0989', '098098', '908098'),
(3, '1212', '098098', '908098'),
(4, '1212', '098098', '908098'),
(5, '1212', '098098', '908098'),
(6, '1212', '098098a', '908098'),
(7, '12122', '098098a', '908098'),
(8, '12122s', '098098a', '908098'),
(9, '12122s', '098098a', '908098'),
(10, '121224', '098098a', '908098'),
(11, '1212243', '098098a', '908098');

-- --------------------------------------------------------

--
-- Struktur dari tabel `persons`
--

CREATE TABLE `persons` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `persons`
--

INSERT INTO `persons` (`id`, `firstName`, `lastName`, `gender`, `address`, `dob`) VALUES
(2, 'halaman terakhir ', 'test ', 'female', 'dasana indah 33', '2019-08-04'),
(3, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(4, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(5, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(6, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(7, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(8, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(9, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(10, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(11, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(12, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(13, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(14, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(15, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(16, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(17, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(19, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(20, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(21, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(23, 'ardiandp', 'test ', 'female', 'dasana indah ', '2019-08-04'),
(24, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(25, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(26, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(27, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(28, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(29, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(30, 'ardiandp', 'test 1', 'female', 'dasana indah ', '2019-08-04'),
(31, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(32, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(33, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(34, '34', '343', 'female', '434', '2019-08-26'),
(35, '34', '343', 'female', '434', '2019-08-26'),
(36, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(37, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(38, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(39, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(40, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(41, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(42, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(43, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(44, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(45, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(46, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(47, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(48, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(49, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(50, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(51, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(52, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(53, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(54, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(55, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(56, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(57, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(58, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(59, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(60, 'ardiandp', 'test ', 'female', 'dasana indah ', '2019-08-04'),
(61, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(62, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(63, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(64, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(65, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(66, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(67, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(68, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(69, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(70, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(71, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(72, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(73, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(74, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(75, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(76, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(77, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(78, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(79, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(80, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(81, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(82, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(83, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(84, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(85, 'ardiandp', 'test ', 'female', 'dasana indah ', '2019-08-04'),
(86, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(87, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(88, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(89, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(90, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(91, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(92, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(93, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(94, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(95, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(96, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(97, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(98, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(99, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(100, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(101, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(102, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(103, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(104, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(105, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(106, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(107, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(108, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(109, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(110, 'ardiandp', 'test ', 'female', 'dasana indah ', '2019-08-04'),
(111, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(112, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(113, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(114, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(115, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(116, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(117, 'ardiandp', 'test 1', 'female', 'dasana indah ', '2019-08-04'),
(118, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(119, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(120, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(121, '34', '343', 'female', '434', '2019-08-26'),
(122, '34', '343', 'female', '434', '2019-08-26'),
(123, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(124, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(125, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(126, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(127, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(128, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(129, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(130, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(131, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(132, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(133, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(134, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(135, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(136, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(137, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(138, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(139, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(140, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(141, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(142, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(143, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(144, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(145, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(146, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(147, 'ardiandp', 'test ', 'female', 'dasana indah ', '2019-08-04'),
(148, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(149, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(150, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(151, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(152, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(153, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(154, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(155, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(156, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(157, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(158, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(159, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(160, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(161, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(162, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(163, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(164, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(165, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(166, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(167, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(168, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(169, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(170, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(171, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(172, 'ardiandp', 'test ', 'female', 'dasana indah ', '2019-08-04'),
(173, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(174, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(175, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(176, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(177, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(178, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(179, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(180, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(181, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(182, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(183, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(184, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(185, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(186, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(187, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(188, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(189, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(190, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(191, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(192, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(193, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(194, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(195, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(196, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(197, 'ardiandp', 'test ', 'female', 'dasana indah ', '2019-08-04'),
(198, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(199, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(200, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(201, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(202, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(203, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(204, 'ardiandp', 'test 1', 'female', 'dasana indah ', '2019-08-04'),
(205, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(206, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(207, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(208, '34', '343', 'female', '434', '2019-08-26'),
(209, '34', '343', 'female', '434', '2019-08-26'),
(210, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(211, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(212, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(213, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(214, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(215, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(216, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(217, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(218, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(219, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(220, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(221, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(222, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(223, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(224, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(225, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(226, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(227, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(228, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(229, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(230, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(231, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(232, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(233, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(234, 'ardiandp', 'test ', 'female', 'dasana indah ', '2019-08-04'),
(235, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(236, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(237, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(238, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(239, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(240, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(241, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(242, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(243, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(244, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(245, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(246, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(247, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(248, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(249, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(250, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(251, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(252, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(253, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(254, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(255, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(256, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(257, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(258, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(259, 'ardiandp', 'test ', 'female', 'dasana indah ', '2019-08-04'),
(260, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(261, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(262, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(263, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(264, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(265, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(266, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(267, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(268, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(269, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(270, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(271, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(272, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(273, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(274, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(275, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(276, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(277, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(278, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(279, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(280, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(281, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(282, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(283, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(284, 'ardiandp', 'test ', 'female', 'dasana indah ', '2019-08-04'),
(285, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(286, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(287, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(288, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(289, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(290, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(291, 'ardiandp', 'test 1', 'female', 'dasana indah ', '2019-08-04'),
(292, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(293, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(294, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(295, '34', '343', 'female', '434', '2019-08-26'),
(296, '34', '343', 'female', '434', '2019-08-26'),
(297, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(299, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(300, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(301, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(302, 'ardiandp', 'test 1', 'male', 'dasana indah ', '2019-08-04'),
(303, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(304, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(305, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(307, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(308, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(309, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(310, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(311, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(312, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(313, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(314, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(315, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(316, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(317, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(318, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(319, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(320, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(321, 'ardiandp', 'test ', 'female', 'dasana indah ', '2019-08-04'),
(322, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(323, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(324, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(325, 'halaman terakhir ', 'test ', 'male', 'dasana indah 33', '2019-08-04'),
(326, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(327, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(328, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(329, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(330, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(331, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(332, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(333, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(334, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(335, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(336, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(337, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(338, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(339, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(340, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(342, 'ardiandp', 'test ', 'male', 'dasana indah a', '2019-08-04'),
(343, 'ardiandp', 'test ', 'male', 'dasana indah 9', '2019-08-04'),
(344, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(345, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(346, 'ardiandp', 'test ', 'female', 'dasana indah ', '2019-08-04'),
(347, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(348, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
(349, 'ardiandp', 'test ', 'female', 'dasana indah ', '2019-08-04');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bca_cv`
--
ALTER TABLE `bca_cv`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bpjs`
--
ALTER TABLE `bpjs`
  ADD PRIMARY KEY (`idbpjs`);

--
-- Indeks untuk tabel `draf_bpjs_input`
--
ALTER TABLE `draf_bpjs_input`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bca_cv`
--
ALTER TABLE `bca_cv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bpjs`
--
ALTER TABLE `bpjs`
  MODIFY `idbpjs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `draf_bpjs_input`
--
ALTER TABLE `draf_bpjs_input`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key', AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `mhs`
--
ALTER TABLE `mhs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
