-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 11, 2024 at 01:54 AM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: portfolio
--

-- --------------------------------------------------------

--
-- Table structure for table media
--

CREATE TABLE media (
  id int(11) NOT NULL,
  project_id int(11) DEFAULT NULL,
  image_filename varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table media
--

INSERT INTO media (id, project_id, image_filename) VALUES
(1, 1, 'style-frame6.jpg'),
(2, 1, 'style-frame8.jpg'),
(3, 1, 'earbud-x-ray.jpg'),
(4, 2, 'kadot1.jpg'),
(5, 2, 'kadot-products.png'),
(6, 2, 'kadot-logo.png'),
(7, 3, 'Zima-allCans.png'),
(8, 3, 'zima-peojects2.png'),
(9, 3, 'zima-404pag.png');

-- --------------------------------------------------------

--
-- Table structure for table projects
--

CREATE TABLE projects (
  id int(11) NOT NULL,
  title varchar(255) NOT NULL,
  description text,
  image_url varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table projects
--

INSERT INTO projects (id, title, description, image_url) VALUES
(1, 'Diba Earbuds Project', 'Welcome to the Diba Earbuds 3D Showcase project! This repository features a pair of meticulously designed 3D earbuds, presented on an engaging promotional website. The website is crafted using a combination of HTML, CSS, SASS, and JavaScript, creating an immersive and visually appealing experience for users. The Diba Earbuds 3D Showcase offers an engaging and interactive experience through an AR Model Viewer, Hotspots, and an X-Ray feature. The AR Model Viewer allows users to explore a detailed 3D representation of Diba Earbuds with user-friendly controls and supports augmented reality for an immersive experience. Hotspots provide interactive elements on the 3D model, offering detailed information about specific features. The X-Ray feature enables users to switch between regular and X-ray views, providing insights into the internal components of the earbuds. Together, these features create an educational and captivating platform for users to explore the design, materials, and functionalities of Diba Earbuds.', 'earbuds-projects.jpg'),
(2, 'Kadot Website', 'First, I designed two website pages and two mobile pages with Adobe XD, and then I wrote their HTML and CSS codes based on the designs. The pages I designed are an online clothing store where you can buy women\'s clothing and accessories. Also, all the photos used on the pages (except for three photos) were taken by me.', 'kadot-projects.jpg'),
(3, 'Zima', 'In a chic hotel room design using Cinema 4D (C4D), our team blended style and practicality seamlessly. The 3D-rendered space showcased modern comfort with a focus on luxe textures like velvet, leather, and marble. Dynamic camera angles highlighted the room\'s versatility for different moods. The design not only captured the hotel\'s vibe but also told a captivating visual story. Carefully added textures brought an extra touch of sophistication to the immersive digital experience.', 'zima-projects.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table media
--
ALTER TABLE media
  ADD PRIMARY KEY (id),
  ADD KEY project_id (project_id);

--
-- Indexes for table projects
--
ALTER TABLE projects
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table media
--
ALTER TABLE media
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table projects
--
ALTER TABLE projects
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table media
--
ALTER TABLE media
  ADD CONSTRAINT media_ibfk_1 FOREIGN KEY (project_id) REFERENCES projects (id) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
