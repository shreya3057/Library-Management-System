-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2021 at 07:58 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first`, `last`, `username`, `password`, `email`, `contact`) VALUES
(4, 'shreya', 'sinha', 'shreya sinha', '123', 'sh3@gmail.com', '789456123');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bid`, `name`, `author`, `edition`, `status`, `quantity`, `department`) VALUES
(1, 'Data Structures and Algorithms Made Easy', 'Narasimha Karumanchi', 'Second Edition', 'Available', 20, 'IT'),
(2, 'Data Structures using Python 2021 ', 'Dr Shriram K. Vasudevan', 'First Edition', 'Available', 15, 'cse'),
(3, 'Data Structures and Algorithms in Java', 'ROBORT LAFORE', 'Second Edition', 'Available', 15, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(100) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment`) VALUES
(4, 'nice');

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `username` varchar(100) NOT NULL,
  `returned` varchar(100) NOT NULL,
  `day` int(11) NOT NULL,
  `fine` double NOT NULL,
  `id` int(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `username` varchar(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `approve` varchar(100) NOT NULL,
  `issue` varchar(100) NOT NULL,
  `return` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`username`, `bid`, `approve`, `issue`, `return`) VALUES
('c', 5, 'yes', '27-5-2021', '28-5-2021'),
('c', 5, 'yes', '27-5-2021', '28-5-2021'),
('c', 5, 'yes', '27-5-2021', '28-5-2021'),
('c', 5, 'yes', '27-5-2021', '28-5-2021'),
('c', 1, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2021-05-23', '2021-05-27'),
('c', 2, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2021-05-23', '2021-05-27'),
('c', 2, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2021-05-23', '2021-05-27'),
('c', 5, 'yes', '27-5-2021', '28-5-2021'),
('mrsmary', 6, '', '', ''),
('mrsmary', 6, '', '', ''),
('mrsmary', 1, '', '', ''),
('c', 4, 'yes', '2-2-2021', '4-2-2021'),
('c', 5, 'yes', '27-5-2021', '28-5-2021'),
('c', 5, 'yes', '27-5-2021', '28-5-2021'),
('c', 4, 'yes', '2-2-2021', '4-2-2021'),
('c', 6, 'Yes', '2021-05-29', '2021-05-31'),
('c', 1, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2021-05-23', '2021-05-27'),
('c', 2, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2021-05-23', '2021-05-27'),
('c', 4, 'yes', '2-2-2021', '4-2-2021'),
('c', 5, 'yes', '27-5-2021', '28-5-2021'),
('c', 5, '', '', ''),
('Ruhi Singh', 3, '', '', ''),
('Ruhi Singh', 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `roll` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`first`, `last`, `username`, `password`, `roll`, `email`, `contact`) VALUES
('a', 'b', 'c', '1234', 8, 'lib@gmail.com', 123456),
('a', 'b', 'mary', '1234', 12, 'sh3@gmail.com', 78954),
('shreya', 'sinha', '_shreya.sinha_', '1234', 7, 'sh3@gmail.com', 123456),
('c', 'd', 'a', 'b', 1, 'sh3@gmail.com', 12345),
('shreya', 'sinha', 'shreyasinha', '12345', 0, 's@07', 123654),
('Ruhi', 'singh', 'Ruhi Singh', '1234', 7, 'ruhi@singh', 123456789);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
