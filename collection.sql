-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2019 at 07:50 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collection`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `options` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`options`, `answer`) VALUES
('white', 'organized'),
('yes', 'enthusiastic'),
('spice', 'adventurous'),
('books', 'knowledgable'),
('invisible', 'inquisitive'),
('music', 'lover'),
('lion', 'leader'),
('outfit', 'unique'),
('black', 'mysterious'),
('no', 'organised'),
('sweet', 'artistic'),
('art', 'creative'),
('fly', 'dream'),
('birds', 'lover of nature'),
('eagle', 'wise'),
('brown', 'independent'),
('green', 'reputable'),
('sour', 'mischievous'),
('friends', 'cheerful'),
('strong', 'self confident'),
('anxiety', 'intense'),
('elephant', 'team player'),
('prepared', 'determined');

-- --------------------------------------------------------

--
-- Table structure for table `calm`
--

CREATE TABLE `calm` (
  `id` int(255) NOT NULL,
  `Name` text NOT NULL,
  `password` text NOT NULL,
  `mobile` text NOT NULL,
  `char1` varchar(255) NOT NULL,
  `char2` varchar(255) NOT NULL,
  `char3` varchar(255) NOT NULL,
  `feed` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calm`
--

INSERT INTO `calm` (`id`, `Name`, `password`, `mobile`, `char1`, `char2`, `char3`, `feed`) VALUES
(1, 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
(2, 'null', 'null', 'null', 'null', 'organized', 'null', 'null'),
(3, 'a', 'a', 'a', 'null', 'mysterious', 'organised', '5'),
(4, 'bamboo', 'tanishka', '9578925919', 'null', 'creative', 'dream', ''),
(5, 'abburuva', 'jayakris', '5654674779', 'null', 'creative', 'dream', ''),
(6, 'kj', 'lmj', '3452', 'null', 'knowledgable', 'dream', ''),
(7, 'kljjgej', 'KJVKJBF', 'kdjbfberb', 'null', 'null', 'null', ''),
(8, 'kljjgej', 'EGFE', 'kdjbfberb', 'null', 'creative', 'dream', ''),
(9, 'modi ji', 'apkae', '8956231470', 'null', 'mysterious', 'organised', ''),
(10, 'sanjeevini', 'ipo', '9512364873', 'null', 'cheerful', 'dream', '3'),
(11, 'lolo', 'miss', '6253148972', 'null', 'cheerful', 'self confident', ''),
(12, 'maheswari n', 'amir', '9486302926', 'null', 'reputable', 'enthusiastic', ''),
(13, 'Amirtha Sanjeevini', 'amma', '9488202636', 'leader', 'unique', 'independent', '3'),
(14, 'sushmitha', 'dinesh', '9360040800', 'leader', 'unique', 'mysterious', ''),
(15, 'test1', 'jajsjsa', '875875', 'mysterious', 'enthusiastic', 'artistic', ''),
(16, 'mohana', 'jjjj', '9869756', 'mysterious', 'enthusiastic', 'adventurous', '3'),
(17, 'mohana', 'jjjj', '9869756', 'mysterious', 'enthusiastic', 'adventurous', '3'),
(18, 'mohana', 'jjjj', '9869756', 'mysterious', 'enthusiastic', 'adventurous', '3'),
(19, 'mohana', 'jjjj', '9869756', 'mysterious', 'enthusiastic', 'adventurous', '3'),
(20, 'mohana', 'jjjj', '9869756', 'mysterious', 'enthusiastic', 'adventurous', '3'),
(21, 'mohana', 'jjjj', '9869756', 'mysterious', 'enthusiastic', 'adventurous', '3'),
(22, 'Krishjay', 'kjay', '9097643648', 'leader', 'unique', 'mysterious', ''),
(23, 'Krishjay', 'kjay', '9097643648', 'leader', 'unique', 'mysterious', ''),
(24, 'Krishjay', 'kjay', '9097643648', 'leader', 'unique', 'mysterious', ''),
(25, 'a', 'iii', '234', 'creative', 'inquisitive', 'lover of nature', '5'),
(26, 'maheswari', 'naga', '9486302926', 'team player', 'determined', 'mysterious', '5'),
(27, 'Oprah Winfrey ', '987', '123', 'knowledgable', 'dream', 'lover', '3'),
(28, 'now', '321', '123', 'cheerful', 'self confident', 'intense', '1'),
(29, 'amirtha', '963', '123', 'organized', 'null', 'adventurous', '5'),
(30, 'Safeer', 'safeer786', '9626661970', 'leader', 'determined', 'mysterious', 'nothing');

-- --------------------------------------------------------

--
-- Table structure for table `feed`
--

CREATE TABLE `feed` (
  `id` int(255) NOT NULL,
  `link` text NOT NULL,
  `topic` text NOT NULL,
  `search` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feed`
--

INSERT INTO `feed` (`id`, `link`, `topic`, `search`) VALUES
(1, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/ja-n5qUNRi8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'EVERYBODY DIES, BUT NOT EVERYBODY LIVES', 'organized,intense,dream'),
(2, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/pLgVB1stuJ8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Every teenager NEEDS to hear this\n', 'enthusiastic,team player,lover of nature'),
(3, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/TNRldP18bH8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Working to Live or Living to Work?\n', 'adventurous,lover of nature,wise'),
(4, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/meYSF0d-7n8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'ANGER IS CONTAGIOUS\n', 'knowledgable,intense,independent'),
(5, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/BbO9K0tdhuU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'This Is Who You Are\n', 'inquisitive,reputable,mysterious'),
(6, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/soqLHPzSGmM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'HOW TO DEAL WITH TOXIC PEOPLE\n', 'lover,mischievous,organised'),
(7, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/diRQiarlWJc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How To STOP Negative/Stressful Thinking Once and For All\n', 'leader,cheerful,artistic'),
(8, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/ubSWWqDpldE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'HOW TO KILL FEAR IN 5 SECONDS\n', 'unique,self confident,creative'),
(9, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/ip_FehKz5LE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Love Yourself Before You Get into a Relationship. Please.\n', 'mysterious,inquisitive,organized'),
(10, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/h72r9NfWlO8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'How to let go of Pain/Fear/Anger in 60 seconds\n', 'organised,lover,enthusiastic'),
(11, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/sn1hffC7l3k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'SUNDARI KANNAL ORU FLUTE COVER BY JOHNSON\n', 'artistic,leader,adventurous'),
(12, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/Vj6ryxEdY1c\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Nee Kavithaigala | 60 seconds cover | Sinov Raj & Abin Sagar\n', 'creative,unique,knowledgable'),
(13, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/Li2y1-xwMfM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Kannathil Muthamittal 4K Sabareesh Prabhaker A R Rahman Medley cover\n', 'organized,intense,dream'),
(14, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/dSUv4oey658\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'PAVIZHAMAZH ATHIRAN MOVIE SONG | VIOLIN COVER | AJITH SOBHA\n', 'enthusiastic,team player,lover of nature'),
(15, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/M-msHiftMTw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Thumbee Va | Sangathil | Gum Sum Gum | Strings Cover by Manoj Kumar - Violinist | 4K\n', 'leader,adventurous,wise'),
(16, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/3iR9CRGgMoU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Cry of Rose by A.R.Rahman Performed by Naveen Kumar with Qatar Philharmonic Orchestra\n', 'unique,knowledgable,independent'),
(17, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/rJsk5pZPVEE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Uyire Uyire (Tu hi re) - Tamil Flute Cover of Movie Bombay by AR Rahman\n', 'inquisitive,reputable,mysterious'),
(18, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/i2abPiyywTk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Venmathi venmathi - FLUTRIX\n', 'lover,mischievous,organised'),
(19, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/UvbQgn7n1t4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Hosanna- flute instrumental\n', 'leader,cheerful,artistic'),
(20, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/16cAmOht4zc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'The Yogi and The Bear- Opening Musical Act\n', 'unique,self confident,creative'),
(21, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/2YfbXn6dta0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Cell Phones- Stand-Up Comedy Video by Alex', 'knowledgable,intense,independent'),
(22, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/z7qw3e89lEY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Xerox Engineer | Stand up comedy by Karthik Kumar\n', 'enthusiastic,team player,lover of nature'),
(23, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/Cxa8ockqa2c\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Chapathi Song - The Lungi Dance Parody\n', 'determined,inquisitive,reputable'),
(24, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/b-Jrzti2xgE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Hobbies and Facebook Likes- Standup comedy by Manoj Prabakar\n', 'intense,organized,dream'),
(25, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/16L4mNXuocU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Ennena Seidhom Ingu 3D Audio Song \n', 'organized,intense,dream'),
(26, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/JWB-dpEOpj8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Malar Pola Malangira Manam Vendum Thayae\n', 'enthusiastic,team player,lover of nature'),
(27, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/U-7S3vaNvJM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Azhagana Pazhani malai\n', 'adventurous,lover of nature,wise'),
(28, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/sjSjhHhOyU0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Aayarpadi Maaligaiyil - new melodic rendition - By Revaa\n', 'knowledgable,intense,independent'),
(29, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/d5sWb7ILxfY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '\n\nAlagar songs', 'inquisitive,organized,dream'),
(30, '<iframe width=\"500\" height=\"315\" src=\"https://www.youtube.com/embed/3sNbuihoO1Q\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Dwaraka Maayi | Sri Sai Natha | Devotional Songs | By Dinakaran\n', 'lover,enthusiastic,lover of nature');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(255) NOT NULL,
  `qid` int(255) NOT NULL,
  `question` text NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `qid`, `question`, `option1`, `option2`, `option3`) VALUES
(1, 0, 'What is your favorite color?', 'white', 'black', 'green'),
(2, 0, 'What do you say more often?', 'yes', 'no', 'Neutral'),
(3, 0, 'which flavour best describes you?', 'spice', 'sweet', 'sour'),
(4, 1, 'What is your favorite way to relax?', 'books', 'art', 'friends'),
(5, 1, 'which super power you wish you had?', 'invisible', 'fly', 'strong'),
(6, 1, 'what gets you out of bed everyday?', 'music', 'birds', 'anxiety'),
(7, 2, 'what animal would you be?', 'lion', 'eagle', 'elephant'),
(8, 2, 'which one of these gives you confidience?', 'outfit', 'friends ', 'prepared'),
(9, 2, 'what is your eye color?', 'black', 'brown', 'others');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calm`
--
ALTER TABLE `calm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed`
--
ALTER TABLE `feed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calm`
--
ALTER TABLE `calm`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `feed`
--
ALTER TABLE `feed`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
