-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2022 at 03:35 AM
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
-- Database: `do_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `attempt_id` int(11) NOT NULL,
  `answer_choice_number` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_correct` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `question_id`, `attempt_id`, `answer_choice_number`, `user_id`, `is_correct`) VALUES
(38, 30, 11, 1, 1, 0),
(39, 32, 11, 2, 1, 0),
(40, 33, 11, 4, 1, 1),
(41, 34, 11, 1, 1, 0),
(42, 35, 11, 1, 1, 0),
(43, 36, 11, 4, 1, 0),
(44, 30, 12, 2, 2, 0),
(45, 32, 12, 4, 2, 0),
(46, 33, 12, 4, 2, 1),
(47, 34, 12, 4, 2, 0),
(48, 35, 12, 2, 2, 0),
(49, 36, 12, 2, 2, 1),
(50, 30, 13, 4, 3, 1),
(51, 32, 13, 2, 3, 0),
(52, 33, 13, 2, 3, 0),
(53, 34, 13, 1, 3, 0),
(54, 35, 13, 2, 3, 0),
(55, 36, 13, 4, 3, 0),
(56, 30, 14, 4, 4, 1),
(57, 32, 14, 1, 4, 1),
(58, 33, 14, 4, 4, 1),
(59, 34, 14, 2, 4, 1),
(60, 35, 14, 3, 4, 1),
(61, 36, 14, 2, 4, 1),
(62, 30, 15, 4, 5, 1),
(63, 32, 15, 4, 5, 0),
(64, 33, 15, 4, 5, 1),
(65, 34, 15, 2, 5, 1),
(66, 35, 15, 3, 5, 1),
(67, 36, 15, 2, 5, 1),
(68, 30, 16, 4, 6, 1),
(69, 32, 16, 1, 6, 1),
(70, 33, 16, 4, 6, 1),
(71, 34, 16, 2, 6, 1),
(72, 35, 16, 3, 6, 1),
(73, 36, 16, 2, 6, 1),
(74, 30, 17, 3, 7, 0),
(75, 32, 17, 3, 7, 0),
(76, 33, 17, 1, 7, 0),
(77, 34, 17, 2, 7, 1),
(78, 35, 17, 2, 7, 0),
(79, 36, 17, 2, 7, 1),
(80, 30, 18, 2, 8, 0),
(81, 32, 18, 2, 8, 0),
(82, 33, 18, 1, 8, 0),
(83, 34, 18, 1, 8, 0),
(84, 35, 18, 4, 8, 0),
(85, 36, 18, 2, 8, 1),
(86, 30, 19, 1, 9, 0),
(87, 32, 19, 1, 9, 1),
(88, 33, 19, 4, 9, 1),
(89, 34, 19, 1, 9, 0),
(90, 35, 19, 3, 9, 1),
(91, 36, 19, 2, 9, 1),
(92, 30, 20, 3, 10, 0),
(93, 32, 20, 3, 10, 0),
(94, 33, 20, 4, 10, 1),
(95, 34, 20, 2, 10, 1),
(96, 35, 20, 3, 10, 1),
(97, 36, 20, 2, 10, 1),
(98, 30, 21, 4, 11, 1),
(99, 32, 21, 2, 11, 0),
(100, 33, 21, 4, 11, 1),
(101, 34, 21, 1, 11, 0),
(102, 35, 21, 2, 11, 0),
(103, 36, 21, 2, 11, 1),
(104, 30, 22, 2, 12, 0),
(105, 32, 22, 4, 12, 0),
(106, 33, 22, 3, 12, 0),
(107, 34, 22, 4, 12, 0),
(108, 35, 22, 1, 12, 0),
(109, 36, 22, 2, 12, 1),
(110, 44, 23, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attempt`
--

CREATE TABLE `attempt` (
  `attempt_id` int(11) NOT NULL,
  `user_attempt_id` int(11) NOT NULL,
  `question_set_id` int(11) NOT NULL,
  `score` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attempt`
--

INSERT INTO `attempt` (`attempt_id`, `user_attempt_id`, `question_set_id`, `score`) VALUES
(11, 1, 100001, 1),
(12, 2, 100001, 2),
(13, 3, 100001, 1),
(14, 4, 100001, 6),
(15, 5, 100001, 5),
(16, 6, 100001, 6),
(17, 7, 100001, 2),
(18, 8, 100001, 1),
(19, 9, 100001, 4),
(20, 10, 100001, 4),
(21, 11, 100001, 3),
(22, 12, 100001, 1),
(23, 1, 100019, 1);

-- --------------------------------------------------------

--
-- Table structure for table `choice`
--

CREATE TABLE `choice` (
  `choice_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `choice_name` varchar(255) NOT NULL,
  `choice_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `choice`
--

INSERT INTO `choice` (`choice_id`, `question_id`, `choice_name`, `choice_number`) VALUES
(53, 22, '2', 1),
(54, 22, '3', 2),
(55, 22, '4', 3),
(56, 22, '5', 4),
(73, 22, '2', 1),
(74, 22, '3', 2),
(75, 22, '4', 3),
(76, 22, '5', 4),
(85, 30, 'One', 1),
(86, 30, 'Two', 2),
(87, 30, 'Three', 3),
(88, 30, 'Four', 4),
(93, 32, 'y = ax2 + bx + c', 1),
(94, 32, 'y = ax3 + bx + c', 2),
(95, 32, 'y = ax4 + bx + c', 3),
(96, 32, 'y = ax5 + bx + c', 4),
(97, 33, '5 x 6 = 5 + 6', 1),
(98, 33, '5 x 6 = 5 + 5 + 5 + 5 + 5', 2),
(99, 33, '5 x 6 = 6 + 6 + 6 + 6 + 6 + 6', 3),
(100, 33, '5 x 6 = 6 + 6 + 6 + 6 + 6', 4),
(101, 34, '123,686', 1),
(102, 34, '0', 2),
(103, 34, '1', 3),
(104, 34, 'Cannot find answer', 4),
(105, 35, '335', 1),
(106, 35, '325', 2),
(107, 35, '345', 3),
(108, 35, '335', 4),
(109, 36, '54', 1),
(110, 36, '854', 2),
(111, 36, '75', 3),
(112, 36, '47', 4),
(121, 39, 'ised', 1),
(122, 39, 'was', 2),
(123, 39, 'wased', 3),
(124, 39, 'wes', 4),
(125, 40, 'ber', 1),
(126, 40, 'men', 2),
(127, 40, 'kan', 3),
(128, 40, 'ter', 4),
(141, 44, 'Arised', 1),
(142, 44, 'Arose', 2),
(143, 44, 'Arisen', 3),
(144, 44, 'Ariseeddd', 4),
(145, 45, 'Bed', 1),
(146, 45, 'Beheld', 2),
(147, 45, 'Behod', 3),
(148, 45, 'Beholded', 4),
(149, 46, '1123', 1),
(150, 46, '123', 2),
(151, 46, '123', 3),
(152, 46, '123', 4);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `question_id` int(11) NOT NULL,
  `question_set_id` int(11) NOT NULL,
  `question_name` varchar(255) NOT NULL,
  `correct_choice_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `question_set_id`, `question_name`, `correct_choice_number`) VALUES
(22, 100000, '1 + 1 = X. Determine X. ', 2),
(30, 100001, 'Latest Question 8', 4),
(32, 100001, 'Equation of a parabola?', 1),
(33, 100001, 'write 5 x 6 as a repeated sum.', 4),
(34, 100001, '123,686 x 0 =', 2),
(35, 100001, '23 x 15 = ', 3),
(36, 100001, 'There are 61 boxes of pencils in a store. There are 14 pencils in each box. How many pencils are in the store?', 2),
(39, 100014, 'What is the past tense of \"is\"?', 2),
(40, 100015, 'Yang mana bukan imbuhan awalan?', 3),
(44, 100019, 'What is the past tense of arise', 2),
(45, 100019, 'What is the past tense of behold?', 2),
(46, 100019, 'Halo world ', 4);

-- --------------------------------------------------------

--
-- Table structure for table `question_set`
--

CREATE TABLE `question_set` (
  `question_set_id` int(11) NOT NULL,
  `question_set_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `creator_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_set`
--

INSERT INTO `question_set` (`question_set_id`, `question_set_name`, `category`, `creator_id`) VALUES
(100000, 'Trial 1', 'Japanese', 1),
(100001, 'Trial 2', 'Mathematics', 1),
(100014, 'Trial 3', 'English', 1),
(100015, 'Amir_Quiz', 'Malay', 11),
(100019, 'Trial 4', 'English', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_interest` varchar(255) NOT NULL,
  `user_birthday` date NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `user_image` varchar(255) DEFAULT NULL,
  `user_language` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_password`, `user_interest`, `user_birthday`, `created_at`, `user_image`, `user_language`) VALUES
(1, 'gaychin123', 'gc@123.com', '012-223 4567', '123456789', 'Music, ', '1999-06-01', '2022-06-01 19:58:59', NULL, NULL),
(2, 'gaychin2', 'gc@321.com', '012-123 4567', '123456789', 'Computer Science, Culture and Traditions, ', '1995-05-31', '2022-06-06 17:04:32', NULL, NULL),
(3, 'John', 'John@gmail.com', '012-323 8888', '123456789', 'Languages, ', '1999-06-02', '2022-06-20 23:04:03', NULL, NULL),
(4, 'Smith', 'Smith@gmail.com', '013-223 4567', '123456789', 'Languages, Math, ', '1999-12-05', '2022-06-20 23:06:04', NULL, NULL),
(5, 'William', 'william@gmail.com', '019-394 4864', '123456789', 'General Knowledge, ', '1999-11-11', '2022-06-20 23:08:22', NULL, NULL),
(6, 'Brown', 'brown@gmail.com', '018-223 4567', '123456789', 'Computer Science, ', '1999-08-08', '2022-06-20 23:09:22', NULL, NULL),
(7, 'Davis', 'davis@gmail.com', '016-223 1894', '123456789', 'Math, ', '1997-07-08', '2022-06-20 23:10:14', NULL, NULL),
(8, 'Miller', 'Miller@gmail.com', '017-186 7693', '123456789', 'Math, ', '1980-05-05', '2022-06-20 23:11:13', NULL, NULL),
(9, 'Wilson ', 'Wilson@gmail.com', '018-443 1230', '123456789', 'Geography, ', '1996-03-02', '2022-06-20 23:12:07', NULL, NULL),
(10, 'Jimmy', 'jimmy@gmail.com', '016-329 6989', '123456789', 'Computer Science, Finance, ', '1996-06-06', '2022-06-20 23:17:59', NULL, NULL),
(11, 'AMIR', 'amir@gmail.com', '018-123 1231', '123456789', 'General Knowledge, ', '1998-06-23', '2022-06-21 02:58:47', NULL, NULL),
(12, 'jarvan', 'jarvan@gmail.com', '018-100 1020', '123456789', 'Business, ', '1999-07-08', '2022-06-21 18:20:52', NULL, NULL),
(13, 'ken', 'ken@gmail.com', '018-189 7978', '123456789', 'Math, ', '1998-02-05', '2022-06-23 09:10:33', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `answer_choice_id` (`answer_choice_number`),
  ADD KEY `answer_ibfk_1` (`question_id`),
  ADD KEY `answer_ibfk_2` (`attempt_id`),
  ADD KEY `answer_ibfk_4` (`user_id`);

--
-- Indexes for table `attempt`
--
ALTER TABLE `attempt`
  ADD PRIMARY KEY (`attempt_id`),
  ADD KEY `attempt_ibfk_1` (`user_attempt_id`),
  ADD KEY `attempt_ibfk_2` (`question_set_id`);

--
-- Indexes for table `choice`
--
ALTER TABLE `choice`
  ADD PRIMARY KEY (`choice_id`),
  ADD KEY `choice_ibfk_1` (`question_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `correct_choice_id` (`correct_choice_number`),
  ADD KEY `question_ibfk_1` (`question_set_id`);

--
-- Indexes for table `question_set`
--
ALTER TABLE `question_set`
  ADD PRIMARY KEY (`question_set_id`),
  ADD KEY `question_set_ibfk_1` (`creator_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD UNIQUE KEY `UC_email` (`user_email`),
  ADD UNIQUE KEY `user_email_2` (`user_email`),
  ADD UNIQUE KEY `user_email_3` (`user_email`),
  ADD UNIQUE KEY `user_email_4` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `attempt`
--
ALTER TABLE `attempt`
  MODIFY `attempt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `choice`
--
ALTER TABLE `choice`
  MODIFY `choice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `question_set`
--
ALTER TABLE `question_set`
  MODIFY `question_set_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100020;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`attempt_id`) REFERENCES `attempt` (`attempt_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answer_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attempt`
--
ALTER TABLE `attempt`
  ADD CONSTRAINT `attempt_ibfk_1` FOREIGN KEY (`user_attempt_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attempt_ibfk_2` FOREIGN KEY (`question_set_id`) REFERENCES `question_set` (`question_set_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `choice`
--
ALTER TABLE `choice`
  ADD CONSTRAINT `choice_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`question_set_id`) REFERENCES `question_set` (`question_set_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question_set`
--
ALTER TABLE `question_set`
  ADD CONSTRAINT `question_set_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
