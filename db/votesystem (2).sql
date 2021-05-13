-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2020 at 03:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$4kLs1adUZ83vohrEROJpxO7brNB9MwiXuNo7Z3GKiFIc0Nm4Qz8Om', 'Admin', 'Anyar', 'Capture.PNG', '2019-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(37, 14, 'I Made', 'Surya Wiguna', 'boby.jpg', 'VISI :\r\nMewujudkan serta Mengembangkan kreatifitas ST. Yowana Yadnya Patni sebagai Sekaa Teruna yang Bermartabat, Inovatif, serta aktif dalam adat, seni dan budaya didasari dengan selogan AWYAWAHARIKA yang berarti : “melakukan usaha - usaha yang selalu bersumber kedamaian dan ketulusan”\r\n\r\nMISI : \r\n1. Membentuk dan Mengembangkan Karakteristik pada Sekaa Teruna dengan tetap berdasarkan konsep “AWYAWAHARIKA”\r\n2. Membangun hubungan serta menumbuhkan rasa memiliki berdasarkan Asas Kekeluargaan antar anggota Sekaa Teruna.\r\n3. Aktif meningkatkan pemberdayaan Sekaa Teruna dalam kegiatan Adat, Seni, Budaya, Sosial dan Olahraga.\r\n4. Mewujudkan Komunikasi & Kordinasi yang selaras antar Prajuru Sekaa Teruna, Anggota Sekaa Teruna dan Prajuru Banjar.\r\n5. Menjalin hubungan atau paiketan dengan Sekaa Teruna yang ada di Desa Adat Tanjung Benoa maupun di luar Desa Adat.\r\n6. Meningkatkan peran Sekaa Teruna dalam kegiatan “YADNYA” yang diwujudkan dengan Ayah-Ayahan Adat dan Agama.\r\n7. Mengembangkan tatanan, peran, serta fungsi organisasi berdasarkan konsep “Tri Hita Karana” \r\n8. Membangun dan Mengembangkan Sumber Daya Manusia ST. Yowana Yadnya Patni menuju Sekaa Teruna yang bermartabat dengan di dasari KERJA NYATA.\r\n9. Mengutamakan ide dan gagasan bersama sebagai prinsip utama guna mewujudkan Sekaa Teruna yang Berdaulat, Adil dan Makmur.'),
(38, 14, 'I Nyoman ', 'Raditya Suparsabawa. SE., MM', 'dikik.jpg', 'Visi “ Membentuk Organisasi Kepemudaan “ST. Yowana Yadnya Patni” yang Inovatif, Kreatif, dan harmonis dalam meningkatan peran generasi muda sebagai wadah yang positif berlandaskan tri hita karana”  Misi  1.	Menjadikan ST. Yowana Yadnya Patni sebagai organisasi yang inovatif dalam bidang seni, budaya dan sosial. 2.	Mewadahkan kegiatan-kegiatan yang bersifat positif dalam menunjang pengembangan ruang kreatifitas ST. Yowana Yadnya Patni melalui seni, budaya dan sosial. 3.	Menciptakan budaya organisasi yang memiliki toleransi tinggi dan keharmonisan dalam berorganisasi. 4.	Menjaga dan menjalin relasi yang kuat antara hubungan internal (antara pemuda) dan eksternal (antar stt lain). ');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(14, 'Ketua ST Yowana Yadnya Patni', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(71, 'ADI-SV-61324', '$2y$10$qebNFq4AeLYNtuDJ1IKOXuA93X4JYd2eD2dw79zxbZomkkPAsTIy.', 'ADI', 'LASMANA', ''),
(72, 'TRISNA-SV-41762', '$2y$10$y9SujVv/R38IISWcl2SBXOC0PZzqi/ZocpCtOSEK//0jcLxrRvVsO', 'TRISNA', 'HANDAYANI', ''),
(73, 'SUASTIKA-SV-192', '$2y$10$03YrbaxdnbaxRukCWUmYEu65n3UBtY5Id/jWOhyPXOG0NF3yFmoZC', 'SUASTIKA', 'MADE', ''),
(74, 'METRIYA-SV-6712', '$2y$10$wp3JuELC./IJdQU8QM4y5uRfTSlkqG9OVbUvXqntbkbZypC4KDRiG', 'METRIYA', 'ANOM', ''),
(75, 'ARCA-SV-26497', '$2y$10$Ihnhp2bPhczzpsnge8i.Iui6SP6v3PxbJVqXTgRAlOXfSzj8sMDgu', 'ARCA', 'BIMA', ''),
(76, 'PURNA-SV-42895', '$2y$10$SDOp//tRWT1r1wAh4yvKReNwBt4WwTRckxtybLPxBmC7foq4O0wBO', 'PURNA', 'YOGA', ''),
(77, 'SEVIA-SV-39487', '$2y$10$hBKZ9CRAvOmZi2Q7sjhNBuxtc/M1PEEYIi.SMadrFV9lkgisJHuUm', 'SEVIA', 'VERONICA', ''),
(78, 'SUJANA-SV-52419', '$2y$10$FEzvBAPIOwQ.ME0C7YUwz.7loO8o/2vTJvryWA03PhEztwtZQn7Ai', 'SUJANA', 'KOMANG', ''),
(79, 'INDRA-SV-23876', '$2y$10$XVBvIEOCnh3pM1bEfF6LLOuWPaveMWwxXFP9kZdam3AWymsfpGySe', 'INDRA', 'SUKAEDANI', ''),
(80, 'SRI-SV-83519', '$2y$10$aFJJES60BOGonc0yBZ0l9ubSu/JN06ugTRDwyxZJgHMBcFtRur0g6', 'SRI', 'LESTARI', ''),
(81, 'YUNI-SV-79536', '$2y$10$iK9T.wYIHylHKeQtgx4hguRCSbyiHzIbDMQKVNe.ZyrPksL0lxYeW', 'YUNI', 'ANDARI', ''),
(82, 'DANI-SV-54238', '$2y$10$exB3mqVlSrgwC/TWEzpO7eyj9oLAtphSQjEpFxcHkCngxhGUslKxW', 'DANI', 'PERMATA', ''),
(83, 'SISKA-SV-85271', '$2y$10$m/1SRp6agEgYGV8UKXXn1.WtUyPvGOA3o6VRu/rEveNhhaA0AD04C', 'SISKA', 'RIANI', ''),
(84, 'DEDEK-SV-87194', '$2y$10$YTTYt0aemM8b0bXD9EBEnennCsGRHyRFMKOFeOBa2dlkwleMYtHQm', 'DEDEK', 'SURYA', ''),
(85, 'AYU-SV-67235', '$2y$10$KixSj96NoVEXO42BR/78hedM2J3AALSWo438NeGHNhgnW6pOkHHli', 'AYU', 'MEGANTARI', ''),
(86, 'OCHA-SV-23459', '$2y$10$epvGKYGTb8amSVIOjBQtHuKRUpu9QYSy6F.RVO6w4Ox0ivMv4RnSm', 'OCHA', 'RAMAKARISMA ', ''),
(87, 'PURNANTAKA-SV-1', '$2y$10$DZF4yy7HiK3pDBI2ZgE8yulLduMZkbTHguGAjraR0h0kEiHWSFrZi', 'PURNANTAKA', 'KETUT', ''),
(88, 'WEDA-SV-63824', '$2y$10$Bf7hkNw03vvu/PnMtq06WuXF9q/GUUbNBoG6hdAb5h23F/9WYIEra', 'WEDA', 'DIATMIKA', ''),
(89, 'LEDIA-SV-52136', '$2y$10$4O6.O..b7Xyw/C016jOIWuO8/GgzqbksfSHs5MTtW1x/ATZ9M3Og.', 'LEDIA', 'ADANTHA', ''),
(90, 'KERTA-SV-94723', '$2y$10$doqEGmH6HGSUnDrD4tsE9u46U47VH5UEe5GVRgd/9DV5KZzfDouLC', 'KERTA', 'PRAMANA', ''),
(91, 'ADE-SV-54732', '$2y$10$1ZCjTUZ37w4s41hCZ55Kn.WKNPfEm44.eIvLJJsCAQDHFwNcXI..y', 'ADE', 'PERMANA', ''),
(92, 'ALVIN-SV-34615', '$2y$10$pIGV0XrPELb9jtwxZu5aBOiY/0OdbvqPkmCFi3ed92.ibc3dZUH5a', 'ALVIN', 'PRADIPTHA', ''),
(93, 'DERWIANI-SV-796', '$2y$10$P0VMiAtmtOfREfp76hVKHe9fV8Ckd4IjQaeTKp74QHujvwznp32jq', 'DERWIANI', ' ', ''),
(94, 'BAYU-SV-17495', '$2y$10$qg2BuL3eOQvmqd2VWKI5yueMVefPd5UWbpzYaYh9S7n/xgEYSKExS', 'BAYU', 'PERMANA', ''),
(95, 'ILVAN-SV-82764', '$2y$10$7WfNhuIpNACkWeFFz1VgReny5wM5p/NBkk2KkVF41m8DNw7K4u9Fa', 'ILVAN', 'PERMANA', ''),
(96, 'ROSSASRI-SV-925', '$2y$10$0.fD3CEZ.k05WYBMOSY.f.0.ehlrBoJ5z/LSRWSNZXd9NhxWE9RiK', 'ROSSASRI', 'ASTINI', ''),
(97, 'PASEK-SV-91284', '$2y$10$th4GxGF2sfA.Zesume9FS.d2FyTu/hNnooXQTdTBpvR88KtzQcBBq', 'PASEK', 'SUYADNYA', ''),
(98, 'ASTI-SV-69458', '$2y$10$sYWKwavw.Nt07ZSf7ZkK8Onnk3iyY6Nc3kZ2472wl5Nvbq6ZNQe/K', 'ASTI', 'DEWI', ''),
(99, 'AGUS-SV-24158', '$2y$10$g2G1Jb5ij3Z2VF8184ZnZO34s/TcCTmPuS.nreaJUwJRmRtOZP8oa', 'AGUS', 'SURYA', ''),
(100, 'DINA-SV-56938', '$2y$10$lLVf07VyOzPTXy.SaSetsOn0VlVveB.RE0r2yvsk6ItUJiLQqVJF.', 'DINA', 'OKTAVIANI', ''),
(101, 'NOVITA-SV-73482', '$2y$10$bXCYpRjtRdWtaSWEr/E4/Oos21fddRRoU/hw4hLQTfqXvBKPFRQhK', 'NOVITA', 'SARI', ''),
(103, 'DANMAS-SV-72654', '$2y$10$zSgEWjbnEKp.bmTCzfYZh.NqouCYI/5BWSQ.KeMnM/F5LkNV2chqS', 'DANMAS', 'WIDIA', ''),
(104, 'ADITYA-SV-13764', '$2y$10$OvSbKSswiBTzfZF1k0/xhOzJLqKg9ziyfsTxEoUVcyMu3wOkuhVnu', 'ADITYA', 'WIGUNA', ''),
(105, 'EGA-SV-59834', '$2y$10$.my.NJexnkzu8sz29qa42OYJ7tKvHmKHikQC7VrxZniZbohEaGDQS', 'EGA', 'RUPANI', ''),
(106, 'SATRIA-SV-85127', '$2y$10$/A.SVzZe97Ls/vRn8VD4zuDaHqmO0oXny9Ft50EDTkFKSzdLuxrpq', 'SATRIA', 'DENASA', ''),
(107, 'SRI-SV-98534', '$2y$10$o85ZY7qI6ZsiI4tax/q/Y.6xRg92q7UwVR2oM.9BV2M0V1R80JGTW', 'SRI', 'WARDANI', ''),
(108, 'ISTABELA-SV-512', '$2y$10$ZXbKkQ/aGviC/X7rkD/47eV0FrLWq41/RCehQVEa45fsruHL/aOFW', 'ISTABELA', 'PURNAMI', ''),
(109, 'JUNI-SV-21436', '$2y$10$oMFkZk98MRoxdoWefQmEZuVtuD5r6elVSYuuK5gI26FSItLrqayxy', 'JUNI', 'SETIARI', ''),
(110, 'IRMA-SV-84316', '$2y$10$dOzBnEzaUNLfhHc1CSswK.d4dYWoee7nWGJTQjes8QEg/MTlSFtWu', 'IRMA', 'DEWI', ''),
(111, 'REGITA-SV-41365', '$2y$10$pDHW2hEthJjBid0UoSPfPOkUCXI8So8Xg2wKOBQrEUoPWyUk/0dd2', 'REGITA', 'WULANDARI', ''),
(112, 'SUARDANI-SV-821', '$2y$10$tbqLcMl4YywLdwd0vlGyBuOEqwfLRAy36zAufsrvzBb3.YXEtjda.', 'SUARDANI', ' ', ''),
(113, 'RAMA-SV-89314', '$2y$10$aFqfMr1g0D.0qYfn4MywS.ux1BHJbVrybycmTnAP/g2PCMv3/Umhm', 'RAMA', 'SUKMANA', ''),
(114, 'BAYU-SV-36195', '$2y$10$y9IbmrU5.Z7.p3yzTRoWUOAxQi/HMj7MoPLoy26zRtys6eGhwYdgu', 'BAYU', 'SUTA', ''),
(115, 'RENDI-SV-42586', '$2y$10$0BgWsa.BRejy5hxRqzODruWqQDQGZo6GyImEbnkxciOyg0BP7SevC', 'RENDI', 'JUNA', ''),
(116, 'AGUS-SV-79684', '$2y$10$KEbPuvxI.WLlhyv3ZBMf2.hJQf6KrW32WlUQFiCkcsWP.dJjqhiNu', 'AGUS', 'SUTEJA', ''),
(117, 'SURIANI-SV-3294', '$2y$10$4fEu32bqL7WeksB76VZCbOop0lYSQ0iezRynqFhKgzQFp9J/Yv8Bq', 'SURIANI', ' ', ''),
(118, 'SUARTINI-SV-187', '$2y$10$gxP3ktobXIfzbi7dTPYEEuztjvP1SPvgzvVLeZnZP5633ZCC9/U22', 'SUARTINI', 'KADEK', ''),
(119, 'PUSPA-SV-69718', '$2y$10$jVwHT4jpCdOW.a7py1l69.693y3hqjl/GF0QuxHclMSMgz2hdmKGK', 'PUSPA', 'DEWI', ''),
(120, 'ELSY-SV-64721', '$2y$10$k4BEcq9CErymV4/PLjYmdur8AVBXmpxTxBEG9frKZOc0sfYaW1vsu', 'ELSY', 'ERAWATI', ''),
(121, 'TRISNA-SV-43295', '$2y$10$x.O8sZiIPjWGxzDfBkCifeO5pmAM5rFTsikmCWLIHvXGvttOVE7zS', 'TRISNA', 'DEWI', ''),
(122, 'SRI-SV-39568', '$2y$10$cWgDeeHaWzH0/8.Tcn3mA.R9qDjmGGcl/6KfqNYshPGIGS2qj6mgm', 'SRI', 'WIDIANI', ''),
(123, 'INTIAN-SV-15628', '$2y$10$xgW/zk3cV901cMTwy7mMQOLuPbEHaLG2cTp9qVP1titgvZyJHQdIu', 'INTIAN', 'WAHYUNI', ''),
(124, 'OKA-SV-72948', '$2y$10$7W.bayyQXtXmzSa2wcFSkupTB/uAeaBvXrqUzTWgJjC7ickSZWAnm', 'OKA', 'YUDAYANA', ''),
(125, 'FEBRINA-SV-1382', '$2y$10$HYeklrVIcwA1J7AEfeqq4e57FU736Pl4xK3u1kshgRL5fmcUT/6Em', 'FEBRINA', 'ADNYA', ''),
(126, 'NIKEL-SV-34925', '$2y$10$C962DtFhhxW/8V1VJwQ8J.Leoqt/zQZxRPNChkObRHQfn1NAi3qgm', 'NIKEL', 'ARTHA', ''),
(127, 'SURYA-SV-96358', '$2y$10$L13Tt0t3cbPoXoHUIaHnS.kwPAZqDrKaigof6Dwa/xMAkRBxwdjVS', 'SURYA', 'CANDRA', ''),
(128, 'PURNAMI-SV-1465', '$2y$10$eq08Hdx5IG.BDGiv4SM57uZGG4QgD13p/6DsYVVESmvM7snc7.wei', 'PURNAMIANTY', '', ''),
(129, 'ADI-SV-23186', '$2y$10$UXjB84U.R4SkR60wRg8AY.CvQW.Gju8va1syouckotW2DBrchOUgu', 'ADI', 'PUTRA', ''),
(130, 'AGUS-SV-63748', '$2y$10$jgVpFr7ZdFAjwFHwDY6iQu3vQNp/jKWcIoqikLC8H3JhqPTDF0oZu', 'AGUS', 'JULIANA', ''),
(131, 'JULIARTA-SV-395', '$2y$10$xhglorSZaZvQpx8nILXQPeEkHgmGLzqRMkXp5Bl1iK2zYvujt1X76', 'JULIARTA', 'MADE', ''),
(132, 'PARTANA-SV-8396', '$2y$10$ZDMjCYRzgBkTot95/ofl4u3c4BJ.8o1iIcN2057RqiFEIh.hYUfB.', 'PARTANA', ' ', ''),
(133, 'RADITYA-SV-7134', '$2y$10$jeC2OpgIhOJ0Abgehq2c2u0mKlCMymwPfwcErH1NzHzC07W03CFRO', 'RADITYA', 'PUTRA', ''),
(134, 'DENTI-SV-23781', '$2y$10$pFGZBEAKJqmflVs3RDjZOO7eJeRLvyvDtvnaIyM8fHeQ0z46NV7K.', 'DENTI', 'MADE', ''),
(135, 'PITA-SV-96327', '$2y$10$pPJX9wfHjHfiKOwTFPPJYOLgAZ9sYfRXaHXzQkumlpCpVjvwONaPO', 'PITA', 'SUSANTI', ''),
(136, 'CINTA-SV-51389', '$2y$10$5QyetmxiB6UaYQnB4HTwq.6s78nqavFP9iOVm8YWzXUSPILPE6L.e', 'CINTA', 'RAHAYU', ''),
(137, 'YULIATI-SV-4536', '$2y$10$ebv2W7J0ok0niwHtQfam7us0Fxa/Dz7Ikg5a0mWIIFCFP5eCaSXkm', 'YULIATI', ' ', ''),
(138, 'YUNITA-SV-83541', '$2y$10$HzarDyrXh7v7ClwTpMAJB.ZPfIReD/BDIuyZWp0Uuwo/pw84lJ3va', 'YUNITA', 'WULANDARI', ''),
(139, 'WINDA-SV-81523', '$2y$10$o9EXLgFLei96ovi6t1ee9eThhm5kDTfAGgl2I3Zhcagadkc7kauay', 'WINDA', 'APRILYANTI', ''),
(140, 'ESA-SV-37516', '$2y$10$mIo9bwDw6ApqLMkAGWpl5uE0SJ4GH3UpSyQ6Aq/yK0yw5zADh2.Ju', 'ESA', 'SURYA ', ''),
(141, 'WINDI-SV-37965', '$2y$10$0yXKu2ms5j8ECCNwLZv1MOm5Py4FUuN14pp.cOBvbMkgR8bzyE4Iy', 'WINDI', 'APRILYANTI', ''),
(142, 'TARYANI-SV-9126', '$2y$10$LRSXRYVoER3EaUVTp88fiu9FWmBz2c9bPIJ7QcV9FcI5Jjx2YWGO6', 'TARYANI', 'KOMANG', ''),
(143, 'SATYA-SV-38176', '$2y$10$8/Lm.2uoZ.k.sMR4f6EeTeFqPeUUzv7Z2Q0q5K61LWCH2JE03dRTu', 'SATYA', 'NIRATHA', ''),
(144, 'KHARISMA-SV-953', '$2y$10$f/RqTsMMOc4GD0YZH944HOrxlfCF2EWOkwOsUvCNJ63jVNe3WXA3S', 'KHARISMA', 'DEVI', ''),
(145, 'WIDIANA-SV-6834', '$2y$10$7odZZ1yN8xdg/FGXLUrNBe478kPM8penZ5BgdHIh0b.shjeYIUBLC', 'WIDIANA', 'WAYAN', ''),
(146, 'NILA-SV-86912', '$2y$10$XOe1N9ev6Cjm49NuNGcjauS/nmMExILal/zx6kN3E0PBmxUfNo6/2', 'NILA', 'SARI', ''),
(147, 'KAPITA-SV-14578', '$2y$10$dEqEsAbDb4ePy8VNMjXStu9FB2aMk7zrG02o9B8zAHqsziu6ChafW', 'KAPITA', 'DEVI', ''),
(148, 'KAINDRA-SV-4823', '$2y$10$cPRDRcfgAjIFjpFPzBywkuvZH.hJjID4p8pKj6/pmpP7dfurpLz4S', 'KAINDRA', 'GONZA', ''),
(150, 'YUDHISTIRA-SV-4', '$2y$10$QYhqab5PWJyS3ROz3aH9G.E.1SuaMi5Kb5kXhfCyl17KSojwScctC', 'YUDHISTIRA', 'WAHYU', ''),
(151, 'NOVA-SV-27458', '$2y$10$UlIGt2jjmk7IH6ajroT2se6X0d8zj8hYuTc3243Kg4Em6apv9u8z.', 'NOVA', 'WIDIANTARA', ''),
(152, 'TONI-SV-53649', '$2y$10$SbypKqOJZeS1rS.OoMRcxuvjF6LG8Mw6HupB2QK9QFUeSz9LX66lu', 'TONI', 'WIGUNASUSILA', ''),
(153, 'KRESNA-SV-63497', '$2y$10$J4saw.hBbDU1Q4rUYvrno.1DYBxiG.PMoxD1CVQEKPJqcdDovRJTS', 'KRESNA', 'MAHESWARA ', ''),
(154, 'FEBRIAN-SV-2953', '$2y$10$NqmShr43B7ryDG8EpBv4bugsG/HRtgGIo.IepS2JG.mOyGv36Dbhu', 'FEBRIAN', 'WIRAWIGUNA', ''),
(155, 'ANGGA-SV-14368', '$2y$10$nsMMmRCBhZOHaVrFQKHBM.UgQ9hl4rl6By8cpj61.sCl7zGzsscx2', 'ANGGA', 'WARDANA', ''),
(156, 'SINTIA-SV-63479', '$2y$10$IC9tHVdeqKX6xSIbJ2tFa.iQxK/Sv71TNiS/ydX4AJ//.l8ob6iI2', 'SINTIA', 'DEWI', ''),
(157, 'SONIA-SV-21548', '$2y$10$1dXSBZxoFcI8IfnH1BvFi.1FxO.at7eqYLA7BFfKY1IzvkS3RxbsG', 'SONIA', 'WIDIANTARI', ''),
(158, 'ADELIA-SV-52419', '$2y$10$FtZlk1UbiBlAEWWsXfI76.wJNsY8xQMaPMgLC.NrETQLguB0OtQGe', 'ADELIA', 'RAHAYU', ''),
(159, 'WULAN-SV-75412', '$2y$10$ysgJ18UrBNUWeO7A1MbJxOWf2/I0gNg2VZjmeIKqJEizuX1QTCchu', 'WULAN', 'KARYA', ''),
(160, 'CINDY-SV-41596', '$2y$10$9fRrXO/7WMunwWoAdOFDN.3U8yEl7T4AAnYfQtNQHGyTuLnP6FDb.', 'CINDY', 'LARASATI', ''),
(161, 'SEVA-SV-45892', '$2y$10$b6CU2eipEIlGDJDjxrg1E.ngw2lED5BTdV8R3RFVkN.v2Kq7QJbu2', 'SEVA', 'PANGESTU', ''),
(162, 'FITRI-SV-81962', '$2y$10$iScj2ENSES/2MYc4HGWs5./suM8R4Mi8.lCLQymvItr0MHC0/N77i', 'FITRI', 'ANDANI', ''),
(163, 'YOSY-SV-91547', '$2y$10$XekoOgV3Dii/RUGroEOx0OYBExOnqP7m1YSFW5JlKRpROK0yjJ/Ky', 'YOSY', 'ARISETIAWAN', ''),
(164, 'GITA-SV-17439', '$2y$10$iJnoFmXul768T.oep03kX..Fy/crj1Qnvkj9GsFwcvHQUjupoYb8C', 'GITA', 'AYU', ''),
(165, 'SURYA-SV-42397', '$2y$10$I3txkweWCFjyu94XLRUMAORG5w4588imvrds/ccugaqMmKRDmk//e', 'SURYA', 'ADNYANA', ''),
(166, 'EPILIANI-SV-967', '$2y$10$t0p9buj05BRWGopBpMLOGeoQwsIU52ylXoxrW32vscAzYRdDUP9kC', 'EPILIANI', ' ', ''),
(167, 'YIDHIHARSA-SV-4', '$2y$10$/ESvPEyVTR6bqWDBtUBEnuUPWOH9D4cew3sL1ftDHHQfIW3GZc3mW', 'YIDHIHARSA', 'MEGA ', ''),
(168, 'DONNY-SV-52187', '$2y$10$xMX7Y3pC9qnP0axeL6Lpa.aQSUde0KTfjcseMMmzuXorNQUJeXkR2', 'DONNY', 'CAHYAKUSUMA', ''),
(169, 'MITA-SV-26831', '$2y$10$zo3z0W0fkO1V61YSfWZSZeTvWoECZghunRAomJrVofuEyoWXjvMIy', 'MITA', 'AYU', ''),
(170, 'DERA-SV-98235', '$2y$10$J8fEVXP2XyPCNOhgXkvbBu3dFQWpDI1qktR8nsn1dbFdsqBnJaW3m', 'DERA', 'MARTA ', ''),
(171, 'SURYA-SV-62734', '$2y$10$OVUEut1GLg7YjGvQ8glKjOOkU3.ntuka95RK3hqUir54uN19KPQjq', 'SURYA', 'ADIWIBAWA', ''),
(172, 'YUPITA-SV-79835', '$2y$10$QrBJZyWM0Lr9gmpt9l2P.uKFBYOyccrbXwTRgmHA9WnINFdIhkDiy', 'YUPITA', 'DEWI', ''),
(173, 'YOGIANTARA-SV-3', '$2y$10$wX7i.PlKwct4ppRsrkCWdujADBlQ8GNSkCVGmh20S3n6r.VuZ9XLa', 'YOGIANTARA', 'PUTRA', ''),
(174, 'DEWI-SV-51468', '$2y$10$v4eGXqvBSR6V6La0uOWkzuW67lL.EhKQVq/uBfBNCzFcfE1F/I38e', 'DEWI', 'KRISNA ', ''),
(175, 'CENING-SV-29834', '$2y$10$MYljdf2JOIhAU3mkRWo0XeERH341sJ3mmCmqWRjg9Yf6kX3Uu.h6W', 'CENING', 'KARYANA', ''),
(176, 'DEDY-SV-74156', '$2y$10$e.VYS7BukmltVfDmbU9jzOJM12Pjg8286sBavIzbb7NceqC/GBBaG', 'DEDY', 'MEGA', ''),
(177, 'YENI-SV-35197', '$2y$10$uQ8iysZemJbQG2Eulj.ZBuk6QatYYJNf/S5d0gKl8t.rsS9HTANmC', 'YENI', 'KURNIAWATI', ''),
(178, 'RIKO-SV-95412', '$2y$10$TenoTaGOV6OtYm6y2SkmHOMeOMa1umfTdegfENFyQxFucpgfNWHPu', 'RIKO', 'DIANA', ''),
(179, 'KRISNA-SV-46812', '$2y$10$X/cEL3Mpzxsi2H105XCjR..43QT245TxrkJLMaGtFX703p8CnLjOa', 'KRISNA', 'DWI ', ''),
(180, 'RADITYA-SV-2513', '$2y$10$itLVYdNJmoYCWPsVR6KS1ejpy4G8rw8KgFzCKdjfK43Ga4MSfKX.y', 'RADITYA', 'JUNI', ''),
(181, 'SUARDANA-SV-518', '$2y$10$JzmzDr2VVz4Q7khNOUJL9.hWjeBGX38TRfFOd1UCkQ01V2tMZlBzC', 'SUARDANA', ' ', ''),
(182, 'VIRGO-SV-19734', '$2y$10$RYr1w.Ff2ump5SfqgzxIyOSQ6O56qcq397uZ4YYBGa16NVw.h7pa2', 'VIRGO', 'NAWA', ''),
(183, 'TRISNA-SV-62397', '$2y$10$P252F5dyLH8wqURB.nHgNu95ul.mpc9dAaNbXphpY4r4v15jFo65e', 'TRISNA', 'PUTRI', ''),
(184, 'MELINITA-SV-481', '$2y$10$TXg82Gcx1d.nDvKowEVDfuEmyT7BnVWN8E5AbHsfh7TXiXe.UCdyG', 'MELINITA', ' ', ''),
(186, 'KRISNA-SV-52496', '$2y$10$xJwKePk3x4Sv7FkFUQyrAuikegRxsewg4rJbhiYIyEF.Ty6VBWtI2', 'KRISNA', 'ANGGARA', ''),
(187, 'ELSA-SV-86342', '$2y$10$e72XC6m4PAncRlWlgxSVpOIJVXSHQqe2YMrTBUNY5Oear06.CNTSe', 'ELSA', 'PUJANINGSIH', ''),
(188, 'SUDARSIH-SV-129', '$2y$10$sqLAcQc0zUMfHFj0ph4guuQIVl864ik1nMSr41mvJdRHa.MbRUkYG', 'SUDARSIH', ' ', ''),
(189, 'SUBRATA-SV-2798', '$2y$10$d/jN7pyizdH03CTgjgOgleFGcE.5baxOVjeEnVoXE2suSxoZge2IW', 'SUBRATA', ' ', ''),
(190, 'DWI-SV-92487', '$2y$10$bifyKPc6vqOc/cJCOdngkO/3gFktAGsl.FI2AFrxcaU0JVEXUaOqW', 'DWI', 'PATRICIA', ''),
(191, 'NISA-SV-73429', '$2y$10$lCYszyhSeZ0vpi/k1MEz0euyqj.MAwNsZbYDDDdrQoYTVvuliCPPi', 'NISA', 'SEPTIANA', ''),
(193, 'SUARSA-SV-25371', '$2y$10$qpzKj3aJzqlTYCIGd1gGyObr.ToJSZnU1X0tQOK7Su2xBLQgnPsMm', 'SUARSA', ' ', ''),
(194, 'ADI-SV-14635', '$2y$10$FPqM46XxS7CGt0M6iPNf5u4d7LPjwojqwZT/YKPVf0ERdJlRmSvQK', 'ADI', 'KURNIAWAN', ''),
(196, 'RADITYA-SV-4725', '$2y$10$4b464ZrqeN0ucb32.w5mQOBSQqNt67gfVK59G2cJWnxmO9xj.t3cG', 'RADITYA', 'SENTANA', ''),
(197, 'RIKO-SV-48519', '$2y$10$UXvD2ImbJ6U.rK.lb5TitugVevDvVsk.7EvueuSA19Nq5y4D2nXBi', 'RIKO', 'DARMAWAN ', ''),
(198, 'PANDE-SV-59643', '$2y$10$mgU7JBavkpnijyq38cVJ9.z.vq1eccgOVkaD6l0elYX7QLh/i/sXe', 'PANDE', 'GIRI', ''),
(199, 'AGUS-SV-59318', '$2y$10$URe2hCqftbnAEdtmnSart.VJmIU5jg384YkPrd/ATFISrdnVYphgO', 'AGUS', 'BIRAWAYASA', ''),
(200, 'MEJON-SV-51269', '$2y$10$A/2pmRFt6Gv7GYStFa/npOEU4O4MjoalWuh/0.QFnnAled/K7IoLG', 'MEJON', 'SUEDANA', ''),
(201, 'RAMA-SV-95312', '$2y$10$O0LQxNp7SUXTynU8gKZ6tO4r7rwmnhKo/U5WgbX.owMwPGmAD/ACO', 'RAMA', 'ARTIKANAYA', ''),
(202, 'SEDANA-SV-56781', '$2y$10$UeAvOaTq5d.tg80pEl8O6.r4zHPYRpS9vjUHuLVkb.LqO5XKwRUIm', 'SEDANA', 'PUTRA', ''),
(203, 'PANDE-SV-83127', '$2y$10$cin4gHBmbd9XMOJ5FB1VTeOkgoiv9uEkswHm3YB100rWHXdmm/wia', 'PANDE', ' PUTRA ', ''),
(205, 'MIA-SV-29846', '$2y$10$4BINS51IVyYXr7XBx2IU3.2R7p2FG99eRuvqtevHKd46PnUPMzX.u', 'MIA', 'LESTARI', ''),
(206, 'SUMITHA-SV-3518', '$2y$10$hlSMYgpmjIl/85XE18fd.O360cuEUM6XzduyGcxf1mf4zz7p1aenW', 'SUMITHA', 'HANDAYANI', ''),
(207, 'YULIANITA-SV-95', '$2y$10$.6r/qRVqoG7T4FGHws8j4eG6relxHpbROznWhhvONpev2o/NnjeVa', 'YULIANITA', ' ', ''),
(208, 'TRESNA-SV-78352', '$2y$10$1SbAPDxvHq2mIJ.52PjmZOjrhIkLCu./FzLjMgHUqFfP6Kyhig54e', 'TRESNA', 'BAGUS', ''),
(209, 'SUARSANA-SV-362', '$2y$10$f1.3x2vxTcXJ4OPm5r/Q0e/F6Aitswii28ywupoB5jxDhCdivs1pK', 'SUARSANA', 'PUTRA', ''),
(210, 'CANDRA-SV-45297', '$2y$10$xvoMOld5cLjDl7.50a04j.7WGjCcuAjNVS0SJTur4kSVswSX6ew2y', 'CANDRA', 'PERMANA', ''),
(211, 'RADITYA-SV-1825', '$2y$10$qSnIikGefoyzJuafzf2PX.LD5dxP5q3F9KXtGadA2prmcHOKlbB4m', 'RADITYA', 'SUPARSABAWA', ''),
(212, 'YULIANITA-SV-63', '$2y$10$Xu5GxL8sBPUGJnEAetsYSunuu0sPm4eLL.oHLHJGcTjSEKdTno4HW', 'YULIANITA', 'LUH', ''),
(213, 'JATIKA-SV-29853', '$2y$10$JW2TKQuMT7obCVPfi0Ds..33cicjuRUO0oWoEW3JzunF.4YgesrLa', 'JATIKA', ' ', ''),
(214, 'CANDRA-SV-43978', '$2y$10$el/pO5ktalqKX6IlwjEnXe.GtVm.6rTJgbQm4WILEc162UFkmuRXW', 'CANDRA', 'ANGGARA', ''),
(215, 'WIRATA-SV-86395', '$2y$10$aFj2BC9psw4m.t2Dl86BL.j0FuuTBZBBwUCm1l/TWjWV8DrzeaADa', 'WIRATA', ' ', ''),
(216, 'PARWATA-SV-7816', '$2y$10$3eVlRgzIa6727K8rYVPVneu6q7xKEStPUG5g8pkh6PNOosMqPO9yu', 'PARWATA', ' ', ''),
(217, 'TRISNA-SV-82456', '$2y$10$a9V3b0Rb.Qvxzcmc3a9CB.U70CCdYVgcvw2g2Htv9D4u9LRDKfBf2', 'TRISNA', 'DEWI', ''),
(218, 'DIVA-SV-38954', '$2y$10$5y7Ktftr7cObtPOA95FwGuLjORLjQfYWpB6nS/5zWf3HDrxX3Yec6', 'DIVA', 'SAMARTHA', ''),
(219, 'SURATHA-SV-1754', '$2y$10$HpeB2rUfzTDh8dHh0HxMrOznME63vUM4zvT.bFa2vT7OW/clnr/Iq', 'SURATHA', ' ', ''),
(220, 'BAYU-SV-48357', '$2y$10$ZkTJ4PVKJXJk8aNSCP5H2eC4aCTRMozRt/rMIUcJ6d/NXAmsoxyCO', 'BAYU', 'SATRIA', ''),
(221, 'TRISNA-SV-29745', '$2y$10$B05Tv74NS5ZnsF0..gdxCeC4HVQ6j0XTud0Ta8Z/X/cn0dxoTzITy', 'TRISNA', 'CANDRA', ''),
(222, 'DEDEK-SV-45281', '$2y$10$w.168DraewJrFmOJ/sgarOVIZN2bpQ5Ju3iWV2k6UZTE6iWEpfF6C', 'DEDEK', 'PRADANA', ''),
(223, 'SURYA-SV-28637', '$2y$10$BRUGMYVNgtnjjDiW51024ORDM98hG.rweAdq/IkGbBdfTvP7xQj9q', 'SURYA', 'ANGGARA', ''),
(224, 'JULIARTANA-SV-7', '$2y$10$QbtPe98aUMoUTXmdnrKbD.hymUiG0lPaOEebic.P019otdYbbZgke', 'JULIARTANA', ' ', ''),
(225, 'JANA-SV-84657', '$2y$10$4RWA8wigqQHBmM3jPKZbjeV.myk7uC563RZ/iStejmEa33qG9Fa4m', 'JANA', ' PUTRA', ''),
(226, 'ARJAVA-SV-29174', '$2y$10$kLoIpM265XuX6jNpyjqh2OXtk9yu7rb9kMgKKmiFiJkzzHtLxspx2', 'ARJAVA', 'SAMARTHA', ''),
(227, 'DHEANI-SV-16394', '$2y$10$yj45oXvDrWLnACL4slb9dOTlcRi8vFdQT6ByhyZr7QXb5W8XdStvu', 'DHEANI', 'NARESWARI', ''),
(228, 'TRISNA-SV-93127', '$2y$10$pt0yXnd/.AduvGiOFWFYOeEmf7XN.fNB5/0YqmOwK/bKP/ebnrWF2', 'TRISNA', 'YANTI', ''),
(229, 'MARYANI-SV-2537', '$2y$10$YKdBLcsr.g7gS.cE9KTFYuUz92n.p.dhPWZDarck4U7ryMqWkJkFm', 'MARYANI', ' ', ''),
(230, 'AGUS-SV-38197', '$2y$10$cyan8G9jYl/Igo/MvEbvauuSYkN0cyd8QIjnJxcisC4Ntx81SDofy', 'AGUS', 'WIRANATA', ''),
(231, 'YUDIASTRA-SV-41', '$2y$10$F17ew90Yzo.XTVksBkUr2Ox5rj2JbHv4dzXsQIVzRbBXzxJYvCC1u', 'YUDIASTRA', 'UTAMAPUTRA', ''),
(232, 'TRI-SV-19275', '$2y$10$qHfpTf7BJcTIjZ37ETeP8Opp16dhiDxgw.D.VSSTYdmT4dtV8CXxi', 'TRI', 'NATALIA', ''),
(233, 'KARIANA-SV-3672', '$2y$10$lsbu5Goral5EORuVfBSZXupxT6DXN8j293wwMFyVsrgcjHo7EnTvm', 'KARIANA', ' ', ''),
(234, 'RAI-SV-25796', '$2y$10$gws/qN.aD435q35T5p673efNjsIkJtgh/4cfbNI5XfqFEW41y6U02', 'RAI', 'PUSPITA', ''),
(235, 'TRIYASTIKA-SV-5', '$2y$10$L8UurtO4xY0TV/j4KDIt6uUHSAmehMiZhTph4jWWkvtPwoK1Q86nS', 'TRIYASTIKA', 'WIGUNA', ''),
(236, 'JODI-SV-54173', '$2y$10$cTv6NPdqoGmGCwhFUM82leqREA2FNE4wCFqFMzr1j3zeY7pzwyPie', 'JODI', 'ADI', ''),
(237, 'SURYA-SV-57196', '$2y$10$R5go1irefXvZAZiZrLXCguUTSrnh0agmhZufg5RGyDSJgAJkAPW4e', 'SURYA', 'WIGUNA', ''),
(238, 'DWI-SV-92435', '$2y$10$zY17JXaQ6UvLXcuy7qc2KOJw8Btm0YvAeZn5wp0bdu0eEjI0DrjUW', 'DWI', 'CAHYANI', ''),
(239, 'RYANTIKA-SV-789', '$2y$10$NOZJVaJ9luqkuEdQHVfar.j2WqPoRkXhdgjqW6M8YAR4l.hpErVmS', 'RYANTIKA', 'NAGHI', ''),
(240, 'DEBY-SV-28931', '$2y$10$p1VRmT5d8hGBvg.vuZN53erqADgq2tb/QhnXu5BLOXva.Ai4fDfXO', 'DEBY', 'AGASTINI', ''),
(241, 'APRILIA-SV-6348', '$2y$10$JCOicAPfkVS7gjtEBTeApOdewG8OejTpgIQ2dhGIgWyUJ82r9VvPy', 'APRILIA', 'KUSUMA', ''),
(242, 'PRANSISKA-SV-64', '$2y$10$dwFOvlKKDxST1ZcIKl4QYebTOk1is6MRKkRdZip/x8JYZ2LnLFJjy', 'PRANSISKA', 'UPADANI', ''),
(243, 'ANGGA-SV-13829', '$2y$10$PFrM5dwl2jOvKLr8H8fCzONRkwkWlITe65b/ykyG1Ch4ZIAX/w6xG', 'ANGGA', 'KUSUMA', ''),
(244, 'AYU-SV-95126', '$2y$10$ec/5ueyf.a.51ky0b5BWUuuaXABzZfPx9wU3k669eYzn.klhkM4TG', 'AYU', 'ADNYASWARI', ''),
(245, 'PUTRA-SV-67594', '$2y$10$mTKwxyafn9yyDDrCHZcctOXk.qP4e9vpkuDX0.oe1j5nB.AIX0wBO', 'PUTRA', 'SENANA', ''),
(246, 'PRISILIA-SV-245', '$2y$10$Ar3B4Th4KORoCmQvGL/FMuQ3e8aqc1v7D29VbqBSqmHMqW4RfvjJy', 'PRISILIA', 'WIDIANTI', ''),
(247, 'SUTIANI-SV-5374', '$2y$10$Zllu6RPb0/DlGoRZTXK81OoQMOTXX0atrOkT9bF2NiSvh4QhXJ35m', 'SUTIANI', ' ', ''),
(248, 'KRISNA-SV-18475', '$2y$10$vPm4E2lB2yBMkUZnkBWBAO6a96oMlGa0GSPSHH/ASXJ9ZME9Nzn2K', 'KRISNA', 'ARDANA', ''),
(249, 'LILI-SV-36789', '$2y$10$159LEdc5mv2TE918PWDfQ.suTYHb6MtBTW6W9eLKdpu6HubD2KOyW', 'LILI', 'TRISNA', ''),
(250, 'ASTRAWAN-SV-274', '$2y$10$OnHUCgrB3cdT06sawkVIF.bk2tTY/Z2AWLg85U8L6O7M2x.1xoTcK', 'ASTRAWAN', 'PUTRA', ''),
(251, 'PUTRA-SV-61459', '$2y$10$/KiRemJtadRx3Hd2pCLrCuglonxeOL6BNw9.HrXpAaHhEKtSsaiEu', 'PUTRA', 'PARADEWA', ''),
(252, 'NAMIA-SV-46728', '$2y$10$F9c0OEDChPCgDDV8F0iMjOBOfy0i71u9vTOrvVfon.wlmIjZHJ8NO', 'NAMIA', 'ADIKUSUMA', ''),
(253, 'KRISNA-SV-62749', '$2y$10$hVtICD8zJwOfPwFkt8AzEOxQmMwO.Cx5FUJNHLN7mlThp8ZiW83D2', 'KRISNA', 'WARDANA', ''),
(254, 'SRI-SV-61957', '$2y$10$bnuIW.QiXfdeKP.yGsO6reiuUM4rp.PLGRYOO0X0J1XUbEs1Mbn0G', 'SRI', 'KRISNA', ''),
(256, 'NAMI-SV-25179', '$2y$10$IM0UkgU9Kwf0.p8kaOrKpuyjM8PGRpwMWzzRvKeszH4KFLSMPv5gK', 'NAMI', 'NARASWARI', ''),
(257, 'TRISNA-SV-59742', '$2y$10$SWlExNB/WNRgCfj6g4Q44.p4POC1M60kWlDxG/zO0jrcTcqn6.shK', 'TRISNA', 'WAHYU', ''),
(258, 'MALIO-SV-48723', '$2y$10$H/mvxz/FG6rqtPsesIMqO.64ezzL9WQGjRpLGDi7WjQKyT0bZVF9S', 'MALIO', 'WARDIANA', ''),
(260, 'KUSUMA-SV-61734', '$2y$10$Jp1hq5NI5EvGGpcvpXjSTuwj5YzeYCl5uWeawPwKSsw69le9neJEK', 'KUSUMA', 'YASA', ''),
(261, 'SUKARIANI-SV-45', '$2y$10$/7u4P9F.QsTcoDnVTYyh8OJ9ZCqYeVSAxL0tTHlwHcDa3PBahC2MG', 'SUKARIANI', ' ', ''),
(262, 'SUARDIANA-SV-97', '$2y$10$RgVDErBACcL7fBAWmf7I2.4TgSPImBVyh..kiTOoxej0EKUlgeEaK', 'SUARDIANA', 'PUTRA', ''),
(263, 'SASTRA-SV-43896', '$2y$10$YDvmH6sJSvq3yR2yPjRtwu10vq11DZXpy70yiqOH25Z20qQEyeXsy', 'SASTRA', 'WIGUNA', ''),
(264, 'ALIT-SV-52943', '$2y$10$rTmKhC8lGpuODs3t8G2YqeAUFdgGx0vH46xLz28oHnGgy6CWM5g6u', 'ALIT', ' ', ''),
(265, 'SUDIANTARA-SV-9', '$2y$10$X13ZAvlXCuMoiCAbt4CgruULqeZ/qxdRluuR8lK19Q98ZRgDXAPoS', 'SUDIANTARA', ' KADEK', ''),
(266, 'SUDRMINI-SV-617', '$2y$10$L9ON2066PG7O4uBCgKZylO6HEe.bgzJLfQL7PHHdFXuFCXtXAkdqO', 'SUDRMINI', 'MADE', ''),
(267, 'PRANAHITA-SV-15', '$2y$10$ea5i9XTWH7iWOsjMZQjuVenlAjBvcY8pBUDu4hg6hJ.I1vQHB6Elm', 'PRANAHITA', 'RAJATHA', ''),
(268, 'SUDARYATA-SV-46', '$2y$10$IjLjoSzp/sBwl6R8iexyK.ngZKibLdNoy0YT0GE5yk2WzBhRSkO3O', 'SUDARYATA', 'KADEK', ''),
(269, 'DARMAYANA-SV-31', '$2y$10$EFwDRzbEIEUn1eOAqrdz8eK7bA59RfQe1d7/QDENi0R2R4nLk8ea6', 'DARMAYANA', 'MADE', ''),
(270, 'SPARNINGS-SV-92', '$2y$10$stIOFsXIYPsXk.v2oda3G.SrHutNxnHzdtNrW15mZmA.ZhQHEKLp6', 'SPARNINGS', 'WAYAN', ''),
(271, 'PURNANIA-SV-684', '$2y$10$O99MCHDei4Dw3FTHuZNT4OGZ4/BAdUTbH7k1XkEmwh9Pi9OZUqtwe', 'PURNANIA', 'KOMANG', ''),
(272, 'ANYAR-SV-45739', '$2y$10$ehm9IoWhKts.pas9NsA.1ONiBuB1/68opiZ0ysKRMGISOKvZJYT7m', 'ANYAR', 'DEMO', ''),
(273, 'DEMO-SV-63825', '$2y$10$HIvxAYqrtCmFvQNFbIwnAeq7atOhC5rPVpe/0e2IqBCecHCqFDz4m', 'DEMO', 'ANYAR', ''),
(274, 'BERLIANI-SV-572', '$2y$10$45ZNYHFNHC5Wkr8qftLNfe5Nwews4KeNZRbZRaAi8sN6BqWRlAduO', 'BERLIANI', 'NAGHI', ''),
(275, 'WIBAWA-SV-47951', '$2y$10$b3OYlZ/crmYvuFA.ZCGC0uUqej7E62uj.SKKgBV0Uu/PdG5p3vyFC', 'WIBAWA', 'KADEK', ''),
(276, 'SINTIARANI-SV-5', '$2y$10$XNSuSKVzshDHAxKCJZA/M.3G/Ig4GH6LT6/puDdwI2xWPOnzODif6', 'SINTIARANI', 'PUJISWARI', ''),
(277, 'WITRA-SV-51896', '$2y$10$5ZIKOq0sDoxQEOlTF7/HBe098kb8A6e35bHia31N8TLxBzaiy35AO', 'WITRA', 'ADITYA', ''),
(278, 'RAMA-SV-51392', '$2y$10$Hp/OiVHpuRN4zD3WzfHzi.3FFQBVJggvudD..y3RzTYBLp2bMOoQ.', 'RAMA', 'SUARDANA', ''),
(279, 'INDAH-SV-65312', '$2y$10$/PzunBmZvnoIAFOZl3W.y.nc5bEBGDC0tE/7TkBldpd6GWVatsfAG', 'INDAH', 'PARWATI', ''),
(280, 'SILA-SV-61285', '$2y$10$sTGSj321jIYzCHXAa6U5A.pucqJCRZEVNfbBhz7WylnbjEIvgRgi6', 'SILA', 'ARNAWA', ''),
(281, 'DENI-SV-75682', '$2y$10$AnTLXJTgB53yxZLo5MJGpO66Jw1XjBNac5Jq1t4VRbU0g4Th5eiSO', 'DENI', 'SURYA', ''),
(282, 'DIAH-SV-24713', '$2y$10$4T1LQXRjHHDEUmsSm781f.RAaNbFkiKC9ipOfjbrX3HBI5faF0mfe', 'DIAH', 'DWITA', ''),
(283, 'RAJENDRA-SV-968', '$2y$10$ihSOvcpB/N8NBUfijnbYQOBquoAToEjsPx5sGQaxcB8ZIXoH/VQFe', 'RAJENDRA', 'PUTRA', ''),
(284, 'DHIO-SV-43586', '$2y$10$xS35PULxhhHs049y3ODQQuscMOpf.jLO6R11A5Qw0GKz33Vu0QWfa', 'DHIO', 'PRAJA', ''),
(285, 'NOVIYANTI-SV-46', '$2y$10$B7vfO5kcyFgXm4DJlEXDD.XoK3ZG02ZeCkHSYNk03v8QB4YwNhmJ2', 'NOVIYANTI', 'PUTU', ''),
(286, 'PUTRI-SV-43859', '$2y$10$3dNzOcqCp/n0QxhrryjcrOQJaVer31sNZDOrsSi6xTIbzoqoSRgI.', 'PUTRI', 'LEONY', ''),
(287, 'DIAN-SV-39716', '$2y$10$DrxhX.Zfd4BcnzNi1jtal.UvCbtqkjvkZluQSM/WX6C1IpCnlSUru', 'DIAN', 'JUITA', ''),
(288, 'ALIT-SV-63859', '$2y$10$3wyMzbpg.vZWQ5ZQcm5H8evp0dUTIuiCJyWdAmmAX6lUa1F3S/pXK', 'ALIT', 'MARLITA', ''),
(289, 'AGUS-SV-74965', '$2y$10$oHD59MUtjX8STkT5/XSYSuqKipsegZFMhARyBVPfW7Xqdl2fulYlC', 'AGUS', 'RYANATA', ''),
(290, 'DARMA-SV-91256', '$2y$10$BUjQ91Ka5wvSeOXdHyJss.VUrQ3BCHly9a0JI3bHL2G.q1.FYM.q6', 'DARMA', 'PUTRA', ''),
(291, 'DEDI-SV-69312', '$2y$10$auhmQNvYg6KVspk9MgGT7uixJDvn4W57753MfQOnXggdK8VZN9sCu', 'DEDI', 'WAHYUDI', ''),
(292, 'WITA-SV-67395', '$2y$10$u7CWERQ8bBjRQHkyHUrWb.tu.UzXu/rURaPcfzJDm7o.xIXYTNJH6', 'WITA', 'MERTA', '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
