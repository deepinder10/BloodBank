-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2016 at 10:06 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE IF NOT EXISTS `advertisement` (
  `adv_id` int(100) NOT NULL,
  `camp_title` varchar(100) NOT NULL,
  `org_by` varchar(100) NOT NULL,
  `pic` varchar(700) NOT NULL,
  `detail` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE IF NOT EXISTS `bloodgroup` (
  `bg_id` int(100) NOT NULL,
  `bg_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`bg_id`, `bg_name`) VALUES
(13, 'o+'),
(14, 'o-'),
(15, 'AB+'),
(16, 'AB-'),
(17, 'A+'),
(18, 'A-'),
(19, 'B+'),
(20, 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE IF NOT EXISTS `camp` (
  `camp_id` int(100) NOT NULL,
  `camp_title` varchar(500) NOT NULL,
  `organised_by` varchar(500) NOT NULL,
  `state` int(100) NOT NULL,
  `city` int(100) NOT NULL,
  `pic` varchar(900) NOT NULL,
  `detail` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`camp_id`, `camp_title`, `organised_by`, `state`, `city`, `pic`, `detail`) VALUES
(1, 'Other', '', 0, 0, '', ''),
(2, 'Riding cycle for blood donation', 'BDCyclists', 9, 5, 'DSC_0671.JPG', 'Donating 1 bag blood can save others life'),
(3, 'World Diabates day blood Donation', 'Bangladesh Diabates association', 9, 5, 'p137.jpg', 'Your 1 bag blood can give you another life'),
(4, 'Demo1', 'Demo1', 9, 5, '123.jpg', 'Donating blood'),
(5, 'Demooo', 'Demooo', 9, 4, '123.jpg', 'Donate blood');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(100) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `pin_code` varchar(100) NOT NULL,
  `district` int(10) NOT NULL,
  `state` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `pin_code`, `district`, `state`) VALUES
(4, 'kafrul', '1216', 1, 9),
(5, 'mirpur', '1206', 1, 9),
(6, 'Agargao', '1211', 1, 9),
(7, 'Azimpur', '1211', 1, 9),
(8, 'habiganj', '7777', 5, 16),
(9, 'Alfadanga', '3333', 2, 9),
(10, 'sadar', '3333', 2, 9),
(11, 'Nothullabad', '1301', 9, 10),
(12, 'Golachipa', '1302', 10, 10),
(13, 'Amtoli', '1303', 10, 10),
(14, 'Mothbaria', '1304', 11, 10),
(15, 'Vola sadar', '1305', 12, 10),
(16, 'Lalmohon', '1306', 12, 10),
(17, 'Chor fashion', '1307', 12, 10),
(18, 'Kuakata S', '1308', 13, 10),
(19, 'Kolapara', '1309', 13, 10),
(20, 'Borguna', '1310', 13, 10),
(21, 'Bagerhat sadar', '4501', 20, 12),
(22, 'Rajbari', '1401', 2, 9),
(23, 'Gazipur sadar', '1501', 3, 9),
(24, 'Tekerhat', '1601', 4, 9),
(25, 'Nothullabad', '1701', 9, 10),
(26, 'Nolcity', '1801', 10, 10),
(27, 'Mativanga', '2001', 11, 10),
(28, 'Amtoli', '2101', 14, 10),
(29, 'chatok sadar', '2201', 35, 16),
(30, 'Habigonj sadar', '2301', 5, 16),
(31, 'Moulovibazar S', '2401', 6, 16),
(32, 'Shunamgonj S', '2401', 7, 16),
(33, 'Sajek', '8898', 19, 11);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `row_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `subj` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `dis_id` int(10) NOT NULL,
  `state_id` int(10) NOT NULL,
  `dis_name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`dis_id`, `state_id`, `dis_name`) VALUES
(1, 9, 'Dhaka'),
(2, 9, 'Faridpur'),
(3, 9, 'Gazipur'),
(4, 9, 'Gopalganj'),
(5, 16, 'Habiganj'),
(6, 16, 'Moulvibaza'),
(7, 16, 'Sunamganj'),
(8, 16, 'Sylhet'),
(9, 10, 'Barishal Shadar'),
(10, 10, 'Patuakhali'),
(11, 10, 'Pirojpur'),
(12, 10, 'vola shadar'),
(13, 10, 'Kuakata'),
(14, 10, 'Vandaria'),
(15, 11, 'Chittagong S'),
(16, 11, 'Lohagara'),
(17, 11, 'choumuhoni'),
(18, 11, 'Rangamati'),
(19, 11, 'Khagrachori'),
(20, 12, 'Bagerhat'),
(21, 12, 'Keshobpur'),
(22, 12, 'Monirampur'),
(23, 12, 'Gopalgonj'),
(24, 13, 'Muktagacha'),
(25, 13, 'Trishal'),
(26, 13, 'Netrokona'),
(27, 14, 'Chapai'),
(28, 14, 'Natore'),
(29, 14, 'Bogura'),
(30, 14, 'Shirajgonj'),
(31, 15, 'Kishorgonj'),
(32, 15, 'Lalmonirhat'),
(33, 15, 'Kurigram'),
(34, 16, 'Sylhet Shadar'),
(35, 16, 'chatok'),
(36, 16, 'Shunamgonj'),
(37, 16, 'Bianibazar'),
(38, 16, 'Tahirpur'),
(39, 15, 'Rangpur Shadar'),
(40, 14, 'Rajshahi Sadar'),
(41, 13, 'Mymensingh S'),
(42, 12, 'Khulna Shadar'),
(43, 11, 'Chittagong S');

-- --------------------------------------------------------

--
-- Table structure for table `donarregistration`
--

CREATE TABLE IF NOT EXISTS `donarregistration` (
  `donar_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `state_id` int(10) NOT NULL,
  `district_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` int(100) NOT NULL,
  `pic` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donarregistration`
--

INSERT INTO `donarregistration` (`donar_id`, `name`, `gender`, `age`, `mobile`, `b_id`, `state_id`, `district_id`, `city_id`, `email`, `pwd`, `pic`) VALUES
(1, 'Monir Hossain', 'male', '23', '12345678', 19, 9, 1, 4, 'fencemonir@gmail.com', 123, 'face.jpg'),
(2, 'hasib Hossain', 'male', '20', '01673647342', 13, 9, 1, 4, 'fencemonir@gmail.com', 123, 'face.jpg'),
(3, 'Ahad', 'male', '55', '5555', 13, 9, 1, 4, 'fencemonir@gmail.com', 123, 'face.jpg'),
(4, 'Tania Akter', 'female', '20', '01673647342', 19, 9, 1, 5, 'tania@gamil.com', 12345, 'been.jpg'),
(5, 'Hasib Ali', 'male', '33', '2222222', 13, 16, 5, 8, 'hasib@gmail.com', 12345, 'been.jpg'),
(6, 'hasan Ali', 'male', '33', '333', 13, 16, 5, 8, 'hasan@gmail.com', 12345, 'been.jpg'),
(7, 'donorOne', 'female', '22', '01673647342', 13, 9, 1, 4, 'donor1@gmail.com', 12345, 'face.jpg'),
(8, 'donorTwo', 'male', '7', '77777', 13, 9, 1, 4, 'donor2@gmail.com', 12345, 'confused-smiley-face-clip-art-35.png'),
(9, 'donorThree', 'male', '55', '77', 13, 9, 1, 4, 'donor3@gmail.com', 12345, 'been.jpg'),
(10, 'donorFour', 'male', '33', '111', 13, 9, 1, 4, 'donor4@gmail.com', 12345, 'been.jpg'),
(11, 'donorFive', 'male', '88', '348394', 13, 9, 1, 4, 'donor5@gmail.com', 12345, 'confused-smiley-face-clip-art-35.png'),
(12, 'donorSix', 'male', '88', '888888', 13, 9, 1, 4, 'donor6@gmail.com', 12345, 'been.jpg'),
(13, 'donorSeven', 'male', '88', '888888', 13, 9, 1, 4, 'donor7@gmail.com', 12345, 'confused-smiley-face-clip-art-35.png'),
(14, 'donorEight', 'male', '77', '7777777', 13, 9, 1, 4, 'donor7@gmail.com', 12345, 'face.jpg'),
(15, 'donorNine', 'male', '77', '77777', 13, 9, 1, 4, 'donor9@gmail.com', 12345, 'been.jpg'),
(16, 'donorTen', 'male', '202020', '020020', 13, 9, 1, 4, 'donor10@gmail.com', 12345, 'been.jpg'),
(17, 'donorEleven', 'male', '9', '333883', 13, 9, 1, 4, 'donor11@gmail.com', 12345, 'been.jpg'),
(18, 'Imran Khan', 'male', '19', '01874648811', 19, 9, 1, 4, 'imran.khan308309@gmail.com', 12345, 'been.jpg'),
(19, 'Ridoy', 'male', '23', '01959904911', 13, 12, 20, 21, 'ridoy@gmail.com', 1234, '11053652_802274696530324_6313101808255885100_n.jpg'),
(20, 'Jebin', 'female', '23', '01959904989', 13, 9, 1, 5, 'jebin@gmail.com', 123, '13620129_278514022516479_3404196291774658685_n.jpg'),
(21, 'Rekha khatun', 'female', '23', '01959905256', 20, 14, 28, 0, 'rekha@gmail.com', 123, '1508102_871229962995991_3053231048824493108_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE IF NOT EXISTS `donation` (
  `donation_id` int(100) NOT NULL,
  `camp_id` int(100) NOT NULL,
  `ddate` datetime NOT NULL,
  `units` int(100) NOT NULL,
  `detail` varchar(800) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `camp_id`, `ddate`, `units`, `detail`, `email`) VALUES
(2, 1, '2016-01-01 00:00:00', 1, '2222', 'donor1@gmail.com'),
(3, 1, '2016-04-01 00:00:00', 1, '', 'imran.khan308309@gmail.com'),
(4, 1, '2016-05-18 00:00:00', 1, '', 'donor2@gmail.com'),
(5, 1, '2016-01-01 00:00:00', 1, 'Test', 'ridoy@gmail.com'),
(6, 1, '2016-01-01 00:00:00', 1, '', 'jebin@gmail.com'),
(7, 1, '2016-02-10 00:00:00', 1, 'Donating blood for 1st time :D ', 'rekha@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE IF NOT EXISTS `gallary` (
  `camp_id` int(100) NOT NULL,
  `pic_id` int(100) NOT NULL,
  `title` varchar(400) NOT NULL,
  `pic` varchar(800) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`camp_id`, `pic_id`, `title`, `pic`) VALUES
(3, 1, 'Donating blood', 'p3Hydrangeas.jpg'),
(2, 2, 'Demo6', 'p3Hydrangeas.jpg'),
(2, 3, 'test8', 'p11Lighthouse.jpg'),
(2, 4, 'Demo1', 'p4Tulips.jpg'),
(2, 5, 'Demo6', 'p8Jellyfish.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `detail` varchar(900) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `detail`) VALUES
(1, 'blood donate', 'give blood give bloodgive blood'),
(3, 'Blood camp', 'Lets arrange a blood donation camp within this month');

-- --------------------------------------------------------

--
-- Table structure for table `requestes`
--

CREATE TABLE IF NOT EXISTS `requestes` (
  `req_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bgroup` varchar(100) NOT NULL,
  `reqdate` datetime NOT NULL,
  `detail` varchar(500) NOT NULL,
  `hospital_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requestes`
--

INSERT INTO `requestes` (`req_id`, `name`, `gender`, `age`, `mobile`, `email`, `bgroup`, `reqdate`, `detail`, `hospital_name`) VALUES
(12, 'Sanjida', 'female', '23', '01959905900', 'sanjida@gmail.com', 'o+', '2017-01-01 00:00:00', 'Bed-8, Ward-3, Level-4', 'Dhaka Hospital'),
(13, 'Hira', 'male', '23', '01959904901', 'hira@gmail.com', 'o-', '2017-01-01 00:00:00', '', 'Chittagong Hospital'),
(14, 'Fatema khatun', 'female', '23', '01959904902', 'fatema@gmail.com', 'AB+', '2017-01-01 00:00:00', '', 'Dhaka Shishu Hospital'),
(15, 'Mohammad Ali', 'male', '23', '01959904903', 'pappu@gmail.com', 'AB-', '2017-01-01 00:00:00', 'Bed-8, Ward-3, Level-4', 'Dhaka Hospital'),
(16, 'Tanvir Rahman', 'male', '22', '01959904904', 'tanvir@gmail.com', 'A+', '2017-01-01 00:00:00', 'Bed-8, Ward-3, Level-4', 'Khulna Hospital'),
(17, 'Walid Bin Sayed', 'male', '23', '019599049999', 'ridoy@gmail.com', 'o+', '2017-01-01 00:00:00', 'Bed-8, Ward-3, Level-4', 'Jessore Hospital'),
(18, 'Nissan', 'male', '20', '01959904913', 'nissan@gmail.com', 'A-', '2017-01-01 00:00:00', 'Bed-8, Ward-3, Level-4', 'Dhaka Shishu Hospital'),
(19, 'Faisal', 'male', '25', '01959904914', 'faisal@gmail.com', 'B+', '2017-01-01 00:00:00', 'Bed-8, Ward-3, Level-4', 'Dhaka Hospital'),
(20, 'Woishi Hoque', 'female', '24', '01959904915', 'woishi@gmail.com', 'B-', '2017-01-01 00:00:00', 'Bed-8, Ward-3, Level-4', 'Barisal cty Hospital'),
(21, 'Sakib Khan', 'male', '28', '01959904917', 'sakib@gmail.com', 'o-', '2017-01-01 00:00:00', 'Bed-8, Ward-3, Level-4', 'Lab Aid'),
(22, 'Farhana afaz Sobi', 'female', '24', '01959904919', 'sobi@gmail.com', 'B+', '2017-01-01 00:00:00', 'Bed-8, Ward-3, Level-4', 'Rupnogor Hospital'),
(23, 'Anwar Khan', 'male', '22', '01959904920', 'anwar@gmail.com', 'A+', '2017-01-01 00:00:00', 'Bed-8, Ward-3, Level-4', 'Barisal cty Hospital'),
(24, 'Md. Monir Hossain', 'male', '24', '01959904925', 'monir@gmail.com', 'B+', '2017-01-01 00:00:00', 'Bed-8, Ward-3, Level-4', 'Chittagong Hospital'),
(25, 'Humayara Kabir Anamika', 'female', '23', '01959904940', 'anamika@gmail.com', 'AB+', '2017-01-01 00:00:00', 'Bed-8, Ward-3, Level-4', 'Barisal city Hospital'),
(26, 'Fargana Ferdous Ripa', 'female', '23', '01959904941', 'ripa@gmail.com', 'A+', '2017-01-01 00:00:00', 'Bed-8, Ward-3, Level-4', 'Jessore Hospital'),
(27, 'Md. Arafat Rahman Shojib', 'male', '24', '01959904943', 'arafatrahman@gmail.com', 'AB-', '2016-08-13 00:00:00', 'Bed no- 3, Ward no-5, Patient no- 6698, Level- 6, Building no- 1.', 'Bangobondhu Hospital Dhaka'),
(28, 'Kaiser Tusher', 'male', '24', '01959904936', 'kaiser@gmail.com', 'o+', '2017-01-01 00:00:00', 'test', 'Dhaka Hospital'),
(29, 'Nabonita Sharker', 'female', '24', '01959904931', 'nabonita@gmail.com', 'B+', '2016-08-01 00:00:00', 'Dami text', 'Dhaka Shishu Hospital'),
(30, 'Tuli', 'female', '23', '01959904977', 'tuli@gmail.com', 'o+', '2016-09-01 00:00:00', '', 'XYZ'),
(31, 'Rekha khatun', 'female', '23', '01959905256', 'rekha@gmail.com', 'B-', '2016-08-05 00:00:00', '', 'XYZZ');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(100) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(9, 'Dhaka'),
(10, 'Barishal'),
(11, 'Chittagong'),
(12, 'Khulna'),
(13, 'Mymensing'),
(14, 'Rajshahi'),
(15, 'Rangpur'),
(16, 'Sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `typeofuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `pwd`, `typeofuser`) VALUES
('manu', 'manu', 'Admin'),
('neeru', 'neeru', 'General'),
('admin', 'admin', 'Admin'),
('Monir', 'monir', 'General');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  ADD PRIMARY KEY (`bg_id`);

--
-- Indexes for table `camp`
--
ALTER TABLE `camp`
  ADD PRIMARY KEY (`camp_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`dis_id`);

--
-- Indexes for table `donarregistration`
--
ALTER TABLE `donarregistration`
  ADD PRIMARY KEY (`donar_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `gallary`
--
ALTER TABLE `gallary`
  ADD PRIMARY KEY (`pic_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `requestes`
--
ALTER TABLE `requestes`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `adv_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  MODIFY `bg_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `camp`
--
ALTER TABLE `camp`
  MODIFY `camp_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `row_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `dis_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `donarregistration`
--
ALTER TABLE `donarregistration`
  MODIFY `donar_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donation_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `gallary`
--
ALTER TABLE `gallary`
  MODIFY `pic_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `requestes`
--
ALTER TABLE `requestes`
  MODIFY `req_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
