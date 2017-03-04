-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2017 at 08:43 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `username` varchar(40) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image` longblob NOT NULL,
  `upvote` int(11) NOT NULL,
  `downvote` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `video` longblob NOT NULL,
  `doc` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `username`, `datetime`, `image`, `upvote`, `downvote`, `type`, `video`, `doc`) VALUES
(1, 'India vs England', '5 test match series starts from 9 Nov! Excited!', 'amitanand2307', '2016-11-07 05:07:29', 0x696e6469612d656e672e6a7067, 1, 0, 'Sports', '', ''),
(2, 'sachin vs akhtar', 'the best six of the decade by sachin wc 2003 semis against pakistan', 'ravindra', '2016-11-07 05:10:19', '', 0, 0, 'Sports', 0x766964656f706c61796261636b2e6d7034, ''),
(3, 'DBMS Project ', 'DBMS project report on NITK blogging webiste', 'ravindra', '2016-11-07 08:59:02', '', 0, 0, 'Academic', '', 0x7265706f727444424d532e706466),
(4, 'Engineer-2K16', 'Engineer 2K16 ends on a High!', 'amitanand2307', '2016-11-07 08:58:35', 0x656e67692e6a7067, 0, 0, 'NITK Events', '', ''),
(5, 'Nature', 'How Beautiful is it? <3', 'Shubham', '2016-11-07 07:14:58', 0x4e6963652d4e61747572652e6a7067, 0, 0, 'Personal', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `downvote`
--

CREATE TABLE `downvote` (
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nob`
--

CREATE TABLE `nob` (
  `nob` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nob`
--

INSERT INTO `nob` (`nob`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `reply` varchar(2000) NOT NULL,
  `username` varchar(40) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_title` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `reply`, `username`, `datetime`, `id_title`) VALUES
(1, 'me excited as well! :)', 'ravindra', '2016-11-07 05:07:22', 1),
(2, 'nice project! :p', 'amitanand2307', '2016-11-07 05:12:43', 3),
(3, 'yeah bro', 'amitanand2307', '2016-11-07 07:16:29', 1),
(4, 'india win 4-0....yayyyyyy! :D', 'amitanand2307', '2016-12-20 17:04:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `upvote`
--

CREATE TABLE `upvote` (
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upvote`
--

INSERT INTO `upvote` (`user_id`, `blog_id`) VALUES
(1, -5000),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `profile_pic` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `profile_pic`) VALUES
(1, 'amitanand2307', 'b18a8cd7ea8f7d892ae25504af7f3bab', 'amitanand2307@gmail.com', 0x494d475f32303135303932385f3136303835332d312e6a7067),
(2, 'ravindra', 'b18a8cd7ea8f7d892ae25504af7f3bab', 'ravindra@gmail.com', 0x612e706e67),
(3, 'Shubham', 'b18a8cd7ea8f7d892ae25504af7f3bab', 'amitanand23071@gmail.com', 0x6c6561746820676f6c64206c6f676f2e6a7067);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downvote`
--
ALTER TABLE `downvote`
  ADD PRIMARY KEY (`user_id`,`blog_id`);

--
-- Indexes for table `nob`
--
ALTER TABLE `nob`
  ADD PRIMARY KEY (`nob`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upvote`
--
ALTER TABLE `upvote`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
