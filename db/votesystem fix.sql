-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2021 at 07:16 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(1, 'admin', '$2y$10$1Oy0WGrTWU6ryI8iPwpBO.nWk.9HmgewGLiqi3ZiJDOyenh5PJrRi', 'Admin', 'Madya Utarayana', 'Logotengah.png', '2019-07-12');

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
(39, 14, 'I Ketut ', 'Yoga Suryawan', '20210502_200345.jpg', 'Visi:\r\nMenjadikan organisasi kepemudaan ST MADYA UTARAYANA sebagai organisasi yang mewadahi, dan mewujudkan kreativitas serta inovasi positif berlandaskan TEI HITA KARANA\r\nMisi :\r\n1. Membangun dan menjaga rasa kekeluargaan juga keharmonisan dengan seluruh anggota ST MADYA UTARAYANA antar sekaa truna se-desa adat, maupun dengan organisasi di luar desa adat.\r\n2. Sebagai wadah dan perwujudan seluruh ide dan gagasan para generasi muda dengan mengedepankan prinsip kebersamaan secara musyawarah dan mufakat \r\n3. Meningkatkan peranan dari pemberdayaan ST MADYA UTARAYANA  dalam berbagai kegiatan di Banjar, maupun desa adat.'),
(40, 14, 'I Made', 'Yusda Rupawan', '20210502_200828.jpg', 'Visi :\r\nMewujudkan sekaa truna yang aktif, kreatif, dan produktif demi menjalankan kepentingan bersama didalam seka truna\r\nMisi:\r\n1. Mengembangkan rasa sosial, tanggung jawab dan saling menghargai didalam sekaa truna serta desa adat\r\n2. Menampung aspirasi sekaa truna dalam bidang apapun untuk kepentingan sekaa truna \r\n3. membuat program-program yang dapat mengasah kreativitas dan produktivitas didalam sekaa truna \r\n4. Melanjutkan dan mengembangkan program kegiatan yang telah di buat oleh kepengurusan sekaa truna sebelumnya.');

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
(14, 'Ketua ST Yowana Madya Utarayana', 1, 1);

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
(272, 'ADMIN-SV-49627', '$2y$10$mz2k2zxj0cfFfrt9PxehpOsRbZdicE9AEW7NvOPbh4bbUGMX3km22', 'ADMIN', 'XX', ''),
(273, 'komang-SV-31827', '$2y$10$UvNsju6br72GlKQsaFR3Fei7NwjyVtghF2jgYpayAqv9gvhTVPYz.', 'komang', 'putrawan', ''),
(274, 'arya-SV-81279', '$2y$10$a/hvmL1odImrPk/xnGnGiO3RtsPh11Sp1WFbEGrdqdfo9NJCJBtNa', 'arya', 'dana', ''),
(275, 'luh-SV-93467', '$2y$10$9N8Ux2AHWai9/0qyHUuJge8ivmO8sS4TE0mUNymbee5qSIuN83d0G', 'luh', 'maryani', ''),
(277, 'nanda-SV-12569', '$2y$10$sfHh1b47.F8Ws81KRhBobOdqPwuvkIqdrj066v2aOT/IjiH9XcNTi', 'nanda', 'priayu', ''),
(279, 'ratna-SV-62578', '$2y$10$kEf//7/nw5b/kuSu0qWGyOk6Q2H0IbCDfGw2X6rkKDrmuqEcWette', 'ratna', 'sari', ''),
(280, 'yoga-SV-54921', '$2y$10$Vf1PGN/xIRkeY9khRqBXWOAIdyfaaULVtIFsjcieLB2QrToj5P.2C', 'yoga', 'suryawan', ''),
(281, 'bagus-SV-86529', '$2y$10$qHV7o9qHlJ.mddQfZyVum./g.tmVsGPSILMg.6NbR4RQU9R/9Wc4i', 'bagus', 'andika', ''),
(282, 'wisnu-SV-72318', '$2y$10$ObzDqm6Ef5cq21SuIuJkteWGv9olZTs4vgzKQo75wbst3aOdghehW', 'wisnu', 'winata', ''),
(283, 'wayan-SV-37195', '$2y$10$tq3Eumxt5AL5V9rjR2PfEeYN6pT4sdOxK2f3rEJYbq23H1s6VO4ee', 'wayan', 'sudana', ''),
(284, 'arik-SV-65918', '$2y$10$a6A/RafysOqsY4IOSoFQWenj0y5GgNJ.u8.bo6CrFOIofquxn3GrG', 'arik', 'wirawan', ''),
(285, 'rai-SV-79342', '$2y$10$axyy21VwDir1BDXMPopxDe7lAbjXCLo0VD0VwW9yPl.QWVqImu/ue', 'rai', 'sudiani', ''),
(286, 'wira-SV-43795', '$2y$10$.sZDUWWj09.Xwtt1IIWZMu4NZyqIV6t9Wm9BPLBOaogjwreJv4BGO', 'wira', 'prasta', ''),
(287, 'elik-SV-25418', '$2y$10$H8EA/NHhAriZXk5xU1NCiuhmczj7SZ0mbBDWyltYkuVtvKpraD66W', 'elik', 'sastra', ''),
(288, 'trisna -SV-6489', '$2y$10$pf.qbniOuxADhitL37DRvupAkzEXL.e777vWtMhnHARCZANuLuLGm', 'trisna ', 'juliyanti', ''),
(289, 'pujuna-SV-54769', '$2y$10$UWc2SPbHdptCEzqeAV9WbukuXoacavABwnb72z70Sht34fNlNNo.S', 'pujuna', 'wiakta', ''),
(290, 'wayan-SV-27816', '$2y$10$aUw4P1Rx4mACBwEEcyEW4OruCDzCy/DH.lSq.qKpxxkhHpIh4IwP2', 'wayan', 'widnyana', ''),
(291, 'bobby-SV-37596', '$2y$10$0r7O.qRI5ixDKK5O4O6j3O9VHabK.5ZaOGhSf0.6pGhgCrrEMI83e', 'bobby', 'darma', ''),
(292, 'abim -SV-32185', '$2y$10$u1kNVM773gfv4cxMklb7O.v1G4aTKSdDZOMjuZ9FWW1Vy42NsUSQ6', 'abim ', 'subagia', ''),
(293, 'priyanka-SV-362', '$2y$10$1ZCZArxxJ6Ic7ctBStHo9u1qLJBopSYje8yu71qRr3fboJfQqDsO.', 'priyanka', 'diana', ''),
(294, 'andhi-SV-15893', '$2y$10$CafuIgaO6wsJQQS/F07G9Ow2uLHdJsN0vHNI1krowD0G2xMlhVW.S', 'andhi', 'wiandana', ''),
(295, 'made-SV-89325', '$2y$10$4oaVuXG.KlHVu8OfUjLPv.l.wPOYvh8T6SLY7qj6fHKos62yAAk1K', 'made', 'jeniari', ''),
(296, 'purna-SV-14863', '$2y$10$oPnGiTXqgM4xT6gR6aLRLu61/8gN2HMPL/VWonc52N4SH/nb4nqM2', 'purna', 'yama', ''),
(297, 'komang-SV-85147', '$2y$10$TJfTHP7LSIbRX.CXz5hMRuaOy8PeUWjMBsldXa9lCEX.Jy.6IgS66', 'komang', 'suardana', ''),
(298, 'made-SV-75892', '$2y$10$gwrI3N/WzAV4h.XRphPTpO3hjvYbyF6hzb4giO9hN.a4OMzprpKkK', 'made', 'ardika', ''),
(299, 'dwindy-SV-79421', '$2y$10$TPF97cM0OvgWs8uqtwbc4eY7XamAuSMZd8Ij/LGeh5Wj2wSL.d4Vq', 'dwindy', 'sastrawan', ''),
(300, 'sadhu-SV-47596', '$2y$10$9ajsGt.uK6Uue56gw0aMxuALe.oH4iby8S9SCXbcngEobjrOeeFZq', 'sadhu', 'kemara', ''),
(301, 'wijana-SV-25194', '$2y$10$ZsADDt.M3COHtNtwzvn1K.uUEj.b8CSm2.Pu.ueKgimsjrDZnf30q', 'wijana', 'adi', ''),
(302, 'arta-SV-54812', '$2y$10$WOZe4/kFjtkojS2GpJN0Uefn5yNxmaXPrOQBGQJs1jXlboZ0aaMUi', 'arta', 'guna', ''),
(303, 'komang-SV-97432', '$2y$10$G8d7s.nuQyr3Ojeqv2C9Xe/OtupbvEcaH5DCuacgCZvPNyEDaM.p2', 'komang', 'widani', ''),
(304, 'rikka-SV-61835', '$2y$10$.FeooisiAsEIBDz1eVfyQOcG/G96hUSQ83rZLS8u3CvN.EOtXt3Di', 'rikka', 'berliana', ''),
(305, 'widy-SV-76583', '$2y$10$BHBsbHOq7PHdvDh2nV5VF.Q7zTC9wk6f1xSHZCMSzaqQ4aTB2bs4e', 'widy', 'asmara', ''),
(307, 'elita-SV-64857', '$2y$10$k5ThFE28O/r13eIGCN77pOaLwrlEfExab0vgtJOcyoSoBwmfBerli', 'elita', 'wardani', ''),
(311, 'sunia-SV-65247', '$2y$10$zfLOPR4TyrL/ZMmlZ4fVqu5DyFbCMSwuokMtjh19qNKSw8VfUa5T.', 'sunia', 'diana', ''),
(312, 'aditya-SV-89531', '$2y$10$QMRVtlJvQf.gk6xPzVkLruU38FDDr25fi/19dyn5tRIwYU.LRAX2G', 'aditya', 'permadi', ''),
(313, 'esa-SV-32914', '$2y$10$hV6CPpjabPOSTNb3Gyix8eRxHfux44j/7tr.j6J2lGRgHvi1ru8Cu', 'esa', 'suarjata', ''),
(315, 'made-SV-53729', '$2y$10$pMd7vYw285vMG2cGUK63Tehk0tr6/4K4Fu4uYk62WR34UHdNM15D.', 'made', 'andika', ''),
(316, 'debi-SV-92617', '$2y$10$Ug1wgsBI5RI7WVLxVcW9Uuq2MeiPr61T5nwtXPjzdx5Dl2pK5zPay', 'debi', 'noviyanti', ''),
(317, 'muliana-SV-1234', '$2y$10$oa5zKvO7LFOTEJxDKsis4uvJv4W1qFkTNPZlsS27HLroir3C5FBJO', 'muliana', 'putra', ''),
(319, 'diah-SV-43587', '$2y$10$tU0NLYMvbGE3RiLqLPslMetCd69TGMNAmRUWq6.dan3f6kcrMDn6e', 'diah', 'puspita', ''),
(320, 'mudiana-SV-2586', '$2y$10$IluyaC.BUCu1ZUkMwIhl4.i9kZKP3lH4nux1gHsNBkZ/KGC5zYSsC', 'mudiana', 'putra', ''),
(322, 'windy-SV-42659', '$2y$10$Mg1MTyA9Oc35WeIMuntjwOojX3kb0JbFekBxcKymcZRH1wkoyOrx.', 'windy', 'ari', ''),
(324, 'wayan-SV-45681', '$2y$10$KVSeCwDSHNVTqDaZD/mQ/Om.8gtDCto9.RMaCU.xFzYhOXKnKOrIS', 'wayan', 'cahyana', ''),
(325, 'mega-SV-23751', '$2y$10$OFZSykTDhzxY8yhUl.X1nuBIj9rkhpmRDCCTq7dN3/w/bAAT6qRSu', 'mega', 'jena', ''),
(326, 'purnama-SV-8465', '$2y$10$w4ekqDuOM/q9q.h7fbbK4.lkzhiomp8bE/aOsnRRHDubLEnxEjzSG', 'eka', 'purnama', ''),
(327, 'bayu-SV-89142', '$2y$10$NoI0jtr5feV2UWkGQ3f2KOJQsjU4FnFfrJZ1SIxTTCUOWlOpeqd1S', 'bayu', 'perdana', ''),
(330, 'christandi-SV-2', '$2y$10$Vp1UJSZoPJRN2Wnt8SYYAu8jKGtO6sAUWji3ZGakirMmZjx4dWanO', 'christandi', 'angga', ''),
(332, 'adis-SV-95718', '$2y$10$xFm4AYNyDkpEPi1Mu.Hp4usPZAsu5VEJqw5VJ7nbTgjoT5ywAuHjK', 'adis', 'mardhana', ''),
(334, 'ria-SV-49861', '$2y$10$gDJHpixeFIx7/8GUAr4oqeubA1Fj.VzUtJOR/AEh2ZkG4RNLLWLce', 'ria', 'sugiantari', ''),
(336, 'donni-SV-71346', '$2y$10$8ZMcGS2HBvrieQkwJaSRiuvRSfGUdA32TH4YTDHcaW30jaNWdStc2', 'donni', 'saputra', ''),
(337, 'icha-SV-89452', '$2y$10$D42VB3/bu9mU5r/K7r4iO.T5v0jFKZSqFvl6IoRaDUblUUreZ6EEO', 'icha', 'widya', ''),
(338, 'saskara-SV-1864', '$2y$10$55uFtq3NU4Ew8mi/sc7NnOzNg1m6WiA9dUT56r.Df33aASdQY5RhG', 'saskara', 'wiguna', ''),
(339, 'made -SV-62893', '$2y$10$xsRyo/PW35Bl2.YI2omSieaHI8AM71VYHjqUfY.1zCYOn9PyADHn2', 'made ', 'dwi', ''),
(340, 'deva-SV-97531', '$2y$10$.0bfT6ICPd0osA7e.p3QKeXKxKpN4sp8fFXuaAHm1yLVo1AdGadP.', 'deva', 'antana', ''),
(342, 'maryani-SV-4876', '$2y$10$fouwHeMH2X6Z1W13qX3V9Oey1fvXOh5.0Pg87kVDrpZQpWvsD0nBy', 'maryani', 'asih', ''),
(343, 'ayu-SV-82367', '$2y$10$5ObNhmFsXp2LdDK8KTCnO.eqI1DPiQx1ka/7Sn7YoCxbQzmQFyFn.', 'ayu', 'snana', ''),
(345, 'luh-SV-12598', '$2y$10$MNcvjoFxdJBxgg9vJaTct.RnOCoaVNxchqc2creC1ui.uK2TgEA7O', 'luh', 'delfi', ''),
(346, 'dewi -SV-53479', '$2y$10$5ZApPu6w5svZ6J7K.tTJPuinF3P4VMu1yIDADuWtYlm1lQ5elm5wK', 'dewi ', 'rahayu', ''),
(347, 'alfina-SV-52361', '$2y$10$GvWEA8enSbswrGNmP4m4Meaj3tmmiDgwLqPdGRuwE7xkxNQQ45LMK', 'alfina', 'damayanti', ''),
(348, 'suputra-SV-6547', '$2y$10$qxyywuy9pMNtDjOA1xZ3tOW5Izi9TZsWPUmLmXBBppLLHbG1CrLI6', 'suputra', 'wibawa', ''),
(349, 'exsel-SV-98153', '$2y$10$P0r4cLOPp04ib0AOa.M6fOPpoWlYe3OlC/4ZfaALrjcPmaa5sUN7W', 'exsel', 'adi', ''),
(351, 'rangga-SV-48159', '$2y$10$GBZF7IJULz0niF4mnQYy9O5kE4w3rfzRcXCI9wPgINu/SvEiE2HSK', 'rangga', 'raditiawan', ''),
(352, 'wayan-SV-46782', '$2y$10$2t451bSywev4q.qdbgeu6u59Mfluzls3HRpUeixbyuec3IjQyduXW', 'wayan', 'suardani', ''),
(353, 'winda-SV-48625', '$2y$10$fcbPr1QspAcYknSu1muiHOJ5yu3FBUOZQbCOU8j6/9RfB.fZ/8hVS', 'winda', 'putri', ''),
(354, 'candra-SV-26871', '$2y$10$y366f1fyj9mvdfc6mTQTVuPqT8NnyTRC27tQj16gulYz2DOL6DaSm', 'candra', 'adnyana', ''),
(355, 'retda-SV-74385', '$2y$10$H0UQE5fCZGw3ZWMQmDG0NuXs3KYYHeKzcJ.3RHw0x0BSLISLOMPAa', 'retda', 'sri', ''),
(356, 'wayan-SV-28569', '$2y$10$NRNiVdK6zgeSXz2rKo/PpeiiTgK6aP76vgEU1LnhKiz0nJ0vDYMke', 'wayan', 'okinawa', ''),
(357, 'made-SV-83412', '$2y$10$oJPc54ZNI0N1iJYykM20t.R6oshLnTDbN6NZktDMdjmOfYHS9.gjC', 'made', 'ernawati', ''),
(358, 'kadek-SV-63472', '$2y$10$gWuGcSKnAhPF5yrEuQgr8.GNTHDh2Nv0BncDoUXZl6lMJIfGhw6p2', 'kadek', 'oceana', ''),
(359, 'upadana-SV-4679', '$2y$10$zh489N.6klFF2jTRDNlScuKh/Ch2sald/NSXmoLI.qO9xPWFGFwc.', 'upadana', 'putra', ''),
(360, 'leony-SV-16238', '$2y$10$eJhNAGy2Ebse1ms45KoPteyQ8e3bcUQB5naobpFDbZ0kLcmg21z4G', 'leony', 'primantari', ''),
(361, 'ayu-SV-81793', '$2y$10$i1PwE9685dBJW7YaZtxE8uc2nvWtN5z9Z5o9m4jUB6CtRo4yd5tcK', 'ayu', 'candra', ''),
(363, 'darma-SV-58763', '$2y$10$z8eRpwbA5CgJsXDhf4qtJeqjgklYKgKg9gSfba40RkvFL4PvvMmu.', 'darma', 'made', ''),
(364, 'eri-SV-52971', '$2y$10$WGh04cYk5eP/4iQiHlu/POlFM4la6MiJpL0jzaCl3PclBK3uwXAAy', 'eri', 'novianti', ''),
(365, 'risna-SV-63752', '$2y$10$7m05P6F6dZqdOsHtwkH0z.nc5R.5XSedNImoOUB3bTRS3dHyR8LkK', 'risna', 'widy', ''),
(366, 'dwi-SV-25789', '$2y$10$us6AoMgte3K0AyVMlgm3K.V0rKylP/lLvGFhIXZttoni5SncnWCuy', 'dwi', 'rahmawati', ''),
(367, 'yusda-SV-67483', '$2y$10$743MAtRci2pxD21SC5qZRe9pccVA333ue7kxaxc2RG4yQ6VdCj506', 'yusda', 'rupawan', ''),
(368, 'murtiana-SV-718', '$2y$10$jsbswQ6mzZ.wikI1L/BzFeVQLUsde8pko0zjgrFGMzE95PITEJx4G', 'murtiana', 'ketut', ''),
(369, 'eka-SV-95124', '$2y$10$Qdd6rOqp/zPVt4lc8/B2fe8/ayijOkvVN2Y/Cz/6prsgc2JoyRfEy', 'eka', 'parsana', ''),
(371, 'sukma-SV-79684', '$2y$10$egWNKWHo8dniM.1.qqtBleZtblaPJnIB49VobGWvsavKRPlOFUWuG', 'sukma', 'jaya', ''),
(372, 'wedhani-SV-4859', '$2y$10$u6diQp1HvZ/vN6c1rU1XKeBZDmWszIYVp7IOZQOLP/73fJ/WCoGrm', 'wedhani', 'yulia', ''),
(373, 'wayan-SV-15243', '$2y$10$NJF2oricVDfDakqCDIKm3OL2P7.OC6EHnN0JJj3vPKqPSIF7JVC5a', 'wayan', 'warsa', ''),
(374, 'juliana-SV-5894', '$2y$10$8Zfm/U4IVys7ZWOWzh6suuNbT0LD.bDxnX5924K3TpsZDylipoRuC', 'juliana', 'putu', ''),
(375, 'yuka-SV-12563', '$2y$10$zbecZnh0PbQXIoCJM0QdiesKy5Wl6cnKOzmNuHqeDVFtGYhFesecC', 'yuka', 'lestari', ''),
(376, 'suhar-SV-92713', '$2y$10$mdZwsQN8GcIcgAXad1JOBe25zHKDlEoMaKPp9b.vF1YdF3qjjRwTG', 'suhar', 'bawa', ''),
(377, 'sastra-SV-98123', '$2y$10$14QfDq5f4nCRlTdHMJJWN.dLPK6ln4t9xHwDVKe/zHX5as/pW8qjq', 'sastra', 'bawa', ''),
(378, 'riski-SV-19845', '$2y$10$Ylnhu8R2Kt/n8wQyDqZLTufPLxNfyGlcQxY7LTtH2bgRK8IlZnmLm', 'riski', 'marta', ''),
(379, 'redianta-SV-527', '$2y$10$/nI6OFNlESjFpJETYMqLyuiJMeNDof98bYjGgQGaCkagQGWy0BS4C', 'redianta', 'wiguna', ''),
(380, 'kerta-SV-37541', '$2y$10$/YToZFcnlsTdS6xkcsUUPOvYxVrocrrRuzI8XnTucgfMW2o3eEOnW', 'kerta', 'negara', ''),
(381, 'deo-SV-97426', '$2y$10$ADgh/d.pKsfPw5B1PkL3D.j50Y5eYK6r3KbAWu05CpsKS8ZZ878UG', 'deo', 'anjasmara', ''),
(382, 'sri-SV-46985', '$2y$10$9fwesSm8VRMxI40lztCc4e8hwsfv/D7dK4nMy7hXAtC92Cva8/0oW', 'sri', 'adnyani', ''),
(383, 'hari-SV-53861', '$2y$10$guuzVvYX3.p93ZF26E1JfuAVNFXRcSwkhqtbEbVSDV5eV/uvVPI8K', 'hari', 'asih', ''),
(384, 'rian-SV-68137', '$2y$10$zAVhAE0Kwnf.2LlS4k4Bveest4OGDA7TD3ttgz03U96PLhJfcxST.', 'rian', 'krisna', ''),
(385, 'wayan-SV-74935', '$2y$10$etn/04EoroXtNhPzZDHnOefd5Tzb6EywhuUgZ/2XjNUAelQhNrshq', 'wayan', 'sukadana', ''),
(386, 'yully-SV-96735', '$2y$10$xtyg.3ifHVWIJ0/T2PKDgOR45zgMDtHHWifqYGOuLZhIjpC.Kp18S', 'yully', 'purnami', ''),
(387, 'ketut-SV-84562', '$2y$10$LrnDEzuaYNumQoYNSRCwdOTnOeTnN.3w7WIOEviY8d5bwUrwmHyIy', 'ketut', 'supartini', ''),
(388, 'gede-SV-94568', '$2y$10$WhHAWPuYx4FRJG2QXN/AKOtRXGmW/pxoEIQBm4sYvKkppj5eeZ5Um', 'gede', 'ryan', ''),
(389, 'ary-SV-78529', '$2y$10$WyOxlQ65/R6jxC5pwKcrNe0PhEHiJOwfdTL1woPh7HQc5x4o4WEci', 'ary', 'suryanto', ''),
(390, 'deby -SV-76143', '$2y$10$gPqAjLZhMScJJ16QrDfJQuFKDF7D2EEPSYucvy0J2O.p6i1QSC/2y', 'deby ', 'anggarini', ''),
(391, 'dimas-SV-32854', '$2y$10$sTb0gi/XO8hbzczCOhn3PO7g/KEOqqtZY0T1m5O0JDfKC/Q6OP7iS', 'dimas', 'janardana', ''),
(392, 'asri-SV-29813', '$2y$10$QHhMn9JcfHjPx0E9XWLKkOJ0OAVouZefRiAwDEOO4kTlMxAJyFJVG', 'asri', 'widyasari', ''),
(393, 'aditya-SV-28396', '$2y$10$/0yiQ5M2TCeT9I8wZhqfSuwJhfHoIUOFPRUaz5kSF3hWK.EKK31IG', 'aditya', 'permana', ''),
(394, 'suarbawa-SV-316', '$2y$10$LIZmQrCk/LxfXDRRsBPUYOxH/4G8DsfSo1bgwTs9qPiA/ifUYQpty', 'suarbawa', 'made', ''),
(395, 'ayu-SV-36819', '$2y$10$6kn7IxMPgCUZnjN3dpZieu7etsb3dnBwix8imLRViLOYvXXmEH0xq', 'ayu', 'safitri', ''),
(396, 'ayu-SV-82719', '$2y$10$2mH8nMDwCeS8BpXBgfm57OG8oz3f/jz2dtGqPjauKzCcPG1hJxwXG', 'ayu', 'puspita', ''),
(397, 'desi-SV-23486', '$2y$10$9U5q7hoc0SuXR0QxCfxcKuUxX2hmx2IJ0vQWlq04dibgGqOUvK8dy', 'desi', 'suardini', ''),
(398, 'suryawan-SV-839', '$2y$10$4.EUoDC8ZA2lQka7xZ5Hs.yRLiXPaReoB7X6aATVRuZPssacMAZAK', 'suryawan', 'putra', ''),
(399, 'ekarahayu-SV-85', '$2y$10$UbfcH8yFZg85jSOwiN/OZuZ4ckrDVj.L89cycL2RR3J6LQBpB1SeC', 'ekarahayu', 'widianti', ''),
(400, 'dwi-SV-67458', '$2y$10$EDn7wj8LxwDKgPcyEVCfFuzT03yc3bb.HL87WG33.fCy.7exPXBiK', 'dwi', 'ambrita', ''),
(401, 'edi-SV-85346', '$2y$10$AFXQhl4L7keoMVHi.28TP.hsNyxtG5NlQb25xA0gtx9NP3Yem.kXa', 'edi', 'andita', ''),
(402, 'komang-SV-29618', '$2y$10$DKKC31GZTls1PeRJaDdSX.J/a3UxXkUMaNVPDPnbbLc5eBWjE3XQq', 'komang', 'ariandika', ''),
(403, 'ratih-SV-61985', '$2y$10$cD27b5rsEDGd1ogmUlRMtueX6wBCH5HnHFOE0mbXK4meVkqhuA5eO', 'ratih', 'sri', ''),
(404, 'janu-SV-78596', '$2y$10$cwberPbfJsZFCPhxADv0IOF73OVsH/uw/Yc5cJ1O1mOVTs2q/XAE.', 'janu', 'nuraga', ''),
(406, 'andre-SV-61748', '$2y$10$azd/Db9ZE9X2IPn.nNnIEeox1vAruAmfK7S.Zc02qaRth2XiU/Tga', 'andre', 'wiryawan', ''),
(407, 'ani -SV-18936', '$2y$10$8GR6UIEQ333jKw9us4g0a.rM23ZBnt2vf7n/WipAGI0.s8YUQ/Ibe', 'ani ', 'asih', ''),
(408, 'beno-SV-47128', '$2y$10$d1LD9GIZEGBn7jmpGv37u.6ej9YNLUUjn4gJ5BPORA1SBoylojZhC', 'beno', 'davendra', ''),
(410, 'jeni-SV-93478', '$2y$10$LZPE2d0HOUeAGnNjl3BYSOLsGg.SDHYAqdlBy9kF3R2Q8vNFqcc/W', 'jeni', 'astari', ''),
(411, 'angga-SV-13874', '$2y$10$U565nRqCyqO/cvZx2107Q.RfshF.OSvTb9f5JvpRpyhwiBAYTDd1C', 'angga', 'martadi', ''),
(412, 'agus-SV-64385', '$2y$10$ojeEdwlERv/iCgLQDwiz3uiN2EGAj1Hpe1ePiPItOX/PSo7YBJUl2', 'agus', 'setyawan', ''),
(413, 'made-SV-73458', '$2y$10$hRMCY/t2yErcHhhoZsTIFuPp6Ssea2niAxD6pDWqHrOMPRMV.y0cu', 'made', 'sekarini', ''),
(414, 'made-SV-16358', '$2y$10$DU3TKNg5urpeESi8EaIpl.uLz7.WBKghvBmvqoyd1NX8HyGnKpr/e', 'made', 'sukara', ''),
(415, 'anjlyani-SV-724', '$2y$10$KsESfVROmVRbp.8/KCKpxOvcN3TLQgCWoiaqNsH28eHfuO9Y/0D.G', 'anjlyani', 'ayu', ''),
(416, 'wayan-SV-31524', '$2y$10$3Tkg9TTi9hJKI4SytxSa.ezh7hHtHECId0w.S.yQeza9j2MB8B51u', 'wayan', 'darmika', ''),
(417, 'agus-SV-25439', '$2y$10$aiqUrMCosuxJrTUqr6zhDeukjNBjF/LxtMfk3nu2SNusouw6azKt.', 'agus', 'karisna', ''),
(418, 'cantika-SV-8357', '$2y$10$EMcmVEbZ7UZs0StwhvGhye7HXIvHztwhzUjG.txZo9PU7B0sdqAEa', 'cantika', 'karisna', ''),
(419, 'wayan-SV-28167', '$2y$10$0yOPwXIq4tfw0MJZkh.Sn.vTg0.4GrCoOsAbwBtFncVRc0wFVPl7e', 'wayan', 'prihandina', ''),
(420, 'wayan-SV-15263', '$2y$10$RjuflLaFsAqEU/ZC2zPyDOtMjC5uH6jLN2clUKV0aPFqUWtDD5aH2', 'wayan', 'rasniasih', ''),
(421, 'eka-SV-54267', '$2y$10$agjVzwrHT0EUoLen3GIhaO1YVwrf58.kzPehiEpKpYRL/7jahhyGO', 'eka', 'wiriana', ''),
(422, 'surya-SV-18473', '$2y$10$zdT4c0XjNUVSOSOUekqUb.Waz74SO1kY79Q88Ip2A6637B4Fym2dW', 'surya', 'suardiana', ''),
(423, 'satya-SV-52437', '$2y$10$fVB3T11zoD.2kRCOISS1teO2Q.e6yChBlMrvD.QwbZ0KwuNXL8jtW', 'satya', 'suardana', ''),
(424, 'citra-SV-85712', '$2y$10$1eGXfnO9c/e3C1aU2yYEyO1Dr8Fq.7B5vduOgf08tOrArNsqzmbDy', 'citra', 'rusmala', ''),
(425, 'purnami-SV-4389', '$2y$10$NUPIPIAovSjSE2CkVOgJMOMAjEY/4IPP4RfQGTCfh8RMgEKF.sTx2', 'purnami', 'apriliani', ''),
(426, 'ketut-SV-64217', '$2y$10$4fwFILcRX5Vs83anpIrYHeQ3MHmmJsjP25cYEm3wYLfwAmU4dbPMi', 'ketut', 'sugiarta', ''),
(427, 'adelia-SV-12976', '$2y$10$5gzNxVrftKf2bz.IAV4LceOEBS.bL9Hiew/k067UG3hqv88DfalIa', 'adelia', 'febriani', ''),
(428, 'abelia-SV-52468', '$2y$10$moL.tFAdn/AObVbAZO8gyeHCMyWZLVIj4A2n.1FOQin8ISX.EN1Ui', 'abelia', 'paramitha', ''),
(429, 'wayan-SV-28174', '$2y$10$oY2jgCL5MouE6xEdbqsJQOZBCvz0Gt6lkDmOBd433W.JW8JoaCHL.', 'wayan', 'mayantari', ''),
(430, 'wayan-SV-21963', '$2y$10$800y0KQIg4aQBwtPcYYiauPjuK9JeFD.zdtlU0.TwT9MoTYyjDhu.', 'wayan', 'yudiarta', ''),
(431, 'putu-SV-28496', '$2y$10$0Gy8fhYZ3YE2pM2IwR4B9OhPnvteV39EdAH8.uMgs8ABs6y4udlpW', 'putu', 'listya', ''),
(432, 'tes-SV-91754', '$2y$10$SEe7nU8pIGp9F3gJBZ7oJ.1REGAb1mT94jLyjnfFNSENKCuYb4U5C', 'tes', 'ting', ''),
(433, 'intan-SV-38697', '$2y$10$jm6mT/Mt3twWZO0RjGHlpOTN7/RxNo7b1qW1YmtuONOh9bO/80xF2', 'intan', 'cahyani', ''),
(435, 'manika-SV-69178', '$2y$10$nljZSe9ONQt1BCkQCMwU2.vIQaaOpXcjYizg3nrUdQ.j/UxpsWqDO', 'manika', 'ananda', ''),
(437, 'chandriana-SV-3', '$2y$10$3vM8sEPEf5qh9HPJl8joCO43IiN00HmBhoz1id7Y6vi8Py.o6Qn6O', 'chandriana', 'hindu', ''),
(438, 'komang-SV-42569', '$2y$10$.gO0c/dIgrkYVlCesojl/Ondaix1TqJ9qhaPJ57ctyfaw5HAd5PTm', 'komang', 'febrianti', ''),
(439, 'budy-SV-25839', '$2y$10$1VzcZkHfIWemOTllXQ28D.8NxHY0R17LDq9rFl5EgtbYRoRqA/tgm', 'budy', 'adnyana', ''),
(440, 'subakti-SV-7162', '$2y$10$61/mVT/yA9DfM1kaAbX7Su.PH7cOZC74ql9OoPoVoxCvFaaLmGtFO', 'subakti', 'putra', ''),
(441, 'eru-SV-79126', '$2y$10$OwvsXKbw3upVtyO4m4gpGeu/tW0l8ZYZolYuCVs3Ny3WbRZVonWHS', 'eru', 'sujatiyana', ''),
(442, 'komang-SV-26593', '$2y$10$LaKK9VcXNXUzjgMkA9YdiuFtzjLW1Q4kEVXclu1MZlYcxqigWXol2', 'komang', 'ambarwati', '');

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
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(142, 432, 39, 14),
(143, 362, 39, 14);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
