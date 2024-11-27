START TRANSACTION;

DROP DATABASE IF EXISTS fwa;
CREATE DATABASE fwa;

USE fwa;


--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `lastname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `firstname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `plz` mediumint(9) NOT NULL,
  `city` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `street_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `house_nr` varchar(50) NOT NULL,
  `mail` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone_nr` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;


--
-- Tabellenstruktur für Tabelle `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `end_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;


--
-- Tabellenstruktur für Tabelle `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;



--
-- Tabellenstruktur für Tabelle `filament_types`
--

CREATE TABLE `filament_types` (
  `id` int(11) NOT NULL,
  `short_name` varchar(10) NOT NULL,
  `long_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Daten für Tabelle `filament_types`
--

INSERT INTO `filament_types` (`id`, `short_name`, `long_name`) VALUES
(1, 'PLA', 'polylactic acid\r\n'),
(2, 'ABS', 'Acrylnitril-Butadien-Styrol'),
(3, 'ASA', 'Acrylnitril-Styrol-Acrylat'),
(4, 'PET', 'Polyethylenterephthalat'),
(5, 'PETG', 'Polyethylenterephthalat mit Glykol '),
(6, 'Color PLA', 'Color-Inkjet PLA');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `filament_types`
--
ALTER TABLE `filament_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `filament_types`
--
ALTER TABLE `filament_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;


--
-- Tabellenstruktur für Tabelle `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL,
  `name` VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;


--
-- Tabellenstruktur für Tabelle `printing_process`
--

CREATE TABLE `printing_process` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


--
-- Indizes für die Tabelle `printing_process`
--
ALTER TABLE `printing_process`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `printing_process`
--
ALTER TABLE `printing_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- Tabellenstruktur für Tabelle `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);


--
-- Tabellenstruktur für Tabelle `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(5000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `filament_type_id` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `max_print_height` int(11) NOT NULL,
  `max_print_width` int(11) NOT NULL,
  `max_print_depth` int(11) NOT NULL,
  `product_height` int(11) NOT NULL,
  `product_width` int(11) NOT NULL,
  `product_depth` int(11) NOT NULL,
  `printing_process_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- ADD FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers`(`id`);
-- ADD FOREIGN KEY (`filament_type_id`) REFERENCES `filament_types`(`id`);
-- ADD FOREIGN KEY (`printing_process_id`) REFERENCES `printing_process`(`id`);
--

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- Tabellenstruktur für Tabelle `warehouse`
--

CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`);




INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Cassia', 'Warnken', '23843', 'Travenbrück', 'Griesheimweg', '15', 'cassia.warnken@gnwmail.com', '004973480671');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Liard', 'Stemmer', '49504', 'Lotte', 'In den Schulländern', '2', 'liard.stemmer@mail2hermes.com', '004941083043');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Martha', 'Klimmek', '18225', 'Kühlungsborn', 'Artur-Becker-Str.', '13', 'martha.klimmek@winemaven.info', '004925723041');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Chantal', 'Patt', '93089', 'Aufhausen', 'Burggartenweg', '1e', 'chantal.patt@desertsaintsmail.com', '004915997297');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Alexa', 'Homeyer', '56746', 'Spessart', 'Zum Waldschlößchen', '17', 'alexa.homeyer228@kommespaeter.de', '004983869557');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Nala', 'Pfisterer', '87484', 'Nesselwang', 'Gutenbergstr.', '5', 'cr4zynala.pfisterer1678@mail2triallawyer.com', '004970246975');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Ludmilla', 'Droste', '04687', 'Trebsen/Mulde', 'Erich-Kuithan-Str.', '18', 'ludmilla.droste@breadtimes.press', '004916278757');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Jolie', 'Burchert', '91728', 'Gnotzheim', 'Kötschauweg', '13', 'jolie.burchert1682@mail2maine.com', '004947613188');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Yeysel', 'Möllmann', '97239', 'Aub', 'Kornblumenweg', '6', 'yeysel.möllmann398@edtnmail.com', '004946325346');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Thomas', 'Michelsen', '83629', 'Weyarn', 'Münchenrodaer Grund', '2', 'thomas.michelsen@techspot.com', '004969888621');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Isla', 'Kampf', '86687', 'Kaisheim', 'Friedrich-Gerstäcker-Weg', '1', 'isla.kampf@mail2stan.com', '004932525778');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Enea', 'Toth', '15938', 'Steinreich', 'Singerweg', '3', 'enea.toth@chattown.com', '004923349379');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Ferit', 'Forstner', '88400', 'Biberach an der Riß', 'Am alten Gaswerk', '11', 'ferit.forstner427@doramail.com', '004922808932');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Liva', 'Konietzny', '01458', 'Ottendorf-Okrilla', 'Richard-Zimmermann-Str.', '19b', 'liva.konietzny1636@indomail.com', '004950366672');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Mayson', 'Weniger', '25997', 'Hörnum (Sylt)', 'Anna-Siemsen-Str.', '5e', 'mayson.weniger1719@hello.hu', '004913433975');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Sia', 'Knust', '97076', 'Würzburg', 'Ziegenhainer Oberweg', '4f', 'sia.knust684@theplate.com', '004927480390');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Lucia', 'Grigoleit', '24229', 'Strande', 'Löbderstr.', '9c', 'lucia.grigoleit@trust-me.com', '004992246354');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Alexia', 'Sommerer', '93359', 'Wildenberg', 'Victor-Goerttler-Str.', '12', 'alexia.sommerer@medmail.com', '004979951262');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Alexandër', 'Heinsohn', '12487', 'Berlin', 'Sperlingsweg', '4', 'alexandër.heinsohn@mail2luxembourg.com', '004956537089');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Maximilian', 'Jäckel', '86692', 'Münster', 'Ziegenhainer Str.', '8', 'maximilian.jäckel@mail2stlouis.com', '004914140319');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Alpha', 'Pilz', '56754', 'Roes', 'Jenaer Str.', '8', 'alpha.pilz586@jojomail.com', '004918775128');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Cheyenne', 'Leyendecker', '24855', 'Jübek', 'Rosenweg', '13', 'cheyenne.leyendecker778@teamdiscovery.com', '004947375918');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Celestine', 'Lohe', '75203', 'Königsbach-Stein', 'Wildstr.', '14', 'celestine.lohe1675@macbox.ru', '004962168787');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Zion', 'Paulsen', '42119', 'Wuppertal', 'Ilmnitzer Dorfstr.', '19d', 'zion.paulsen742@excite.com', '004984544244');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Neno', 'Jürges', '76344', 'Eggenstein-Leopoldshafen', 'Schleidenstr.', '11', 'neno.jürges1583@andylau.net', '004956215230');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Maximilian', 'Koltermann', '55262', 'Ingelheim am Rhein', 'Julius-Lien-Weg', '17e', 'maximilian.koltermann13@adios.net', '004965793797');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Laila', 'Grob', '32545', 'Bad Oeynhausen', 'Charlottenstr.', '17d', 'laila.grob901@mail2films.com', '004972578830');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Safija', 'Teuber', '67752', 'Wolfstein', 'Biberweg', '9', 'safija.teuber1102@spambooger.com', '004918649806');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Alliah', 'Schütze', '94344', 'Wiesenfelden', 'Unstrutweg', '7f', 'alliah.schütze@netaddres.ru', '004991759905');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Erkan', 'Schwier', '14476', 'Potsdam', 'Am Tanzsaal', '6b', 'erkan.schwier1009@from-france.net', '004961147369');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Suna', 'Leppin', '12435', 'Berlin', 'Neugasse', '2g', 'suna.leppin231@fromconnecticut.com', '004953133298');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Pablo', 'Rüther', '52388', 'Nörvenich', 'Max-Reger-Weg', '19c', 'pablo.rüther1480@post.com', '004994444152');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Ragnar', 'Giese', '85447', 'Fraunberg', 'Am Gänseberg', '19', 'ragnar.giese516@spiritseekers.com', '004910126608');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Anna', 'Fleischmann', '83569', 'Vogtareuth', 'Am Goldberg', '11', 'anna.fleischmann1087@mail2mongolia.com', '004940048969');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Matheo', 'Saupe', '32760', 'Detmold', 'Winzerlaer Str.', '19', 'matheo.saupe@latino.com', '004952990046');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Amendra', 'Brüning', '29358', 'Eicklingen', 'Otto-Schott-Str.', '17', 'amendra.brüning@pray247.com', '004954735877');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Antonius', 'Lustig', '78713', 'Schramberg', 'Am Rödigen', '8', 'antonius.lustig@h-mail.us', '004938847246');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Serdem', 'Stockmann', '33334', 'Gütersloh', 'Lobdeburgweg', '1', 'serdem.stockmann1344@mail2delaware.com', '004993207838');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Alya', 'Galla', '73568', 'Spraitbach', 'Oßmaritzer Str.', '7', 'alya.galla525@boxformail.in', '004969284136');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Pela', 'Wittig', '94113', 'Tiefenbach', 'Grillparzerweg', '11', 'pela.wittig22@fetchmail.co.uk', '004980160646');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Meyla', 'Leven', '04720', 'Zschaitz-Ottewig', 'Claudiusstr.', '19', 'meyla.leven@yahoo.net', '004913237463');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Shahrokh', 'Klisch', '91093', 'Heßdorf', 'Nollendorfer Platz', '15', 'shahrokh.klisch@attymail.com', '004958174075');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Mohamed', 'Zabel', '72379', 'Hechingen', 'In den Bornwiesen', '9', 'mohamed.zabel1436@academycougars.com', '004960825108');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Lian', 'Eichberger', '59379', 'Selm', 'Im Steinfeld', '7', 'cr4zylian.eichberger212@funky4.com', '004962747964');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Agrippino', 'Bieger', '84137', 'Vilsbiburg', 'Forstweg', '5', 'agrippino.bieger404@nimail.com', '004953679013');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Teshi', 'Schmidtmann', '74867', 'Neunkirchen', 'Wilhelm-Rein-Str.', '2', 'teshi.schmidtmann@ecompare.com', '004928230648');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Juli', 'Guggenberger', '24146', 'Kiel', 'Wiesenstr.', '20g', 'juli.guggenberger1360@the18th.com', '004915034657');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Su', 'Kretschmar', '53562', 'Sankt Katharinen', 'Gustav-Fischer-Str.', '19f', 'cr4zysu.kretschmar1246@public-files.de', '004914160642');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Muhammed', 'Waller', '99947', 'Tottleben', 'Schlachthofstr.', '6', 'muhammed.waller@mail2willard.com', '004945242419');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Bert', 'Bleich', '74575', 'Schrozberg', 'Inselplatz', '5e', 'bert.bleich@mail2lithuania.com', '004997804319');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Lilas', 'Schrage', '31714', 'Lauenhagen', 'Erfurter Str.', '4h', 'lilas.schrage1209@mail2emergency.com', '004913017158');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Nazire', 'Zentner', '47058', 'Duisburg', 'Unterdorfstr.', '20', 'nazire.zentner1361@mail2socialist.com', '004951501259');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Janto', 'Schaffer', '04862', 'Mockrehna', 'Haydnstr.', '19', 'janto.schaffer755@roanokemail.com', '004980814575');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Shaam', 'Rey', '28325', 'Bremen', 'Hermann-Pistor-Str.', '19', 'shaam.rey@vr9.com', '004996835527');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Aemilia', 'Kutz', '68163', 'Mannheim', 'Winzergasse', '4', 'aemilia.kutz1173@zetmail.com', '004910022290');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Mansa', 'Senft', '85664', 'Hohenlinden', 'Nelkenweg', '13c', 'mansa.senft@shootmail.com', '004916618564');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Henriette', 'Früh', '29351', 'Eldingen', 'Dorfstr.', '9', 'henriette.früh76@chechnya.conf.work', '004986014105');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Elmin', 'Trageser', '60316', 'Frankfurt am Main', 'Saarbrücker Str.', '11', 'elmin.trageser@trbvm.com', '004966523454');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Riley', 'Rimkus', '88175', 'Scheidegg', 'Völklinger Stieg', '3f', 'riley.rimkus@tkcity.com', '004947780883');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Fritzi', 'Pelka', '18230', 'Rerik', 'Lerchenweg', '3', 'fritzi.pelka986@war-im-urlaub.de', '004978176878');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Aybüke', 'Springmann', '23566', 'Lübeck', 'Am Dachsbau', '8', 'aybüke.springmann955@dunlopdriver.com', '004959550229');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Hana', 'Fritzsche', '39345', 'Westheide', 'Beethovenstr.', '7', 'hana.fritzsche@kickassmail.com', '004920078420');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Divine', 'Schmaus', '22419', 'Hamburg', 'Platanenstr.', '19', 'divine.schmaus@sendme.cz', '004921239411');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Serwan', 'Horak', '25596', 'Wacken', 'Am Storchsacker', '8', 'serwan.horak@throwawayemailaddress.com', '004911575743');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Fiete', 'Knipping', '12587', 'Berlin', 'Zitzmannstr.', '8', 'fiete.knipping@smellfear.com', '004957329136');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Inga', 'Pfeil', '82404', 'Sindelsdorf', 'Grundweg', '6a', 'inga.pfeil@mail2nemesis.com', '004915213871');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Aikaterini', 'Dankert', '16766', 'Kremmen', 'Am Gänseberg', '3c', 'aikaterini.dankert1090@ruttolibero.com', '004916146853');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Mervan', 'Penzkofer', '72145', 'Hirrlingen', 'Hegelstr.', '15', 'mervan.penzkofer1544@domforfb4.tk', '004929698073');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Sena', 'Steen', '40668', 'Meerbusch', 'Vor dem Grünlaube', '3', 'sena.steen@eltimon.com', '004947419685');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Elin', 'Kiesel', '02694', 'Malschwitz - Malešecy', 'Merzenbergweg', '17e', 'cr4zyelin.kiesel@ftc-i.net', '004955269046');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Kai', 'Sladek', '29699', 'Walsrode', 'Ilmstr.', '14', 'kai.sladek122@planet.nl', '004963516145');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Harman', 'Mildner', '23970', 'Wismar', 'Unterlauengasse', '12', 'harman.mildner630@konsul.ru', '004959253085');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Börte', 'Duman', '21255', 'Wistedt', 'Kleine Dammstr.', '19', 'cr4zybörte.duman585@allergist.com', '004947230197');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Gökçe', 'Görres', '83119', 'Obing', 'Kronengasse', '7', 'gökçe.görres258@mailcity.com', '004927497005');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Alban', 'Breunig', '06618', 'Wethau', 'Rotdornweg', '19', 'alban.breunig1898@talk21.com', '004944185921');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Saed', 'Rossbach', '54459', 'Wiltingen', 'Haselstrauchweg', '7', 'saed.rossbach588@the-whitehouse.net', '004950102705');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Fatima', 'Greinert', '88279', 'Amtzell', 'Fregestr.', '6', 'fatima.greinert@buerotiger.de', '004935547262');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Marcell', 'Maron', '84329', 'Wurmannsquick', 'Geraer Str.', '12', 'marcell.maron1498@fornow.eu', '004970726920');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Gretchen', 'Hegner', '55743', 'Kirschweiler', 'Moritz-von-Rohr-Str.', '19', 'gretchen.hegner@whoever.com', '004926667422');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Hermes', 'Kuhlen', '07745', 'Jena', 'Steinweg', '14', 'hermes.kuhlen192@mail2kimberly.com', '004942448001');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Destiny', 'Bucher', '54459', 'Wiltingen', 'Munketal', '4', 'destiny.bucher@bangkok2000.com', '004959779378');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Assil', 'Stuber', '96114', 'Hirschaid', 'Orchideenweg', '10', 'assil.stuber551@fastmail.com', '004993803463');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Lauwrie', 'Bialas', '57539', 'Roth', 'Tieckstr.', '5h', 'lauwrie.bialas1085@xyz.am', '004947333123');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Sheirin', 'Krämer', '40589', 'Düsseldorf', 'Semmelweisstr.', '14', 'sheirin.krämer@galamb.net', '004921838899');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Arun', 'Farwick', '91088', 'Bubenreuth', 'Musäusring', '3', 'arun.farwick961@mail2myplane.com', '004977430309');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Menderes', 'Weigold', '83109', 'Großkarolinenfeld', 'Schillerstr.', '4f', 'menderes.weigold@spamhole.com', '004993320387');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Ljiljana', 'Rossel', '78603', 'Renquishausen', 'Olga-Benario-Weg', '17', 'ljiljana.rossel83@postafree.com', '004955139247');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Bodo', 'Krahn', '91249', 'Weigendorf', 'Am Kaiserberg', '6', 'bodo.krahn@mail.by', '004994120446');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Terence', 'Remmele', '37444', 'Braunlage', 'Julius-Lien-Weg', '10', 'terence.remmele1876@computer-expert.net', '004955982997');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Hannelore', 'Häffner', '94267', 'Prackenbach', 'Eduard-Rosenthal-Str.', '1', 'hannelore.häffner1259@fromnevada.com', '004963721143');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'László', 'Reichling', '60438', 'Frankfurt am Main', 'Pestalozzistr.', '4', 'lászló.reichling641@www.e4ward.com', '004976235630');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Kira', 'Grawe', '77972', 'Mahlberg', 'Humboldtstr.', '18', 'kira.grawe601@jump.com', '004982080623');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Tugrul', 'Röhrl', '21527', 'Kollow', 'Charlottenstr.', '10a', 'cr4zytugrul.röhrl602@literaturelover.com', '004944778541');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Maahi', 'Hetzer', '53940', 'Hellenthal', 'Lindengasse', '10', 'maahi.hetzer@vpn.st', '004914044338');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Leyth', 'Bohnen', '88527', 'Unlingen', 'An der Schöppe', '17h', 'leyth.bohnen128@clearwire.net', '004948754474');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Svetoslav', 'Liedtke', '34474', 'Diemelstadt', 'Struvestr.', '4', 'cr4zysvetoslav.liedtke1746@martinguerre.net', '004970750826');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Modesta', 'Pfister', '84098', 'Hohenthann', 'Friedrich-Wolf-Str.', '5d', 'modesta.pfister1756@mail2dreamer.com', '004964644033');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Luc', 'Lies', '34593', 'Knüllwald', 'Griesbrücke', '4', 'luc.lies703@theheadoffice.com', '004917206819');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Yasin', 'Zanger', '38116', 'Braunschweig', 'Am Pfaffenstieg', '10', 'yasin.zanger1371@hot-mail.gq', '004954550279');
INSERT INTO `customer` (`id`, `lastname`, `firstname`, `plz`, `city`, `street_name`, `house_nr`, `mail`, `telephone_nr`) VALUES 
        (NULL, 'Devid', 'Kirn', '25869', 'Gröde', 'Rosa-Luxemburg-Str.', '1', 'devid.kirn@geecities.com', '004917617234');


INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, '3D Systems');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Anet');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Anker');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Anycubic');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Artillery');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'bq');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Bresser');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Code-P');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'CoLiDo 3D');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Creality');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'CreatBot');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Dremel');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Elegoo');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Flashforge');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'FLSUN');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Geeetech');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Makeblock');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'MakerBot');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'MINGDA');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Monoprice');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'NOVA3D');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'PhotoCentriC');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Polaroid3D');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Print4Taste');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'QIDI');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Renkforce');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Robo3D');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Sculpto');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Sindoh');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Snapmaker');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Tronxy');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Two Trees');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Ultimaker');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Wanhao');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'XYZprinting');
INSERT INTO `manufacturers` (`id`, `name`) VALUES (NULL, 'Zortrax');



INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`) VALUES (NULL, 'a', 'b', 'c', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');



INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`)
 VALUES (NULL, 'HALOT-ONE CL-60 ', '
The Creality Halot-One CL-60 is the small, inexpensive brother of the Creality Halot-Sky CL-89 and is ideal for first steps in resin 3D printing.
Print volume: 130 x 82 x 160 mm
WiFi connectivity
Thanks to the WLAN connection, the Creality Halot-One can be conveniently controlled without having to move to the printer (provided that the resin is already filled in). The real-time printing status is always in view via the Creality APP.
If you prefer the traditional way, print files can of course also be transferred to the resin printer via a USB stick.
64-bit 4-core ARM Cortex-A53 CPU
Inside the printer is a Cortex-A53 M4 chip from the British company ARM. This guarantees high performance and smooth operation.
Integrated light source
The Creality Halot-One features the latest in light source technology, including a reflection-based system. This innovative system offers better light and greater precision than ever before.
    120W Power Super Spotlight
    4000uw / ​​m /
    > 80% uniformity
5.96 inch monochrome LCD
The light shines through a 5.96 inch monochrome LCD display with a resolution of 2560 x 1620.
OTA (Over-the-Air Technology)
With OTA technology, the firmware can be updated to a new version with just one click when connected to the WiFi.
Industrial design
The look of the modern 3D printer with the metal housing and the transparent hood impresses with its elegance and industrial design.
5-inch touchscreen
The user-friendly 5-inch touchscreen in portrait format is clear and bright. All important printer settings can be reached via the innovative menu system.
Straightforward slicing software
Slicing software developed in-house with a user-friendly interface facilitates slicing and thus increases efficiency.
Double cooling system for efficient cooling and filtering
The Halot One has a specially designed double cooling system for rapid cooling. An activated carbon air filter system effectively reduces odour emissions.
Stable Z-axis
A robust Z-axis structure with wider and thicker profiles minimises printing errors and increases printing precision.
', 'https://gzhls.at/i/64/29/2606429-n0.jpg', '12999', '10', '1', '7100', '50', '50', '1.25', '404', '221', '221', '2');


INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`,
  `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`)
 VALUES (NULL, 'Adventurer 3 Lite ', 'Adventurer 3 Lite (aka AD3 Lite) is a stripped-down version of Adventurer 3. Remains the most essential features, super cost-effective for family and school use..  
', 'https://gzhls.at/i/50/97/2685097-n0.jpg', '27900', '14', '3', '9000', '11', '11', '2.5', '405', '400', '380', '1');



INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`)
VALUES (NULL, 'Make M5', 'AnkerMake M5 prints 5X faster with 0.1 mm precision to get those curves perfectly smooth.
With the built-in AI Camera Recognition system, your prints stay on track. And you can print from anywhere with multiple devices.
Stop waiting, and let us help you print smarter and faster at every step.', 'nA', '71900', '3 ', '1', '12400', '235', '250', '235', '470', '502', '438', '1'); 

INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`)
VALUES (NULL, 'Kobra 3D', 'Anycubic Kobra 3D printer, precise automatic 25-point leveling 3D printer, magnetic spring steel print bed and modular structure for beginners.', 'nA', '21500', '4', '5', '12400', '220', '250', '220', '478', '645', '433', '1'); 


INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`) VALUES (NULL, 'da Vinci Color', 'The da Vinci Color is the world\'s first FFF full-color 3D printer which utilizes CMYK inkjet technology to produce quality full-color 3D prints.', 'n/a', '219999', '35', '6', '32200', '150', '200', '200', '640', '600', '581', '1');
  
INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`) VALUES (NULL, 'X5SA', 'Automatic levelling and completed motherboard box: X5SA uses a unique automatic levelling system that can help you determine a more accurate position. The platform is easy to adjust so you won\'t have any problems with levelling. Thanks to the metal motherboard box, which saves installation time, you feel more secure and can operate the machine easily. Moreover, this design helps you avoid installation errors.', 'n/a', '29900', '31', '2', '13500', '400', '330', '330', '639', '658', '580', '1');


INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`) VALUES (NULL, 'K1 Max', 'Creality\'s K1 Max achieves 600 mm/s print speed in just 0.03 seconds with an acceleration of 20000 mm/s². And it maintains full speed for about 90% of the print time. To do this, it combines the fast XY core printing technology with a 190 gram light print head. The lightweight construction of all moving parts in connection with the stable frame construction allow vibration-free movements. This enables fast and smooth workflows. The K1 Max expands the print space to 300 x 300 x 300 mm and, despite the large installation space, is surprisingly small in its external dimensions. Ideal for prototyping or design samples. It also offers a high print volume to print size ratio of 25.5%. The integrated LiDAR scanner monitors the first layer with a 1 μm resolution and automatically sets the perfect flow rate. If something should go wrong, the K1 Max stops and sends a message to the smartphone or PC. The AI camera detects printing errors such as "spaghetti" formation, foreign objects or loose parts in the printing room and, thanks to real-time monitoring, reports this to the user immediately. Another useful function is the time-lapse recordings (time-lapse) with the help of which beautiful video recordings of 3D prints are recorded. The hotend is equipped with a newly developed ceramic heating block. It reaches 200° Celsius in just under 40 seconds and can evenly heat up large amounts of filament over a long period of time, making it quick to process. The dual-gear direct extruder has every filament material firmly under control. The hotend with titanium heatbreak and hardened steel pressure nozzle reaches temperatures of up to 300° Celsius. Some materials produce unpleasant odors and fine particles during printing. The built-in air filters clean the exhaust air and create a pleasant working environment. The Creality K1 Max is delivered fully assembled and calibrated. After unpacking, the pre-installed quick start guide guides the user through commissioning, so the printer is ready for use just a few minutes after unpacking.', 'na', '104900', '10', '5', '1800', '300', '300', '300', '462', '526', '435', '1');
INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`) VALUES (NULL, 'Neptune 3 Pro', ' Leistungsstark & geräuscharm, STM 32-Bit-Hauptplatine, Direct Dual-Gear-Extruder', 'na', '25999', '13', '5', '8100', '225', '280', '225', '475', '515', '445', '1');



INSERT INTO `printing_process` (`id`, `name`) VALUES (NULL, 'FFF'), (NULL, 'SLA'); 