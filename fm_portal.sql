-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2020 at 04:16 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fm_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(25) NOT NULL,
  `company_detail` text NOT NULL,
  `company_logo` text NOT NULL,
  `company_email` varchar(25) NOT NULL,
  `company_web` varchar(25) NOT NULL,
  `company_ph` varchar(25) NOT NULL,
  `company_city` varchar(25) NOT NULL,
  `company_country` varchar(25) NOT NULL,
  `company_geo_lat` varchar(100) NOT NULL,
  `company_geo_lon` varchar(100) NOT NULL,
  `company_type` int(11) NOT NULL,
  `company_emp` int(11) NOT NULL,
  `company_lp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_detail`, `company_logo`, `company_email`, `company_web`, `company_ph`, `company_city`, `company_country`, `company_geo_lat`, `company_geo_lon`, `company_type`, `company_emp`, `company_lp`) VALUES
(1, 'sasasa', '', '', 'dsdsd@dsdsds.com', 'http://localhost:8080/', '+971 323232322', '', '', '25.225895134862984', '55.26154923544312', 1, 4, ''),
(3, 'sasasa', 'ddsdsds', '', 'dsdsdddddd@dsdsds.com', 'http://localhost:8080/', '+971 323232322', '', '', '24.94389794219059', '55.4948924721838', 1, 4, ''),
(4, 'new2', 'New New New New New New New New New New New New New New New New New New New New New New New 1', '0.76105200_1602694553.jpg', 'New@New.com', 'http://localhost:8080/', '+971 323232322', '', '', '10.752647346584537', '79.50433548095091', 2, 3, 'd'),
(13, 'mdsd;\'@dsds\"dsdsads', 'mdsd;\'@dsds\"dsdsads', '', 'sasfds@fsfdsfd.com', 'http://localhost:8080/', '+971 322323322', '', '', '25.225162354152715', '55.263137103179936', 2, 5, 'dsds\'\"dsds'),
(15, 'dsds', 'fdgfdg', '', 'gnbgfgf@dsdsd.com', 'http://localhost:8080/', '+971 656565444', '', '', '25.22582957175333', '55.26230871677399', 2, 4, 'dd');

-- --------------------------------------------------------

--
-- Table structure for table `helper_data`
--

CREATE TABLE `helper_data` (
  `helper_data_id` int(11) NOT NULL,
  `helper_data_values` varchar(50) NOT NULL,
  `helper_data_type` int(11) NOT NULL,
  `helper_data_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `helper_data`
--

INSERT INTO `helper_data` (`helper_data_id`, `helper_data_values`, `helper_data_type`, `helper_data_order`) VALUES
(1, 'Product', 1, 1),
(2, 'Service', 1, 2),
(3, '1-5', 2, 1),
(4, '6-25', 2, 2),
(5, '26-100', 2, 3),
(6, '101-1000', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_label` text NOT NULL,
  `menu_module` text NOT NULL,
  `menu_post` text NOT NULL,
  `menu_parent` int(11) NOT NULL,
  `menu_sub` int(11) NOT NULL,
  `menu_url` text NOT NULL,
  `menu_ico` text NOT NULL,
  `menu_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_label`, `menu_module`, `menu_post`, `menu_parent`, `menu_sub`, `menu_url`, `menu_ico`, `menu_order`) VALUES
(1, 'Dashboard', 'dashboard', '', 1, 0, 'index.php', 'fas fa-chart-bar', 1),
(2, 'Companies', 'company', '', 1, 0, '', 'fas fa-building', 2),
(3, 'List all', 'company', 'lists', 0, 2, 'index.php?action=view&module=company&post=lists', 'fas fa-list-ul', 1),
(4, 'Add Company', 'company', 'addform', 0, 2, 'index.php?action=view&module=company&post=addform', 'fas fa-plus-square', 2);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `staff_name` text NOT NULL,
  `staff_userid` varchar(30) NOT NULL,
  `staff_password` varchar(30) NOT NULL,
  `staff_status` int(11) NOT NULL,
  `staff_isadmin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `staff_userid`, `staff_password`, `staff_status`, `staff_isadmin`) VALUES
(1, 'admin', 'admin@domain.com', 'admin123', 1, 1),
(2, 'user', 'user@domain.com', 'user123', 1, 0),
(3, 'user2', 'user2@domain.com', 'user2123', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`),
  ADD UNIQUE KEY `company_email` (`company_email`);

--
-- Indexes for table `helper_data`
--
ALTER TABLE `helper_data`
  ADD PRIMARY KEY (`helper_data_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `staff_userid` (`staff_userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `helper_data`
--
ALTER TABLE `helper_data`
  MODIFY `helper_data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
