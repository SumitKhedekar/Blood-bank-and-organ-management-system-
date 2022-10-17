-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2022 at 05:10 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintable`
--

CREATE TABLE `admintable` (
  `id` int(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admintable`
--

INSERT INTO `admintable` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin123'),
(3, 'sumit', 'sk@gmail.com', 'sk1234'),
(5, 'sumit', 'suk777@gmail.com', 'sk3457');

-- --------------------------------------------------------

--
-- Table structure for table `bloodbank`
--

CREATE TABLE `bloodbank` (
  `id` int(11) NOT NULL,
  `bloodgroup` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `Quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodbank`
--

INSERT INTO `bloodbank` (`id`, `bloodgroup`, `gender`, `Quantity`) VALUES
(1, 'AB+', 'male', 15),
(2, 'A-', 'female', 13),
(3, 'AB+', 'female', 10),
(4, 'o-', 'female', 3),
(5, 'AB+', 'male', 2),
(6, 'AB-', 'male', 3),
(8, 'o+', 'male', 12),
(9, 'A', 'female', 2),
(10, 'A-', 'male', 2);

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `id` int(11) NOT NULL,
  `campaignname` varchar(255) NOT NULL,
  `organizer` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `location` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaign`
--

INSERT INTO `campaign` (`id`, `campaignname`, `organizer`, `date`, `location`, `description`) VALUES
(3, 'kkcamp', 'frdetfk', '2022-04-15', ' kurla', 'asdasfasf'),
(6, 'sdddk', 'Mahadik', '2022-03-12', 'redakk', 'sueceed'),
(8, 'sd', 'frdetf', '0000-00-00', 'vashi 2020', 'sueceed'),
(12, 'dffrde', 'frdetf', '2022-02-12', 'vashi', 'carry youer adhar card with you'),
(14, 'xrk hopital', 'dr dddr', '0000-00-00', 'santacuz', 'sueceed');

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `donation` varchar(10) NOT NULL,
  `age` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`id`, `name`, `email`, `donation`, `age`) VALUES
(1, 'sumit', 'suk777@gmail.com', 'BLOOD', 0),
(2, 'gd', 'Gg452@gmail.com', 'ORGAN', 0),
(8, 'admin', 'admin@gmail.com', 'BLOOD', 0),
(9, 'sumit', 'PB452@gmail.com', 'BLOOD', 0),
(10, 'sumit', 'PB452@gmail.com', 'BLOOD', 0);

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(11) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `conpassword` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgp` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `countrycode` varchar(50) NOT NULL,
  `phone` int(12) NOT NULL,
  `address` text NOT NULL,
  `postal` int(10) NOT NULL,
  `code` mediumint(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `lname`, `fname`, `password`, `conpassword`, `gender`, `bloodgp`, `email`, `countrycode`, `phone`, `address`, `postal`, `code`) VALUES
(1, 'Gupta', 'Ganeshji', 'Gg123', 'Gg123', 'male', 'AB+', 'Gg452@gmail.com', '91', 321654987, 'Mumbai central', 400070, NULL),
(2, 'raut', 'rahul', 'rr123', 'rr123', 'male', 'B+', 'rahulr@rrgmail.com', '61', 321654987, 'pune', 421503, NULL),
(4, 'dk', 'SUKe', 'sk123', 'sk123', 'male', 'A-', 'suk77@gmail.com', '', 1324252627, 'kolhapur', 421503, 410950),
(5, 'dkr', 'ake', 'dk@123', 'dk@123', 'female', 'AB-', 'ake@gmail.com', '', 1324252627, 'vashi', 5767, NULL),
(6, 'parmar', 'vipul', 'vp@777', 'vp@777', 'male', 'AB+', 'vp@gmail.com', '', 45454, 'andheri', 576, NULL),
(11, 'kk', 'skkk', 'sk', 'sk', 'male', 'AB+', 'sk@gmail.com', '', 2147483647, 'mumbai', 351, 212754),
(12, 'Gupta', 'rahul', 'rk123', 'rk123', 'male', 'B-', 'rk77@gmail.com', '', 1234567890, 'adarsh nagar', 351, NULL),
(14, 'adrk', 'SUKji', 'suk123', 'suk123', 'male', 'AB+', 'suk777@gmail.com', '', 2147483647, 'nasik', 351, 779341),
(15, 'hhk', 'ghk', 'hk123', 'hk123', 'male', 'A-', 'vvjh@gmail.com', '91', 2147483647, 'vrgrer', 42150355, NULL),
(16, 'bhalekar', 'prathmesh', 'pb123', 'pb123', 'male', 'A+', 'PB452@gmail.com', '61', 1324252627, 'vakola', 576, 859642),
(17, 'patel', 'amisha', 'ap123', 'ap123', 'female', 'AB+', 'AP77@gmail.com', '91', 321654987, 'Santacruz', 351, NULL),
(20, 'dk', 'ak', 'asd', 'asd', 'male', 'A-', 'Gg452@gmail.com', '', 1234567895, 'skdjnksjdv', 351, NULL),
(21, 'parmar', 'vipul', 'vp123', 'vp1234', 'male', 'A+', 'admin@gmail.com', '62', 45454, 'vkaola', 576, NULL),
(22, 'yadav', 'krishna', 'ky777', 'ky123', 'male', 'O+', 'ky452@gmail.com', '', 0, 'gujrath', 5767, NULL),
(23, 'dk', 'ak', '1234', '123445', 'female', 'A+', 'admin@1234gmail.com', '354', 321654987, 'erehthrthrt', 5767, NULL),
(24, 'khvjh', 'jhv', '123', '1234', 'OTHER', 'A+', 'suk777@gmail.com', '', 2147483647, 'hvj,hvjh', 0, 779341);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mess` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `mess`) VALUES
(1, 'sk', 'sk@gmail.com', 'hii amthe registered user'),
(2, '', '', ''),
(3, 'admin', 'admin@1234gmail.com', 'there is a proble in loging'),
(4, '', 'suk777@gmail.com', 'hii am a user'),
(5, 'admin', 'suk777@gmail.com', 'hii am a user'),
(6, 'gd', 'suk777@gmail.com', 'hii am a user'),
(7, 'sumit', 'suk777@gmail.com', 'hii am a user');

-- --------------------------------------------------------

--
-- Table structure for table `organ`
--

CREATE TABLE `organ` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `Age` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `relativename` varchar(20) NOT NULL,
  `relativecontact` int(12) NOT NULL,
  `relativeemail` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgp` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `donated` varchar(50) NOT NULL,
  `issues` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organ`
--

INSERT INTO `organ` (`id`, `fname`, `lname`, `Age`, `email`, `relativename`, `relativecontact`, `relativeemail`, `gender`, `bloodgp`, `address`, `donated`, `issues`) VALUES
(2, 'ak', 'dk', 25, 'ak@gmail.com', 'dk', 525245, 'DK@GMAIL.COM', 'male', 'B-', 'asd', 'SKINS', 'no'),
(3, 'ak', 'dk', 20, 'suk777@gmail.com', 'dk', 525244, 'DK@GMAIL.COM', 'male', 'A+', 'R.N-4, bk adda', 'BONE', 'no'),
(5, 'ak', 'dk', 50, 'PB452@gmail.com', 'dk', 525244, 'DK@GMAIL.COM', 'male', 'O+', 'asdjn;aoifnv', ' EYES', 'no'),
(6, 'rahul', 'Gupta', 20, 'suk777@gmail.com', 'dk', 525245, 'DhsdikK@GMAIL.COM', 'male', 'AB+', 'asd', 'EYES', 'no'),
(7, 'rahul', 'rauth', 25, 'Gg452@gmail.com', 'dk', 525244, 'DK@GMAIL.COM', 'male', 'O+', 'R.N-4, bk adda', ' EYES', 'no'),
(8, 'ak', 'Gupta', 25, 'PB452@gmail.com', 'dk', 525245, 'DK@GMAIL.COM', 'male', 'A-', 'asd', 'LUNGS', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `reginevent`
--

CREATE TABLE `reginevent` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phone` int(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bloodgp` varchar(10) NOT NULL,
  `gender` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reginevent`
--

INSERT INTO `reginevent` (`id`, `fname`, `lname`, `phone`, `email`, `bloodgp`, `gender`, `address`, `time`) VALUES
(1, 'suk', 'dkk', 123456, 'sk123@gmail.com', 'A+', 'male', 'kurla', '4-5'),
(2, 'rahul', 'rauth', 2147483647, 'PB452@gmail.com', 'B-', 'male', 'asdjn;aoifnv', '3-4'),
(3, 'rahul', 'mahadik', 2147483647, 'admin@gmail.com', 'B+', 'male', 'kolhapur', '1-2'),
(4, 'ak', 'dk', 2147483647, 'Gg452@gmail.com', 'B-', 'male', 'asdjn;aoifnv', '3-4'),
(5, 'SUK', '', 2147483647, 'admin@1234gmail.com', 'A-', 'female', '', 'B-'),
(6, 'sumit', '', 1324252627, 'sk@gmail.com', 'B+', 'male', '', 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `requestblood`
--

CREATE TABLE `requestblood` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgp` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `emergency` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requestblood`
--

INSERT INTO `requestblood` (`id`, `fname`, `gender`, `bloodgp`, `email`, `phone`, `address`, `emergency`) VALUES
(1, 'suk', 'male', 'A+', 'sk@gmail.com', 123456, 'VASGHI', 'yes'),
(2, 'SUK', 'male', 'A-', 'suk777@gmail.com', 2147483647, 'asdjn;aoifnv', 'yes'),
(3, 'SUK', 'male', 'A-', 'email@gmail.com', 6, 'address', 'emergency'),
(4, 'rahul', 'male', 'A+', 'PB452@gmail.com', 0, 'address', 'emergency'),
(5, 'SUK', 'female', 'A+', 'admin@1234gmail.com', 0, 'address', 'emergency');

-- --------------------------------------------------------

--
-- Table structure for table `requestorgan`
--

CREATE TABLE `requestorgan` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `bloodgp` varchar(10) NOT NULL,
  `donated` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `emergency` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requestorgan`
--

INSERT INTO `requestorgan` (`id`, `fname`, `gender`, `bloodgp`, `donated`, `email`, `phone`, `address`, `emergency`) VALUES
(1, 'rahul', 'male', 'AB+', 'PANCREAS', 'admin@1234gmail.com', 0, 'address', 'emergency'),
(2, 'SUK', 'OTHER', 'AB+', 'KIDNEY', 'admin@1234gmail.com', 0, 'address', 'emergency');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admintable`
--
ALTER TABLE `admintable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloodbank`
--
ALTER TABLE `bloodbank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organ`
--
ALTER TABLE `organ`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reginevent`
--
ALTER TABLE `reginevent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requestblood`
--
ALTER TABLE `requestblood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requestorgan`
--
ALTER TABLE `requestorgan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admintable`
--
ALTER TABLE `admintable`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bloodbank`
--
ALTER TABLE `bloodbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `organ`
--
ALTER TABLE `organ`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reginevent`
--
ALTER TABLE `reginevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `requestblood`
--
ALTER TABLE `requestblood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `requestorgan`
--
ALTER TABLE `requestorgan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
