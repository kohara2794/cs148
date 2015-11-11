-- Keegan O'Hara
-- 
-- CS 148
--
-- Advising Project Schema for Advising database
--
--
--
--
--
-- Host: webdb.uvm.edu
-- Generation Time: Oct 27, 2015 at 01:07 PM
-- Server version: 5.5.45-37.4-log
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `KEOHARA_Advising`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl4YearPlan`
--

CREATE TABLE IF NOT EXISTS `tbl4YearPlan` (
  `pmkPlanID` varchar(25) NOT NULL,
  `fnkNetID` varchar(25) NOT NULL,
  `fldDateCreated` varchar(25) NOT NULL,
  `fldCatalogYear` varchar(25) NOT NULL,
  `fldMajor` varchar(50) NOT NULL,
  `fldMinor` varchar(50) NOT NULL,
  `fldNumCredits` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblAdvisor`
--

CREATE TABLE IF NOT EXISTS `tblAdvisor` (
  `pmkNetID` varchar(25) NOT NULL,
  `fldDepartment` varchar(50) NOT NULL,
  `fldName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblAdvisor`
--

--INSERT INTO `tblAdvisor` (`pmkNetID`, `fldDepartment`, `fldName`) VALUES
--('tcuneo', 'Philosophy', 'Terrence Cuneo');

-- --------------------------------------------------------

--
-- Table structure for table `tblCourses`
--

CREATE TABLE IF NOT EXISTS `tblCourses` (
  `pmkCourseID` int(10) NOT NULL,
  `fldDepartment` varchar(50) NOT NULL,
  `fldCourseNumber` int(10) NOT NULL,
  `fldCourseName` varchar(100) NOT NULL,
  `fldOffered` varchar(25) NOT NULL,
  `fldNumCredits` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblCourses`
--

--INSERT INTO `tblCourses` (`pmkCourseID`, `fldDepartment`, `fldCourseNumber`, `fldCourseName`, `fldOffered`, `fldNumCredits`) VALUES
--11679, 'PHIL', 1, 'Introduction to Philosophy', 'Fall', 3),
--(12491, 'ENGS', 24, 'American Literature II', 'Fall', 3),
--(14236, 'MATH', 19, 'Intro to Calculus', 'Fall', 3),
--(14452, 'MU', 15, 'History of Rock and Roll', 'Fall', 3),
--(91588, 'HCOL', 95, 'Honors College Seminar I', 'Fall', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tblSemesterPlan`
--

CREATE TABLE IF NOT EXISTS `tblSemesterPlan` (
  `fnkPlanID` int(25) NOT NULL,
  `fldYear` int(10) NOT NULL,
  `fldTerm` varchar(25) NOT NULL,
  `fldNumCredits` int(10) NOT NULL,
  `fldDisplayOrder` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblSemesterPlan`
--

--INSERT INTO `tblSemesterPlan` (`fnkPlanID`, `fldYear`, `fldTerm`, `fldNumCredits`, `fldDisplayOrder`) VALUES
--(1, 2012, 'Fall', 15, 1),
--(1, 2012, 'Spring', 15, 2),
--(1, 2013, 'Fall', 14, 3),
--(1, 2013, 'Spring', 16, 4),
--(1, 2014, 'Fall', 15, 5),
--(1, 2014, 'Spring', 13, 6),
--(1, 2015, 'Fall', 12, 7),
--(1, 2015, 'Spring', 12, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tblSemesterPlanCourses`
--

CREATE TABLE IF NOT EXISTS `tblSemesterPlanCourses` (
  `fnkPlanID` varchar(25) NOT NULL,
  `fnkCourseID` int(10) NOT NULL,
  `fnkYear` varchar(25) NOT NULL,
  `fnkTerm` varchar(25) NOT NULL,
  `fldDisplayOrder` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblStudent`
--

CREATE TABLE IF NOT EXISTS `tblStudent` (
  `studentID` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `major` varchar(50) NOT NULL,
  `minor` varchar(50) NOT NULL,
  `Year` varchar(25) NOT NULL,
  `advisor` varchar(50) NOT NULL,
  `catalogYear` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblStudent`
--

--INSERT INTO `tblStudent` (`studentID`, `name`, `major`, `minor`, `Year`, `advisor`, `catalogYear`) VALUES
--('keohara', 'Keegan O''Hara', 'Philosophy', 'Computer Science', 'Senior', 'Terrence Cuneo', '2015-2016');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl4YearPlan`
--
ALTER TABLE `tbl4YearPlan`
 ADD PRIMARY KEY (`pmkPlanID`);

--
-- Indexes for table `tblAdvisor`
--
ALTER TABLE `tblAdvisor`
 ADD PRIMARY KEY (`pmkNetID`);

--
-- Indexes for table `tblCourses`
--
ALTER TABLE `tblCourses`
 ADD PRIMARY KEY (`pmkCourseID`);

--
-- Indexes for table `tblStudent`
--
ALTER TABLE `tblStudent`
 ADD PRIMARY KEY (`studentID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
