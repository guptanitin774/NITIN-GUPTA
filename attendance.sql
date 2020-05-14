-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2020 at 01:57 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_user_name` varchar(100) NOT NULL,
  `admin_password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_user_name`, `admin_password`) VALUES
(1, 'admin', '$2y$10$D74Zy1qMkATvmGRoVeq7hed4ajWof2aqDGnEaD3yPHABA.p.e7f4u');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `attendance_status` enum('Present','Absent') NOT NULL,
  `attendance_date` date NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `student_id`, `attendance_status`, `attendance_date`, `teacher_id`) VALUES
(233, 40, 'Present', '2020-02-01', 19),
(234, 38, 'Present', '2020-02-06', 24),
(235, 38, 'Present', '2020-03-04', 24);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`course_id`, `course_name`) VALUES
(1, 'MCA FIRST'),
(2, 'MCA SECOND'),
(3, 'MCA THIRD'),
(4, 'PGDM FIRST'),
(5, 'PGDM SECOND'),
(6, 'MBA FIRST'),
(7, 'MBA SECOND');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(150) NOT NULL,
  `student_roll_number` int(11) NOT NULL,
  `student_dob` date NOT NULL,
  `student_course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_roll_number`, `student_dob`, `student_course_id`) VALUES
(38, 'NITIN', 11, '2020-02-12', 6),
(39, 'ARMAN', 56, '2020-02-13', 7),
(40, 'SURESH', 45, '2020-02-07', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject_list`
--

CREATE TABLE `tbl_subject_list` (
  `Subject_Code` varchar(10) NOT NULL,
  `Subject_Name` varchar(100) NOT NULL,
  `Subject_Course` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subject_list`
--

INSERT INTO `tbl_subject_list` (`Subject_Code`, `Subject_Name`, `Subject_Course`) VALUES
('RCA-105', 'Professional Communication', 'MCA First'),
('RCA-101', 'Computer Concept & Principals of Programming', 'MCA First'),
('RCA-102', 'Accounting & Financial Management', 'MCA First'),
('RCA-103', 'Discrete Mathematics', 'MCA First'),
('RCA-104', 'Computer Organization & Architecture', 'MCA First'),
('RCA-151', 'PC LAB', 'MCA First'),
('RCA-152', 'Programming Lab', 'MCA First'),
('RCA-201', 'CBNST', 'MCA SECOND'),
('RCA-202', 'DS', 'MCA SECOND'),
('RCA-203', 'Automata', 'MCA SECOND'),
('RCA-204', 'Innovation & Entrepreneurship', 'MCA SECOND'),
('RHU-001', 'Human Values & Professional Ethics', 'MCA SECOND'),
('RCA-251', 'CBNST LAB', 'MCA SECOND'),
('RCA-252', 'DS LAB', 'MCA SECOND'),
('RCA-301', 'OS', 'MCA THIRD'),
('RCA-302', 'WEB TECH', 'MCA THIRD'),
('RCA-303', 'DAA', 'MCA THIRD'),
('RCA-304', 'CBOT', 'MCA THIRD'),
('RCA-305', 'Cyber Security', 'MCA THIRD'),
('RCAA01', 'AUDIT', 'MCA THIRD'),
('RCA-351', 'OS LAB', 'MCA THIRD'),
('RCA-352', 'DS LAB', 'MCA THIRD'),
('RCA-401', 'DBMS', 'MCA FOURTH'),
('RCA-402', 'Computer Network', 'MCA FOURTH'),
('RCA-403', 'AI', 'MCA FOURTH'),
('RCA-404', 'Compiler design', 'MCA FOURTH'),
('RCA-E12', 'Client & Server Computing', 'MCA FOURTH'),
('RCAA02', 'AUDIT', 'MCA FOURTH'),
('RCA-451', 'Mini Project', 'MCA FOURTH'),
('RCA-452', 'DBMS Lab', 'MCA FOURTH'),
('RCA-501', 'Computer Graphic  & Animation', 'MCA FIFTH'),
('RCA-502', 'Software Engineering', 'MCA FIFTH'),
('RCA-E24', 'Elective-1', 'MCA FIFTH'),
('RCA-E31', 'Elective-2', 'MCA FIFTH'),
('RCA-E4', 'Elective-3', 'MCA FIFTH'),
('RCA-551', 'Computer Graphic  & Animation Lab', 'MCA FIFTH'),
('RCA-552', 'Project Based on Software Engineering', 'MCA FIFTH');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(150) NOT NULL,
  `teacher_address` text NOT NULL,
  `teacher_emailid` varchar(100) NOT NULL,
  `teacher_password` varchar(100) NOT NULL,
  `teacher_qualification` varchar(100) NOT NULL,
  `teacher_doj` date NOT NULL,
  `subject1` varchar(40) NOT NULL,
  `subject2` varchar(40) NOT NULL,
  `teacher_image` varchar(100) NOT NULL,
  `teacher_course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `teacher_name`, `teacher_address`, `teacher_emailid`, `teacher_password`, `teacher_qualification`, `teacher_doj`, `subject1`, `subject2`, `teacher_image`, `teacher_course_id`) VALUES
(24, 'nitin', 'dddd', 'a@b.c', '$2y$10$q8/qal4JxBP.LFmCODZZuuly/lsfzPtUiZAGosIoYnoeSaWGDjf6y', 'MCA', '2020-02-06', 'RCA-302', 'RCA-305', '5e521f91a95f5.jpg', 6),
(25, 'asd', 'dsad', 'd@a.c', '$2y$10$3qF07jhnYRUJrB4e9Kz1H.U9LpWLDWLiUdE4QJ6/lg1W/2qc/gXXa', 'adasd', '2020-04-15', 'RCA-102', 'RCA-306', '5e953c93f25b6.jpg', 7),
(26, 'asdss', 'd', 'aa@b.c', '$2y$10$6Sj90wDlny1tmVCRXA9K2uZY8Z44tV8Fsuy9u4d8iQA5bWLTvGFw.', 'S', '2020-04-09', 'RCA-111', '', '5e95a32d15227.jpg', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
