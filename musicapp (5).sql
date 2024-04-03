-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2023 at 09:50 AM
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
-- Database: `musicapp`
--
CREATE DATABASE IF NOT EXISTS `musicapp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `musicapp`;

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `adminId` char(10) NOT NULL,
  `fname` char(30) NOT NULL,
  `lname` char(30) NOT NULL,
  `eMail` varchar(35) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`adminId`, `fname`, `lname`, `eMail`, `password`) VALUES
('Admin00001', 'Abdullah', 'shafiq', 'boinktoit13@gmail.com ', 'Takobell3'),
('Admin00002', 'Zakir', 'Matloob', 'zakirdeveloper152@gmail.com ', 'Snocape1'),
('Admin00003', 'Ali', 'qadeer', 'alibinqadeer123@gmail.com', 'dasf34t'),
('Admin00004', 'Laiba', 'Junaid', 'laibajadi31@yahoo.com', 'egwsf234'),
('Admin00005', 'Hamza', 'Sheikh', 'hamzash231@gmail.com', '236fsf3');

-- --------------------------------------------------------

--
-- Table structure for table `advertiser`
--

DROP TABLE IF EXISTS `advertiser`;
CREATE TABLE `advertiser` (
  `advertiserId` char(10) NOT NULL,
  `fname` char(30) NOT NULL,
  `lname` char(30) NOT NULL,
  `eMail` varchar(35) NOT NULL,
  `street` varchar(20) NOT NULL,
  `city` varchar(15) NOT NULL,
  `postcode` varchar(5) DEFAULT NULL,
  `advertisementDuration` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertiser`
--

INSERT INTO `advertiser` (`advertiserId`, `fname`, `lname`, `eMail`, `street`, `city`, `postcode`, `advertisementDuration`) VALUES
('Advert_001', 'Ali', 'Juneja', 'Alijunejopk2@gmail.com', 'Abubakar', 'Karachi', '60212', '02:00:59'),
('Advert_002', 'Elon', 'musk', 'ellonmusk65@gmail.com', 'cavalry', 'New York', '60233', '10:01:05'),
('Advert_003', 'Iqra', 'University', 'iqrauniversity@edu.pk', 'sat Town', 'Virginia ', '34232', '27:11:25'),
('Advert_004', 'M', 'G', 'mg.pakistan@mg.com', 'oxford', 'london', '33542', '46:17:25'),
('Advert_005', 'Nestle', 'Pakistan', 'nestlepakistan@nestle.com', 'cavalry', 'New York', '42643', '23:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `advertiseradministrator`
--

DROP TABLE IF EXISTS `advertiseradministrator`;
CREATE TABLE `advertiseradministrator` (
  `adminid` char(10) NOT NULL,
  `advertiserid` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertiseradministrator`
--

INSERT INTO `advertiseradministrator` (`adminid`, `advertiserid`) VALUES
('Admin00001', 'Advert_004'),
('Admin00002', 'Advert_003'),
('Admin00002', 'Advert_005'),
('Admin00004', 'Advert_001'),
('Admin00005', 'Advert_002');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `albumId` char(10) NOT NULL,
  `artistid` char(10) NOT NULL,
  `albumtitle` varchar(30) NOT NULL,
  `releaseDate` date NOT NULL,
  `albumgenre` set('P','H','J','C') NOT NULL,
  `duration` time DEFAULT NULL,
  `trackCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumId`, `artistid`, `albumtitle`, `releaseDate`, `albumgenre`, `duration`, `trackCount`) VALUES
('ALBUM00001', 'Artist_001', 'MAFIA', '2023-05-03', 'P', '01:40:21', 2),
('ALBUM00002', 'Artist_001', 'showtoppers', '2023-06-08', 'P', '02:50:34', 2),
('ALBUM00003', 'Artist_002', 'lajawab', '2023-06-08', 'H', '91:50:34', 2);

-- --------------------------------------------------------

--
-- Table structure for table `albumsongs`
--

DROP TABLE IF EXISTS `albumsongs`;
CREATE TABLE `albumsongs` (
  `songId` char(10) NOT NULL,
  `albumid` char(10) NOT NULL,
  `songTitle` varchar(30) NOT NULL,
  `releaseDate` date NOT NULL,
  `genre` set('P','H','J','C') NOT NULL,
  `duration` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `albumsongs`
--

INSERT INTO `albumsongs` (`songId`, `albumid`, `songTitle`, `releaseDate`, `genre`, `duration`) VALUES
('SONG000001', 'ALBUM00002', 'bikhra', '2023-06-06', 'J', '02:57:33'),
('SONG000002', 'ALBUM00002', 'khayaal', '2023-06-22', 'H', '02:57:17'),
('SONG000003', 'ALBUM00003', 'dilruba', '2023-06-01', 'C', '00:57:12'),
('SONG000004', 'ALBUM00003', 'renegade', '2023-06-08', 'C', '01:07:17'),
('SONG000005', 'ALBUM00001', 'Ijazat by Falak', '2023-05-03', 'P', '00:03:21'),
('SONG000006', 'ALBUM00001', 'Baari 2.0', '2022-03-21', 'P', '00:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
CREATE TABLE `artist` (
  `artistId` char(10) NOT NULL,
  `artistName` varchar(30) NOT NULL,
  `genre` set('P','H','J','C') NOT NULL,
  `eMail` varchar(35) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artistId`, `artistName`, `genre`, `eMail`, `password`) VALUES
('Artist_001', 'Falak Shabbir', 'P', 'falak1@gmail.com', '345tfsf'),
('Artist_002', 'Bilal Saeed', 'H', 'Bilal96@gmail.com', 'Ty65sfg'),
('Artist_003', 'Atta Ulla ', 'C', 'Atta96@gmail.com', '45tsfhj'),
('Artist_004', 'Ali Gatie', 'C', 'aligatie.bussiness@gmail.com', 'aetw4r1'),
('Artist_005', 'Arijit Singh', 'C', 'arijit@gmail.com', 'efwerqrf3');

-- --------------------------------------------------------

--
-- Table structure for table `artistadministrator`
--

DROP TABLE IF EXISTS `artistadministrator`;
CREATE TABLE `artistadministrator` (
  `artistid` char(10) NOT NULL,
  `adminid` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artistadministrator`
--

INSERT INTO `artistadministrator` (`artistid`, `adminid`) VALUES
('Artist_001', 'Admin00001'),
('Artist_002', 'Admin00002'),
('Artist_003', 'Admin00003'),
('Artist_004', 'Admin00004'),
('Artist_005', 'Admin00004');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
CREATE TABLE `playlist` (
  `playlistId` char(10) NOT NULL,
  `userid` char(10) NOT NULL,
  `advertiserid` char(10) NOT NULL,
  `playlistName` varchar(30) NOT NULL,
  `description` text DEFAULT NULL,
  `creationDate` date NOT NULL,
  `numberOfSong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`playlistId`, `userid`, `advertiserid`, `playlistName`, `description`, `creationDate`, `numberOfSong`) VALUES
('PLAYLIST01', 'user_00001', 'Advert_001', 'Ganjiswag', NULL, '2023-06-01', 4),
('PLAYLIST02', 'user_00002', 'Advert_003', 'mastipro', NULL, '2023-06-14', 6);

-- --------------------------------------------------------

--
-- Table structure for table `playlistsingles`
--

DROP TABLE IF EXISTS `playlistsingles`;
CREATE TABLE `playlistsingles` (
  `playlistid` char(10) NOT NULL,
  `singleId` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlistsingles`
--

INSERT INTO `playlistsingles` (`playlistid`, `singleId`) VALUES
('PLAYLIST01', 'SINGLEID02'),
('PLAYLIST02', 'SINGLEID01');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

DROP TABLE IF EXISTS `playlistsongs`;
CREATE TABLE `playlistsongs` (
  `playlistid` char(10) NOT NULL,
  `songid` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`playlistid`, `songid`) VALUES
('PLAYLIST01', 'SONG000002'),
('PLAYLIST01', 'SONG000004');

-- --------------------------------------------------------

--
-- Table structure for table `single`
--

DROP TABLE IF EXISTS `single`;
CREATE TABLE `single` (
  `singleId` char(10) NOT NULL,
  `title` varchar(30) NOT NULL,
  `artistid` char(10) NOT NULL,
  `releaseDate` date NOT NULL,
  `genre` set('P','H','J','C') NOT NULL,
  `duration` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `single`
--

INSERT INTO `single` (`singleId`, `title`, `artistid`, `releaseDate`, `genre`, `duration`) VALUES
('SINGLEID01', 'quarantine', 'Artist_002', '2023-06-01', 'H', '03:14:55'),
('SINGLEID02', 'desperation', 'Artist_003', '2023-06-14', 'H', '03:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` char(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `eMail` varchar(35) NOT NULL,
  `password` varchar(25) NOT NULL,
  `age` tinyint(3) UNSIGNED DEFAULT NULL,
  `gender` set('F','M','O') DEFAULT NULL,
  `location` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `fname`, `lname`, `eMail`, `password`, `age`, `gender`, `location`) VALUES
('user_00001', 'Khalid', 'Nasir', 'khalid69@gmail.com', 'T92boink', 21, 'M', 'Pakistan'),
('user_00002', 'Abu', 'Andrew', 'andrewtate@realworld.com', 'adfsaf', 39, 'M', 'Realworld'),
('user_00003', 'Imma', 'dummy', 'yoyohaha@gmail.com', 'IamDumb', 25, 'M', 'Pakistan'),
('user_00004', 'John', 'Wick', 'jonnybhai@gmail.com', 'xbjq3k3', 42, 'M', 'California'),
('user_00005', 'Steven', 'Harpic', 'stevesss@gmail.com', 'dfg3g4', 32, 'M', 'jahaz');

-- --------------------------------------------------------

--
-- Table structure for table `useradministrator`
--

DROP TABLE IF EXISTS `useradministrator`;
CREATE TABLE `useradministrator` (
  `userid` char(10) NOT NULL,
  `adminid` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `useradministrator`
--

INSERT INTO `useradministrator` (`userid`, `adminid`) VALUES
('user_00001', 'Admin00002'),
('user_00003', 'Admin00001');

-- --------------------------------------------------------

--
-- Table structure for table `usersartists`
--

DROP TABLE IF EXISTS `usersartists`;
CREATE TABLE `usersartists` (
  `artistid` char(10) NOT NULL,
  `userid` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usersartists`
--

INSERT INTO `usersartists` (`artistid`, `userid`) VALUES
('Artist_001', 'user_00003'),
('Artist_003', 'user_00005');

-- --------------------------------------------------------

--
-- Table structure for table `usersingles`
--

DROP TABLE IF EXISTS `usersingles`;
CREATE TABLE `usersingles` (
  `userid` char(10) NOT NULL,
  `singleId` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usersingles`
--

INSERT INTO `usersingles` (`userid`, `singleId`) VALUES
('user_00003', 'SINGLEID01'),
('user_00005', 'SINGLEID02');

-- --------------------------------------------------------

--
-- Table structure for table `usersong`
--

DROP TABLE IF EXISTS `usersong`;
CREATE TABLE `usersong` (
  `userid` char(10) NOT NULL,
  `songid` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usersong`
--

INSERT INTO `usersong` (`userid`, `songid`) VALUES
('user_00001', 'SONG000001'),
('user_00003', 'SONG000003');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `advertiser`
--
ALTER TABLE `advertiser`
  ADD PRIMARY KEY (`advertiserId`);

--
-- Indexes for table `advertiseradministrator`
--
ALTER TABLE `advertiseradministrator`
  ADD PRIMARY KEY (`adminid`,`advertiserid`),
  ADD KEY `adver` (`advertiserid`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumId`),
  ADD KEY `albums_artist` (`artistid`);

--
-- Indexes for table `albumsongs`
--
ALTER TABLE `albumsongs`
  ADD PRIMARY KEY (`songId`),
  ADD KEY `songs_album` (`albumid`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artistId`);

--
-- Indexes for table `artistadministrator`
--
ALTER TABLE `artistadministrator`
  ADD PRIMARY KEY (`artistid`,`adminid`),
  ADD KEY `admins` (`adminid`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`playlistId`),
  ADD KEY `playlist_advertiser` (`advertiserid`),
  ADD KEY `playlist_creator` (`userid`);

--
-- Indexes for table `playlistsingles`
--
ALTER TABLE `playlistsingles`
  ADD PRIMARY KEY (`playlistid`,`singleId`),
  ADD KEY `ss` (`singleId`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`playlistid`,`songid`),
  ADD KEY `son` (`songid`);

--
-- Indexes for table `single`
--
ALTER TABLE `single`
  ADD PRIMARY KEY (`singleId`),
  ADD KEY `Singlesong_artist` (`artistid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `useradministrator`
--
ALTER TABLE `useradministrator`
  ADD PRIMARY KEY (`userid`,`adminid`),
  ADD KEY `adminst` (`adminid`);

--
-- Indexes for table `usersartists`
--
ALTER TABLE `usersartists`
  ADD PRIMARY KEY (`artistid`,`userid`),
  ADD KEY `user` (`userid`);

--
-- Indexes for table `usersingles`
--
ALTER TABLE `usersingles`
  ADD PRIMARY KEY (`userid`,`singleId`),
  ADD KEY `suser` (`singleId`);

--
-- Indexes for table `usersong`
--
ALTER TABLE `usersong`
  ADD PRIMARY KEY (`userid`,`songid`),
  ADD KEY `song` (`songid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertiseradministrator`
--
ALTER TABLE `advertiseradministrator`
  ADD CONSTRAINT `adm` FOREIGN KEY (`adminid`) REFERENCES `administrator` (`adminId`),
  ADD CONSTRAINT `adver` FOREIGN KEY (`advertiserid`) REFERENCES `advertiser` (`advertiserId`);

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `albums_artist` FOREIGN KEY (`artistid`) REFERENCES `artist` (`artistId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `albumsongs`
--
ALTER TABLE `albumsongs`
  ADD CONSTRAINT `songs_album` FOREIGN KEY (`albumid`) REFERENCES `album` (`albumId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `artistadministrator`
--
ALTER TABLE `artistadministrator`
  ADD CONSTRAINT `admins` FOREIGN KEY (`adminid`) REFERENCES `administrator` (`adminId`),
  ADD CONSTRAINT `artis` FOREIGN KEY (`artistid`) REFERENCES `artist` (`artistId`);

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_advertiser` FOREIGN KEY (`advertiserid`) REFERENCES `advertiser` (`advertiserId`),
  ADD CONSTRAINT `playlist_creator` FOREIGN KEY (`userid`) REFERENCES `user` (`userId`);

--
-- Constraints for table `playlistsingles`
--
ALTER TABLE `playlistsingles`
  ADD CONSTRAINT `p` FOREIGN KEY (`playlistid`) REFERENCES `playlist` (`playlistId`),
  ADD CONSTRAINT `ss` FOREIGN KEY (`singleId`) REFERENCES `single` (`singleId`);

--
-- Constraints for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD CONSTRAINT `play` FOREIGN KEY (`playlistid`) REFERENCES `playlist` (`playlistId`),
  ADD CONSTRAINT `son` FOREIGN KEY (`songid`) REFERENCES `albumsongs` (`songId`);

--
-- Constraints for table `single`
--
ALTER TABLE `single`
  ADD CONSTRAINT `Singlesong_artist` FOREIGN KEY (`artistid`) REFERENCES `artist` (`artistId`);

--
-- Constraints for table `useradministrator`
--
ALTER TABLE `useradministrator`
  ADD CONSTRAINT `adminst` FOREIGN KEY (`adminid`) REFERENCES `administrator` (`adminId`),
  ADD CONSTRAINT `us` FOREIGN KEY (`userid`) REFERENCES `user` (`userId`);

--
-- Constraints for table `usersartists`
--
ALTER TABLE `usersartists`
  ADD CONSTRAINT `artisti` FOREIGN KEY (`artistid`) REFERENCES `artist` (`artistId`),
  ADD CONSTRAINT `user` FOREIGN KEY (`userid`) REFERENCES `user` (`userId`);

--
-- Constraints for table `usersingles`
--
ALTER TABLE `usersingles`
  ADD CONSTRAINT `suser` FOREIGN KEY (`singleId`) REFERENCES `single` (`singleId`),
  ADD CONSTRAINT `user_s` FOREIGN KEY (`userid`) REFERENCES `user` (`userId`);

--
-- Constraints for table `usersong`
--
ALTER TABLE `usersong`
  ADD CONSTRAINT `song` FOREIGN KEY (`songid`) REFERENCES `albumsongs` (`songId`),
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
