-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2015 at 08:02 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nba`
--

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `player_id` int(10) UNSIGNED NOT NULL,
  `team_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `date_of_birth` date NOT NULL,
  `jersey_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `team_id`, `first_name`, `last_name`, `position`, `date_of_birth`, `jersey_number`) VALUES
(1, 1, 'Nick', 'Young', 'SF', '1985-06-01', 0),
(2, 1, 'D''Angelo', 'Russell', 'PG', '1996-02-23', 1),
(3, 1, 'Brandon', 'Bass', 'PF', '1985-04-30', 2),
(4, 1, 'Anthony ', 'Brown', 'SF', '1992-10-10', 3),
(5, 1, 'Ryan', 'Kelly', 'PF', '1991-04-09', 4),
(6, 1, 'Jordan ', 'Clarkson', 'SG', '1992-06-07', 6),
(7, 1, 'Larry', 'Nance Jr.', 'PF', '1993-01-01', 7),
(8, 1, 'Marcelo', 'Huertas', 'PG', '1983-05-25', 9),
(9, 1, 'Roy', 'Hibbert', 'C', '1986-12-11', 17),
(10, 1, 'Lou', 'Williams', 'SG', '1986-10-27', 23),
(11, 1, 'Kobe', 'Bryant', 'SG', '1978-08-23', 24),
(12, 1, 'Tarik', 'Black', 'C', '1991-11-22', 28),
(13, 1, 'Julius', 'Randle', 'PF', '1994-11-29', 30),
(14, 1, 'Metta', 'World Peace', 'SF', '1979-11-13', 37),
(15, 1, 'Robert ', 'Sacre', 'C', '1989-06-06', 50),
(16, 2, 'Josh', 'Richardson', 'SG', '1993-09-15', 0),
(17, 2, 'Chris', 'Bosh', 'PF', '1984-03-24', 1),
(18, 2, 'Dwyane', 'Wade', 'SG', '1982-01-17', 3),
(19, 2, 'Josh', 'McRoberts', 'PF', '1987-02-28', 4),
(20, 2, 'Amar''e', 'Stoudemire', 'PF', '1982-11-16', 5),
(21, 2, 'Goran', 'Dragic', 'PG', '1986-05-06', 7),
(22, 2, 'Tyler', 'Johnson', 'PG', '1992-05-07', 8),
(23, 2, 'Luol', 'Deng', 'SF', '1985-04-16', 9),
(24, 2, 'Chris', 'Andersen', 'C', '1978-07-07', 11),
(25, 2, 'Jarnell', 'Stokes', 'PF', '1994-01-07', 12),
(26, 2, 'Gerald ', 'Green', 'SF', '1986-01-26', 14),
(27, 2, 'Beno', 'Udrih', 'PG', '1982-07-05', 19),
(28, 2, 'Justise', 'Winslow', 'SG', '1996-03-26', 20),
(29, 2, 'Hassan', 'Whiteside', 'C', '1989-06-13', 21),
(30, 2, 'Udonis', 'Haslem', 'PF', '1980-06-09', 40),
(33, 3, 'Aaron', 'Gordon', 'PF', '1995-09-16', 0),
(34, 3, 'Dewayne', 'Dedmon', 'C', '1989-08-12', 3),
(35, 3, 'Elfrid', 'Payton', 'PG', '1994-02-22', 4),
(36, 3, 'Victor ', 'Oladipo', 'SG', '1992-05-04', 5),
(37, 3, 'Channing ', 'Frye', 'PF', '1983-05-17', 8),
(38, 3, 'Nikola', 'Vucevic', 'C', '1990-10-24', 9),
(39, 3, 'Evan', 'Fournier', 'SG', '1992-10-29', 10),
(40, 3, 'Roy Devin', 'Marble', 'SF', '1992-09-21', 11),
(41, 3, 'Tobias', 'Harris', 'PF', '1992-07-15', 12),
(42, 3, 'Shabazz', 'Napier', 'PG', '1991-07-14', 13),
(43, 3, 'Jason', 'Smith', 'C', '1986-03-02', 14),
(44, 3, 'Mario', 'Hezonja', 'SF', '1995-02-25', 23),
(45, 3, 'C.J.', 'Watson', 'PG', '1984-04-17', 32),
(46, 3, 'Andrew', 'Nicholson', 'PF', '1989-12-08', 44),
(47, 4, 'O.J.', 'Mayo', 'SG', '1987-11-05', 3),
(48, 4, 'Michael', 'Carter-Williams', 'PG', '1991-10-10', 5),
(49, 4, 'Chris ', 'Copeland', 'PF', '1984-03-17', 9),
(50, 4, 'Tyler', 'Ennis', 'PG', '1994-08-24', 11),
(51, 4, 'Jabari', 'Parker', 'SF', '1995-03-15', 12),
(52, 4, 'Greg', 'Monroe', 'C', '1990-06-04', 15),
(53, 4, 'Damien', 'Inglis', 'PF', '1995-05-20', 17),
(54, 4, 'Miles', 'Plumlee', 'C', '1988-09-01', 18),
(55, 4, 'Jerryd', 'Bayless', 'PG', '1988-08-20', 19),
(56, 4, 'Rashad', 'Vaughn', 'SG', '1996-08-16', 20),
(57, 4, 'Greivis', 'Vasquez', 'PG', '1987-01-16', 21),
(58, 4, 'Khris', 'Middleton', 'SF', '1991-08-12', 22),
(59, 4, 'John', 'Henson', 'C', '1990-12-28', 31),
(60, 4, 'Giannis', 'Antetokounmpo', 'SF', '1994-12-06', 34),
(61, 4, 'Johnny', 'O''Bryant III', 'PF', '1993-06-01', 77),
(62, 5, 'Devin', 'Booker', 'SG', '1996-10-30', 1),
(63, 5, 'Eric', 'Bledsoe', 'PG', '1989-12-09', 2),
(64, 5, 'Brandon', 'Knight', 'PG', '1991-12-02', 3),
(65, 5, 'Tyson', 'Chandler', 'C', '1982-10-02', 4),
(66, 5, 'Bryce', 'Cotton', 'PG', '1992-08-11', 8),
(67, 5, 'Sonny', 'Weems', 'SF', '1985-09-17', 10),
(68, 5, 'Markieff', 'Morris', 'PF', '1989-09-02', 11),
(69, 5, 'T.J.', 'Warren', 'SF', '1993-09-05', 12),
(70, 5, 'Ronnie', 'Price', 'PG', '1983-06-21', 14),
(71, 5, 'P.J. ', 'Tucker', 'SF', '1985-05-05', 17),
(72, 5, 'Archie', 'Goodwin', 'SG', '1994-08-17', 20),
(73, 5, 'Alex', 'Len', 'C', '1993-06-16', 21),
(74, 5, 'Jon', 'Leuer', 'C', '1989-05-14', 30),
(75, 5, 'Mirza', 'Teletovic', 'PF', '1985-09-17', 35),
(76, 5, 'Cory', 'Jefferson', 'SF', '1990-12-26', 55),
(77, 6, 'Kyle', 'Anderson', 'SF', '1993-09-20', 1),
(78, 6, 'Kawhi', 'Leonard', 'SF', '1991-06-29', 2),
(79, 6, 'Ray', 'McCallum', 'SG', '1991-06-12', 3),
(80, 6, 'Patty', 'Mills', 'PG', '1988-08-11', 8),
(81, 6, 'Tony', 'Parker', 'PG', '1982-05-17', 9),
(82, 6, 'LaMarcus', 'Aldridge', 'PF', '1985-07-19', 12),
(83, 6, 'Danny', 'Green', 'SG', '1987-06-22', 14),
(84, 6, 'Matt', 'Bonner', 'PF', '1980-04-05', 15),
(85, 6, 'Jonathon', 'Simmons', 'SG', '1989-09-14', 17),
(86, 6, 'Rasual ', 'Butler', 'SG', '1979-05-23', 18),
(87, 6, 'Manu', 'Ginobili', 'SG', '1977-07-28', 20),
(88, 6, 'Tim', 'Duncan', 'PF', '1976-04-25', 21),
(89, 6, 'David', 'West', 'PF', '1980-08-29', 30),
(90, 6, 'Boris', 'Diaw', 'PF', '1982-04-16', 33),
(91, 6, 'Boban', 'Marjanovic', 'C', '1988-08-15', 40);

-- --------------------------------------------------------

--
-- Table structure for table `player_sponsor`
--

CREATE TABLE `player_sponsor` (
  `player_id` int(11) UNSIGNED NOT NULL,
  `sponsor_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player_sponsor`
--

INSERT INTO `player_sponsor` (`player_id`, `sponsor_id`) VALUES
(1, 2),
(1, 4),
(2, 3),
(2, 4),
(3, 1),
(3, 5),
(4, 3),
(4, 4),
(5, 1),
(6, 1),
(6, 2),
(7, 3),
(7, 4),
(8, 1),
(8, 2),
(8, 3),
(9, 3),
(9, 4),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(12, 3),
(13, 1),
(13, 5),
(14, 3),
(14, 4),
(15, 1),
(15, 2),
(16, 1),
(16, 3),
(17, 3),
(17, 4),
(17, 5),
(18, 1),
(18, 2),
(18, 4),
(19, 3),
(19, 4),
(20, 1),
(20, 5),
(21, 1),
(21, 4),
(22, 1),
(22, 5),
(23, 1),
(23, 4),
(24, 3),
(24, 4),
(25, 1),
(25, 2),
(25, 4),
(26, 1),
(26, 5),
(27, 3),
(27, 4),
(27, 5),
(28, 1),
(28, 2),
(28, 4),
(29, 2),
(29, 4),
(30, 1),
(30, 5),
(33, 1),
(33, 4),
(34, 3),
(34, 5),
(35, 2),
(35, 4),
(36, 3),
(36, 5),
(37, 1),
(37, 2),
(38, 3),
(38, 4),
(39, 2),
(39, 4),
(40, 3),
(40, 4),
(40, 5),
(41, 1),
(41, 4),
(42, 2),
(43, 1),
(43, 3),
(44, 3),
(44, 4),
(45, 2),
(45, 4),
(45, 5),
(46, 3),
(46, 5),
(47, 1),
(47, 2),
(48, 3),
(48, 4),
(49, 2),
(49, 3),
(49, 4),
(49, 5),
(50, 1),
(50, 2),
(50, 5),
(51, 1),
(52, 2),
(53, 1),
(53, 3),
(53, 4),
(54, 3),
(54, 4),
(55, 2),
(55, 4),
(55, 5),
(56, 3),
(56, 5),
(57, 1),
(57, 3),
(58, 3),
(58, 4),
(59, 2),
(59, 3),
(60, 1),
(60, 2),
(61, 2),
(61, 3),
(62, 4),
(63, 1),
(63, 3),
(64, 3),
(64, 5),
(65, 2),
(66, 3),
(66, 4),
(67, 1),
(67, 3),
(68, 2),
(68, 4),
(69, 3),
(69, 4),
(70, 2),
(70, 3),
(70, 5),
(71, 1),
(71, 2),
(72, 2),
(73, 1),
(73, 3),
(73, 4),
(74, 3),
(74, 5),
(75, 2),
(75, 3),
(75, 5),
(76, 3),
(76, 4),
(77, 1),
(77, 2),
(78, 2),
(78, 4),
(79, 2),
(79, 4),
(80, 2),
(80, 3),
(80, 5),
(81, 2),
(81, 3),
(82, 4),
(83, 2),
(83, 3),
(84, 4),
(84, 5),
(85, 2),
(85, 3),
(85, 4),
(85, 5),
(86, 3),
(86, 4),
(87, 1),
(87, 4),
(88, 2),
(88, 5),
(89, 3),
(89, 5),
(90, 2),
(90, 3),
(90, 5),
(91, 2),
(91, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `sponsor_id` int(11) UNSIGNED NOT NULL,
  `sponsor_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`sponsor_id`, `sponsor_name`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Puma'),
(4, 'Reebok'),
(5, 'Air Jordan');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_id` int(10) UNSIGNED NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `year_founded` int(11) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(20) NOT NULL,
  `championships` int(11) NOT NULL,
  `finals_appearances` int(11) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `team_name`, `year_founded`, `city`, `state`, `championships`, `finals_appearances`, `logo`) VALUES
(1, 'Los Angeles Lakers', 1947, 'Los Angeles', 'California', 16, 31, 'images/logos/lakers.gif'),
(2, 'Miami Heat', 1988, 'Miami', 'Florida', 3, 5, 'images/logos/heat.gif'),
(3, 'Orlando Magic', 1989, 'Orlando', 'Florida', 0, 2, 'images/logos/magic.gif'),
(4, 'Milwaukee Bucks', 1968, 'Milwaukee', 'Wisconsin', 1, 2, 'images/logos/bucks.png'),
(5, 'Phoenix Suns', 1968, 'Phoenix', 'Arizona', 0, 2, 'images/logos/suns.png'),
(6, 'San Antonio Spurs', 1967, 'San Antonio', 'Texas', 5, 6, 'images/logos/spurs.gif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `team_id_fk` (`team_id`);

--
-- Indexes for table `player_sponsor`
--
ALTER TABLE `player_sponsor`
  ADD PRIMARY KEY (`player_id`,`sponsor_id`),
  ADD KEY `fk_sponsor_id` (`sponsor_id`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`sponsor_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `player_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `sponsor`
--
ALTER TABLE `sponsor`
  MODIFY `sponsor_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `team_id_fk` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`);

--
-- Constraints for table `player_sponsor`
--
ALTER TABLE `player_sponsor`
  ADD CONSTRAINT `fk_player_id` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  ADD CONSTRAINT `fk_sponsor_id` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsor` (`sponsor_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
