USE fwa;

-- Daten für Tabelle `filament_types`
INSERT INTO `filament_types` (`id`, `short_name`, `long_name`) VALUES
(1, 'PLA', 'polylactic acid'),
(2, 'ABS', 'Acrylnitril-Butadien-Styrol'),
(3, 'ASA', 'Acrylnitril-Styrol-Acrylat'),
(4, 'PET', 'Polyethylenterephthalat'),
(5, 'PETG', 'Polyethylenterephthalat mit Glykol'),
(6, 'Color PLA', 'Color-Inkjet PLA');

-- Daten für Tabelle `manufacturers`
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

-- Daten für Tabelle `printing_process`
INSERT INTO `printing_process` (`id`, `name`) VALUES (NULL, 'FFF'), (NULL, 'SLA'); 

-- Daten für Tabelle `product`
INSERT INTO `product` (`id`, `name`, `description`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`)
 VALUES (NULL, 'Example Name', 'Example Description', '100.00', '1', '1', '1000', '10', '20', '30', '40', '50', '60', '1');

INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`)
 VALUES (NULL, 'HALOT-ONE CL-60 ', 
'The Creality Halot-One CL-60 is the small, inexpensive brother of the Creality Halot-Sky CL-89 and is ideal for first steps in resin 3D printing.
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
A robust Z-axis structure with wider and thicker profiles minimises printing errors and increases printing precision.',
 'https://gzhls.at/i/64/29/2606429-n0.jpg', '129.99', '10', '1', '7100', '50', '50', '1.25', '404', '221', '221', '2');

INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`)
 VALUES (NULL, 'Adventurer 3 Lite ', 'Adventurer 3 Lite (aka AD3 Lite) is a stripped-down version of Adventurer 3. Remains the most essential features, super cost-effective for family and school use..  
', 'https://gzhls.at/i/50/97/2685097-n0.jpg', '279.00', '14', '3', '9000', '11', '11', '2.5', '405', '400', '380', '1');

INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`)
 VALUES (NULL, 'Make M5', 'AnkerMake M5 prints 5X faster with 0.1 mm precision to get those curves perfectly smooth.
With the built-in AI Camera Recognition system, your prints stay on track. And you can print from anywhere with multiple devices.
Stop waiting, and let us help you print smarter and faster at every step.', 
'https://gzhls.at/i/70/84/2837084-n0.jpg', '719.00', '3 ', '1', '12400', '235', '250', '235', '470', '502', '438', '1'); 

INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`)
 VALUES (NULL, 'Kobra 3D', 'Anycubic Kobra 3D printer, precise automatic 25-point leveling 3D printer, magnetic spring steel print bed and modular structure for beginners.', 
 'https://gzhls.at/i/20/42/2952042-l0.jpg', '215.00', '4', '5', '12400', '220', '250', '220', '478', '645', '433', '1'); 

INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`)
 VALUES (NULL, 'da Vinci Color', 'The da Vinci Color is the world''s first FFF full-color 3D printer which utilizes CMYK inkjet technology to produce quality full-color 3D prints.', 
 'https://gzhls.at/i/93/08/2139308-n0.jpg', '2199.99', '35', '6', '32200', '150', '200', '200', '640', '600', '581', '1');
  
INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`)
 VALUES (NULL, 'X5SA', 'Automatic levelling and completed motherboard box: X5SA uses a unique automatic levelling system that can help you determine a more accurate position. The platform is easy to adjust so you won''t have any problems with levelling. Thanks to the metal motherboard box, which saves installation time, you feel more secure and can operate the machine easily. Moreover, this design helps you avoid installation errors.', 
 'https://gzhls.at/i/13/56/2331356-n0.jpg', '299.00', '31', '2', '13500', '400', '330', '330', '639', '658', '580', '1');

INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`)
 VALUES (NULL, 'K1 Max', 'Creality''s K1 Max achieves 600 mm/s print speed in just 0.03 seconds with an acceleration of 20000 mm/s². And it maintains full speed for about 90% of the print time. To do this, it combines the fast XY core printing technology with a 190 gram light print head. The lightweight construction of all moving parts in connection with the stable frame construction allow vibration-free movements. This enables fast and smooth workflows. The K1 Max expands the print space to 300 x 300 x 300 mm and, despite the large installation space, is surprisingly small in its external dimensions. Ideal for prototyping or design samples. It also offers a high print volume to print size ratio of 25.5%. The integrated LiDAR scanner monitors the first layer with a 1 μm resolution and automatically sets the perfect flow rate. If something should go wrong, the K1 Max stops and sends a message to the smartphone or PC. The AI camera detects printing errors such as "spaghetti" formation, foreign objects or loose parts in the printing room and, thanks to real-time monitoring, reports this to the user immediately. Another useful function is the time-lapse recordings (time-lapse) with the help of which beautiful video recordings of 3D prints are recorded. The hotend is equipped with a newly developed ceramic heating block. It reaches 200° Celsius in just under 40 seconds and can evenly heat up large amounts of filament over a long period of time, making it quick to process. The dual-gear direct extruder has every filament material firmly under control. The hotend with titanium heatbreak and hardened steel pressure nozzle reaches temperatures of up to 300° Celsius. Some materials produce unpleasant odors and fine particles during printing. The built-in air filters clean the exhaust air and create a pleasant working environment. The Creality K1 Max is delivered fully assembled and calibrated. After unpacking, the pre-installed quick start guide guides the user through commissioning, so the printer is ready for use just a few minutes after unpacking.', 
 'https://gzhls.at/i/80/80/2938080-n0.webp', '1049.00', '10', '5', '1800', '300', '300', '300', '462', '526', '435', '1');

INSERT INTO `product` (`id`, `name`, `description`, `image_url`, `price`, `manufacturer_id`, `filament_type_id`, `weight`, `max_print_height`, `max_print_width`, `max_print_depth`, `product_height`, `product_width`, `product_depth`, `printing_process_id`)
 VALUES (NULL, 'Neptune 3 Pro', ' Leistungsstark & geräuscharm, STM 32-Bit-Hauptplatine, Direct Dual-Gear-Extruder', 
 'https://gzhls.at/i/95/56/2929556-n0.jpg', '259.99', '13', '5', '8100', '225', '280', '225', '475', '515', '445', '1');

