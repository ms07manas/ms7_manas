-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 15, 2023 at 05:08 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pablas_tax`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_tasks`
--

DROP TABLE IF EXISTS `assign_tasks`;
CREATE TABLE IF NOT EXISTS `assign_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(100) NOT NULL,
  `task_title` varchar(200) NOT NULL,
  `task_description` varchar(500) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `financial_year` varchar(100) NOT NULL,
  `work_type` varchar(100) NOT NULL,
  `work_asign_date` date NOT NULL,
  `due_date` date NOT NULL,
  `work_priority` varchar(100) NOT NULL,
  `task_status` varchar(200) NOT NULL,
  `task_remarks` varchar(200) NOT NULL,
  `task_file` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_tasks`
--

INSERT INTO `assign_tasks` (`id`, `task_id`, `task_title`, `task_description`, `customer_id`, `employee_id`, `financial_year`, `work_type`, `work_asign_date`, `due_date`, `work_priority`, `task_status`, `task_remarks`, `task_file`) VALUES
(3, 'PTW001', 'Testing', 'Testing', 'PT23001', 'PTE001', '1', '1', '1970-01-01', '2023-05-15', '1', '1', 'Testing', '36a13861098fc31d1b427764057b8996.pdf'),
(4, 'PTW002', 'Task2', 'Task2', 'PT23002', 'PTE002', '1', '1', '1970-01-01', '2023-05-15', '2', '2', 'Task2', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `customer_registration`
--

DROP TABLE IF EXISTS `customer_registration`;
CREATE TABLE IF NOT EXISTS `customer_registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(20) NOT NULL,
  `cpassword` varchar(50) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `gstin` varchar(20) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `telephone_no` varchar(15) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `owner_name` varchar(50) NOT NULL,
  `taxation_year` int(11) NOT NULL,
  `frq_gst_rtrn` int(11) NOT NULL,
  `q1_end_date` int(11) NOT NULL,
  `q2_end_date` int(11) NOT NULL,
  `q3_end_date` int(11) NOT NULL,
  `q4_end_date` int(11) NOT NULL,
  `annual_gst` int(11) NOT NULL,
  `corporation_type` int(11) NOT NULL,
  `head_type` int(11) NOT NULL,
  `business_type` int(11) NOT NULL,
  `file_no` varchar(50) NOT NULL,
  `reg_date` date NOT NULL,
  `is_active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_registration`
--

INSERT INTO `customer_registration` (`id`, `customer_id`, `cpassword`, `company_name`, `gstin`, `mobile_no`, `telephone_no`, `email_id`, `owner_name`, `taxation_year`, `frq_gst_rtrn`, `q1_end_date`, `q2_end_date`, `q3_end_date`, `q4_end_date`, `annual_gst`, `corporation_type`, `head_type`, `business_type`, `file_no`, `reg_date`, `is_active`) VALUES
(1, 'PT23001', '123456', 'AMAN KHAIRA TRANSPORT LTD.', '26', '7802363009', '3066543008', 'gillaman69@gmail.com', 'AMANPREET SINGH', 2, 1, 5, 8, 11, 2, 2, 2, 3, 6, '26', '2023-05-15', 1),
(2, 'PT23002', '441218', 'TOP CLASS ROOFING LTD.', '833651797', '7806958630', '7804256111', 'topclassroofing1@gmail.com', 'JASVIR SINGH', 9, 1, 12, 3, 6, 9, 12, 2, 1, 4, '27', '2023-05-15', 1),
(3, 'PT23003', '371720', '2047827 ALBERTA LTD', '704273895', '7802427740', '7802427740', 'chopra.mohan@yahoo.com', 'Mohan Chopra', 12, 2, 12, 12, 12, 12, 12, 2, 2, 18, '10001', '2023-05-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

DROP TABLE IF EXISTS `invoice_items`;
CREATE TABLE IF NOT EXISTS `invoice_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(20) NOT NULL,
  `invoice_id` varchar(20) NOT NULL,
  `service_date` date NOT NULL,
  `type_of_work` varchar(10) NOT NULL,
  `period_ending` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `taxable_amount` varchar(20) NOT NULL,
  `gst_total` varchar(20) NOT NULL,
  `iw_grand_total` varchar(20) NOT NULL,
  `gst_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `customer_id`, `invoice_id`, `service_date`, `type_of_work`, `period_ending`, `description`, `taxable_amount`, `gst_total`, `iw_grand_total`, `gst_id`) VALUES
(3, 'PT23001', 'PTI2305001', '2023-05-01', 'Loan', '2023-05-31', '', '7000', '350', '7350', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manage_admin`
--

DROP TABLE IF EXISTS `manage_admin`;
CREATE TABLE IF NOT EXISTS `manage_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_admin`
--

INSERT INTO `manage_admin` (`id`, `username`, `password`, `uname`, `profile_pic`, `is_active`) VALUES
(1, 'admin', 'admin321#', 'Admin', 'no_img.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manage_employee`
--

DROP TABLE IF EXISTS `manage_employee`;
CREATE TABLE IF NOT EXISTS `manage_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(20) NOT NULL,
  `epassword` varchar(50) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `emp_mobile_no` varchar(15) NOT NULL,
  `emp_email` varchar(50) NOT NULL,
  `emp_dob` date NOT NULL,
  `employee_photo` varchar(120) NOT NULL,
  `reg_date` date NOT NULL,
  `is_active` int(11) NOT NULL,
  `is_verify` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_employee`
--

INSERT INTO `manage_employee` (`id`, `employee_id`, `epassword`, `employee_name`, `emp_mobile_no`, `emp_email`, `emp_dob`, `employee_photo`, `reg_date`, `is_active`, `is_verify`) VALUES
(1, 'PTE001', '123456', 'Satvir Pabla', '9999999999', 'info@pablatax.com', '2023-05-04', 'no_img.png', '2023-05-15', 1, 0),
(2, 'PTE002', '439123', 'Pam Pabla', '9999999999', 'info@pablatax.com', '2023-05-09', 'no_img.png', '2023-05-15', 1, 0),
(3, 'PTE003', '381944', 'Tejwinder', '9999999999', 'info@pablastax.com', '2023-05-15', 'no_img.png', '2023-05-15', 1, 0),
(4, 'PTE004', '194610', 'Aman', '9999999999', 'info@pablastax.com', '2023-05-15', 'no_img.png', '2023-05-15', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `manage_invoices`
--

DROP TABLE IF EXISTS `manage_invoices`;
CREATE TABLE IF NOT EXISTS `manage_invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(20) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `taxable_amt` varchar(10) NOT NULL,
  `gst_amt` varchar(10) NOT NULL,
  `grand_total` varchar(20) NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date NOT NULL,
  `created_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_invoices`
--

INSERT INTO `manage_invoices` (`id`, `invoice_id`, `customer_id`, `taxable_amt`, `gst_amt`, `grand_total`, `invoice_date`, `due_date`, `created_by`) VALUES
(2, 'PTI2305001', 'PT23001', '7000', '350', '7350', '2023-05-15', '2023-05-31', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `master_business_type`
--

DROP TABLE IF EXISTS `master_business_type`;
CREATE TABLE IF NOT EXISTS `master_business_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_business_type`
--

INSERT INTO `master_business_type` (`id`, `business_type`) VALUES
(3, 'Auto Mechanic'),
(4, 'Construction'),
(5, 'Consultants IT & Others'),
(6, 'Driver'),
(7, 'Driving School'),
(8, 'Electrical'),
(9, 'Gas Station'),
(10, 'Hair Salon'),
(11, 'Janitorial Services'),
(12, 'Landscaping'),
(13, 'Liquor Store'),
(14, 'MAC Store'),
(15, 'Medical Practitioner'),
(16, 'Non-Profit Organization'),
(17, 'Other'),
(18, 'Owner Operator'),
(19, 'Pipe Fitter'),
(20, 'Restaurant'),
(21, 'Retail Store'),
(22, 'Safety'),
(23, 'Sole Proprietorship'),
(24, 'Welder');

-- --------------------------------------------------------

--
-- Table structure for table `master_corporation_type`
--

DROP TABLE IF EXISTS `master_corporation_type`;
CREATE TABLE IF NOT EXISTS `master_corporation_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `corporation_type` varchar(140) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_corporation_type`
--

INSERT INTO `master_corporation_type` (`id`, `corporation_type`) VALUES
(1, 'Federal'),
(2, 'Proviancial');

-- --------------------------------------------------------

--
-- Table structure for table `master_financial_year`
--

DROP TABLE IF EXISTS `master_financial_year`;
CREATE TABLE IF NOT EXISTS `master_financial_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fy_title` varchar(80) NOT NULL,
  `is_active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_financial_year`
--

INSERT INTO `master_financial_year` (`id`, `fy_title`, `is_active`) VALUES
(1, '2018-19', 0),
(2, '2019-20', 0),
(3, '2020-21', 0),
(4, '2021-22', 0),
(5, '2022-23', 0),
(6, '2023-24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_frq_gst_rtrn`
--

DROP TABLE IF EXISTS `master_frq_gst_rtrn`;
CREATE TABLE IF NOT EXISTS `master_frq_gst_rtrn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frq_gst_rtrn` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_frq_gst_rtrn`
--

INSERT INTO `master_frq_gst_rtrn` (`id`, `frq_gst_rtrn`) VALUES
(1, 'Quaterly'),
(2, 'Annual'),
(3, 'Monthly'),
(4, 'N.A'),
(5, 'No HST Number'),
(6, 'Filed by Client'),
(7, 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `master_gst`
--

DROP TABLE IF EXISTS `master_gst`;
CREATE TABLE IF NOT EXISTS `master_gst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gst_title` varchar(80) NOT NULL,
  `gst_percentage` varchar(10) NOT NULL,
  `is_active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_gst`
--

INSERT INTO `master_gst` (`id`, `gst_title`, `gst_percentage`, `is_active`) VALUES
(1, '5%', '5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_head_type`
--

DROP TABLE IF EXISTS `master_head_type`;
CREATE TABLE IF NOT EXISTS `master_head_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `head_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_head_type`
--

INSERT INTO `master_head_type` (`id`, `head_type`) VALUES
(1, 'BOOKKEEPER1'),
(2, 'BOOKKEEPER2'),
(3, 'BOOKKEEPER3');

-- --------------------------------------------------------

--
-- Table structure for table `master_payment_mode`
--

DROP TABLE IF EXISTS `master_payment_mode`;
CREATE TABLE IF NOT EXISTS `master_payment_mode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_mode` varchar(50) NOT NULL,
  `is_active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_payment_mode`
--

INSERT INTO `master_payment_mode` (`id`, `payment_mode`, `is_active`) VALUES
(1, 'Cash', 0),
(2, 'NEFT/RTGS', 0),
(3, 'Cheque', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_type_of_work`
--

DROP TABLE IF EXISTS `master_type_of_work`;
CREATE TABLE IF NOT EXISTS `master_type_of_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_title` varchar(100) NOT NULL,
  `is_active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_type_of_work`
--

INSERT INTO `master_type_of_work` (`id`, `work_title`, `is_active`) VALUES
(1, 'T2', 0),
(2, 'Adjustment', 0),
(3, 'Loan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_work_priority`
--

DROP TABLE IF EXISTS `master_work_priority`;
CREATE TABLE IF NOT EXISTS `master_work_priority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_priority` varchar(50) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `emp_class_name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_work_priority`
--

INSERT INTO `master_work_priority` (`id`, `work_priority`, `class_name`, `emp_class_name`) VALUES
(1, 'High', 'bg-red', 'label-danger'),
(2, 'Normal', 'bg-blue', 'label-primary'),
(3, 'Low', 'bg-yellow', 'label-warning');

-- --------------------------------------------------------

--
-- Table structure for table `payment_receiving`
--

DROP TABLE IF EXISTS `payment_receiving`;
CREATE TABLE IF NOT EXISTS `payment_receiving` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_id` varchar(50) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `received_amount` varchar(20) NOT NULL,
  `p_remarks` varchar(500) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_mode` int(11) NOT NULL,
  `received_by` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_receiving`
--

INSERT INTO `payment_receiving` (`id`, `payment_id`, `customer_id`, `received_amount`, `p_remarks`, `payment_date`, `payment_mode`, `received_by`) VALUES
(2, 'PT23001', 'PT23001', '5000', 'Cheque no: 34576', '2023-05-15', 3, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `school_settings`
--

DROP TABLE IF EXISTS `school_settings`;
CREATE TABLE IF NOT EXISTS `school_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(400) NOT NULL,
  `school_short_name` varchar(100) NOT NULL,
  `logo` longtext NOT NULL,
  `dark_logo` varchar(50) NOT NULL,
  `hlogo` varchar(100) NOT NULL,
  `pblogo` varchar(50) NOT NULL,
  `pbwebsite` varchar(50) NOT NULL,
  `pbname` varchar(50) NOT NULL,
  `is_active_pb` int(11) NOT NULL,
  `lpbg` varchar(10) NOT NULL,
  `skinclass` varchar(200) NOT NULL,
  `director_name` varchar(200) NOT NULL,
  `website` varchar(100) NOT NULL,
  `email_id` varchar(200) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(400) NOT NULL,
  `state` varchar(400) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `gstin` varchar(50) NOT NULL,
  `cin` varchar(50) NOT NULL,
  `pan` varchar(50) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `ifsc_code` varchar(50) NOT NULL,
  `account_holder_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_settings`
--

INSERT INTO `school_settings` (`id`, `school_name`, `school_short_name`, `logo`, `dark_logo`, `hlogo`, `pblogo`, `pbwebsite`, `pbname`, `is_active_pb`, `lpbg`, `skinclass`, `director_name`, `website`, `email_id`, `contact_no`, `address`, `city`, `state`, `pincode`, `gstin`, `cin`, `pan`, `bank_name`, `account_number`, `ifsc_code`, `account_holder_name`) VALUES
(1, 'Pablas\'s Accounting Tax Services', 'PT', 'logo.png', 'dlogo.png', 'logo.png', 'pblogo.png', 'www.pablastax.com', 'Pablas\'s Accounting Tax Services', 0, '#000000', 'hold-transition skin-blue sidebar-mini', 'Mr. Pradeep Sir', 'www.pablastax.com', 'info@pablastax.com', '+1 780-466-7898', '#203-9613 41 AVE NW\r\nEdmonton, Alberta\r\nT6E 5X7', 'Alberta', 'Alberta', 'T6E5X7', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_status_master`
--

DROP TABLE IF EXISTS `task_status_master`;
CREATE TABLE IF NOT EXISTS `task_status_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_status` varchar(50) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `cust_class_name` varchar(100) NOT NULL,
  `is_active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_status_master`
--

INSERT INTO `task_status_master` (`id`, `task_status`, `class_name`, `cust_class_name`, `is_active`) VALUES
(1, 'In Progress', 'bg-yellow', 'label-danger', 1),
(2, 'Not Started', 'bg-red', 'label-danger', 1),
(3, 'Completed', 'bg-green', 'label-danger', 1);

-- --------------------------------------------------------

--
-- Table structure for table `taxtion_month`
--

DROP TABLE IF EXISTS `taxtion_month`;
CREATE TABLE IF NOT EXISTS `taxtion_month` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxtion_month` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taxtion_month`
--

INSERT INTO `taxtion_month` (`id`, `taxtion_month`) VALUES
(1, 'JAN'),
(2, 'FEB'),
(3, 'MAR'),
(4, 'APR'),
(5, 'MAY'),
(6, 'JUN'),
(7, 'JUL'),
(8, 'AUG'),
(9, 'SEP'),
(10, 'OCT'),
(11, 'NOV'),
(12, 'DEC');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
