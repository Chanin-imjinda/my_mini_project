-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2023 at 10:15 AM
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
-- Database: `art_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `artworks`
--

CREATE TABLE `artworks` (
  `ArtworkID` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `UploadDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `CommentID` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `ArtworkID` int(11) DEFAULT NULL,
  `Comment` text DEFAULT NULL,
  `CommentDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `RegistrationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `FavoriteID` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `ArtworkID` int(11) DEFAULT NULL,
  `FavoriteDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `pro_pic1` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `price_descript` varchar(100) NOT NULL,
  `price_descript2` varchar(100) NOT NULL,
  `price2` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `uid`, `Title`, `Description`, `price`, `pro_pic1`, `username`, `price_descript`, `price_descript2`, `price2`) VALUES
(1, 1, 'วาดภาพประกอบสไตร์สมจริงและกึ่งสมจริง', 'วาดและออกแบบ ตัวการ์ตูน คาแรคเตอร์ ที่คุณต้องการ ได้ทั้งภาพสีและภาพขาวดำ รูปแบบของงานเป็น Digital Art สไตล์งานเป็นแนวการ์ตูนญี่ปุ่น ', 222.00, 'img/maker1/1.jpg', 'sirina', 'ภาพตัวละครที่คุณต้องการ ในรูปแบบภาพ พอทเทรดหรือบริเวณหัวถึงราวหน้าอกครับ', 'ภาพตัวละครที่คุณต้องการในรูปแบบตัวละครเต็มตัวในท่าทางที่ต้องการ', 200),
(2, 2, 'ภาพประกอบแนวการ์ตูนญี่ปุ่น', 'เป็นงานวาด Fanart การ์ตูน หรือ ตัวละครในเกม ได้หมดครับ ส่วนใหญ่จะเป็นสไตล์ anime ภาพแบบจัดเต็ม\r\n', 233.00, 'img/maker1/5.jpg', 'rion', 'ตัวละครครึ่งตัว ไม่มี background เพิ่มตัวละคร', 'ตัวละครเต็มตัว มี background เพิ่มตัวละคร ', 750),
(3, 3, 'วาดการ์ตูนน่ารัก สี ลายเส้น วาดคน สัตว์เลี้ยง\r\n', 'วาดภาพการ์ตูน หลายแนว นำไปใช้เป็น โลโก้ สกรีนเสื้อผ้า  ', 500.00, 'img/maker1/6.jpg', 'anucha', 'ไฟล์ ai. หรือไฟล์งานจากโปรแกรมที่ทำ \r\nไฟล์ภาพ jpeg png eps (ตามที่แจ้ง) resolution 300ppi หรือตา', 'ไฟล์ ai. หรือไฟล์งานจากโปรแกรมที่ทำ \r\nไฟล์ภาพ jpeg png eps (ตามที่แจ้ง) resolution 300ppi หรือตา', 2000),
(4, 4, 'รับวาดภาพการ์ตูนมังงะ ลายเส้นญี่ปุ่น', 'รับวาดภาพสไตล์มังงะ ขาว-ดำ หรือลงสี เปลี่ยนภาพบุคคลเป็นลายเส้นการตูนมังงะ ', 250.00, 'img/maker1/3.jpg', 'nutacha', 'งานวาดครึ่งตัวตั้งแต่ส่วนหัวจนถึงช่วงอก จำนวน 1 รูป\r\n', 'งานวาดเต็มตัว ดีไซน์ท่าทางได้ จำนวน 1 รูป\r\n', 700),
(44, 2, 'dasd', 'asdads', 123.00, 'https://storage.googleapis.com/fastwork-static/f2541b46-d880-4d9f-ac20-8c2d3c91cf45.jpg', '', 'asddasdsa', 'dsadsadsasd', 123231);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `TransactionID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `PurchaseDate` date DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `urole` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `email`, `password`, `urole`, `created_at`, `profile`) VALUES
(1, 'sirina', 'sirina554@gmail.com', 'sirina', 'user', '2023-10-28 08:45:35', 'img/profile/p1.png'),
(2, 'rion', 'rionkung951@gmail.com', '12345', 'admin', '2023-10-28 08:46:18', ''),
(3, 'anucha', 'anucha851@gmail.com', '98765', 'user', '2023-10-28 14:23:44', 'img/profile/p2.jpg'),
(4, 'nutacha', 'nutacha852@gmail.com', '74185', 'user', '2023-10-28 14:25:09', ''),
(5, 'abyss', 'abyss915@gmail.com', '123123', 'user', '2023-10-28 14:27:47', ''),
(10, 'bew', 'bewteen@gmail.com', '12345', 'user', '2023-10-31 14:08:22', ''),
(11, 'yunti', 'yuntika@gmail.com', '12345', 'user', '2023-10-31 16:01:07', ''),
(12, 'ee', 'ee@mail.com', '123', 'user', '2023-11-01 07:04:57', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artworks`
--
ALTER TABLE `artworks`
  ADD PRIMARY KEY (`ArtworkID`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`CommentID`),
  ADD KEY `uid` (`uid`),
  ADD KEY `ArtworkID` (`ArtworkID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`FavoriteID`),
  ADD KEY `uid` (`uid`),
  ADD KEY `ArtworkID` (`ArtworkID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artworks`
--
ALTER TABLE `artworks`
  ADD CONSTRAINT `artworks_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`ArtworkID`) REFERENCES `artworks` (`ArtworkID`);

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`ArtworkID`) REFERENCES `artworks` (`ArtworkID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `shop_user` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
