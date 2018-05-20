-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2018 at 11:00 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `salt` int(8) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `contact` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `role_id`, `username`, `password`, `salt`, `deleted`, `token`, `email`, `contact`) VALUES
(3, 1, 'cyyang', '27f501a09a16885bd6440acbf13ddeee35d64883f76c8e99c386e0acc8fc87d4', 592691, 0, 'dabs57p6ih', 'cyyang94@hotmail.com', '+60167780275'),
(4, 1, 'rob', 'cbc4551a758cf172cde258bb438585ae3edb9842df01877412cc17bf477cb537', 996509, 0, '', 'robxlee@hotmail.com', '123'),
(8, 1, 'ukbadmin', 'cbb6412a1b8db615de60ee4beaea5cbdd97b6319f885caf325d5af7f2ae7e8c4', 115657, 0, '', 'willen.wong@grownce.com', '+60127201755');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `role` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `role`) VALUES
(1, 'operator'),
(2, 'admin'),
(3, 'vendor'),
(4, 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `books_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `file` varchar(128) NOT NULL,
  `description` longtext NOT NULL,
  `thumbnail` varchar(256) NOT NULL DEFAULT '/images/thumbnail/ukubear.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`books_id`, `name`, `file`, `description`, `thumbnail`) VALUES
(3, 'Music Lesson ', 'http://128.199.116.200/music/files/MusicLesson-20march18.zip', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '/images/thumbnail/ukubear.png'),
(4, 'test', 'http://google.com', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '/images/thumbnail/1f3c6.png'),
(5, 'UKB1 Installation Guide', '', 'Guide to install UKB1 Software', '/images/thumbnail/UKB1_Installation_Guide.pdf'),
(6, 'UKB1 Installation', 'UKB1 Installation', 'UKB1 Installation', '/images/thumbnail/UKB1_Installation_Guide.xlsx');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `salt` int(8) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `allowed_devices` int(11) NOT NULL DEFAULT '1',
  `contact_person` varchar(128) NOT NULL,
  `contact_number` varchar(32) NOT NULL,
  `address` varchar(128) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiry` date NOT NULL,
  `email` varchar(64) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `salt`, `points`, `deleted`, `allowed_devices`, `contact_person`, `contact_number`, `address`, `start_date`, `expiry`, `email`, `active`) VALUES
(7, 'rob', '21f6d6f81aa712af34523e675f3e3a984f989b6b3da84d3b9e52bb05b04b79b4', 746750, 0, 0, 1, 'rob', '0167822973', 'menara msc cyberport', '2018-05-14 03:54:15', '2099-12-31', 'rob.lee@commonextract.com', 1),
(12, 'dev1', '59c7968209427a65aaabe44e125286564268f8f144026f6fbc0c1693723f8b35', 496610, 0, 0, 1, 'dev1', '0167822973', 'dev1', '2018-05-14 03:54:15', '2020-05-25', 'dev1@binkmail.com', 1),
(14, 'dev2', 'e4e0f45c745e6448bc0f5434d048437692e3f77c3d24616cca03c0908507bd87', 296989, 0, 0, 1, 'dev2', '0167822973', 'dev2', '2018-05-14 03:54:15', '2025-12-31', 'dev2@dev2.com', 1),
(19, 'Willen', 'cdf651d18d2cc5a296bc540fe757fc018e7f465fab93b4d5206aae47cd705cc3', 206330, 0, 0, 1, '', '', '', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(22, 'perakpkh', '3074274498d1aff09e5cf7e2ba5ac2aac468664631bc085b397ec86c4b2ef5ba', 248340, 0, 0, 1, 'Michael Phoon', '', '', '2018-05-14 03:54:15', '2099-01-01', '', 1),
(23, 'D07001', '3f36978db40c7c03a84f8c785926f778e423029b38904f00913886a1d1942477', 880320, 0, 0, 0, 'Tadika Baptist Canning', 'password 71g111', 'start 1/7/2018', '2018-05-14 03:54:15', '2020-06-30', '', 1),
(25, 'teacher1', '75412858e57fb59998e67732d299cae82b47843bbc7190e5feaf9aadc8854a9e', 160222, 0, 0, 1, 'Anstace', '', '', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(26, 'teacher2', '322471795708780e34131e305bc7977d623a1b4e55897b6642e6189e73bc00a5', 497605, 0, 0, 1, 'Sherly', '', '', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(29, 'DS1', 'a544fabf42055d19bcb3164d9f533d7026316fa0ab2c2ea5cda7b791815e1228', 441369, 0, 0, 1, 'Karen Ng', '', '', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(30, 'teacher3', '175cf1a677076a34b6d096995a425fe4a8ca2d4e4ff4af7ebd0ffba8c8f38976', 127186, 0, 0, 1, 'Sherlin', '', '', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(32, 'teacher4', '19096217a856f3767a2e93ab49b63641339f293240155f56d9e19cd56119a0c1', 443128, 0, 0, 1, '', '', '', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(33, 'test', 'd144598327cc9b625d5660f99c059e94b30ea58eb73e356f6e973005ee69390b', 417196, 0, 0, 1, '', '', '', '2018-05-14 03:54:15', '0000-00-00', 'test@hotmail.com', 1),
(35, 'Ric1', 'a8ff9aa70b4b9290166ec2945fd155044692e358ad93bb3857302ce3d665dd97', 127369, 0, 0, 1, 'Ric', '', 'Password: ric123456', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(36, 'teacher5', 'e7c93fdad0312fa34e75dc1eb4d38f8c179f92c8739b61028bd5ac6a5eb6674f', 803662, 0, 0, 1, '', '', '', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(40, 'peraklsc', 'e3126d4208f24199e554f7f37a67bdff9c53c97c7ca539652e2a0a1548d39a1d', 901563, 0, 0, 1, 'Lee Seng Choy', '', 'Password: GPerak002', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(42, 'D01002', '7b04c482ab95ec31b36d78abb499b6193d860e9e33295f59aced7e746c14035c', 796536, 0, 0, 1, 'Happy Kids Garden', 'Password: 11g112', '', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(43, 'ric2', 'f0be9df3ded71b988090267c3e862434f2ac6bc8add22092f888ae4edde8f414', 628830, 0, 0, 1, '', '', 'password: ric123456', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(44, 'nshkx', 'ad663e286c46629366d4d309e7ffbb2f6a413d14a1cec5f741c9ca06c3020230', 472152, 0, 0, 1, 'Hiew Kai Xuan', 'Password : gnsembilan001', '', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(46, 'selwce', '3c0f41eed4eae47540272b77b7180fa82650d83368a917ce7c99364ca2792c0f', 944005, 0, 0, 1, 'Joel Wong', 'Password: gselangor002', '', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(49, 'jhgsp', 'f944cf1da224c73abb86c407446f30acc8ef9aff37e72d2c36e46bffe3c0e97e', 708044, 0, 0, 1, 'Janet Gan', 'password: gjohor001', '', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(50, 'D01003', '88b56d5967ad4bc57e917300f56bd3c1f1d054f38fefb43ffd019d82d85e25f8', 118759, 0, 0, 1, 'Password : 11g113', 'Roly Poly', 'Start Date: 080518', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(51, 'try1', '978295bf4784659e1b5bdaa9fee60ba9f39c117a1eeed250f5090a703176a45f', 695697, 0, 0, 1, '', '', '', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(52, 'D01001', '8c41fe596858c6f8515005233c433a75836dcce6779f376646cf07a1ca9f6cfc', 128973, 0, 0, 1, 'Tadika Mini (Q-Dees BP)', 'Password: 11g111', 'Start: 7/4/2018', '2018-05-14 03:54:15', '0000-00-00', '', 1),
(53, 'qwe', '5722724cadb5872e7499455a5447c0bc383b689782324928393e944690640ac4', 892030, 0, 0, 0, 'asd', '123123123', 'sadasd', '2018-05-14 03:54:15', '0001-01-01', 'asd@sd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_books`
--

CREATE TABLE `user_books` (
  `user_books_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `books_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_books`
--

INSERT INTO `user_books` (`user_books_id`, `user_id`, `books_id`) VALUES
(10, 12, 3),
(12, 14, 3),
(13, 7, 3),
(17, 19, 3),
(20, 22, 3),
(21, 23, 3),
(23, 25, 3),
(24, 26, 3),
(26, 29, 3),
(27, 30, 3),
(29, 32, 3),
(30, 33, 3),
(31, 33, 4),
(32, 35, 3),
(33, 36, 3),
(36, 40, 3),
(37, 42, 3),
(38, 43, 3),
(39, 44, 3),
(42, 50, 3),
(43, 19, 5),
(44, 51, 3),
(45, 52, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_device`
--

CREATE TABLE `user_device` (
  `user_device_id` int(11) NOT NULL,
  `device_id` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `user_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_device`
--

INSERT INTO `user_device` (`user_device_id`, `device_id`, `token`, `user_id`, `active`, `timestamp`) VALUES
(13, 'E1C33582-F5FB-5EF3-AB82-BC641FE1C4F2', 'e39v2x87c1', 7, 1, '2018-03-22 21:23:02'),
(20, '520a3ed0237231c2539fbcb5a9450db16f170871', 'zgqt8pid18', 22, 1, '2018-03-29 01:18:01'),
(22, '4571b221c0fc98fb4a87c15328de76d21fb1a02d', 'g921253km0', 25, 1, '2018-03-28 05:30:39'),
(23, '46993e3cfbc7be232327b221be2fac12b2ecc3a5', 'zan8cbsh8l', 23, 1, '2018-03-26 06:23:28'),
(26, 'a7bd429c79936250fb91469114a32415495989e1', 'if25j5qbws', 29, 1, '2018-03-26 13:06:22'),
(27, 'f0f1048c32a6c77a80950fe1344d97ce868a4ff8', 'n11k7lm123', 30, 1, '2018-03-27 03:02:26'),
(30, 'test', 'y512993as2', 33, 1, '2018-03-29 04:43:43'),
(40, '32d2e7a67df132e036ba435cc9aa5a236439637d', 'QbNsmKjWG3', 43, 1, '2018-04-29 15:54:42'),
(41, '5300b4bd76d440aee7454b7fe6c1ed7196b61b86', '', 26, 1, '2018-04-25 13:28:29'),
(42, '688b86a984699b9b9ae24cea119b6a738e65606f', '', 12, 1, '2018-04-26 02:53:43'),
(43, '73b2c9d4ae03f550107b257750a54afbc01cb7e8', 'SoZCmgMIDL', 35, 1, '2018-04-30 06:19:45'),
(44, '7774c578de97ca6bc5a945bbc3fb43d03f5444f9', '', 32, 1, '2018-04-30 02:30:27'),
(45, '423c63532fb4965b539344fe5200c28456cdec7b', 'zTGnwXObio', 46, 1, '2018-05-02 15:05:50'),
(47, 'cacbff6b0acf18c0584c9d8477a0e305aa2b20da', '', 44, 1, '2018-05-02 08:26:30'),
(48, '622e2610cc955e972399a79608e36421f4876f2d', '', 42, 1, '2018-05-04 06:59:28'),
(53, '3c9554036df86f1285304d82f4617b84abaf62b3', '', 36, 1, '2018-05-10 01:20:37'),
(54, '94d537584012a41012d2c9c6cc3f14063d89e0ae', '', 51, 1, '2018-05-10 02:04:08'),
(55, 'fb55e46ee456e86aa70f68d06fb8a72e74bb2605', '', 50, 1, '2018-05-12 03:28:50'),
(57, 'd1d2ef1ffaf98662e0ca73f94fec6f195e583703', '', 19, 1, '2018-05-13 03:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_device_token`
--

CREATE TABLE `user_device_token` (
  `user_device_token_id` int(11) NOT NULL,
  `user_device_id` int(11) NOT NULL,
  `token` varchar(128) NOT NULL,
  `type` varchar(32) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_device_token`
--

INSERT INTO `user_device_token` (`user_device_token_id`, `user_device_id`, `token`, `type`, `timestamp`) VALUES
(790, 23, 'yn42xkbd36', 'SHORT', '2018-04-25 08:35:21'),
(791, 23, '2vn36z5ike', 'MEDIUM', '2018-04-25 08:35:21'),
(792, 23, 'njgbw5qkc4', 'LONG', '2018-04-25 08:35:21'),
(913, 30, '53ljsut2e9', 'SHORT', '2018-04-27 04:05:32'),
(914, 30, 'ls185afy4k', 'MEDIUM', '2018-04-27 04:05:32'),
(915, 30, '21whm2voar', 'LONG', '2018-04-27 04:05:32'),
(1006, 44, '51plt2v51g', 'SHORT', '2018-04-30 02:30:27'),
(1007, 44, 'f5nim583yv', 'MEDIUM', '2018-04-30 02:30:27'),
(1008, 44, 'ul19x52dg4', 'LONG', '2018-04-30 02:30:27'),
(1162, 42, 'gzoh4nt95q', 'SHORT', '2018-05-02 05:34:07'),
(1163, 42, '191eufg47o', 'MEDIUM', '2018-05-02 05:34:07'),
(1164, 42, 'iuzt283ngo', 'LONG', '2018-05-02 05:34:07'),
(1180, 47, '5fz2yjgiv9', 'SHORT', '2018-05-02 08:26:30'),
(1181, 47, 'y21i92e5cx', 'MEDIUM', '2018-05-02 08:26:30'),
(1182, 47, 'g2mpxt92fo', 'LONG', '2018-05-02 08:26:30'),
(1255, 26, '80v1sn5b2k', 'SHORT', '2018-05-04 06:35:30'),
(1256, 26, 'z5r5dq0ahj', 'MEDIUM', '2018-05-04 06:35:30'),
(1257, 26, '3ywps54ga3', 'LONG', '2018-05-04 06:35:30'),
(1258, 48, 'h6d48x4vs5', 'SHORT', '2018-05-04 06:59:28'),
(1259, 48, 'b2v198sj6a', 'MEDIUM', '2018-05-04 06:59:28'),
(1260, 48, '1xna1m1s5v', 'LONG', '2018-05-04 06:59:28'),
(1276, 45, 'wo2zm85286', 'SHORT', '2018-05-06 05:16:59'),
(1277, 45, 'g152dqo65i', 'MEDIUM', '2018-05-06 05:16:59'),
(1278, 45, '1ysf9oped2', 'LONG', '2018-05-06 05:16:59'),
(1369, 40, '54c5t28n6v', 'SHORT', '2018-05-09 07:31:08'),
(1370, 40, '1526tmu8b5', 'MEDIUM', '2018-05-09 07:31:08'),
(1371, 40, 'n1k89faj1i', 'LONG', '2018-05-09 07:31:08'),
(1375, 53, '9j63snwvbm', 'SHORT', '2018-05-10 01:27:14'),
(1376, 53, 'pycuw4fk5l', 'MEDIUM', '2018-05-10 01:27:14'),
(1377, 53, 'eu6gb6yzs9', 'LONG', '2018-05-10 01:27:14'),
(1378, 54, 'cz518jpwu2', 'SHORT', '2018-05-10 02:04:08'),
(1379, 54, 'dz4n9w512e', 'MEDIUM', '2018-05-10 02:04:08'),
(1380, 54, 'p29oynejz8', 'LONG', '2018-05-10 02:04:08'),
(1426, 41, 'ido10t23zx', 'SHORT', '2018-05-11 09:27:09'),
(1427, 41, 'h064ibx5km', 'MEDIUM', '2018-05-11 09:27:09'),
(1428, 41, '5cb2vz16l0', 'LONG', '2018-05-11 09:27:09'),
(1435, 27, '4520yj4m63', 'SHORT', '2018-05-11 09:30:42'),
(1436, 27, '125uq952xa', 'MEDIUM', '2018-05-11 09:30:42'),
(1437, 27, '13vw6sn02y', 'LONG', '2018-05-11 09:30:42'),
(1438, 22, 'j01rn2kzxm', 'SHORT', '2018-05-12 00:44:10'),
(1439, 22, 'f6y584a8mq', 'MEDIUM', '2018-05-12 00:44:10'),
(1440, 22, 'm19z8jyf54', 'LONG', '2018-05-12 00:44:10'),
(1441, 55, 'ql1amr57of', 'SHORT', '2018-05-12 03:28:50'),
(1442, 55, 'o2ja8bi16v', 'MEDIUM', '2018-05-12 03:28:50'),
(1443, 55, 'duihwcpag3', 'LONG', '2018-05-12 03:28:50'),
(1444, 20, '4k5289vrbn', 'SHORT', '2018-05-12 08:05:59'),
(1445, 20, 'iqsp956zf1', 'MEDIUM', '2018-05-12 08:05:59'),
(1446, 20, 'at2x6mzio8', 'LONG', '2018-05-12 08:05:59'),
(1456, 57, '1sljcqgp3d', 'SHORT', '2018-05-13 07:58:59'),
(1457, 57, 'h29ibyqa1u', 'MEDIUM', '2018-05-13 07:58:59'),
(1458, 57, 's28u11oef4', 'LONG', '2018-05-13 07:58:59'),
(1459, 43, 'ko1l71std6', 'SHORT', '2018-05-14 01:06:14'),
(1460, 43, '9edg154u8p', 'MEDIUM', '2018-05-14 01:06:14'),
(1461, 43, 't5v24ou37x', 'LONG', '2018-05-14 01:06:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`books_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_books`
--
ALTER TABLE `user_books`
  ADD PRIMARY KEY (`user_books_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_device`
--
ALTER TABLE `user_device`
  ADD PRIMARY KEY (`user_device_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `user_id_3` (`user_id`);

--
-- Indexes for table `user_device_token`
--
ALTER TABLE `user_device_token`
  ADD PRIMARY KEY (`user_device_token_id`),
  ADD KEY `user_device` (`user_device_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `books_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user_books`
--
ALTER TABLE `user_books`
  MODIFY `user_books_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `user_device`
--
ALTER TABLE `user_device`
  MODIFY `user_device_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `user_device_token`
--
ALTER TABLE `user_device_token`
  MODIFY `user_device_token_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1462;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_books`
--
ALTER TABLE `user_books`
  ADD CONSTRAINT `user_books_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_device`
--
ALTER TABLE `user_device`
  ADD CONSTRAINT `user_device_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_device_token`
--
ALTER TABLE `user_device_token`
  ADD CONSTRAINT `user_device_token_ibfk_1` FOREIGN KEY (`user_device_id`) REFERENCES `user_device` (`user_device_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
