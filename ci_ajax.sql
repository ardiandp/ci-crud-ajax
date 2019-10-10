-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Okt 2019 pada 10.56
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
(302, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04'),
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
(349, 'ardiandp', 'test ', 'male', 'dasana indah ', '2019-08-04');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bca_cv`
--
ALTER TABLE `bca_cv`
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
-- AUTO_INCREMENT untuk tabel `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;