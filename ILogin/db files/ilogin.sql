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
-- Database: `ilogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `instagram`
--

CREATE TABLE `instagram` (
  `id` int(16) NOT NULL,
  `access_token` varchar(128) NOT NULL,
  `insta_user_id` int(16) NOT NULL,
  `username` varchar(256) NOT NULL,
  `profile_picture` varchar(256) NOT NULL,
  `full_name` varchar(256) NOT NULL,
  `bio` text NOT NULL,
  `website` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instagram`
--

INSERT INTO `instagram` (`id`, `access_token`, `insta_user_id`, `username`, `profile_picture`, `full_name`, `bio`, `website`) VALUES
(1, '496534999.46c42af.1f8aef0bbb7f4762b7ea123fbcf9d2be', 496534999, 'seetguangzhi', 'https://scontent.cdninstagram.com/vp/7ab906d2aae96468f234bd12a0f9a64f/5B7EF9C1/t51.2885-19/11373765_662093227223710_1952875682_a.jpg', 'SGZ', '', ''),
(3, '7575868253.46c42af.9a951b4c4c4944f7aa060fd571ba891d', 2147483647, 'seetgz000', 'https://scontent-icn1-1.cdninstagram.com/vp/856b9478629f7c2f4ae549c4c8cc5dd7/5B94597A/t51.2885-19/11906329_960233084022564_1448528159_a.jpg', 'dev_seet', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `phone_number` varchar(64) NOT NULL,
  `email` varchar(256) NOT NULL,
  `ic_number` varchar(128) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`, `phone_number`, `email`, `ic_number`, `deleted`) VALUES
(28, 'Vivienne', '000', 'agent1@hotmail.com', '000', 0),
(30, 'Freddy Lim Yong Cheng', '60192760503', 'limfreddy@yahoo.com', '', 0),
(31, 'Khaw Chi Hun ', '60165684228', 'chihunkhaw@hotmail.com', '970619-08-5907', 0),
(32, 'Esmond Liaw Chu Siang ', '60165268528', 'esm-liaw5726@hotmail.com', '940121-13-6327', 0),
(33, 'Ngoi Jen Liang ', '60135840883', 'ngooi0718@outlook.com ', '980718-03-5955', 1),
(34, 'Regine Chew Jia Yi', '60162068785', 'reginechew0724@gmail.com', '960724-30-5028', 0),
(35, 'Stephanie Wong Kui Yan ', '60165529856', 'kui_yan@hotmail.com ', '960305-12-5364', 0),
(36, 'Cassandra Lim Kai Ling ', '60169515107', 'lim.cassandra44@hotmail.com ', '970406-06-5718', 0),
(37, 'Yeong Wen Jie ', '60162611828', 'terrenceyeong1997@outlook.com ', '970416-08-5587', 0),
(38, 'Lim Pui San ', '60102989856', 'meagannn.1@hotmail.com ', '961021-14-5640', 0),
(39, 'Sheron Tan', '+60178813513', 'sheronsyt@gmail.com', '', 0),
(40, 'Elliot Chong Yee Lit ', '60167172523', 'elliotcyl95@gmail.com ', '950504-12-6061', 0),
(41, 'Melvin Ng Shung Yew', '60199810624', 'melvin0624@gmail.com', '980624-14-5643', 1),
(42, 'Liew Wee San ', '60178859281', 'defsan1003@gmail.com', '', 1),
(43, 'TestTenant', '', 'Dereksohproperties@gmail.com', '', 1),
(44, 'Sirinya Jumpol ', '60166871792', '-', 'AA2341202', 0),
(45, 'Abigail Tan Sze-Xin', '60124525397', 'oreomaniaclan@gmail.com', '970617-10-5660', 0),
(46, 'Martin Wong', '60198199713', 'mgwong92@gmail.com', '920929-13-5353', 1),
(47, 'Low Hoong Ting ', '60173071055', 'ting98998@hotmail.com', '980929-05-5235', 0),
(48, 'Ling Jing Yong ', '60127792659', 'yong960706@gmail.com ', '960706-01-6855', 0),
(49, 'Law Jia Ning', '60177973507', 'ning9898@icloud.com', '980210-01-5750', 1),
(50, 'Soh Chun Kiat ', '60109825237', 'dominicksohck@gmail.com', '-', 0),
(51, 'Ben Nee', '60129280030', 'x3ben96@hotmail.com', '', 0),
(52, 'Eugene Wong', '60196610626', 'eugene.yipei@gmail.com', '', 0),
(53, 'Goh Kok Ming ', '60194119088', 'gohkokming@hotmail.com', '', 0),
(54, 'Jason Chelvasingham A/L N Veerasingam', '60123830175', 'jcveera@yahoo.com', '', 0),
(55, 'Sudharmaram A/L V. Padman', '60124283158', 'rampad757@gmail.com', '', 0),
(56, 'landlord_4', '', '', '', 1),
(57, 'landlord_5', '', '', '', 1),
(58, 'Anna Marie D/O Nathan', '60122125867', 'philip.rao@my.ey.com', '', 0),
(59, 'Teo Pooi Yan ', '60179014487', 'marelinteo.paradise@gmail.com', '970429-06-5374', 0),
(60, 'Vivien Lim Li Ping', '60172265186', 'vivienlimliping@gmail.com', '', 0),
(61, 'Muhammad Fikri Bin Rozman ', '60192183711', 'fikrirozman143@gmail.com', '970511-56-5079', 0),
(62, 'Vgneswaran A/L Muniandy', '60106651120', 'vgneswaranm@yahoo.com', '950117-04-5253', 0),
(63, 'Kabilan A/L Pararajasingam ', '60146401752', 'kabilan@hotmail.com', '950228-10-6629', 0),
(64, 'Julie ', '60122123388', 'jtyyyy@gmail.com', '', 0),
(65, 'Yasotha A/P Subramaniam ', '60125504073', 'gope.karuppiah@nxp.com', '', 0),
(66, 'Chin Siew Wen', '60135971475', 'wendychin1983@gmail.com', '', 0),
(67, 'Wong Mun Kong ', '60193593728', '-', '', 0),
(68, 'Ho Khai Ling ', '60162959112', 'khailing1998@gmail.com', '980210-56-5058', 0),
(69, 'Makrani Suheil Ahmed Mohamed Ismail', '60104609678', 'suheilmakrani@gmail.com', 'A1783351', 1),
(70, 'Makrani Suheil Ahmed Mohamed Ismail', '60104609678', 'suheilmakrani@gmail.com', 'A1783351', 1),
(71, 'Makrani Suheil Ahmad Mohamed Ismail', '60104609678', 'suheilmakrani@gmail.com', 'A1783351', 0),
(72, 'Makrani Suheil Ahmed Mohamed Ismail', '', '', '', 1),
(73, 'Chen Poh Chu ', '60129921998', 'chu9832@gmail.com', '980110-03-5690', 0),
(74, 'Yee I-Van', '60129444349', 'artbug@gmail.com', '', 0),
(75, 'Lee Tee Wee', '60178887987', 'nicolelee75@hotmail.com', '', 0),
(76, 'Dushanth Mahendran', '60102807656', 'dushanthdanielray@gmail.com', '931204-10-5839', 0),
(77, 'Mr Chin', '60124305564', 'chinlc55@yahoo.com', '', 0),
(78, 'Loh Chit Sin', '60123130980', 'chitloh@gmail.com', '', 0),
(79, 'Michael Tan', 'michaeltan8000@gmail.com', '60195603688', '', 0),
(80, 'Gladys Leong ', '60122088761', 'gladys.leong@my.ey.com', '', 0),
(81, 'Wong Siew Ling ', '60122189047', 'yellowsling@yahoo.com', '', 0),
(82, 'Muhammad Zulhisni Bin Haji Mohiddin ', '601151137880', '-', 'C0353839', 1),
(83, 'Ammy', '60179075376', 'nrsyahiraamira@gmail.com', '950811-03-5418', 0),
(84, 'M. Raheel Siddique ', '60173068451', 'siddique33@yahoo.com', 'AL9106742', 0),
(85, 'Calvin Diong Soon Keon ', '60134239773', 'calvindiong96@gmail.com', '960809-07-5153', 0),
(86, 'Rama Prasad Reddy Mummadi ', '601136671488', 'ramsapvistex@umail.com', 'H6570671', 1),
(87, 'Chan Kit Poo', '60122799521', 'cheeho2806@gmail.com', '', 0),
(88, 'Low Meng Loh ', '60162789375', 'lowmengloh@gmail.com', '', 0),
(89, 'Andrew Chan Zen Sheng', '60127725075', 'zensheng@gmail.com', '', 0),
(90, 'Leslie Goh', '60123056201', 'gohtl@hotmail.com', '', 0),
(91, 'Edmund Khoo Boon Teik', '60122351818', 'edmund@kysasia.com', '', 0),
(92, 'Derek Soh', '', 'dereksohproperty@gmail.com', '', 0),
(93, 'Derek Soh', '', 'dereksohproperty@gmail.com', '', 0),
(94, 'Christicia Gusvita Biyang', '-', 'cristicia@yahoo.com', 'B3911016', 0),
(95, 'Henrianto', '-', 'henrianto13@gmail.com', 'B3592727', 0),
(96, 'Ervina Nur Amalia Erwin', '60172849345', 'edyyanto.ervin@yahoo.com', 'B4133789', 0),
(97, 'G. Punitha Vathanan A/L S.Govinda Raju', '60192656904', 'punithan575@gmail.com', '691114-10-6221', 0),
(98, 'Adrian Yong Jung Cheng', '60102810836', 'adrianyong1998@hotmail.com', '980715-10-6789', 0),
(99, 'Melvern Usman ', '+62811641909', 'melxthundz@yahoo.com', 'B0174620', 0),
(100, 'Rama Prasad Reddy Mummadi ', '601136671488', 'ramsapvistex@umail.com', 'H6570671', 1),
(101, 'Larry Nyamupanemunda', '60166265182', 'larryshime@gmail.com', 'BN942862', 0),
(102, 'Frisco Valianto Sarjono ', '01116225799', 'f.valianto@gmail.com', 'AT229043', 0),
(103, 'Mok Zhung Jie', '60142102029', 'coolmokzj@hotmail.com', '980110-04-5119', 0),
(104, 'Lee Huei Ru', '60103662150', 'hueiruuuu1998@gmail.com', '980708-10-6684', 0),
(105, 'Chong Jia Yee ', '60163375358', 'midor.chong@gmail.com', '960908-10-6576', 0),
(106, 'Phablus Bacolod Pablo', '60102641276', 'liza.farah@gmail.com', 'VV0514663', 0),
(107, 'Craig Bekitemba Bootha Gumbo', '60168103824', 'gumbo.crasg@gmail.com', 'ON282760', 0),
(108, 'Frederick Ipoma Makay ', '60166540377', 'frederickipoma@gmail.com', 'OB0729670', 0),
(109, 'Muhammad Zulhusni Bin Haji Mohiddin ', '601151137880', '-', 'C0353839', 0),
(110, 'Rama Prasad Reddy Mummadi ', '601136671488', 'ramsapvistex@umail.com', 'H6570671', 1),
(111, 'Sasitharan Nagalingam ', '60179114359', 'daransasi30@yahoo.com', '960714-14-6377', 0),
(112, 'Cheong Jia Hao', '60162239924', 'lovelessforever96@gmail.com', '961028-59-5185', 0),
(113, 'Theresa Tan Li Lien ', '60164281663', 'theresaatann@gmail.com', '970603-38-5286', 0),
(114, 'Harban Singh S/O Labh Singh', '', '', '', 0),
(115, 'Shey Wan Shin', '60177939236', 'kyle0118@gmail.com', '930118-04-5214', 1),
(116, 'Soh Wee Chin', '60162331287', '', '', 1),
(117, 'Jack ', '60146403955', '', '', 1),
(118, 'Tan Wan Yen', '60165635289', 'yentan.my@gmail.com', '890119-08-5310', 1),
(119, 'Susan ', '60146403955', '', '', 1),
(120, 'Loh Xun Yee (Jimmy)', '60127143823', 'jimmylohxunyee@gmail.com', '920303-04-5165', 1),
(121, 'Teh Siew Nu', '60176082808', 'tehsiewnu@yahoo.com', '880917-04-5496', 1),
(122, 'Indian Tenant', '', '', '', 1),
(123, 'Vincent Nee', '012-3392366', 'vince_nee1202@hotmail.com', '', 0),
(124, 'Boon', '60129891930', '', '', 1),
(125, 'Ler Boon Chiong', '60193838579', '', '', 0),
(126, 'Mervin', '601125772291', '', '', 1),
(127, 'Arman ', '60122997297', '', '', 1),
(128, 'Wan Shauqi ', '60179342023', '-', '940326-03-5095', 1),
(129, 'Aaron', '60163959560', '-', '-', 1),
(130, 'Jeffrey', '601111011112', '-', '-', 1),
(131, 'Davis', '60179176083', '-', '-', 1),
(132, 'Kenneth', '60176502026', '-', '-', 1),
(133, 'Eng Wai Kian ', '60179683938', '-', '960509-03-5619', 1),
(134, 'Tan Haw Yang', '60125768867', 'tanhawyang@gmail.com', '961217-08-5301', 1),
(135, 'Sylvia ', '60179270425', '', '-', 1),
(136, 'Foo Fong Thol', '60123282332', '', '', 0),
(137, 'Lim Kai Jie ', '', 'kaijie_kj_96', '', 1),
(138, 'Lim Kai Jie ', '60167134619', 'kaijie_kj_96@hotmail.com', '960619-07-5195', 1),
(139, 'Anton Nee ', '60173241012', 'antonneee@gmail.com', '', 0),
(140, 'Jason Yu Kong Chai ', '60175609377', 'jasonyu890904@gmail.com', '890904-08-5367', 1),
(141, 'Kelvin (Hana Dining)', '60194140025', '-', '-', 1),
(142, 'Ahsam Mujeed Puri', '60163975692', '-', 'AA0530702', 1),
(143, 'Tan chee Wui (Danny)', '60128854139', 'dannytan8998@gmail.com', '971210-13-5205', 1),
(144, 'Hoo Chiew Wei ', '60109835593', 'weihoo96@gmail.com', '960826-11-5276', 1),
(145, 'Ibtihaj Abbas Khan ', '-', 'ibtihaj@live.com', 'BS4110792', 1),
(146, 'Lee Jia Cheng', '-', '-', '-', 1),
(147, 'Chester & Daren', '-', '-', '-', 1),
(148, 'Tang Choong Kae ', '60123282332', '', '', 0),
(149, 'Ah Soon ', '60177444166', '-', '-', 1),
(150, 'Michelle', '60139155822', '-', '-', 1),
(151, 'Ng Chun Kiat', '60164950688', '-', '900606-07-5597', 1),
(152, 'Cheng Pong', '601125822641', '-', '-', 1),
(153, 'Lee Tee Wee', '60178887987', 'nicolelee75@hotmail.com', '', 0),
(154, 'Thing Bi Li ', '60125119147', 'ThingBi@hotmail.com', '950920-08-5617', 0),
(155, 'Roger Ting Sze Khai ', '60146853628', 'roger_ting1234@hotmail.com', '950704-13-6133', 0),
(156, 'Lukumukwilesa Kang\'omba', '601124334552', 'kwilesa@yahoo.com', 'ZN416415', 0),
(157, 'Winnie Loh Kai Sing', '60103728699', 'xueling_00@hotmail.com', '970801-66-5078', 0),
(158, ' Netasha Rose Bt Mohd Shamiel Samy', '013-5192067', 'r_netasha@yahoo.com', '980527-35-5016', 0),
(159, 'Bryan Chi Kok Yan', '60135535375', '', '', 0),
(160, 'Teh Chin Zhi', '60103806879', 'Tehchinzhi@gmail.com', '971117055147', 0),
(161, 'Divenesh A/L Saravanan', '60134242007', 'ranjitsidhu', '990811085227', 0),
(162, 'Oon Chun Ming', '', '', '990510088133', 0),
(163, 'Frisco Valianto Sarjono', '', 'f.valianto@gmail.com', 'AT229043', 0),
(164, 'Seu Yu Yang ', '0167937932', 'yanglove@hotmail.my', '950609-01-6731', 0),
(165, 'Martin Owen Lai', '0169347171', 'owenlai98@yahoo.com', '981017065849', 0),
(166, 'Lim Pui Yan', '01116301838', 'angellimpuiyan@gmail.com', '950416045026', 0),
(167, 'Er Xiao Yang', '012-5687891', '', '960428105169', 0),
(168, 'Aulia Nabila Ekaputri', '0146417018', 'bella_trex@yahoo.com', 'A3526606', 0),
(169, 'Leong Wai Yong', '012-6720451', 'xehanort0730@hotmail.com', '960730146043', 0),
(170, 'Toh Ee Ching', '012-2993551', 'cammietoh@gmail.com', '960415045330', 0),
(171, 'Aaron Lee Vie Kit', '0189742115', 'aaronlee421@gmail.com', '990421105245', 0),
(172, 'Tan Kian Tat', '0162554399', 'shin.kiantat@gmail.com', '960828106859', 0),
(173, 'Muhammad Amir Hafiz Bin Hapizfuddin', '0178878698', 'amirhafiz98@gmail.com', '980903107615', 0),
(174, 'Fathimath Shu\'ula ', '+601126510394', ' fshuula@gmail.com', '', 1),
(175, 'Mohammad Omar', '014 3972040', 'mohdomar1996@gmail.com', '960403-14-5019', 0),
(176, 'Kevin Ngan Wee Seong', '0173060717', 'kngan16@gmail.com', '960623-10-5369', 0),
(177, 'Fathimath Shu\'ula', '01126510394', 'fshuula@gmail.com', '', 0),
(178, 'Aaron Lim Fei Hoong', '0168699164', ' samiel09th@gmail.com', '920407615085', 0),
(179, 'Tan Kul Qi', '017-7371467', 'megustaskq9893@gmail.com', '980903-01-6414', 0),
(180, 'Satishkumar S/O Udaya Kumar', '012-9419066', 'satishkumar_7373@yahoo.com', '951007055033', 0),
(181, 'Tan Mei Xin', '010 921 5049', '0117051@kdu-online.com', '980409 06 5210', 0),
(182, 'Bavani Balakrishnan', '0165134694', 'bavani1106@gmail.com', '900611075364', 0),
(183, 'Maghfirah Ahmad', '01133905708', 'm-replay@hotmail.com', ' C0235836', 0),
(184, 'Chu Meng Hoe', ' 017-2186892', 'elvin_shadow@hotmail.com', '960124-14-6625', 0),
(185, 'Ponnusamy Senthil Kumar', '011-27883766', 'senthil.infinity@gmail.com', 'K 6715044', 0),
(186, 'Chung Zhen Nam', '0162833343', 'chungzhennam@gmail. com', '', 0),
(187, 'Sarah Gitongu', '013-3856057', 'sarahgitongu@yahoo.com', 'A1964258', 0),
(188, ' Venessa Lim Yee Peng', '012-8721058', 'pingz1108@gmail.com', '940811-13-6682', 0),
(189, 'Joanne Chong', '0165348990', 'shuwen3416@gmail.com', '960103085210', 0),
(190, 'Asrie Tiffani', '014-6149096', 'asrietiffani@gmail.com', 'B2954531', 0),
(191, 'Ling I Jiea', '016 5398562', 'lingij97@gmail.com', '970623 38 5099', 0),
(192, 'Koh Wan Hui', '0167787125', 'kohwanhui@gmail.com', ' 981022016750', 0),
(193, 'Collin Yeo', '012-4755366', 'collinycy@gmail.com', '941021-07-5453', 0),
(194, 'Kiu Chet Cherng 丘泽盛', '017 7212960', 'cherng-99@hotmail.com', '991205-01-6277', 0),
(195, 'Allen Sorono', '017-3319781', 'liza_farah@gmail.com', 'EC5967400', 0),
(196, 'Revin Vieri Zefanya', '01133039899', 'rvieriz.me@gmail.com', 'B1766554', 0),
(197, 'Chan Kai Ye', '0127131716', 'kelvincky@hotmail.com ', '930219015321 ', 0),
(198, 'Janaarthini a/p Gianason', '0173160651', 'sanjvi90@yahoo.com', '900902-05-5080', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `salt` varchar(8) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `insta_access_token` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `salt`, `deleted`, `insta_access_token`) VALUES
(1, '', 'cyyang', '477f40cb0b7211f95196c02b1b9de8f019d55fa168e0ad10cefc296136732e336c276dd165cc332380a3389a568e469e35ae67acf9fb85a847af5f8a22455eec', '32935368', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instagram`
--
ALTER TABLE `instagram`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `insta_user_id` (`insta_user_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instagram`
--
ALTER TABLE `instagram`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
