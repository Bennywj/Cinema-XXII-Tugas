-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2018 at 01:51 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema22`
--

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Comedy', '2018-04-11 19:49:56', '2018-04-11 19:49:56'),
(2, 'Action', '2018-04-11 19:50:00', '2018-04-11 19:50:00'),
(3, 'Thriller', '2018-04-11 19:50:02', '2018-04-11 19:50:02'),
(4, 'Romance', '2018-04-11 19:50:03', '2018-04-11 19:50:03'),
(5, 'Drama', '2018-04-11 19:50:27', '2018-04-11 19:50:27'),
(6, 'Fantasy', '2018-04-11 19:50:46', '2018-04-11 19:50:46'),
(7, 'Adventure', '2018-04-11 19:51:18', '2018-04-11 19:51:18'),
(8, 'Horror', '2018-04-11 20:07:31', '2018-04-11 20:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `genre_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `cast_star` varchar(255) COLLATE utf8_bin NOT NULL,
  `length` int(11) NOT NULL,
  `release_date` date NOT NULL,
  `director` varchar(255) COLLATE utf8_bin NOT NULL,
  `producer` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `genre_id`, `description`, `cast_star`, `length`, `release_date`, `director`, `producer`, `createdAt`, `updatedAt`) VALUES
(1, 'Avengers: Infinity War', '2', 'Iron Man, Thor, the Hulk and the rest of the Avengers unite to battle their most powerful enemy yet -- the evil Thanos. On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality. The fate of the planet and existence itself has never been more uncertain as everything the Avengers have fought for has led up to this moment.', 'Robert Downey Jr, Chris evans, Tom Holland, Scarlett Johansson', 156, '2018-04-27', 'Anthony Russo, Joe Russo', 'Kevin Feige', '2018-04-11 19:57:35', '2018-04-11 19:57:35'),
(2, 'Gantz: Perfect Answer', '7', 'Kei Kurono (Kazunari Ninomiya) and Masaru Kato (Kenichi Matsuyama) are summoned by the mysterious black globe GANTZ. They continue the fight against extraterrestrial beings and, as they continue to battle, they become stronger. They can\'t escape unless they kill their enemy, the Saint.\n\nKei Kurono opts to keep fighting to survive, but Masaru Kato hates the world which is controlled by violence and refuses to fight. As the two friends finds themselves opposing each other in a continuous game of violence, a critical last choice is to be made .', 'Ken\'ichi Matsuyama, Kazunari Ninomiya, Ayumi Itô', 141, '2011-04-23', 'Shinsuke Sato', 'Takahiro Sato', '2018-04-11 20:03:24', '2018-04-11 20:03:24'),
(3, 'Guardians of the Galaxy Vol. 2', '6', 'In 2014, Peter Quill, Gamora, Drax, Rocket, and Baby Groot are renowned as the Guardians of the Galaxy. Ayesha, leader of the Sovereign race, has the Guardians protect valuable batteries from an inter-dimensional monster in exchange for Gamora\'s estranged sister Nebula, who was caught attempting to steal the batteries. After Rocket steals some for himself, the Sovereign attacks the Guardians\' ship with a fleet of drones. These are destroyed by a mysterious figure, and the Guardians crash-land on a nearby planet. There this figure reveals himself as Quill\'s father, Ego, and invites Quill, Gamora, and Drax to his home planet. Rocket and Groot remain behind to repair the ship and guard Nebula.', 'Chris Pratt, Dave Bautista, Vin Diesel', 137, '2017-04-10', 'James Gunn', 'Kevin Feige', '2018-04-11 20:06:00', '2018-04-11 20:06:00'),
(4, 'A Quiet Place ', '8', 'In the year 2020 most of Earth\'s human population has been wiped out by a race of sightless, extra-terrestrial creatures with hypersonic hearing. The creatures use sound detection to hunt and kill any form of life. The Abbott family—husband Lee, wife Evelyn, deaf daughter Regan, sons Marcus and Beau—scavenge for supplies while remaining as silent as possible and communicating non-verbally through American Sign Language. Lee relieves Beau of a toy Space Shuttle, warning him that its noise could attract the creatures, and removes the batteries. Taking pity on him, Regan returns the toy to Beau who, unseen by the family, puts the batteries back inside it. On their way home, Beau turns the toy on and attracts one of the creatures, which slaughters him', 'John Krasinski, Emily Blunt', 90, '2018-04-06', 'John Krasinski', 'Michael Bay', '2018-04-11 20:09:35', '2018-04-11 20:09:35'),
(5, 'John Wick: Chapter 2', '2', 'Four days after the events of the first film,[5] former assassin John Wick tracks down his stolen 1969 Ford Mustang Mach 1 at a chop shop owned by Abram Tarasov, brother of Viggo and uncle of Iosef. John dispatches Tarasov\'s men in a violent fight that heavily damages the Mustang. He then spares Tarasov under the auspices of peace and returns home.\n\nAfter Aurelio takes John\'s Mustang for repairs, John is visited by Italian crime lord Santino D\'Antonio. It is revealed that to complete his \"impossible task\"—which allowed him to retire and marry Helen—John asked Santino for help. ', 'Keanu Reeves', 122, '2017-01-30', 'Chad Stahelski', 'Basil Iwanyk, Erica Lee', '2018-04-11 20:12:28', '2018-04-11 20:12:28'),
(6, 'Ready Player One', '7', 'In the year 2045, people can escape their harsh reality in the OASIS, an immersive virtual world where you can go anywhere, do anything, be anyone-the only limits are your own imagination. OASIS creator James Halliday left his immense fortune and control of the Oasis to the winner of a contest designed to find a worthy heir. When unlikely hero Wade Watts conquers the first challenge of the reality-bending treasure hunt, he and his friends-known as the High Five-are hurled into a fantastical universe of discovery and danger to save the OASIS and their world.', 'Tye Sheridan, Olivia Cooke ', 140, '2018-03-29', 'Steven Spielberg', 'Steven Spielberg', '2018-04-11 20:15:32', '2018-04-11 20:15:32'),
(7, 'Captain America: Civil War', '2', 'n 1991, the brainwashed super-soldier James \"Bucky\" Barnes is dispatched from a Hydra base in Siberia to intercept an automobile carrying a case of super-soldier serum. In the present day, approximately one year after Ultron\'s defeat in the nation of Sokovia at the hands of the Avengers,[N 1] Steve Rogers, Natasha Romanoff, Sam Wilson, and Wanda Maximoff stop Brock Rumlow from stealing a biological weapon from a lab in Lagos. Rumlow blows himself up, hoping to kill Rogers. When Maximoff throws the explosion into the sky with telekinesis, it damages a nearby building, killing several Wakandan humanitarian workers.', 'Chris Evans, Robert Downey Jr,. Scarlett Johansson, Sebastian Stan', 147, '2016-04-12', 'Anthony Russo, Joe Russo', 'Kevin Feige', '2018-04-11 20:18:35', '2018-04-11 20:18:35'),
(8, 'Fate/stay night: Heaven\'s Feel', '6', 'Shirou has started to realize that his friend Sakura is growing into a beautiful woman, and he starts to feel attracted to her. He also meets Zouken Matou, Sakura\'s grandfather, for the first time. Zouken greets him warmly at the Matou house and thanks him for being a friend to his grandchildren. Rin also appears at the beginning, and is more hostile towards Shirou than in the Fate route.', '-', 120, '2017-10-14', 'Tomonori Sudō', 'Hikaru Kondo', '2018-04-11 20:21:01', '2018-04-11 20:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `createdAt`, `updatedAt`) VALUES
(1, 'PQRSGKE', '1', '2018-04-17 20:48:46', '2018-04-17 20:48:46'),
(2, 'CJIZ0BI', '1', '2018-04-17 21:21:26', '2018-04-17 21:21:26'),
(3, 'J62GBGD', '1', '2018-04-17 21:23:55', '2018-04-17 21:23:55'),
(4, 'G5HJH2T', '1', '2018-04-17 21:24:11', '2018-04-17 21:24:11'),
(5, 'K00NMMR', '4', '2018-04-19 19:40:33', '2018-04-19 19:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `plazas`
--

CREATE TABLE `plazas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `city` varchar(255) COLLATE utf8_bin NOT NULL,
  `street` text COLLATE utf8_bin NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `plazas`
--

INSERT INTO `plazas` (`id`, `name`, `city`, `street`, `phone_number`, `createdAt`, `updatedAt`) VALUES
(1, 'Thamrin Plaza', 'medan', 'Jl. M.H Thamrin No.75R, Sei Rengas II, Medan Area, Kota Medan, Sumatera Utara 20211', '(061) 7363222', '2018-04-11 20:21:52', '2018-04-11 20:21:52'),
(2, 'Sun Plaza', 'medan', 'Jalan Kh. Zainul Arifin No.7, Kota Medan, Sumatera Utara 20152', '061) 4501000', '2018-04-11 20:22:40', '2018-04-11 20:22:40'),
(4, 'Lippo Plaza', 'medan', 'Jl. Imam Bonjol, Suka Damai, Medan Polonia, Kota Medan, Sumatera Utara 20159', '(061) 80511111', '2018-04-11 20:43:08', '2018-04-11 20:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `profile_pictures`
--

CREATE TABLE `profile_pictures` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `file_name` text COLLATE utf8_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `profile_pictures`
--

INSERT INTO `profile_pictures` (`id`, `username`, `file_name`, `createdAt`, `updatedAt`) VALUES
(1, 'Avengers: Infinity War', 'profileImage-1525104989166.png', '2018-04-11 19:57:35', '2018-04-30 23:16:29'),
(2, 'Gantz: Perfect Answer', 'profileImage-1523451804652.jpg', '2018-04-11 20:03:24', '2018-04-11 20:03:24'),
(3, 'Guardians of the Galaxy Vol. 2', 'profileImage-1523451960418.jpg', '2018-04-11 20:06:00', '2018-04-11 20:06:00'),
(4, 'A Quiet Place', 'profileImage-1523452175388.jpg', '2018-04-11 20:09:35', '2018-04-11 20:09:35'),
(5, 'John Wick: Chapter 2', 'profileImage-1523452348824.jpg', '2018-04-11 20:12:28', '2018-04-11 20:12:28'),
(6, 'Ready Player One', 'profileImage-1523452532883.jpg', '2018-04-11 20:15:32', '2018-04-11 20:15:32'),
(7, 'Captain America: Civil War', 'profileImage-1523452715758.jpg', '2018-04-11 20:18:35', '2018-04-11 20:18:35'),
(8, 'Fate/stay night: Heaven\'s Feel', 'profileImage-1523452861111.jpg', '2018-04-11 20:21:01', '2018-04-11 20:21:01'),
(9, 'Thamrin Plaza', 'profileImage-1523452912232.jpg', '2018-04-11 20:21:52', '2018-04-11 20:21:52'),
(10, 'Sun Plaza', 'profileImage-1523452961249.jpg', '2018-04-11 20:22:41', '2018-04-11 20:22:41'),
(12, 'Lippo Plaza', 'profileImage-1523454188821.jpg', '2018-04-11 20:43:08', '2018-04-11 20:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `movie_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `plaza_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `theater_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL,
  `start_hour` time NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `movie_id`, `plaza_id`, `theater_id`, `date`, `start_hour`, `price`, `type`, `createdAt`, `updatedAt`) VALUES
(1, '1', '1', '1', '2018-04-27', '15:00:00', 50000, '2D', '2018-04-11 20:27:14', '2018-04-11 20:27:14'),
(2, '1', '1', '1', '2018-04-27', '17:00:00', 50000, '2D', '2018-04-11 20:28:00', '2018-04-11 20:28:00'),
(3, '1', '1', '1', '2018-04-27', '19:30:00', 55000, '2D', '2018-04-11 20:28:15', '2018-04-11 20:28:15'),
(4, '1', '1', '1', '2018-04-27', '21:00:00', 60000, '2D', '2018-04-11 20:28:39', '2018-04-11 20:28:39'),
(5, '2', '1', '2', '2018-04-27', '11:30:00', 40000, '3D', '2018-04-11 20:29:24', '2018-04-11 20:29:24'),
(6, '2', '1', '2', '2018-04-27', '13:00:00', 45000, '2D', '2018-04-11 20:29:50', '2018-04-11 20:29:50'),
(7, '2', '1', '3', '2018-04-27', '14:30:00', 50000, '3D', '2018-04-11 20:30:13', '2018-04-11 20:30:13'),
(8, '3', '1', '3', '2018-04-27', '09:00:00', 45000, '2D', '2018-04-11 20:30:43', '2018-04-11 20:30:43'),
(9, '3', '1', '3', '2018-04-27', '13:00:00', 50000, '3D', '2018-04-11 20:31:05', '2018-04-11 20:31:05'),
(10, '3', '1', '3', '2018-04-27', '17:00:00', 50000, '2D', '2018-04-11 20:31:36', '2018-04-11 20:31:36'),
(11, '3', '1', '5', '2018-04-27', '21:00:00', 60000, '3D', '2018-04-11 20:32:18', '2018-04-11 20:32:18'),
(12, '5', '1', '1', '2018-04-27', '13:00:00', 45000, '2D', '2018-04-11 20:33:37', '2018-04-11 20:33:37'),
(13, '5', '1', '5', '2018-04-27', '11:00:00', 40000, '2D', '2018-04-11 20:33:58', '2018-04-11 20:33:58'),
(14, '5', '1', '9', '2018-04-27', '17:00:00', 60000, '2D', '2018-04-11 20:34:34', '2018-04-11 20:34:34'),
(15, '4', '4', '1', '2018-04-15', '20:00:00', 50000, '2D', '2018-04-15 19:32:40', '2018-04-15 19:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `theaters`
--

CREATE TABLE `theaters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `theaters`
--

INSERT INTO `theaters` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Cinema-1', '2018-04-11 19:49:50', '2018-04-11 19:49:50'),
(2, 'Cinema-2', '2018-04-11 19:49:50', '2018-04-11 19:49:50'),
(3, 'Cinema-3', '2018-04-11 19:49:50', '2018-04-11 19:49:50'),
(4, 'Cinema-4', '2018-04-11 19:49:50', '2018-04-11 19:49:50'),
(5, 'Cinema-5', '2018-04-11 19:49:50', '2018-04-11 19:49:50'),
(6, 'Cinema-6', '2018-04-11 19:49:50', '2018-04-11 19:49:50'),
(7, 'Cinema-7', '2018-04-11 19:49:50', '2018-04-11 19:49:50'),
(8, 'Cinema-8', '2018-04-11 19:49:50', '2018-04-11 19:49:50'),
(9, 'Cinema-9', '2018-04-11 19:49:50', '2018-04-11 19:49:50'),
(10, 'Cinema-10', '2018-04-11 19:49:50', '2018-04-11 19:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `schedule_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `seat_no` varchar(255) COLLATE utf8_bin NOT NULL,
  `order_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `schedule_id`, `seat_no`, `order_id`, `createdAt`, `updatedAt`) VALUES
(1, '1', 'A1', 'PQRSGKE', '2018-04-17 20:48:47', '2018-04-17 20:48:47'),
(2, '1', 'A2', 'PQRSGKE', '2018-04-17 20:48:47', '2018-04-17 20:48:47'),
(3, '1', 'A3', 'CJIZ0BI', '2018-04-17 21:21:26', '2018-04-17 21:21:26'),
(4, '1', 'A4', 'J62GBGD', '2018-04-17 21:23:55', '2018-04-17 21:23:55'),
(5, '1', 'A5', 'G5HJH2T', '2018-04-17 21:24:11', '2018-04-17 21:24:11'),
(6, '4', 'A1', 'K00NMMR', '2018-04-19 19:40:34', '2018-04-19 19:40:34'),
(7, '4', 'A2', 'K00NMMR', '2018-04-19 19:40:34', '2018-04-19 19:40:34'),
(8, '4', 'A3', 'K00NMMR', '2018-04-19 19:40:34', '2018-04-19 19:40:34'),
(9, '4', 'A4', 'K00NMMR', '2018-04-19 19:40:34', '2018-04-19 19:40:34'),
(10, '4', 'A5', 'K00NMMR', '2018-04-19 19:40:34', '2018-04-19 19:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `role` varchar(255) COLLATE utf8_bin DEFAULT 'user',
  `point` int(11) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `role`, `point`, `createdAt`, `updatedAt`) VALUES
(1, 'benny.wijaya8@yahoo.com', '123456', 'Benny wijaya', 'user', 209950, '2018-04-11 19:36:57', '2018-04-17 21:24:11'),
(2, 'admin@yahoo.com', 'admin', 'admin', 'admin', 500000, '2018-04-11 20:36:58', '2018-04-19 19:52:47'),
(3, 'bennyw2207@gmail.com', '123456', 'Benny wijoyo', 'user', 900000, '2018-04-15 21:57:54', '2018-04-15 22:03:53'),
(4, 'elwinchen@rocketmail.com', '123456', 'Elwin Chen', 'user', 4700000, '2018-04-19 19:26:46', '2018-04-19 19:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `voucher_code` varchar(255) COLLATE utf8_bin NOT NULL,
  `point` int(11) NOT NULL,
  `used` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `voucher_code`, `point`, `used`, `createdAt`, `updatedAt`) VALUES
(2, '6E5DR5T', 0, 1, '2018-04-12 23:45:27', '2018-04-15 20:11:10'),
(3, 'WFACFLR', 0, 1, '2018-04-13 00:26:31', '2018-04-13 00:49:10'),
(4, 'Y3KAC3T', 0, 1, '2018-04-13 00:49:59', '2018-04-13 01:05:42'),
(5, 'S1X2KEQ', 0, 1, '2018-04-15 21:59:04', '2018-04-15 21:59:30'),
(6, '5WCJ15U', 0, 1, '2018-04-15 22:01:04', '2018-04-15 22:02:33'),
(7, 'EGLU6KE', 100000, 0, '2018-04-15 22:01:05', '2018-04-15 22:01:05'),
(8, '3O2Q4IT', 50000, 0, '2018-04-15 22:02:01', '2018-04-15 22:02:01'),
(9, '8UGXLP5', 0, 1, '2018-04-19 19:39:44', '2018-04-19 19:40:02'),
(10, 'BZBS2WJ', 0, 1, '2018-04-19 19:52:39', '2018-04-19 19:52:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `plazas`
--
ALTER TABLE `plazas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `profile_pictures`
--
ALTER TABLE `profile_pictures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theaters`
--
ALTER TABLE `theaters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `plazas`
--
ALTER TABLE `plazas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profile_pictures`
--
ALTER TABLE `profile_pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `theaters`
--
ALTER TABLE `theaters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
