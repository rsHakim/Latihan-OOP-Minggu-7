-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2018 at 04:09 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_blog`
--

CREATE TABLE `category_blog` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_blog`
--

INSERT INTO `category_blog` (`id`, `category_name`) VALUES
(1, 'PHP'),
(2, 'HTML & CSS'),
(3, 'FRAMEWORK'),
(4, 'SEO');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `reply` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `username`, `reply`) VALUES
(1, 3, 'Robbert', 'Good'),
(2, 4, 'Brown', 'Nice article '),
(3, 5, 'Oki', 'oke'),
(4, 3, 'Momon', 'Kali ini saya akan mendemokan bagaimana mengambil'),
(5, 4, 'Jack', 'elemen - elemen didalam HTML cukup banyak sekali');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(40) NOT NULL,
  `id_category` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `image_news` varchar(100) NOT NULL,
  `news` varchar(10000) NOT NULL,
  `date_post` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `id_category`, `title`, `image_news`, `news`, `date_post`) VALUES
(3, 1, 'Membuat Blog dengan PHP', 'image-php.jpg', 'Kali ini saya akan mendemokan bagaimana mengambil data dari sebuah tabel dan menampilkannya ke halaman web.\r\nSebelum mengambil data dari database, perlu dibuat sebuah koneksi dulu antara PHP dan Database dalam kasus ini menggunakan MySQL. Dibawah ini adalah step-step yang harus dilalui hingga mendapatkan sebuah data dari database', '2018-05-22 20:06:04'),
(4, 2, 'Fungsi dan Elemen Form HTML5', 'image-html.jpg', 'Didalam HTML terdapat elemen - elemen form yang memungkinkan pengguna dapat memasukan data yang nantinya akan diproses oleh server. Seperti yang kita ketahui elemen - elemen didalam HTML cukup banyak sekali dan tentunya elemen - elemen tersebut mempunyai peran serta fungsi sendiri. Nah, pada kesempatan kali ini akan saya mengulas sedikit Fungsi dan Elemen Form HTML5. Langsung saja simak ulasannya berikut ini.', '2018-05-22 22:03:16'),
(5, 3, 'Berkenalan dengan Framework Vue js', 'image-framework.jpg', 'Pada artikel ini kita mau belajar dan membahas tentang Vue js. Tujuan pada seri artikel ini agar kita familiar dengan sintaks-sintaks dasarnya. Jadi pada akhirnya teman teman bisa menentukan apakah benar-benar ingin menggunakan Framework ini atau tidak. Tentu langkah pertama yang akan kita bahas adalah berkenalan dengan Framework Vue js ini. Bila teman teman ada yang belum tahu Apa itu Vue js. Vue js ini merupakan salah satu dari sekian banyak framework atau library dari javascriptnya yang mana kita bisa membuat website menjadi lebih interaktif. Keuntungan pada Vue js nya sendiri ada dua yaitu Reactive Data Binding dan Composable Views Components.', '2018-05-22 19:12:09'),
(6, 4, 'Memanfaatkan Blog Dummy untuk SEO', 'image-seo.jpg', 'Pemanfaatan website sekarang ini sudah mulai meluas, dari awalnya hanya sekedar membagikan informasi, sekarang bias jadi tempat berjualan, bermain game, kuis, survey, dan yang lainnya dengan cara yang sangat unik, ada yang hanya sekedar memberikan informasi seadanya, ada juga yang menerapkan konsep animasi yang bias membuat pengalaman unik tersendiri bagi pengunjung website. Dibalik itu semua ada proses optimalisasi yang wajib pada sebuah website agar terlihat pada pencarian google atau search engine lainnya', '2018-05-22 22:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_blog`
--
ALTER TABLE `category_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_blog`
--
ALTER TABLE `category_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
