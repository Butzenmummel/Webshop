START TRANSACTION;

DROP DATABASE IF EXISTS fwa;
CREATE DATABASE fwa;

USE fwa;


--
-- Filament Typen 
--

-- Tabellenstruktur für Tabelle `filament_types`
CREATE TABLE `filament_types` (
  `id` int(11) NOT NULL,
  `short_name` varchar(10) NOT NULL,
  `long_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Indizes für die Tabelle `filament_types`
ALTER TABLE `filament_types`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT für Tabelle `filament_types`
ALTER TABLE `filament_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;


--
-- Hersteller
--

-- Tabellenstruktur für Tabelle `manufacturers`
CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL,
  `name` VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Indizes für die Tabelle `manufacturers`
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT für Tabelle `manufacturers`
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;


--
-- Druck Prozesse
--

-- Tabellenstruktur für Tabelle `printing_process`
CREATE TABLE `printing_process` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Indizes für die Tabelle `printing_process`
ALTER TABLE `printing_process`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT für Tabelle `printing_process`
ALTER TABLE `printing_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;


--
-- Produkte
--

-- Tabellenstruktur für Tabelle `product`
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(5000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(100),
  `price` decimal(10, 2) NOT NULL,
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

-- Indizes für die Tabelle `product`
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- ADD FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers`(`id`);
-- ADD FOREIGN KEY (`filament_type_id`) REFERENCES `filament_types`(`id`);
-- ADD FOREIGN KEY (`printing_process_id`) REFERENCES `printing_process`(`id`);
--

-- AUTO_INCREMENT für Tabelle `product`
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;
