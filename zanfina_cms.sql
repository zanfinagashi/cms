-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2015 at 10:53 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zanfina_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
`id` int(11) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `pubdate` date NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `pubdate`, `body`, `created`, `modified`) VALUES
(2, 'Second article', 'Testing', '2014-10-09', '123', '2014-10-21 08:46:22', '2014-10-21 08:46:22'),
(3, 'First Article', 'about', '2014-10-21', 'Article body', '2014-10-21 13:21:05', '2014-10-21 13:21:05'),
(4, 'Bootstrap', 'bootstrap', '2014-10-21', 'Bootstrap is modular and consists essentially of a series of LESS stylesheets that implement the various components of the toolkit. A stylesheet called bootstrap.less includes the components stylesheets. Developers can adapt the Bootstrap file itself, selecting the components they wish to use in their project.Adjustments are possible to a limited extent through a central configuration stylesheet. More profound changes are possible by the LESS declarations.The use of LESS stylesheet language allows the use of variables, functions and operators, nested selectors, as well as so-called mixins.Since version 2.0, the configuration of Bootstrap also has a special "Customize" option in the documentation. Moreover, the developer chooses on a form the desired components and adjusts, if necessary, the values of various options to their needs. The subsequently generated package already includes the pre-built CSS style sheet.Grid system and responsive design comes standard with a 1170 pixel wide, grid layout. Alternatively, the developer can use a variable-width layout. For both cases, the toolkit has four variations to make use of different resolutions and types of devices: mobile phones, portrait and landscape, tablets and PCs with low and high resolution. Each variation adjusts the width of the columns.', '2014-10-21 15:24:18', '2014-10-21 16:31:37'),
(5, '5 million Gmail usernames and passwords published', 'gmail-hacked', '2014-10-22', 'Approximately 4.93 million Gmail usernames and passwords were published to a Russian Bitcoin forum on Tuesday, as first reported by Russian website CNews. That’s the bad news. The good news is that this leak doesn’t seem as massive upon further inspection.\r\nFirst off, we got in touch with Google regarding the issue. The company does not believe this is the result of any sort of security breach on its end.\r\n\r\n“The security of our users’ information is a top priority for us,” a Google spokesperson told TNW. “We have no evidence that our systems have been compromised, but whenever we become aware that accounts may have been, we take steps to help those users secure their accounts.”\r\n\r\nNext, since the posting, the forum administrators have purged the passwords from the text file in question, leaving only the logins. Furthermore, tvskit, the forum user who published the file, claimed that some 60 percent of the passwords were valid.\r\n\r\nA quick analysis of the text file shows it includes mainly English, Spanish, and Russian accounts, but also that it seems to combine older lists accumulated over a longer period of time. There could thus be a link to hacks of sites unrelated to Gmail or any of Google’s services, especially if users are choosing the same usernames and passwords for other accounts, as well as phishing attacks.\r\n\r\nAs a result, this leak likely affects significantly fewer than 5 million users. Many have likely changed their passwords, and certain entries could be for suspended accounts, duplicates or simply outdated.\r\n\r\nIf you want to check whether your account is included in the leak, you can head to isleaked.com and input your email address (English translation here). We wouldn’t necessarily recommend doing so, however (email addresses could always be accumulated for later spamming): changing your password regardless of whether you’re on the list or not can’t hurt.\r\n\r\nGoogle has taken steps to help them secure their accounts and given them usual recommendations to protect their devices from malware. The company also recommended enabling 2-step verification.', '2014-10-22 10:38:40', '2014-10-22 10:38:40');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('0833f13581df182be3ef26af9c08bc83', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2224.3 Safari/537.36', 1416821847, ''),
('27acb51214be0a0611b015a507a76068', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2236.0 Safari/537.36', 1417678023, ''),
('9891a3995237ed96a6e3312cb549a8bc', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2224.3 Safari/537.36', 1416998145, 'a:5:{s:9:"user_data";s:0:"";s:4:"name";s:13:"Zanfina Gashi";s:5:"email";s:22:"zanfinagashi@gmail.com";s:2:"id";s:1:"1";s:8:"loggedin";b:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE IF NOT EXISTS `cms_users` (
`id` int(11) unsigned NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(128) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `email`, `password`, `name`) VALUES
(1, 'zanfinagashi@gmail.com', '40c6e0168edaa318704067639d57abc7f8266882029f0ba24c1d599b85bae5dae8b7b8728341c9a411f140c062c437feb9a904205f873ba83ff9b31dcf246152', 'Zanfina Gashi'),
(2, 'zanfina@mikagency.ch', 'c709b971d20f0fe62f5fe119026639d71feb3c15258299b8ae3a0166bc27dfa540cebbebe62cbed244e884b1250def29121d7f278b5a124e3869cbdc91f28da8', 'Mik Agency');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `version` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
`id` int(11) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `order` int(11) NOT NULL,
  `body` text NOT NULL,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `template` varchar(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `order`, `body`, `parent_id`, `template`) VALUES
(2, 'About', 'about', 2, '<p>All the information about the owner of the website will be displayed on this section.</p>', 0, 'page'),
(6, 'Homepage', '', 1, '<p>This is the body of the home page.</p>', 0, 'homepage'),
(8, 'Contact', 'contact', 3, '<p>This page holds valid contact information for the owner of the website.</p>', 2, 'page'),
(10, 'News Archive', 'News-Archive', 4, '<p>News Archive</p>', 0, 'news_archive');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=419 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `tittle`, `description`) VALUES
(402, 18, 'Zanfina Gashi', '  Testing'),
(408, 18, 'Zanfina Gashi', 'database'),
(410, 18, 'Zanfina Gashi', '123'),
(412, 18, 'testing', 'testing'),
(416, 18, 'testing', 'testing'),
(417, 18, 'testing', 'testing'),
(418, 18, 'testing', 'testing\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `emri` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `emri`) VALUES
(17, 'mikagency', '556a217cf0cad0deee5bff658ad23558', 'mikagency'),
(18, 'zanfina1', '574350ed430c4bf649c90347e54337e0', 'zanfina');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_users`
--
CREATE TABLE IF NOT EXISTS `view_users` (
`id` int(11)
,`user` varchar(255)
,`password` varchar(255)
,`emri` varchar(100)
);
-- --------------------------------------------------------

--
-- Structure for view `view_users`
--
DROP TABLE IF EXISTS `view_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_users` AS select `users`.`id` AS `id`,`users`.`username` AS `user`,`users`.`password` AS `password`,`users`.`emri` AS `emri` from `users`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
 ADD PRIMARY KEY (`session_id`), ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=419;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
