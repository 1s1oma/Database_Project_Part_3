-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2017 at 07:10 AM
-- Server version: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `appetizer`
--

CREATE TABLE `appetizer` (
  `Product_ID` int(11) NOT NULL,
  `Puffpuff` varchar(12) NOT NULL,
  `Akara` varchar(12) NOT NULL,
  `Dodo` varchar(12) NOT NULL,
  `Buns` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appetizer`
--

INSERT INTO `appetizer` (`Product_ID`, `Puffpuff`, `Akara`, `Dodo`, `Buns`) VALUES
(1, 'spicy', 'spicy', 'spicy', 'spicy'),
(2, 'mild', 'mild', 'mild', 'mild'),
(3, 'sweet', 'sweet', 'sweet', 'sweet'),
(4, 'sour', 'sour', 'sour', 'sour'),
(5, 'reallytho', 'reallytho', 'realltytho', 'reallytho');

-- --------------------------------------------------------

--
-- Table structure for table `beverage`
--

CREATE TABLE `beverage` (
  `Product_ID` int(11) NOT NULL,
  `Soda` varchar(12) NOT NULL,
  `Water` varchar(12) NOT NULL,
  `Coffee` varchar(12) NOT NULL,
  `Tea` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beverage`
--

INSERT INTO `beverage` (`Product_ID`, `Soda`, `Water`, `Coffee`, `Tea`) VALUES
(6, '1 Litre', '1 Litre', '1 Litre', '1 Litre'),
(7, '2 Litre', '2 Litre', '2 Litre', '2 Litre'),
(8, '3 Litre', '3 Litre', '3 Litre', '3 Litre'),
(9, '4 Litre', '4 Litre', '4 Litre', '4 Litre'),
(10, '5 Litre', '5 Litre', '5 Litre', '5 Litre');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID_No`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `dessert`
--

CREATE TABLE `dessert` (
  `Product_ID` int(11) NOT NULL,
  `Vanilla ice cream` varchar(12) NOT NULL,
  `Coconut cake` varchar(12) NOT NULL,
  `Shuku` varchar(12) NOT NULL,
  `Chocolate cake` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dessert`
--

INSERT INTO `dessert` (`Product_ID`, `Vanilla ice cream`, `Coconut cake`, `Shuku`, `Chocolate cake`) VALUES
(11, 'extra small', 'extra small', 'extra small', 'extra small'),
(12, 'small', 'small', 'small', 'small'),
(13, 'medium', 'medium', 'medium', 'medium'),
(14, 'large', 'large', 'large', 'large'),
(15, 'extra large', 'extra large', 'extra large', 'extra large');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID_No` int(11) NOT NULL,
  `Salary` varchar(15) NOT NULL,
  `Employee_position` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_dish`
--

CREATE TABLE `main_dish` (
  `Product_ID` int(11) NOT NULL,
  `Soya` varchar(12) NOT NULL,
  `Fufu Egusi Soup` varchar(12) NOT NULL,
  `Jollof rice` varchar(12) NOT NULL,
  `Fried rice` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_dish`
--

INSERT INTO `main_dish` (`Product_ID`, `Soya`, `Fufu Egusi Soup`, `Jollof rice`, `Fried rice`) VALUES
(16, 'spicy', 'spicy', 'spicy', 'spicy'),
(17, 'mild', 'mild', 'mild', 'mild'),
(18, 'sweet', 'sweet', 'sweet', 'sweet'),
(19, 'sour', 'sour', 'sour', 'sour'),
(20, 'meat', 'vegeterian', 'vegan', 'pescatarian');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `Order_date` datetime NOT NULL,
  `Order_quantity` int(11) NOT NULL,
  `Total_price` float NOT NULL,
  `Order_status` bit(1) NOT NULL,
  `Cus_ID` int(11) DEFAULT NULL,
  `Prod_ID` int(11) NOT NULL,
  `Return_order` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Order_date`, `Order_quantity`, `Total_price`, `Order_status`, `Cus_ID`, `Prod_ID`, `Return_order`) VALUES
(1, '2017-11-01 03:07:08', 1, 4.95, b'0', NULL, 1, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `PayMethod_ID` int(11) NOT NULL,
  `Payment_type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pays_for`
--

CREATE TABLE `pays_for` (
  `Payment_ID` int(11) NOT NULL,
  `Cus_ID` varchar(10) NOT NULL,
  `Order_ID` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `ID_No` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Phone_No` char(12) NOT NULL,
  `Address` varchar(256) NOT NULL,
  `Email` char(100) NOT NULL,
  `Username` varchar(12) NOT NULL,
  `Password` varchar(12) NOT NULL,
  `Created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`ID_No`, `Name`, `Phone_No`, `Address`, `Email`, `Username`, `Password`, `Created_date`) VALUES
(1, 'Noah', '1234567890', '1 Sesame Street', 'noah@aol.com', 'noah1', 'password', '0000-00-00 00:00:00'),
(2, 'Violet', '9087654321', '1 Hacker Way', 'violet@yahoo.com', 'violet2', 'password', '0000-00-00 00:00:00'),
(3, 'Billy', '1029384756', '1600 Pennsylvania Ave', 'billy@gmail.com', 'billy3', 'password', '0000-00-00 00:00:00'),
(4, 'Nicki', '5647382930', '2 Barbie Road', 'nicki@outlook.com', 'nicki4', 'password', '0000-00-00 00:00:00'),
(5, 'Cortez', '6789998212', '1 Superman Way', 'souljaboy@hotmail.com', 'cortez5', 'password', '0000-00-00 00:00:00'),
(6, 'Reginae', '2025550116', '2 Goldfied Road', 'Reginae@aol.com', 'reginae6', 'password', '0000-00-00 00:00:00'),
(7, 'Dwayne', '5185550192', '8 Pilgrim Street', 'dwayne@aol.com', 'dwayne7', 'password', '0000-00-00 00:00:00'),
(8, 'Cristal', '4105550135', '3 Magolia Road', 'cristal@aol.com', 'cristal8', 'password', '0000-00-00 00:00:00'),
(9, 'Katie', '4045550167', '19 Armstrong Road', 'katie@aol.com', 'katie9', 'password', '0000-00-00 00:00:00'),
(10, 'Mckenna', '2075550176', '93 Harbour Lane', 'mckenna@aol.com', 'mckenna10', 'password', '0000-00-00 00:00:00'),
(11, 'Alisa', '5125550176', '28 Rochester Court', 'alisa@aol.com', 'alisa11', 'password', '0000-00-00 00:00:00'),
(12, 'Daniel', '2255550123', '38 Arlington Way', 'daniel@aol.com', 'daniel12', 'password', '0000-00-00 00:00:00'),
(13, 'Ben', '7015550183', '8 County Street', 'ben@aol.com', 'ben13', 'password', '0000-00-00 00:00:00'),
(14, 'Joey', '2085550129', '9 Lantern Drive', 'joey@aol.com', 'joey14', 'password', '0000-00-00 00:00:00'),
(15, 'Paul', '6172220192', '2 Spruce Road', 'paul@aol.com', 'paul15', 'password', '0000-00-00 00:00:00'),
(16, 'Zayn', '3025550198', '9 Lake Ave', 'zayn@aol.com', 'zayn16', 'password', '0000-00-00 00:00:00'),
(17, 'Aubrey', '6148290192', '294 Market Street', 'aubrey@aol.com', 'aubrey17', 'password', '0000-00-00 00:00:00'),
(18, 'Sean', '5059231829', '9 Main Street', 'sean@aol.com', 'sean18', 'password', '0000-00-00 00:00:00'),
(19, 'Isioma', '8080123838', '1 Apple Way', 'isioma@aol.com', 'isioma19', 'password', '0000-00-00 00:00:00'),
(20, 'Sarah', '4356719821', '4 Count Lane', 'sarah@aol.com', 'sarah20', 'password', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Product_ID` int(11) NOT NULL,
  `Description` char(30) NOT NULL,
  `Product_image` blob,
  `Product_in_stock` bit(1) NOT NULL,
  `Product_price` float NOT NULL,
  `Product_name` varchar(15) NOT NULL,
  `Product_category` varchar(10) NOT NULL,
  `Payment_ID` int(11) DEFAULT NULL,
  `Employee_ID` int(11) DEFAULT NULL,
  `Staff_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Product_ID`, `Description`, `Product_image`, `Product_in_stock`, `Product_price`, `Product_name`, `Product_category`, `Payment_ID`, `Employee_ID`, `Staff_ID`) VALUES
(1, 'dfsd', '', b'1', 4.95, 'food', 'cat', 1, NULL, NULL),
(2, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(3, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(4, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(5, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(6, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(7, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(8, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(9, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(10, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(11, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(12, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(13, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(14, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(15, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(16, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(17, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(18, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(19, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(20, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(21, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(22, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(23, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(24, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL),
(25, 'food', '', b'1', 4.95, 'name', 'category', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salad`
--

CREATE TABLE `salad` (
  `Product_ID` int(11) NOT NULL,
  `Garden` varchar(12) NOT NULL,
  `Bean` varchar(12) NOT NULL,
  `Greek` varchar(12) NOT NULL,
  `Caesar` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salad`
--

INSERT INTO `salad` (`Product_ID`, `Garden`, `Bean`, `Greek`, `Caesar`) VALUES
(21, 'extra small', 'extra small', 'extra small', 'extra small'),
(22, 'small', 'small', 'small', 'small'),
(23, 'sweet', 'sweet', 'sweet', 'sweet'),
(24, 'sour', 'sour', 'sour', 'sour'),
(25, 'extra large', 'extra large', 'extra large', 'extra large');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `ID_No` int(11) NOT NULL,
  `Staff_position` varchar(15) NOT NULL,
  `Salary` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appetizer`
--
ALTER TABLE `appetizer`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `beverage`
--
ALTER TABLE `beverage`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID_No`);

--
-- Indexes for table `dessert`
--
ALTER TABLE `dessert`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID_No`);

--
-- Indexes for table `main_dish`
--
ALTER TABLE `main_dish`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `Prod_ID` (`Prod_ID`),
  ADD KEY `Cus_ID` (`Cus_ID`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`PayMethod_ID`);

--
-- Indexes for table `pays_for`
--
ALTER TABLE `pays_for`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `Cus_ID` (`Cus_ID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`ID_No`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `salad`
--
ALTER TABLE `salad`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`ID_No`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appetizer`
--
ALTER TABLE `appetizer`
  ADD CONSTRAINT `appetizer_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `beverage`
--
ALTER TABLE `beverage`
  ADD CONSTRAINT `beverage_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`ID_No`) REFERENCES `person` (`ID_No`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dessert`
--
ALTER TABLE `dessert`
  ADD CONSTRAINT `dessert_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `main_dish`
--
ALTER TABLE `main_dish`
  ADD CONSTRAINT `main_dish_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Prod_ID`) REFERENCES `products` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Cus_ID`) REFERENCES `customers` (`ID_No`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`ID_No`) REFERENCES `customers` (`ID_No`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salad`
--
ALTER TABLE `salad`
  ADD CONSTRAINT `salad_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
