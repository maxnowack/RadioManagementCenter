-- phpMyAdmin SQL Dump
-- version 3.3.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 20. April 2011 um 15:26
-- Server Version: 5.0.51
-- PHP-Version: 5.2.6-1+lenny10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `RMC`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `shows`
--

CREATE TABLE IF NOT EXISTS `shows` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `moderator` int(11) NOT NULL,
  `description` text NOT NULL,
  `day` int(10) unsigned NOT NULL,
  `week` int(10) unsigned NOT NULL,
  `year` int(10) unsigned NOT NULL,
  `start` int(10) unsigned NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Daten für Tabelle `shows`
--

INSERT INTO `shows` (`id`, `name`, `moderator`, `description`, `day`, `week`, `year`, `start`, `duration`) VALUES
(48, 'Let the Music play', 35, 'Der feinste shit aus House meets Black und Elektro meets Black', 6, 34, 2010, 0, 1),
(44, 'Fuck Me I Am Jalous', 29, 'PWNED GUETTA', 4, 32, 2010, 17, 2),
(47, 'R.O.B LIVE ON STAGE', 36, '', 5, 34, 2010, 22, 2),
(49, 'Let The Music Play', 35, '', 6, 34, 2010, 12, 1),
(50, 'Titten, Techno &amp; Trompeten', 28, '', 4, 35, 2010, 22, 1),
(52, 'R.O.B. Just For Fun', 36, '', 3, 37, 2010, 19, 3),
(55, 'Bla', 41, 'sjodhgjklsdng', 7, 39, 2010, 18, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Daten für Tabelle `status`
--

INSERT INTO `status` (`id`, `name`, `order`) VALUES
(1, 'Projektleiter', 1),
(2, 'Techniker', 100),
(3, 'Teammanagement', 10),
(4, 'Streammanagement', 20),
(5, 'Castingleitung', 30),
(6, 'Moderator', 40),
(7, 'Deejay', 50),
(9, 'Gast-Moderator/Deejay', 60);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `templates`
--

CREATE TABLE IF NOT EXISTS `templates` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `templates`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `avatar` varchar(255) default 'avatar/noava.png',
  `pw_md5` varchar(32) NOT NULL,
  `pw_sha1` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bday_day` int(11) default NULL,
  `bday_month` int(11) default NULL,
  `bday_year` int(11) default NULL,
  `gender` tinyint(2) NOT NULL default '0',
  `town` varchar(255) default NULL,
  `plz` varchar(5) default NULL,
  `job` varchar(255) default NULL,
  `about` text,
  `music` text,
  `last_login` datetime default NULL,
  `last_ip` varchar(15) default NULL,
  `rights` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`id`, `name`, `status_id`, `avatar`, `pw_md5`, `pw_sha1`, `email`, `bday_day`, `bday_month`, `bday_year`, `gender`, `town`, `plz`, `job`, `about`, `music`, `last_login`, `last_ip`, `rights`) VALUES
(2, 'nov', 1, 'avatar/noava.png', '1045b88949531302db8f267fa50b1461', '4ad73c2a2a1f504fcfa903fdeac3f377cc817bc7', 'nov@zlies.de', 22, 4, 1990, 1, 'Goettingen', '37083', 'Pharma Field Force Helpdesk', 'Der Programmierer mit den tollen Ideen', 'Electro, Minimal, Rock, HipHop, Breaks, House', '2011-04-13 12:10:53', '64.43.242.6', 9999),
(29, 'DJ Deluxe Styler', 7, 'avatar/noava.png', 'f0e64d87871aaf57edac39c58313b3a5', 'e41f3d4de194ac66b3f9d5b3bbe160573760660f', 'Natedogg20050@hotmail.de', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2010-08-12 17:33:30', '84.60.17.151', 1000),
(28, 'Dragon_fight', 6, 'avatar/noava.png', '21498b8dcb63629f83f2933066bc25e0', '4203ec3fea591d5339c237b9c498291074bf9547', 'dragon_fight@arcor.de', 9, 12, 1986, 1, 'Goettingen', '', ' Hoffe Bald Admin im NBZ ', 'joar kp, Arbeit stressig und sonst.....  Paaarrtyyyy  hhehehe\r\n(hol mir ma ne flasche bier, sonst Streik ich hier hehehe !!! ', 'House(breakz)(RMX) RnB(Breakz)(RMX) hipi hopi(breakz)(RMX) DEU RnB (nur wenige)(breakz)(RMX)\r\n\r\nBBBRREEAAKKZZ   RRMMXXX  forever !', '2010-09-02 22:38:19', '188.195.207.230', 1000),
(30, 'Dj Control', 0, 'avatar/noava.png', 'e52b5c16e6a10f32a405750f11467533', '9969281ee2fc292eda7bf0c493c0f045a6eefe6a', 'max_kammler@yahoo.de', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2010-08-14 12:17:12', '91.3.62.230', 9999),
(35, 'MasterVIP', 0, 'avatar/noava.png', 'ef35c72c9ae48cc262b288f559b26fd3', 'f804e20e8598d9102aaad942fdb46c99ce2405ef', 'benjamin.wiszniewski@web.de', 31, 5, 1990, 1, 'Berlin', '12109', 'Fachkraft fuer Veranstaltungstechnik', '', 'Breakz, House, Elektro', '2010-09-03 19:50:30', '94.223.88.169', 2000),
(32, 'Overturn', 0, 'avatar/noava.png', '98f32765d6154d41c29163f8c4b79c4f', '7879cb8aca82e073a410735539a8265d6b2a3352', 'overturn@hotmail.de', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000),
(33, 'roda', 0, 'avatar/noava.png', 'b72f93956dd7c1e0b0036d7a41a86ff4', 'b842cf3ee9842764d05b9ed85e88e1d0d040a5b5', 'roda-d@zlies.de', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000),
(36, 'R.O.B', 7, 'avatar/noava.png', '51b4920f793afba16dabd08a705b3ee7', '192e421f248d8f53de035dab250f9895168543f5', 'r.o.b@turndex.com', 18, 10, 1981, 1, '', '', '', '', '', '2010-10-21 05:44:22', '84.186.42.160', 1000),
(37, 'Dj TreckZ', 0, 'avatar/noava.png', '11e606b1f9cf1861c0a7d46a9037bf9c', '4a9a6c605c80b16b5c367868351bd2461940f491', 'DjTreckZ@gmx.de', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000),
(39, 'Elec-Vibes', 0, 'avatar/noava.png', 'e10adc3949ba59abbe56e057f20f883e', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Elec-Vibes@live.com', 29, 10, 1986, 1, '', '', '', '', '', '2010-12-16 17:21:30', '88.134.17.6', 1000),
(41, 'Russe', 0, 'avatar/noava.png', 'e10adc3949ba59abbe56e057f20f883e', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'andrej-k@t-online.de', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2010-10-03 18:23:39', '95.88.184.91', 1000),
(42, 'Bina', 0, 'avatar/noava.png', 'e10adc3949ba59abbe56e057f20f883e', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'binasweetyklapproth@web.de', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000),
(43, 'test', 0, 'avatar/noava.png', 'e10adc3949ba59abbe56e057f20f883e', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'bla@unsou.de', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2010-11-24 01:03:30', '91.62.101.86', 9999);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wishes`
--

CREATE TABLE IF NOT EXISTS `wishes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  `age` int(11) NOT NULL,
  `town` varchar(25) NOT NULL,
  `message` text NOT NULL,
  `show_id` int(11) NOT NULL,
  `send_time` datetime NOT NULL,
  `ip` varchar(15) NOT NULL,
  `done` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `wishes`
--

INSERT INTO `wishes` (`id`, `name`, `age`, `town`, `message`, `show_id`, `send_time`, `ip`, `done`) VALUES
(1, 'Nico', 16, 'Osterode', 'Jo elec sch&Atilde;&para;n dich mal wieder zu h&Atilde;&para;ren.. geile show :) ', 53, '2010-09-29 22:58:03', '87.145.134.237', 1),
(2, 'Tina M&Atilde;&para;llenf', 0, 'saarlouis ', 'eeehh spiel ma heads will roll haha :D  ', 54, '2010-10-01 22:54:04', '84.58.255.45', 1),
(3, 'Tina ', 0, 'saarlouis ', 'Woody Woody :D ich will h&Atilde;&para;ren wenn du es hast i can feel your heart beat wenn du wei&Atilde;Ÿt welches ich meine nee ^^ ', 54, '2010-10-01 23:37:30', '84.58.255.45', 1),
(4, 'hnb dgdg', 45, 'uzio', '5ujitlpoiutzfgthzjukilop&Atilde;&para;poiujzhtg', 55, '2010-10-03 18:29:52', '95.88.184.91', 1);
