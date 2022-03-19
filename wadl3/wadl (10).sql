-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2022 at 01:06 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wadl`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin1`
--

CREATE TABLE `admin1` (
  `AdminID` int(11) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `UserName` varchar(10) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin1`
--

INSERT INTO `admin1` (`AdminID`, `Name`, `UserName`, `Email`, `Password`) VALUES
(1, 'Wojood', 'Wojood', 'wj@gg.sa', 555);

-- --------------------------------------------------------

--
-- Table structure for table `annotator`
--

CREATE TABLE `annotator` (
  `AnnotatorID` int(11) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `UserName` varchar(15) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Tasks` text NOT NULL,
  `Language` varchar(20) NOT NULL,
  `Score` int(3) NOT NULL,
  `LeaderID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `annotator`
--

INSERT INTO `annotator` (`AnnotatorID`, `Name`, `UserName`, `Email`, `Password`, `Tasks`, `Language`, `Score`, `LeaderID`) VALUES
(25, 'hala', 'hala1', 'f@gmail.com', '0', '', '', 0, 33),
(27, 'wojod', 'wojod1', 'f@gmail.com', '0', '', '', 0, 33),
(28, 'wojod', 'wojod2', 'jwed.xa22@gmail.com', '0', '', '', 0, 33),
(29, 'sara', 'sara', 'sar@gmail.com', '0', '', '', 0, 33),
(31, 'jeje', 'jeje', 'ffffffg@g.com', 'randomPassword', '', '', 0, 33),
(32, 'jnoo', 'jnoo', 'jj@gmail.com', 'V713TMIO', '', '', 0, 33),
(33, 'Tala', 'Tala', 'tall@gmail.com', 'fhFglyWZ', '', '', 0, 33),
(34, 'wjj', 'wwww4', 'wj@gmail.com', '123jjh', '', '', 0, 35),
(35, 'wjj', 'wwww4', 'wj@gmail.com', '123jjh', '', '', 0, 35),
(40, 'Abrar', 'Abrar', 'abrar@gmail.com', 'i8WtLrb3', '', '', 0, 33),
(41, 'sarah', 'sarah', 'raa@hotmail.com', 'H0fjr23V', '', '', 0, 35),
(48, 'jnoo', 'jnoo2', 'raa@hotmail.com', 'mbTFdEDI', '', '', 0, 44),
(49, 'yara', 'yara', 'yya@gmail.com', 'tsVeqroW', '', '', 0, 35),
(50, 'yara', 'yara1', 'yya@gmail.com', 'SjUunx4c', '', '', 0, 35),
(51, 'jood', 'jood', 'jj@gmail.com', 'c6YUD8Cf', '', '', 0, 37),
(52, 'jood', 'jood1', 'jj@gmail.com', '9Y7OUxb5', '', '', 0, 37),
(53, 'jood', 'jood2', 'jj@gmail.com', 'riywB8CE', '', '', 0, 37),
(54, 'jood', 'jood3', 'jj@gmail.com', '2Zg9wO0k', '', '', 0, 37),
(55, 'jood', 'jood4', 'f@gmail.com', 'GgjwIMXt', '', '', 0, 37),
(56, 'hala', 'hala', 'ffffffg@g.com', 'nvK7FQ2R', '', '', 0, 37),
(57, 'Meral', 'Meral', 'meme@gmail.com', 'YGqbyvQn', '', '', 0, 35),
(59, 'ss', 'sss', 'ss@gmail.com', '9988888', '', '', 0, 37),
(60, 'jjjj', 'jjjj', 'ffffffg@g.com', 'BL5PECvh', '', '', 0, 35),
(61, 'Aleen', '', 'aaalla@gmail.com', '123123', '', '', 0, 35),
(63, 'Reem', 'Reem', 'reem@hotmail.com', 'riSTApbR', '', '', 0, 44),
(64, 'Roz', 'Roz', 'rrr@hotmail.com', 'LXUq6Y4Z', '', '', 0, 48);

-- --------------------------------------------------------

--
-- Table structure for table `assignrawdata`
--

CREATE TABLE `assignrawdata` (
  `AssignID` int(11) NOT NULL,
  `AnnotatorID` int(11) NOT NULL,
  `LeaderID` int(11) NOT NULL,
  `TaskID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignrawdata`
--

INSERT INTO `assignrawdata` (`AssignID`, `AnnotatorID`, `LeaderID`, `TaskID`) VALUES
(24, 40, 44, 41),
(27, 33, 38, 45),
(28, 41, 37, 41),
(29, 41, 44, 54),
(30, 52, 44, 54);

-- --------------------------------------------------------

--
-- Table structure for table `final_save`
--

CREATE TABLE `final_save` (
  `FinalSaveID` int(11) NOT NULL,
  `AnnotatorID` int(11) NOT NULL,
  `TaskID` int(11) NOT NULL,
  `AssignID` int(11) NOT NULL,
  `ScoreID` int(11) NOT NULL,
  `PathOfSavedFile` text NOT NULL,
  `SubmitedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `leader1`
--

CREATE TABLE `leader1` (
  `LeaderID` int(11) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `UserName` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `AdminID` int(11) NOT NULL,
  `Tasks` text NOT NULL,
  `DeletedFlag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leader1`
--

INSERT INTO `leader1` (`LeaderID`, `Name`, `UserName`, `Email`, `Password`, `AdminID`, `Tasks`, `DeletedFlag`) VALUES
(29, 'Razann', '', 'raz@gmail.com', '6577488', 1, '', 1),
(30, 'Sama', '', 'smoo@g.com', '88', 1, '', 1),
(33, 'Hala', '', 'ww@gmail.com', '0', 1, '', 1),
(34, 'jeje', '', 'jwed.xa22@gmail.com', '11', 1, '', 1),
(35, 'Rima', '', 'ffffffg@g.com', '909', 1, '', 1),
(37, 'Hanan', '', 'hnoo@gmail.com', '0', 1, '', 0),
(38, 'Raghad', '', 'raa@hotmail.com', '0', 1, '', 0),
(40, 'Maha', 'Maha', 'mahaa@gmail.com', '0', 1, '', 1),
(42, 'Fooz', '', 'fooz@hotmail.com', '12345678', 1, '', 0),
(43, 'Noora', 'Noor', 'n2214@gmail.com', 'HoragvFc', 1, '', 0),
(44, 'Mahaa', 'mahaa09', 'mmah@gmail.com', 'YUO0X1Em09', 1, '', 0),
(46, 'jnoo', '', 'raa@hotmail.com', 'jjhhaa', 1, '', 1),
(47, 'yara', 'yara', 'raa@hotmail.com', 'Nno5BwaJ', 1, '', 0),
(48, 'Farah', 'Farah', 'ffffffg@g.com', 'XVTqIUlt', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `ScoreID` int(3) NOT NULL,
  `AnnotatorID` int(11) NOT NULL,
  `LeaderID` int(11) NOT NULL,
  `TaskID` int(11) NOT NULL,
  `Comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tagset`
--

CREATE TABLE `tagset` (
  `tagsetID` int(11) NOT NULL,
  `AssignID` int(11) NOT NULL,
  `AdminID` int(11) NOT NULL,
  `TaskID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `path` varchar(100) NOT NULL,
  `tags` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tagset`
--

INSERT INTO `tagset` (`tagsetID`, `AssignID`, `AdminID`, `TaskID`, `Name`, `path`, `tags`) VALUES
(1, 0, 0, 0, 'tags', '', ''),
(2, 0, 0, 0, 'tags', '', ''),
(9, 0, 0, 0, 'POS', '', ''),
(10, 0, 0, 0, 'POS', '', ''),
(11, 0, 0, 0, 'POS', 'POS.txt', '');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `TaskID` int(11) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Type` text NOT NULL,
  `SpecificType` varchar(10) NOT NULL,
  `LeaderID` int(11) NOT NULL,
  `TaskFlag` binary(2) NOT NULL,
  `Deadline` date NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Language` varchar(10) NOT NULL,
  `Dataset` text NOT NULL,
  `Tagset` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`TaskID`, `Name`, `Type`, `SpecificType`, `LeaderID`, `TaskFlag`, `Deadline`, `Status`, `Language`, `Dataset`, `Tagset`) VALUES
(27, 'science', 'NLP', 'Word', 29, 0x0000, '2022-02-06', '', 'Arabic', '', ''),
(35, 'annotation', 'NLP', 'Post', 37, 0x0000, '2022-02-08', '0', 'Arabic', '', ''),
(37, 'zz', 'Image', '', 33, 0x0100, '2022-02-08', '', '', '', ''),
(38, 'science', 'NLP', 'Pragraph', 29, 0x0000, '2022-02-16', '', 'English', '', ''),
(41, 'CC', 'NLP', 'Sentence', 37, 0x0000, '2022-02-16', '', 'Arabic', 'images (3).png', 'DB.jpg'),
(45, 'sss', 'NLP', 'word', 38, 0x0000, '0000-00-00', '', 'Arabic', '', ''),
(48, 'xxxxxxxxxx', 'NLP', 'Word', 42, 0x0000, '2022-02-25', '', 'Arabic', 'images (1).png', '(2).png'),
(49, 'AAA', 'NLP', 'Word', 37, 0x0000, '2022-02-02', '0', 'Arabic', '', 'text.txt'),
(50, 'Task2', 'NLP', 'Sentence', 42, 0x0000, '2022-02-02', '0', 'English', '', 'tweet.txt'),
(51, 'POS', 'NLP', 'Word', 29, 0x0000, '2022-04-09', '', 'Arabic', 'text.txt', 'text.txt'),
(52, 'POS', 'NLP', 'Word', 29, 0x0000, '2022-04-09', '', 'Arabic', 'text.txt', 'text.txt'),
(53, '$e<br>', 'NLP', 'Word', 29, 0x0000, '2022-04-09', '', 'Arabic', 'text.txt', 'text.txt'),
(54, 'text<br>', 'NLP', 'Word', 44, 0x0000, '2022-04-09', '', 'Arabic', 'text.txt', 'text.txt'),
(55, 'text', 'NLP', 'Word', 29, 0x0000, '2022-04-09', '', 'Arabic', 'text.txt', 'text.txt');

-- --------------------------------------------------------

--
-- Table structure for table `task_type`
--

CREATE TABLE `task_type` (
  `TaskTypeID` int(11) NOT NULL,
  `Type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_type`
--

INSERT INTO `task_type` (`TaskTypeID`, `Type`) VALUES
(1, 'sentence'),
(2, 'word'),
(6, 'pragraph'),
(7, 'post\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tempsave`
--

CREATE TABLE `tempsave` (
  `TempSaveID` int(11) NOT NULL,
  `AnnotatorID` int(11) NOT NULL,
  `TaskID` int(11) NOT NULL,
  `ScoreID` int(11) NOT NULL,
  `AssignID` int(11) NOT NULL,
  `PathOfSavedFile` text NOT NULL,
  `Draft` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin1`
--
ALTER TABLE `admin1`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `annotator`
--
ALTER TABLE `annotator`
  ADD PRIMARY KEY (`AnnotatorID`),
  ADD KEY `Score` (`Score`),
  ADD KEY `LeaderID` (`LeaderID`);

--
-- Indexes for table `assignrawdata`
--
ALTER TABLE `assignrawdata`
  ADD PRIMARY KEY (`AssignID`),
  ADD KEY `AnnotatorID` (`AnnotatorID`),
  ADD KEY `task` (`TaskID`),
  ADD KEY `leader` (`LeaderID`);

--
-- Indexes for table `final_save`
--
ALTER TABLE `final_save`
  ADD PRIMARY KEY (`FinalSaveID`),
  ADD KEY `annotatorid` (`AnnotatorID`),
  ADD KEY `taskid` (`TaskID`),
  ADD KEY `AssignID` (`AssignID`),
  ADD KEY `scoreid` (`ScoreID`);

--
-- Indexes for table `leader1`
--
ALTER TABLE `leader1`
  ADD PRIMARY KEY (`LeaderID`),
  ADD KEY `adminidd` (`AdminID`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`ScoreID`),
  ADD KEY `LeaderID` (`AnnotatorID`,`LeaderID`),
  ADD KEY `TaskID` (`TaskID`),
  ADD KEY `score_ibfk_1` (`LeaderID`);

--
-- Indexes for table `tagset`
--
ALTER TABLE `tagset`
  ADD PRIMARY KEY (`tagsetID`),
  ADD KEY `annotatorid` (`AssignID`),
  ADD KEY `adminid` (`AdminID`),
  ADD KEY `TaskID` (`TaskID`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`TaskID`),
  ADD KEY `LeaderID` (`LeaderID`);

--
-- Indexes for table `task_type`
--
ALTER TABLE `task_type`
  ADD PRIMARY KEY (`TaskTypeID`);

--
-- Indexes for table `tempsave`
--
ALTER TABLE `tempsave`
  ADD PRIMARY KEY (`TempSaveID`),
  ADD KEY `AnnotatorID` (`AnnotatorID`),
  ADD KEY `TaskID` (`TaskID`),
  ADD KEY `ScoreID` (`ScoreID`),
  ADD KEY `AssignID` (`AssignID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin1`
--
ALTER TABLE `admin1`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `annotator`
--
ALTER TABLE `annotator`
  MODIFY `AnnotatorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `assignrawdata`
--
ALTER TABLE `assignrawdata`
  MODIFY `AssignID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `final_save`
--
ALTER TABLE `final_save`
  MODIFY `FinalSaveID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leader1`
--
ALTER TABLE `leader1`
  MODIFY `LeaderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `ScoreID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tagset`
--
ALTER TABLE `tagset`
  MODIFY `tagsetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `TaskID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `task_type`
--
ALTER TABLE `task_type`
  MODIFY `TaskTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tempsave`
--
ALTER TABLE `tempsave`
  MODIFY `TempSaveID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `annotator`
--
ALTER TABLE `annotator`
  ADD CONSTRAINT `annotator_ibfk_1` FOREIGN KEY (`LeaderID`) REFERENCES `leader1` (`LeaderID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `assignrawdata`
--
ALTER TABLE `assignrawdata`
  ADD CONSTRAINT `assignrawdata_ibfk_1` FOREIGN KEY (`TaskID`) REFERENCES `task` (`TaskID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assignrawdata_ibfk_2` FOREIGN KEY (`AnnotatorID`) REFERENCES `annotator` (`AnnotatorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assignrawdata_ibfk_3` FOREIGN KEY (`LeaderID`) REFERENCES `leader1` (`LeaderID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `final_save`
--
ALTER TABLE `final_save`
  ADD CONSTRAINT `final_save_ibfk_1` FOREIGN KEY (`AssignID`) REFERENCES `assignrawdata` (`AssignID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `final_save_ibfk_2` FOREIGN KEY (`ScoreID`) REFERENCES `score` (`ScoreID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `leader1`
--
ALTER TABLE `leader1`
  ADD CONSTRAINT `leader1_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin1` (`AdminID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`LeaderID`) REFERENCES `leader1` (`LeaderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `score_ibfk_2` FOREIGN KEY (`AnnotatorID`) REFERENCES `annotator` (`AnnotatorID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_2` FOREIGN KEY (`LeaderID`) REFERENCES `leader1` (`LeaderID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tempsave`
--
ALTER TABLE `tempsave`
  ADD CONSTRAINT `tempsave_ibfk_1` FOREIGN KEY (`AnnotatorID`) REFERENCES `annotator` (`AnnotatorID`),
  ADD CONSTRAINT `tempsave_ibfk_2` FOREIGN KEY (`TaskID`) REFERENCES `task` (`TaskID`),
  ADD CONSTRAINT `tempsave_ibfk_3` FOREIGN KEY (`ScoreID`) REFERENCES `score` (`ScoreID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
