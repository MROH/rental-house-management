-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 25, 2023 at 05:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Company`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'level 0',
  `email` varchar(200) NOT NULL,
  `password` varchar(500) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `role`, `email`, `password`, `date`) VALUES
(5, 'Obed Nyakundi', 'level-0', 'obed@example.com', '$2y$12$EcXNA8UHc53gWrW0suAB2.b028O7ItuHyLqXrQN6j00ax7OHVBF3i', '2021-05-22 10:56:20'),
(8, 'Ace One', 'level-1', 'ace@nyumbani.com', '$2y$12$CLdOW9clSRIYAnLzicI97.J5VJt6KPVwnSOeR0TT8u/uZCC/mxgoq', '2021-05-24 16:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `blogid` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `blogid`, `date`) VALUES
(1, 'Jaden', 'Awesome post guys!!', 6, '2018-07-28 00:15:59'),
(6, 'Cliff', 'I really relate to this', 5, '2018-07-28 01:00:14'),
(8, 'Ethredah', 'nice', 7, '2018-07-29 21:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `names` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `names`, `email`, `message`, `date`) VALUES
(1, 'Ethredah', 'ethredah@gmail.com', 'Hello there Ushauri team.', '2018-07-27 16:57:59'),
(2, 'Chao', 'chao@gmail.com', 'Hi there!!', '2018-07-27 16:57:59'),
(4, 'James Mlamba', 'jaymo@gmail.com', 'I am interested in a meeting.', '2018-07-28 01:38:22');

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `houseID` int(11) NOT NULL,
  `house_name` text NOT NULL,
  `number_of_rooms` int(10) NOT NULL DEFAULT 1,
  `rent_amount` double NOT NULL,
  `location` text NOT NULL,
  `num_of_bedrooms` int(10) NOT NULL,
  `house_status` varchar(50) NOT NULL DEFAULT 'Vacant'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`houseID`, `house_name`, `number_of_rooms`, `rent_amount`, `location`, `num_of_bedrooms`, `house_status`) VALUES
(4, 'Kwa Kina Jay', 5, 4000, 'Shika Adabu', 2, 'Vacant'),
(5, 'Corner Hardware', 2, 10000, 'Mvita', 0, 'Vacant'),
(7, 'Kwa Mama Mkorofi', 1, 3000, 'Shika Adabu', 1, 'Vacant'),
(8, 'Example House', 0, 15000, 'Mtongwe', 4, 'Occupied'),
(9, 'Green Garden', 8, 2500, 'Mtongwe', 0, 'Vacant'),
(10, 'Posta Annex', 2, 5000, 'Nyali', 2, 'Vacant');

-- --------------------------------------------------------

--
-- Table structure for table `house_pics`
--

CREATE TABLE `house_pics` (
  `pic_id` int(11) NOT NULL,
  `pic_name` text NOT NULL,
  `house_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoiceNumber` varchar(50) NOT NULL,
  `tenantID` int(11) NOT NULL,
  `dateOfInvoice` text NOT NULL,
  `dateDue` text NOT NULL,
  `amountDue` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'unpaid',
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invoiceNumber`, `tenantID`, `dateOfInvoice`, `dateDue`, `amountDue`, `status`, `comment`) VALUES
('Inv20210603180158', 4, '2021-06-03', '2021-06-10', -1000, 'paid', 'This is the rent invoice for this month'),
('Inv20210603181647', 12, '2021-06-03', '2021-06-10', -3000, 'paid', 'This is the rent invoice for this month'),
('Inv20210603193230', 9, '2021-06-03', '2021-06-10', 0, 'paid', 'This is the rent invoice for this month'),
('INV20230807083237', 13, '2023-08-07', '2023-08-09', 2300, 'unpaid', 'august rent'),
('INV20230807102700', 15, '2023-08-07', '2023-08-10', 4700, 'unpaid', 'This is the rent invoice for this month'),
('INV20230807110457', 16, '2023-08-07', '2023-08-10', -900, 'paid', 'This is the rent invoice for this month'),
('INV20230824215245', 10, '2023-08-24', '2023-08-31', 3000, 'unpaid', 'This is the rent invoice for the month of august');

-- --------------------------------------------------------

--
-- Stand-in structure for view `invoicesView`
-- (See below for the actual view)
--
CREATE TABLE `invoicesView` (
`invoiceNumber` varchar(50)
,`tenant_name` text
,`tenantID` int(11)
,`phone_number` varchar(13)
,`amountDue` int(11)
,`dateOfInvoice` text
,`dateDue` text
,`status` varchar(50)
,`comment` text
);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `location_name` text NOT NULL,
  `geo_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_name`, `geo_id`) VALUES
(1, 'Shika Adabu', ''),
(2, 'Mtongwe', ''),
(3, 'Mvita', ''),
(4, 'Nyali', '');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentID` int(11) NOT NULL,
  `tenantID` int(11) NOT NULL,
  `invoiceNumber` varchar(50) NOT NULL,
  `expectedAmount` int(11) NOT NULL,
  `amountPaid` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `mpesaCode` varchar(30) NOT NULL DEFAULT 'None',
  `dateofPayment` text NOT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentID`, `tenantID`, `invoiceNumber`, `expectedAmount`, `amountPaid`, `balance`, `mpesaCode`, `dateofPayment`, `comment`) VALUES
(1, 4, 'Inv20210603180158', 10000, 4000, 6000, '', '2021-06-04', 'This was a partial payment for this month'),
(2, 4, 'Inv20210603180158', 6000, 7000, -1000, '', '2021-06-04', 'rent payment for this month'),
(5, 9, 'Inv20210603193230', 15000, 4000, 11000, 'rt3456ff', '2021-06-04', 'partial rent payment for this month'),
(6, 12, 'Inv20210603181647', 3000, 6000, -3000, 'uiyjjjhhh67', '2023-06-11', 'june payment'),
(7, 9, 'Inv20210603193230', 11000, 11000, 0, 'ksksjss', '2023-06-11', 'clear outstanding balance'),
(8, 13, 'INV20230807083237', 2500, 200, 2300, 'yurgej90', '2023-08-07', 'partial payment'),
(9, 16, 'INV20230807110457', 3000, 900, 2100, 'uijk676', '2023-08-07', 'partial payment'),
(10, 16, 'INV20230807110457', 2100, 3000, -900, 'ikjjkj98', '2023-08-07', 'payment done'),
(11, 15, 'INV20230807102700', 5000, 300, 4700, 'fgdfhgf', '2023-08-25', 'partial payment');

-- --------------------------------------------------------

--
-- Stand-in structure for view `paymentsView`
-- (See below for the actual view)
--
CREATE TABLE `paymentsView` (
`paymentID` int(11)
,`tenantID` int(11)
,`tenant_name` text
,`house_name` text
,`invoiceNumber` varchar(50)
,`expectedAmount` int(11)
,`amountPaid` int(11)
,`balance` int(11)
,`mpesaCode` varchar(30)
,`dateofPayment` text
,`comment` text
);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `author` varchar(200) NOT NULL,
  `title` varchar(400) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author`, `title`, `content`, `date`) VALUES
(5, 'Ethredah', 'MENTAL HEALTH IS REAL', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis,csem.Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. enean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar,\r\n\r\n', '2018-07-27 15:28:31'),
(6, 'Derick', 'Ushauri Lending a hand', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. enean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar,\r\n\r\n', '2018-07-27 15:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `date`) VALUES
(3, 'ethredah@gmail.com', '2018-07-27 18:21:30'),
(4, 'james@hack3.io', '2018-07-27 18:21:30'),
(6, 'admin@pikash.sales', '2018-07-28 01:49:21');

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `tenantID` int(11) NOT NULL,
  `houseNumber` int(10) NOT NULL,
  `tenant_name` text NOT NULL,
  `email` text NOT NULL,
  `ID_number` int(10) NOT NULL,
  `profession` text NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `agreement_file` text DEFAULT NULL,
  `dateAdmitted` text DEFAULT NULL,
  `account` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`tenantID`, `houseNumber`, `tenant_name`, `email`, `ID_number`, `profession`, `phone_number`, `agreement_file`, `dateAdmitted`, `account`) VALUES
(4, 5, 'Paul Obed Nyakundi', 'example@yahoo.com', 4322555, 'Programmer', '074541157454', NULL, '2021-05-23', 1000),
(9, 8, 'Askah Mkorofi', 'mkorofi@ukorofi.com', 22233344, 'Ukorofi Sugu', '078899888999', NULL, '2021-05-23', 0),
(12, 7, 'Embarambamba', 'embarambamba@nyumbani.com', 434334, 'Kuruka Mimba', '0745545544', NULL, '2021-06-03', 3000),
(13, 9, 'Mtu Mpole', 'mpole@nyumbani.com', 34334444, 'Doctor', '2547865988', NULL, '2021-06-04', -2300),
(14, 9, 'Wesley Nyaosi', 'wezy@gmail.com', 38392233, 'Writer', '+25478933929', NULL, '2023-06-11', 0),
(15, 10, 'Eve Mmoja', 'eve@moict.go.ke', 2344455, 'Mama', '+254923331122', NULL, '2023-08-07', -4700),
(16, 7, 'Nick Wetu', 'nick@example.com', 234211, 'Programmer', '9198282919', NULL, '2023-08-07', -1200);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tenantsView`
-- (See below for the actual view)
--
CREATE TABLE `tenantsView` (
`tenantID` int(11)
,`houseNumber` int(10)
,`tenant_name` text
,`email` text
,`ID_number` int(10)
,`profession` text
,`phone_number` varchar(13)
,`dateAdmitted` text
,`agreement_file` text
,`house_name` text
,`number_of_rooms` int(10)
,`house_status` varchar(50)
,`rent_amount` double
,`houseID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `actor` text DEFAULT NULL,
  `time` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `seen` varchar(10) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `actor`, `time`, `description`, `seen`) VALUES
(18, 'Admin (obed)', '2023-08-25 : 17:55:23', 'obed added payment of 300 for Eve Mmoja, under invoice ID: INV20230807102700', 'NO');

-- --------------------------------------------------------

--
-- Structure for view `invoicesView`
--
DROP TABLE IF EXISTS `invoicesView`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `invoicesView`  AS SELECT `invoices`.`invoiceNumber` AS `invoiceNumber`, `tenants`.`tenant_name` AS `tenant_name`, `invoices`.`tenantID` AS `tenantID`, `tenants`.`phone_number` AS `phone_number`, `invoices`.`amountDue` AS `amountDue`, `invoices`.`dateOfInvoice` AS `dateOfInvoice`, `invoices`.`dateDue` AS `dateDue`, `invoices`.`status` AS `status`, `invoices`.`comment` AS `comment` FROM (`invoices` left join `tenants` on(`invoices`.`tenantID` = `tenants`.`tenantID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `paymentsView`
--
DROP TABLE IF EXISTS `paymentsView`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `paymentsView`  AS SELECT `payments`.`paymentID` AS `paymentID`, `payments`.`tenantID` AS `tenantID`, `tenantsView`.`tenant_name` AS `tenant_name`, `tenantsView`.`house_name` AS `house_name`, `payments`.`invoiceNumber` AS `invoiceNumber`, `payments`.`expectedAmount` AS `expectedAmount`, `payments`.`amountPaid` AS `amountPaid`, `payments`.`balance` AS `balance`, `payments`.`mpesaCode` AS `mpesaCode`, `payments`.`dateofPayment` AS `dateofPayment`, `payments`.`comment` AS `comment` FROM (`payments` left join `tenantsView` on(`payments`.`tenantID` = `tenantsView`.`tenantID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `tenantsView`
--
DROP TABLE IF EXISTS `tenantsView`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tenantsView`  AS SELECT `tenants`.`tenantID` AS `tenantID`, `tenants`.`houseNumber` AS `houseNumber`, `tenants`.`tenant_name` AS `tenant_name`, `tenants`.`email` AS `email`, `tenants`.`ID_number` AS `ID_number`, `tenants`.`profession` AS `profession`, `tenants`.`phone_number` AS `phone_number`, `tenants`.`dateAdmitted` AS `dateAdmitted`, `tenants`.`agreement_file` AS `agreement_file`, `houses`.`house_name` AS `house_name`, `houses`.`number_of_rooms` AS `number_of_rooms`, `houses`.`house_status` AS `house_status`, `houses`.`rent_amount` AS `rent_amount`, `houses`.`houseID` AS `houseID` FROM (`tenants` left join `houses` on(`tenants`.`houseNumber` = `houses`.`houseID`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogid` (`blogid`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`houseID`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoiceNumber`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`tenantID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `houseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `tenantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
