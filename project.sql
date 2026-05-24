-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2026 at 05:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_code` char(2) NOT NULL,
  `country_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_code`, `country_name`) VALUES
('AD', 'Andora'),
('AE', 'Ujedinjeni Arapski Emirati'),
('AF', 'Afganistan'),
('AG', 'Antigva i Barbuda'),
('AI', 'Angvila'),
('AL', 'Albanija'),
('AM', 'Armenija'),
('AO', 'Angola'),
('AQ', 'Antarktika'),
('AR', 'Argentina'),
('AS', 'Američka Samoa'),
('AT', 'Austrija'),
('AU', 'Australija'),
('AW', 'Aruba'),
('AX', 'Ålandski otoci'),
('AZ', 'Azerbajdžan'),
('BA', 'Bosna i Hercegovina'),
('BB', 'Barbados'),
('BD', 'Bangladeš'),
('BE', 'Belgija'),
('BF', 'Burkina Faso'),
('BG', 'Bugarska'),
('BH', 'Bahrein'),
('BI', 'Burundi'),
('BJ', 'Benin'),
('BL', 'Sveti Bartolomej'),
('BM', 'Bermudi'),
('BN', 'Brunej'),
('BO', 'Bolivija'),
('BQ', 'Bonaire, Sveti Eustahije i Saba'),
('BR', 'Brazil'),
('BS', 'Bahami'),
('BT', 'Butan'),
('BV', 'Otok Bouvet'),
('BW', 'Bocvana'),
('BY', 'Bjelorusija'),
('BZ', 'Belize'),
('CA', 'Kanada'),
('CC', 'Kokosovi (Keeling) otoci'),
('CD', 'Demokratska Republika Kongo'),
('CF', 'Srednjoafrička Republika'),
('CG', 'Kongo'),
('CH', 'Švicarska'),
('CI', 'Obala Bjelokosti'),
('CK', 'Cookovi Otoci'),
('CL', 'Čile'),
('CM', 'Kamerun'),
('CN', 'Kina'),
('CO', 'Kolumbija'),
('CR', 'Kostarika'),
('CU', 'Kuba'),
('CV', 'Zelenortska Republika'),
('CW', 'Curaçao'),
('CX', 'Božićni Otok'),
('CY', 'Cipar'),
('CZ', 'Češka'),
('DE', 'Njemačka'),
('DJ', 'Džibuti'),
('DK', 'Danska'),
('DM', 'Dominika'),
('DO', 'Dominikanska Republika'),
('DZ', 'Alžir'),
('EC', 'Ekvador'),
('EE', 'Estonija'),
('EG', 'Egipat'),
('EH', 'Zapadna Sahara'),
('ER', 'Eritreja'),
('ES', 'Španjolska'),
('ET', 'Etiopija'),
('FI', 'Finska'),
('FJ', 'Fidži'),
('FK', 'Falklandski Otoci'),
('FM', 'Mikronezija'),
('FO', 'Farski Otoci'),
('FR', 'Francuska'),
('GA', 'Gabon'),
('GB', 'Ujedinjeno Kraljevstvo'),
('GD', 'Grenada'),
('GE', 'Gruzija'),
('GF', 'Francuska Gvajana'),
('GG', 'Guernsey'),
('GH', 'Gana'),
('GI', 'Gibraltar'),
('GL', 'Grenland'),
('GM', 'Gambija'),
('GN', 'Gvineja'),
('GP', 'Gvadalupa'),
('GQ', 'Ekvatorska Gvineja'),
('GR', 'Grčka'),
('GS', 'Južna Georgija i Južni Sendvički Otoci'),
('GT', 'Gvatemala'),
('GU', 'Guam'),
('GW', 'Gvineja Bisau'),
('GY', 'Gvajana'),
('HK', 'Hong Kong'),
('HM', 'Otoci Heard i McDonald'),
('HN', 'Honduras'),
('HR', 'Hrvatska'),
('HT', 'Haiti'),
('HU', 'Mađarska'),
('ID', 'Indonezija'),
('IE', 'Irska'),
('IL', 'Izrael'),
('IM', 'Otok Man'),
('IN', 'Indija'),
('IO', 'Britanski Indijskooceanski Teritorij'),
('IQ', 'Irak'),
('IR', 'Iran'),
('IS', 'Island'),
('IT', 'Italija'),
('JE', 'Jersey'),
('JM', 'Jamajka'),
('JO', 'Jordan'),
('JP', 'Japan'),
('KE', 'Kenija'),
('KG', 'Kirgistan'),
('KH', 'Kambodža'),
('KI', 'Kiribati'),
('KM', 'Komori'),
('KN', 'Sveti Kristofor i Nevis'),
('KP', 'Sjeverna Koreja'),
('KR', 'Južna Koreja'),
('KW', 'Kuvajt'),
('KY', 'Kajmanski Otoci'),
('KZ', 'Kazahstan'),
('LA', 'Laos'),
('LB', 'Libanon'),
('LC', 'Sveta Lucija'),
('LI', 'Lihtenštajn'),
('LK', 'Šri Lanka'),
('LR', 'Liberija'),
('LS', 'Lesoto'),
('LT', 'Litva'),
('LU', 'Luksemburg'),
('LV', 'Latvija'),
('LY', 'Libija'),
('MA', 'Maroko'),
('MC', 'Monako'),
('MD', 'Moldavija'),
('ME', 'Crna Gora'),
('MF', 'Sveti Martin (francuski dio)'),
('MG', 'Madagaskar'),
('MH', 'Maršalovi Otoci'),
('MK', 'Sjeverna Makedonija'),
('ML', 'Mali'),
('MM', 'Mjanmar'),
('MN', 'Mongolija'),
('MO', 'Makao'),
('MP', 'Sjeverni Marijanski Otoci'),
('MQ', 'Martinik'),
('MR', 'Mauritanija'),
('MS', 'Montserrat'),
('MT', 'Malta'),
('MU', 'Mauricijus'),
('MV', 'Maldivi'),
('MW', 'Malavi'),
('MX', 'Meksiko'),
('MY', 'Malezija'),
('MZ', 'Mozambik'),
('NA', 'Namibija'),
('NC', 'Nova Kaledonija'),
('NE', 'Niger'),
('NF', 'Otok Norfolk'),
('NG', 'Nigerija'),
('NI', 'Nikaragva'),
('NL', 'Nizozemska'),
('NO', 'Norveška'),
('NP', 'Nepal'),
('NR', 'Nauru'),
('NU', 'Niue'),
('NZ', 'Novi Zeland'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Peru'),
('PF', 'Francuska Polinezija'),
('PG', 'Papua Nova Gvineja'),
('PH', 'Filipini'),
('PK', 'Pakistan'),
('PL', 'Poljska'),
('PM', 'Sveti Petar i Mikelon'),
('PN', 'Pitcairn'),
('PR', 'Portoriko'),
('PS', 'Palestina'),
('PT', 'Portugal'),
('PW', 'Palau'),
('PY', 'Paragvaj'),
('QA', 'Katar'),
('RE', 'Réunion'),
('RO', 'Rumunjska'),
('RS', 'Srbija'),
('RU', 'Rusija'),
('RW', 'Ruanda'),
('SA', 'Saudijska Arabija'),
('SB', 'Solomonski Otoci'),
('SC', 'Sejšeli'),
('SD', 'Sudan'),
('SE', 'Švedska'),
('SG', 'Singapur'),
('SH', 'Sveta Helena, Ascension i Tristan da Cunha'),
('SI', 'Slovenija'),
('SJ', 'Svalbard i Jan Mayen'),
('SK', 'Slovačka'),
('SL', 'Sijera Leone'),
('SM', 'San Marino'),
('SN', 'Senegal'),
('SO', 'Somalija'),
('SR', 'Surinam'),
('SS', 'Južni Sudan'),
('ST', 'Sao Tome i Principe'),
('SV', 'Salvador'),
('SX', 'Sveti Martin (nizozemski dio)'),
('SY', 'Sirija'),
('SZ', 'Esvatini'),
('TC', 'Otoci Turks i Caicos'),
('TD', 'Čad'),
('TF', 'Francuski južni i antarktički teritoriji'),
('TG', 'Togo'),
('TH', 'Tajland'),
('TJ', 'Tadžikistan'),
('TK', 'Tokelau'),
('TL', 'Istočni Timor'),
('TM', 'Turkmenistan'),
('TN', 'Tunis'),
('TO', 'Tonga'),
('TR', 'Turska'),
('TT', 'Trinidad i Tobago'),
('TV', 'Tuvalu'),
('TW', 'Tajvan'),
('TZ', 'Tanzanija'),
('UA', 'Ukrajina'),
('UG', 'Uganda'),
('UM', 'Mali udaljeni otoci SAD-a'),
('US', 'Sjedinjene Američke Države'),
('UY', 'Urugvaj'),
('UZ', 'Uzbekistan'),
('VA', 'Vatikan'),
('VC', 'Sveti Vincent i Grenadini'),
('VE', 'Venezuela'),
('VG', 'Britanski Djevičanski Otoci'),
('VI', 'Američki Djevičanski Otoci'),
('VN', 'Vijetnam'),
('VU', 'Vanuatu'),
('WF', 'Wallis i Futuna'),
('WS', 'Samoa'),
('XK', 'Kosovo'),
('YE', 'Jemen'),
('YT', 'Mayotte'),
('ZA', 'Južna Afrika'),
('ZM', 'Zambija'),
('ZW', 'Zimbabve');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `picture` varchar(255) NOT NULL,
  `archive` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `date`, `picture`, `archive`) VALUES
(1, 'Šišmiši', 'Populacija šišmiša u PP Medvednica je u porastu.', '2026-05-24 15:18:49', '1-69.jpg', 'N'),
(4, 'Dani PP Medvednica', 'Od 27.5 do 29.5 održavaju se dani PP Medvednica', '2026-05-24 15:18:21', '4-25.png', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country` char(2) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `role` enum('user','editor','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `country`, `city`, `adress`, `date`, `role`) VALUES
(1, 'Luka', 'Javor', 'admin@gmail.com', '$2y$12$W16dbhUSbzlazmED/8sNNudFYWstQrI.OszWzpZo2zDI.AVtr.xlu', 'HR', 'Donja Lomnica', 'test test', '2026-04-29', 'admin'),
(9, 'ivo', 'ivic', 'ivo@gmail.com', '$2y$12$fTrSkJznXH8oEr7.UyZ5GesLcRANPZUbu2T771fCMJkCLueaBp82C', 'BY', 'Test', 'testna 45', '2008-07-07', 'editor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_code`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `fk_users_country` (`country`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_country` FOREIGN KEY (`country`) REFERENCES `countries` (`country_code`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
