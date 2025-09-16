-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2023 at 10:07 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.4.30

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

CREATE TABLE `assign_tasks` (
  `id` int(11) NOT NULL,
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
  `task_remarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_registration`
--

CREATE TABLE `customer_registration` (
  `id` int(11) NOT NULL,
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
  `is_active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `invoice_id` varchar(20) NOT NULL,
  `service_date` date NOT NULL,
  `type_of_work` varchar(10) NOT NULL,
  `period_ending` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `taxable_amount` varchar(20) NOT NULL,
  `gst_total` varchar(20) NOT NULL,
  `iw_grand_total` varchar(20) NOT NULL,
  `gst_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `customer_id`, `invoice_id`, `service_date`, `type_of_work`, `period_ending`, `description`, `taxable_amount`, `gst_total`, `iw_grand_total`, `gst_id`) VALUES
(1, 'PT23001', 'PTI2304001', '2023-04-17', '1', '2023-04-17', '', '400', '20', '420', 1),
(2, 'PT23001', 'PTI2304001', '2023-04-17', '1', '2023-04-17', '', '500', '25', '525', 1),
(3, 'PT23001', 'PTI2304002', '2023-04-20', '1', '2023-04-20', '', '600', '30', '630', 1),
(4, 'PT23001', 'PTI2304002', '2023-04-20', '1', '2023-04-20', '', '800', '40', '840', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manage_admin`
--

CREATE TABLE `manage_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_admin`
--

INSERT INTO `manage_admin` (`id`, `username`, `password`, `uname`, `profile_pic`, `is_active`) VALUES
(1, 'admin', 'admin321#', 'Admin', 'no_img.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manage_employee`
--

CREATE TABLE `manage_employee` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  `epassword` varchar(50) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `emp_mobile_no` varchar(15) NOT NULL,
  `emp_email` varchar(50) NOT NULL,
  `emp_dob` date NOT NULL,
  `reg_date` date NOT NULL,
  `is_active` int(11) NOT NULL,
  `is_verify` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manage_invoices`
--

CREATE TABLE `manage_invoices` (
  `id` int(11) NOT NULL,
  `invoice_id` varchar(20) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `taxable_amt` varchar(10) NOT NULL,
  `gst_amt` varchar(10) NOT NULL,
  `grand_total` varchar(20) NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date NOT NULL,
  `created_by` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_invoices`
--

INSERT INTO `manage_invoices` (`id`, `invoice_id`, `customer_id`, `taxable_amt`, `gst_amt`, `grand_total`, `invoice_date`, `due_date`, `created_by`) VALUES
(1, 'PTI2304001', 'PT23001', '900', '45', '945', '2023-04-17', '2023-04-20', 'admin'),
(2, 'PTI2304002', 'PT23001', '1400', '70', '1470', '2023-04-20', '2023-04-20', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `master_business_type`
--

CREATE TABLE `master_business_type` (
  `id` int(11) NOT NULL,
  `business_type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_business_type`
--

INSERT INTO `master_business_type` (`id`, `business_type`) VALUES
(4, 'IT'),
(5, 'construction'),
(6, 'trucking');

-- --------------------------------------------------------

--
-- Table structure for table `master_corporation_type`
--

CREATE TABLE `master_corporation_type` (
  `id` int(11) NOT NULL,
  `corporation_type` varchar(140) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_corporation_type`
--

INSERT INTO `master_corporation_type` (`id`, `corporation_type`) VALUES
(2, 'provincial'),
(3, 'federal');

-- --------------------------------------------------------

--
-- Table structure for table `master_financial_year`
--

CREATE TABLE `master_financial_year` (
  `id` int(11) NOT NULL,
  `fy_title` varchar(80) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_financial_year`
--

INSERT INTO `master_financial_year` (`id`, `fy_title`, `is_active`) VALUES
(1, '2022', 0),
(2, '2021', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_frq_gst_rtrn`
--

CREATE TABLE `master_frq_gst_rtrn` (
  `id` int(11) NOT NULL,
  `frq_gst_rtrn` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_frq_gst_rtrn`
--

INSERT INTO `master_frq_gst_rtrn` (`id`, `frq_gst_rtrn`) VALUES
(1, 'Quaterly'),
(2, 'annualy');

-- --------------------------------------------------------

--
-- Table structure for table `master_gst`
--

CREATE TABLE `master_gst` (
  `id` int(11) NOT NULL,
  `gst_title` varchar(80) NOT NULL,
  `gst_percentage` varchar(10) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_gst`
--

INSERT INTO `master_gst` (`id`, `gst_title`, `gst_percentage`, `is_active`) VALUES
(1, '5%', '5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_head_type`
--

CREATE TABLE `master_head_type` (
  `id` int(11) NOT NULL,
  `head_type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_head_type`
--

INSERT INTO `master_head_type` (`id`, `head_type`) VALUES
(1, 'Book2'),
(2, 'book1'),
(3, 'book3');

-- --------------------------------------------------------

--
-- Table structure for table `master_payment_mode`
--

CREATE TABLE `master_payment_mode` (
  `id` int(11) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_payment_mode`
--

INSERT INTO `master_payment_mode` (`id`, `payment_mode`, `is_active`) VALUES
(1, 'Cash', 0),
(2, 'cheque', 0),
(3, 'visa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_type_of_work`
--

CREATE TABLE `master_type_of_work` (
  `id` int(11) NOT NULL,
  `work_title` varchar(100) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_type_of_work`
--

INSERT INTO `master_type_of_work` (`id`, `work_title`, `is_active`) VALUES
(1, 'Book Kipping', 0),
(2, 'T2', 0),
(3, 'payroll', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_receiving`
--

CREATE TABLE `payment_receiving` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `received_amount` varchar(20) NOT NULL,
  `p_remarks` varchar(500) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_mode` int(11) NOT NULL,
  `received_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_receiving`
--

INSERT INTO `payment_receiving` (`id`, `payment_id`, `customer_id`, `received_amount`, `p_remarks`, `payment_date`, `payment_mode`, `received_by`) VALUES
(1, 'PT23001', 'PT23001', '5000', 'testing', '2023-04-17', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `school_settings`
--

CREATE TABLE `school_settings` (
  `id` int(11) NOT NULL,
  `school_name` varchar(400) NOT NULL,
  `school_short_name` varchar(100) NOT NULL,
  `logo` longtext NOT NULL,
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
  `pincode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_settings`
--

INSERT INTO `school_settings` (`id`, `school_name`, `school_short_name`, `logo`, `hlogo`, `pblogo`, `pbwebsite`, `pbname`, `is_active_pb`, `lpbg`, `skinclass`, `director_name`, `website`, `email_id`, `contact_no`, `address`, `city`, `state`, `pincode`) VALUES
(1, 'Pabla\'s Tax', 'PT', 'logo.png', 'logo.png', 'pblogo.png', 'www.rprdgroup.co.in', 'RPRD GROUP TECHNO INDIA SOLUTIONS PVT. LTD.', 0, '#000000', 'hold-transition skin-blue sidebar-mini', 'Mr. Pradeep Sir', 'www.rishikulvidyapeeth.in', 'rishikulvidyapeeth2020@gmail.com', '+91-9451860330, 8299153302', 'Hanumangarhi Golabazar Khalilabad, Sant Kabir Nagar-272175', 'Lucknow', 'Uttar Pradesh', '272175');

-- --------------------------------------------------------

--
-- Table structure for table `taxtion_month`
--

CREATE TABLE `taxtion_month` (
  `id` int(11) NOT NULL,
  `taxtion_month` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_tasks`
--
ALTER TABLE `assign_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_registration`
--
ALTER TABLE `customer_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_admin`
--
ALTER TABLE `manage_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_employee`
--
ALTER TABLE `manage_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_invoices`
--
ALTER TABLE `manage_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_business_type`
--
ALTER TABLE `master_business_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_corporation_type`
--
ALTER TABLE `master_corporation_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_financial_year`
--
ALTER TABLE `master_financial_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_frq_gst_rtrn`
--
ALTER TABLE `master_frq_gst_rtrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_gst`
--
ALTER TABLE `master_gst`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_head_type`
--
ALTER TABLE `master_head_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_payment_mode`
--
ALTER TABLE `master_payment_mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_type_of_work`
--
ALTER TABLE `master_type_of_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_receiving`
--
ALTER TABLE `payment_receiving`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_settings`
--
ALTER TABLE `school_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxtion_month`
--
ALTER TABLE `taxtion_month`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_tasks`
--
ALTER TABLE `assign_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_registration`
--
ALTER TABLE `customer_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `manage_admin`
--
ALTER TABLE `manage_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manage_employee`
--
ALTER TABLE `manage_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manage_invoices`
--
ALTER TABLE `manage_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_business_type`
--
ALTER TABLE `master_business_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_corporation_type`
--
ALTER TABLE `master_corporation_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_financial_year`
--
ALTER TABLE `master_financial_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_frq_gst_rtrn`
--
ALTER TABLE `master_frq_gst_rtrn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_gst`
--
ALTER TABLE `master_gst`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_head_type`
--
ALTER TABLE `master_head_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_payment_mode`
--
ALTER TABLE `master_payment_mode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_type_of_work`
--
ALTER TABLE `master_type_of_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_receiving`
--
ALTER TABLE `payment_receiving`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_settings`
--
ALTER TABLE `school_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taxtion_month`
--
ALTER TABLE `taxtion_month`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
