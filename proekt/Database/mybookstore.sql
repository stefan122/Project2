-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2021 at 02:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mybookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user`, `password`) VALUES
('Admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `isbn` varchar(10) NOT NULL DEFAULT '',
  `categoryid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(60) NOT NULL DEFAULT '',
  `author` varchar(50) NOT NULL DEFAULT '',
  `publisher` varchar(25) NOT NULL DEFAULT 'Softcover',
  `date` date NOT NULL DEFAULT '2004-08-10',
  `pages` smallint(6) NOT NULL DEFAULT 0,
  `price` float NOT NULL DEFAULT 0,
  `picture` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`isbn`, `categoryid`, `title`, `author`, `publisher`, `date`, `pages`, `price`, `picture`) VALUES
('0072191090', 12, 'ColdFusion 5: A Beginner\'s Guide, 1st Edition', 'Jeffry Houser', 'Softcover', '2004-08-10', 460, 21.99, '0072191090.jpg'),
('0072191473', 4, ' Oracle9i PL/SQL Programming, 2nd Edition', 'Scott Urman', 'Hardcover', '2002-08-10', 664, 89.9, '0072191473.jpg'),
('0072195126', 12, 'ASP.NET: A Beginner\'s Guide, 2nd Edition', 'David Mercer', 'Softcover', '2002-08-10', 544, 32.88, '0072195126.jpg'),
('0072195134', 12, 'ASP.NET: The Complete Reference', 'Matthew  MacDonald', 'Softcover', '2004-08-10', 1002, 46.89, '0072195134.jpg'),
('0072195401', 4, ' OCP Oracle9i Database: Fundamentals I Exam Guide, 1st Ed', 'Jason Couchman, Sudheer  Marisetti', 'Hardcover', '2004-08-10', 561, 66.78, '0072195401.jpg'),
('0072195622', 8, ' Director 8.5 Shockwave Studio: A Beginner\'s Guide, 1st Ed', 'Warren  Ockrassa', 'Softcover', '2002-08-12', 544, 32.45, '0072195622.jpg'),
('0072223111', 6, ' Photoshop(R) 7:The Complete Reference, 1st Edition', 'Laurie Ulrich', 'Softcover', '2004-08-10', 768, 25.56, '0072223111.jpg'),
('0072225114', 9, 'Survey of Operating Systems, 1st Edition', 'Charles Holcombe, Jane  Holcombe', 'Softcover', '2003-10-10', 480, 48.25, '0072225114.jpg'),
('0072225211', 1, 'Oracle9i: The Complete Reference, 1st Edition', 'Kevin Loney, George Koch and None Listed', 'Softcover', '2002-09-10', 1256, 65.25, '0072225211.jpg'),
('0072225564', 12, 'ColdFusion MX: The Complete Reference, 1st Edition', 'Jeffry Houser', 'Softcover', '2002-12-10', 792, 45.54, '0072225564.jpg'),
('0072225645', 9, 'Hacking Exposed Linux, 2nd Edition', 'Brian Hatch, James Lee, George Kurtz', 'Softcover', '2003-09-25', 712, 45.8, '0072225645.jpg'),
('0072226951', 9, 'Introduction to Unix and Linux, 1st Edition', 'John Muster', 'Softcover with CDROM', '2003-10-10', 688, 55.7, '0072226951.jpg'),
('0072227184', 6, 'Maya 6: The Complete Reference, 1st Edition', 'Tom Meade, Shinsaku Arima', 'Softcover', '2004-08-10', 672, 54.67, '0072227184.jpg'),
('0072229241', 1, 'Introduction to Relational Databases and SQL Programming', 'Christopher Allen, Catherine Creary, Simon Chatwin', 'Softcover', '2004-10-10', 416, 45.5, '0072229241.jpg'),
('0072229462', 6, ' How to Do Everything with Adobe Acrobat 6.0, 2nd Edition', 'Doug Sahlin', 'Softcover', '2004-08-10', 464, 22.55, '0072229462.jpg'),
('0072229985', 9, 'Solaris 10: The Complete Reference, 1st Edition', 'Paul Watters', 'Softcover with DVD', '2004-12-10', 864, 55.5, '0072229985.jpg'),
('0072230002', 8, ' Multimedia: Making it Work, Sixth Edition, 6th Edition', 'Tay Vaughan', 'Softcover', '2003-08-10', 480, 23.89, '0072230002.jpg'),
('0072230789', 1, 'Oracle Database 10g: A Begginer\'s Guide, 1st Edition', 'Ian Abramson, Michael Abbey, Michael J C', 'Softcover', '2004-10-10', 416, 37.9, '0072230789.jpg'),
('0072230932', 2, ' Fundamentals of Network Security, 1st Edition', 'Eric Maiwald', 'Softcover', '2004-08-10', 672, 45.78, '0072230932.jpg'),
('0072230975', 2, ' Introduction to Windows Server 2003, 1st Edition', 'Eric Ecklund', 'Softcover', '2004-08-10', 432, 35.35, '0072230975.jpg'),
('007223119X', 4, ' Mike Meyers\' A+ Guide to PC Hardware, 1st Edition', 'Michael  Meyers', 'Softcover', '2004-08-10', 608, 120.25, '007223119X.jpg'),
('0072231246', 4, ' Mike Meyers\' A+ Guide to Operating Systems, 1st Edition', 'Michael  Meyers', 'Softcover', '2004-08-10', 504, 89.95, '0072231246.jpg'),
('0072231440', 10, 'Excel VBA Macro Programming, 1st Edition', 'Richard Shepherd', 'Softcover', '2004-08-10', 320, 35.77, '0072231440.jpg'),
('0072231912', 6, 'CorelDRAW 12: The Official Guide, 1st Edition', 'Steve Bain', 'Softcover', '2004-08-10', 736, 36.99, '0072231912.jpg'),
('0072232064', 1, ' Microsoft Office Access 2003: A Professional Approach', 'Jon Juarez, John Carter, Kathleen Stewart', 'Softcover', '2004-08-10', 640, 46.99, '0072232064.jpg'),
('0072232099', 3, ' Microsoft Office Word 2003: A Professional Approach', 'Deborah  Hinkle', 'Softcover', '2004-10-09', 1072, 66.25, '0072232099.jpg'),
('0072232153', 10, ' C++: A Beginner\'s Guide, 2nd Edition', 'Herbert Schildt', 'Softcover', '2004-08-10', 576, 32.88, '0072232153.jpg'),
('0072232196', 4, ' MCSE Planning a Windows(r) Server Network Infrastructure', 'Diana  Huggins', 'Softcover', '2003-08-10', 450, 88.9, '0072232196.jpg'),
('0072253592', 1, 'Data Structures Demystified', 'James Keogh, Ken Davidson', 'Softcover', '2004-06-07', 300, 35.25, '0072253592.jpg'),
('0072253649', 1, 'Databases Demistyfied, 1st Edition', 'Andrew Oppel', 'Softcover', '2004-08-10', 360, 46.75, '0072253649.jpg'),
('0072253703', 10, ' C++ Demystified, 1st Edition', 'Jeff Kent', 'Softcover', '2004-08-10', 368, 24.78, '0072253703.jpg'),
('0072254416', 3, ' Microsoft Office Excel 2003: A Professional Approach', 'Deborah  Hinkle, Kathleen  Stewart', 'Softcover', '2004-12-10', 512, 32.55, '0072254416.jpg'),
('0072254548', 10, 'Java Demystified, 1st Edition', 'James Keogh', 'Softcover', '2004-02-12', 352, 25.9, '0072254548.jpg'),
('0072254645', 3, 'Computing Today', 'imothy J O\'Leary', 'Softcover', '2004-10-02', 83, 10.45, '0072254645.jpg'),
('0072255218', 2, 'Fundamentals of Wireless Networking, 1st Edition', 'Ron Gilster', 'Softcover', '2004-12-12', 528, 49.99, '0072255218.jpg'),
('0072255404', 1, 'Oracle Database 10g PL/SQL 101, 1st Edition', 'Christopher Allen', 'Softcover', '2004-09-20', 416, 55.8, '0072255404.jpg'),
('0072255560', 3, ' What\'s New in Microsoft Office 2003, 1st Edition', 'Donald  Amoroso, Cheri  Manning', 'Softcover', '2004-05-05', 96, 12.5, '0072255560.jpg'),
('0072255609', 2, 'Mike Meyers\' Network+ Guide To Managing and Troubleshooting', 'Michael Meyers', 'Softcover', '2004-12-10', 640, 55.34, '0072255609.jpg'),
('0072255722', 3, 'Microsoft Official Academic Course : Office System 2003', 'Microsoft Learning', 'Softcover', '2004-12-12', 1250, 90.75, '0072255722.jpg'),
('0072256354', 4, 'Cisco(R): A Beginner\'s Guide, Third Edition, 1st Edition', 'Anthony Velte, Toby Velte', 'Softcover', '2004-08-10', 768, 92.35, '0072256354'),
('0072257326', 2, ' Principles of Voice & Data Communications, 1st Edition', 'Marcus Bates, Regis Bud J.  Bates', 'Softcover', '2004-08-22', 720, 42.35, '0072257326.jpg'),
('0072257679', 9, 'Windows XP Answers from the Experts, 1st Edition', 'Jim Boyce, Debra Littlejohn Shinder', 'Debra Littlejohn Shinder', '2004-10-10', 456, 40.25, '0072257679.jpg'),
('0072258578', 6, ' Photoshop Elements by Example, 1st Edition', 'Mark  Clarkson', 'Softcover', '2004-08-10', 256, 18.25, '0072258578.bmp'),
('0072340797', 7, 'Interactive Computing Series: Netscape Communicator 6 Brief', 'Kenneth  Laudon', 'Softcover', '2004-08-10', 144, 12.67, '0072340797.jpg'),
('0072369108', 1, 'Databases: Design, Development and Deployment', 'Peter Rob', 'Softcover', '2000-01-01', 225, 25.75, '0072369108.jpg'),
('0072471816', 7, ' The Interactive Computing Series: IE 6.0 - Brief, 1st Ed', 'Kenneth Laudon', 'Softcover', '2002-12-10', 160, 9.99, '0072471816.jpg'),
('007251874X', 10, 'Programming in Visual Basic 6.0 Update Edition , 4th Ed', 'Julia Case Bradley, Anita C Millspaugh', 'Softcover with CDROM', '2002-12-10', 234, 25.89, '007251874X.jpg'),
('0072830662', 3, ' I-Series: Microsoft Office PowerPoint 2003 Brief, 1st Ed', 'Stephen Haag, James T Perry, Amy Phillips', 'Softcover', '2004-12-12', 272, 22.22, '0072830662.jpg'),
('007283076X', 1, ' I-Series: Microsoft Office Access 2003 Complete, 1st Ed', 'Stephen Haag, James T Perry', 'Softcover', '2004-08-10', 688, 49.99, '007283076X.jpg'),
('0072834145', 3, ' Advantage Series: Microsoft Office Excel 2003', 'Glen Coulthard, Sarah  Hutchinson-Clifford', 'Softcover', '2004-06-07', 256, 18.8, '0072834145.jpg'),
('0072834323', 1, ' Advantage Series: Microsoft Office Access 2003 Intro', 'Glen Coulthard, Sarah  Hutchinson-Clifford', 'Spiral Bound/Comb', '2004-08-10', 544, 39.99, '0072834323.jpg'),
('0072845503', 7, 'Programming The Web Using XML, 1st Edition', 'Ellen Pearlman, Eileen Mullin', 'Softcover', '2002-08-15', 420, 13.67, '0072845503.jpg'),
('0072850620', 2, ' ALS Networking Essentials Plus Third Edition, 3rd Edition', 'Microsoft Learning', 'Hardcover', '2000-08-01', 760, 65.99, '0072850620.jpg'),
('0072851082', 10, 'Inside C#, 2nd Edition', 'Tom  Archer', 'Softcover', '2002-08-10', 256, 41.32, '0072851082.jpg'),
('0072930969', 7, ' Programming the Web w/ Student CD, 1st Edition', 'Barrie Sosinsky', 'Softcover with CD-ROM', '2004-08-10', 189, 10.35, '0072930969.jpg'),
('0072939222', 3, 'Microsoft Office 2003, Vol.I', 'Timothy J O\'Leary, Linda I O\'Leary', 'Softcover', '2004-11-11', 515, 45.5, '0072939222.jpg'),
('0072949384', 12, 'Programming the Web Using ASP.Net', 'Dave Mercer', 'Softcover with CDROM', '2004-08-10', 245, 32.77, '0072949384.jpg'),
('072255137', 1, 'MySQL: Essential Skills, 1st Edition', 'John Horn, Michael Grey', 'Softcover', '2004-06-06', 384, 35.95, '072255137.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryid`, `name`) VALUES
(3, 'Application Software'),
(4, 'Certification'),
(5, 'Computer Concepts'),
(1, 'Databases'),
(6, 'Desktop Publishing'),
(7, 'Internet and WWW'),
(8, 'Multimedia'),
(2, 'Networking'),
(9, 'Operating Systems'),
(10, 'Programming'),
(11, 'Security'),
(12, 'Web Programming/Design');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryid`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
