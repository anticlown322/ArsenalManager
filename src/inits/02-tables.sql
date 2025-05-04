INSERT INTO storages (st_name, st_location, st_capacity)
VALUES
    ('Storage A', 'Location 1, City X', 10000),
    ('Storage B', 'Location 2, City Y', 15000),
    ('Storage C', 'Location 3, City Z', 20000),
    ('Storage D', 'Location 4, City W', 12000),
    ('Storage E', 'Location 5, City V', 18000),
    ('Storage F', 'Location 6, City U', 9000),
    ('Storage G', 'Location 7, City T', 13000),
    ('Storage H', 'Location 8, City S', 11000),
    ('Storage I', 'Location 9, City R', 17000),
    ('Storage J', 'Location 10, City Q', 14000),
    ('Storage K', 'Location 11, City P', 9500),
    ('Storage L', 'Location 12, City O', 16000),
    ('Storage M', 'Location 13, City N', 21000),
    ('Storage N', 'Location 14, City M', 12500),
    ('Storage O', 'Location 15, City L', 19000),
    ('Storage P', 'Location 16, City K', 8500),
    ('Storage Q', 'Location 17, City J', 13500),
    ('Storage R', 'Location 18, City I', 11500),
    ('Storage S', 'Location 19, City H', 17500),
    ('Storage T', 'Location 20, City G', 14500),
    ('Storage U', 'Location 21, City F', 10500),
    ('Storage V', 'Location 22, City E', 15500),
    ('Storage W', 'Location 23, City D', 20500),
    ('Storage X', 'Location 24, City C', 13000),
    ('Storage Y', 'Location 25, City B', 18500),
    ('Storage Z', 'Location 26, City A', 8000),
    ('Storage AA', 'Location 27, City AA', 14000),
    ('Storage AB', 'Location 28, City AB', 16500),
    ('Storage AC', 'Location 29, City AC', 22000),
    ('Storage AD', 'Location 30, City AD', 11000),
    ('Storage AE', 'Location 31, City AE', 19500),
    ('Storage AF', 'Location 32, City AF', 7500),
    ('Storage AG', 'Location 33, City AG', 14500),
    ('Storage AH', 'Location 34, City AH', 12000),
    ('Storage AI', 'Location 35, City AI', 17000),
    ('Storage AJ', 'Location 36, City AJ', 15000),
    ('Storage AK', 'Location 37, City AK', 10000),
    ('Storage AL', 'Location 38, City AL', 16000),
    ('Storage AM', 'Location 39, City AM', 20000),
    ('Storage AN', 'Location 40, City AN', 12500),
    ('Storage AO', 'Location 41, City AO', 18000),
    ('Storage AP', 'Location 42, City AP', 9000),
    ('Storage AQ', 'Location 43, City AQ', 13000),
    ('Storage AR', 'Location 44, City AR', 11000),
    ('Storage AS', 'Location 45, City AS', 17500),
    ('Storage AT', 'Location 46, City AT', 14000),
    ('Storage AU', 'Location 47, City AU', 10500),
    ('Storage AV', 'Location 48, City AV', 15500),
    ('Storage AW', 'Location 49, City AW', 21000),
    ('Storage AX', 'Location 50, City AX', 12000),
    ('Storage AY', 'Location 51, City AY', 19000),
    ('Storage AZ', 'Location 52, City AZ', 8500),
    ('Storage BA', 'Location 53, City BA', 13500),
    ('Storage BB', 'Location 54, City BB', 11500),
    ('Storage BC', 'Location 55, City BC', 17000),
    ('Storage BD', 'Location 56, City BD', 15000),
    ('Storage BE', 'Location 57, City BE', 10000),
    ('Storage BF', 'Location 58, City BF', 16000),
    ('Storage BG', 'Location 59, City BG', 20000),
    ('Storage BH', 'Location 60, City BH', 12500);
    
INSERT INTO comm_devices (cd_type, cd_model, cd_manufacture, cd_freq_min, cd_freq_max, cd_status, cd_st_id)
VALUES
    ('Radio station', 'Model X', 'CommCorp', 144.0, 146.0, 'Active', 1),
    ('Radio station', 'Model Y', 'CommCorp', 430.0, 440.0, 'Active', 2),
    ('Radar', 'Model Z', 'RadarTech', 9000.0, 9500.0, 'Active', 3),
    ('Satellite terminal', 'Model A', 'SatCom', 12000.0, 12500.0, 'Active', 4),
    ('Radio station', 'Model B', 'CommCorp', 144.0, 146.0, 'Inactive', 5),
    ('Radio station', 'Model C', 'CommCorp', 430.0, 440.0, 'Active', 6),
    ('Radar', 'Model D', 'RadarTech', 9000.0, 9500.0, 'Inactive', 7),
    ('Satellite terminal', 'Model E', 'SatCom', 12000.0, 12500.0, 'Active', 8),
    ('Radio station', 'Model F', 'CommCorp', 144.0, 146.0, 'Active', 9),
    ('Radio station', 'Model G', 'CommCorp', 430.0, 440.0, 'Inactive', 10),
    ('Radar', 'Model H', 'RadarTech', 9000.0, 9500.0, 'Active', 1),
    ('Satellite terminal', 'Model I', 'SatCom', 12000.0, 12500.0, 'Active', 2),
    ('Radio station', 'Model J', 'CommCorp', 144.0, 146.0, 'Inactive', 3),
    ('Radio station', 'Model K', 'CommCorp', 430.0, 440.0, 'Active', 4),
    ('Radar', 'Model L', 'RadarTech', 9000.0, 9500.0, 'Inactive', 5),
    ('Satellite terminal', 'Model M', 'SatCom', 12000.0, 12500.0, 'Active', 6),
    ('Radio station', 'Model N', 'CommCorp', 144.0, 146.0, 'Active', 7),
    ('Radio station', 'Model O', 'CommCorp', 430.0, 440.0, 'Inactive', 8),
    ('Radar', 'Model P', 'RadarTech', 9000.0, 9500.0, 'Active', 9),
    ('Satellite terminal', 'Model Q', 'SatCom', 12000.0, 12500.0, 'Active', 10),
    ('Radio station', 'Model R', 'CommCorp', 144.0, 146.0, 'Inactive', 1),
    ('Radio station', 'Model S', 'CommCorp', 430.0, 440.0, 'Active', 2),
    ('Radar', 'Model T', 'RadarTech', 9000.0, 9500.0, 'Inactive', 3),
    ('Satellite terminal', 'Model U', 'SatCom', 12000.0, 12500.0, 'Active', 4),
    ('Radio station', 'Model V', 'CommCorp', 144.0, 146.0, 'Active', 5),
    ('Radio station', 'Model W', 'CommCorp', 430.0, 440.0, 'Inactive', 6),
    ('Radar', 'Model X', 'RadarTech', 9000.0, 9500.0, 'Active', 7),
    ('Satellite terminal', 'Model Y', 'SatCom', 12000.0, 12500.0, 'Active', 8),
    ('Radio station', 'Model Z', 'CommCorp', 144.0, 146.0, 'Inactive', 9),
    ('Radio station', 'Model AA', 'CommCorp', 430.0, 440.0, 'Active', 10),
    ('Radar', 'Model AB', 'RadarTech', 9000.0, 9500.0, 'Inactive', 1),
    ('Satellite terminal', 'Model AC', 'SatCom', 12000.0, 12500.0, 'Active', 2),
    ('Radio station', 'Model AD', 'CommCorp', 144.0, 146.0, 'Active', 3),
    ('Radio station', 'Model AE', 'CommCorp', 430.0, 440.0, 'Inactive', 4),
    ('Radar', 'Model AF', 'RadarTech', 9000.0, 9500.0, 'Active', 5),
    ('Satellite terminal', 'Model AG', 'SatCom', 12000.0, 12500.0, 'Active', 6),
    ('Radio station', 'Model AH', 'CommCorp', 144.0, 146.0, 'Inactive', 7),
    ('Radio station', 'Model AI', 'CommCorp', 430.0, 440.0, 'Active', 8),
    ('Radar', 'Model AJ', 'RadarTech', 9000.0, 9500.0, 'Inactive', 9),
    ('Satellite terminal', 'Model AK', 'SatCom', 12000.0, 12500.0, 'Active', 10),
    ('Radio station', 'Model AL', 'CommCorp', 144.0, 146.0, 'Active', 1),
    ('Radio station', 'Model AM', 'CommCorp', 430.0, 440.0, 'Inactive', 2),
    ('Radar', 'Model AN', 'RadarTech', 9000.0, 9500.0, 'Active', 3),
    ('Satellite terminal', 'Model AO', 'SatCom', 12000.0, 12500.0, 'Active', 4),
    ('Radio station', 'Model AP', 'CommCorp', 144.0, 146.0, 'Inactive', 5),
    ('Radio station', 'Model AQ', 'CommCorp', 430.0, 440.0, 'Active', 6),
    ('Radar', 'Model AR', 'RadarTech', 9000.0, 9500.0, 'Inactive', 7),
    ('Satellite terminal', 'Model AS', 'SatCom', 12000.0, 12500.0, 'Active', 8),
    ('Radio station', 'Model AT', 'CommCorp', 144.0, 146.0, 'Active', 9),
    ('Radio station', 'Model AU', 'CommCorp', 430.0, 440.0, 'Inactive', 10),
    ('Radar', 'Model AV', 'RadarTech', 9000.0, 9500.0, 'Active', 1),
    ('Satellite terminal', 'Model AW', 'SatCom', 12000.0, 12500.0, 'Active', 2),
    ('Radio station', 'Model AX', 'CommCorp', 144.0, 146.0, 'Inactive', 3),
    ('Radio station', 'Model AY', 'CommCorp', 430.0, 440.0, 'Active', 4),
    ('Radar', 'Model AZ', 'RadarTech', 9000.0, 9500.0, 'Inactive', 5),
    ('Satellite terminal', 'Model BA', 'SatCom', 12000.0, 12500.0, 'Active', 6);

INSERT INTO equipment (eq_type, eq_model, eq_manufacture, eq_size, eq_status, eq_st_id) 
VALUES
    ('Bulletproof vest', 'Model X-100', 'Armor Express', 'L', 'New', 12),
    ('Helmet', 'Model K-200', 'Armor Express', 'M', 'Used', 45),
    ('Uniform', 'Field uniform', 'Safariland ', 'XL', 'New', 7),
    ('Bulletproof vest', 'Model X-200', 'Armor Express', 'M', 'Used', 33),
    ('Helmet', 'Model K-300', 'Armor Express', 'L', 'New', 56),
    ('Uniform', 'Office uniform', 'Safariland ', 'S', 'New', 21),
    ('Bulletproof vest', 'Model X-300', 'Armor Express', 'XL', 'Used', 8),
    ('Helmet', 'Model K-400', 'Armor Express', 'S', 'New', 59),
    ('Uniform', 'Winter uniform', 'Safariland ', 'M', 'New', 14),
    ('Bulletproof vest', 'Model X-400', 'Armor Express', 'L', 'New', 27),
    ('Helmet', 'Model K-500', 'Armor Express', 'M', 'Used', 38),
    ('Uniform', 'Summer Uniform', 'Safariland ', 'XL', 'New', 3),
    ('Bulletproof vest', 'Model X-500', 'Armor Express', 'M', 'Used', 49),
    ('Helmet', 'Model K-600', 'Armor Express', 'L', 'New', 17),
    ('Uniform', 'Raincoat', 'Safariland ', 'S', 'New', 60),
    ('Bulletproof vest', 'Model X-600', 'Armor Express', 'XL', 'Used', 22),
    ('Helmet', 'Model K-700', 'Armor Express', 'S', 'New', 41),
    ('Uniform', 'Camo', 'Safariland ', 'M', 'New', 10),
    ('Bulletproof vest', 'Model X-700', 'Armor Express', 'L', 'New', 55),
    ('Helmet', 'Model K-800', 'Armor Express', 'M', 'Used', 29),
    ('Uniform', 'Tropical Uniform', 'Safariland ', 'XL', 'New', 6),
    ('Bulletproof vest', 'Model X-800', 'Armor Express', 'M', 'Used', 34),
    ('Helmet', 'Model K-900', 'Armor Express', 'L', 'New', 47),
    ('Uniform', 'Desert Uniform', 'Safariland ', 'S', 'New', 18),
    ('Bulletproof vest', 'Model X-900', 'Armor Express', 'XL', 'Used', 52),
    ('Helmet', 'Model K-1000', 'Armor Express', 'S', 'New', 25),
    ('Uniform', 'Arctic Uniform', 'Safariland ', 'M', 'New', 39),
    ('Bulletproof vest', 'Model X-1000', 'Armor Express', 'L', 'New', 11),
    ('Helmet', 'Model K-1100', 'Armor Express', 'M', 'Used', 44),
    ('Uniform', 'Urban Uniform', 'Safariland ', 'XL', 'New', 2),
    ('Bulletproof vest', 'Model X-1100', 'Armor Express', 'M', 'Used', 57),
    ('Helmet', 'Model K-1200', 'Armor Express', 'L', 'New', 30),
    ('Uniform', 'Parade Uniform', 'Safariland ', 'S', 'New', 13),
    ('Bulletproof vest', 'Model X-1200', 'Armor Express', 'XL', 'Used', 48),
    ('Helmet', 'Model K-1300', 'Armor Express', 'S', 'New', 20),
    ('Uniform', 'Assault Uniform', 'Safariland ', 'M', 'New', 5),
    ('Bulletproof vest', 'Model X-1300', 'Armor Express', 'L', 'New', 36),
    ('Helmet', 'Model K-1400', 'Armor Express', 'M', 'Used', 53),
    ('Uniform', 'Spetsnaz Uniform', 'Safariland ', 'XL', 'New', 9),
    ('Bulletproof vest', 'Model X-1400', 'Armor Express', 'M', 'Used', 24),
    ('Helmet', 'Model K-1500', 'Armor Express', 'L', 'New', 58),
    ('Uniform', 'Navy Uniform', 'Safariland ', 'S', 'New', 15),
    ('Bulletproof vest', 'Model X-1500', 'Armor Express', 'XL', 'Used', 40),
    ('Helmet', 'Model K-1600', 'Armor Express', 'S', 'New', 26),
    ('Uniform', 'Ranger Uniform', 'Safariland ', 'M', 'New', 1),
    ('Bulletproof vest', 'Model X-1600', 'Armor Express', 'L', 'New', 50),
    ('Helmet', 'Model K-1700', 'Armor Express', 'M', 'Used', 35),
    ('Uniform', 'Forest Uniform', 'Safariland ', 'XL', 'New', 4),
    ('Bulletproof vest', 'Model X-1700', 'Armor Express', 'M', 'Used', 54),
    ('Helmet', 'Model K-1800', 'Armor Express', 'L', 'New', 19),
    ('Uniform', 'Steppe Uniform', 'Safariland ', 'S', 'New', 42),
    ('Bulletproof vest', 'Model X-1800', 'Armor Express', 'XL', 'Used', 28),
    ('Helmet', 'Model K-1900', 'Armor Express', 'S', 'New', 16),
    ('Uniform', 'Marine Uniform', 'Safariland ', 'M', 'New', 37),
    ('Bulletproof vest', 'Model X-1900', 'Armor Express', 'L', 'New', 51),
    ('Helmet', 'Model K-2000', 'Armor Express', 'M', 'Used', 23),
    ('Uniform', 'Scout Uniform', 'Safariland ', 'XL', 'New', 32),
    ('Bulletproof vest', 'Model X-2000', 'Armor Express', 'M', 'Used', 46),
    ('Helmet', 'Model K-2100', 'Armor Express', 'L', 'New', 31),
    ('Uniform', 'Assault Uniform 2.0', 'Safariland ', 'S', 'New', 43);

INSERT INTO med_supplies (ms_type, ms_title, ms_manufacture, ms_quantity, ms_expr_date, ms_st_id)
VALUES
    ('Dressings', 'Sterile bandage', 'MedTech', 150, '2025-03-15', 12),
    ('Drugs', 'Analgin', 'PharmaGroup', 80, '2024-11-20', 45),
    ('Antiseptics', 'Chlorhexidine', 'BioMed', 200, '2026-05-10', 7),
    ('Dressings', 'Gauze', 'MedTech', 120, '2025-07-25', 33),
    ('Drugs', 'Paracetamol', 'PharmaGroup', 90, '2024-09-30', 56),
    ('Antiseptics', 'Iodine', 'BioMed', 50, '2025-12-01', 21),
    ('Dressings', 'Adhesive plaster', 'MedTech', 180, '2026-02-14', 8),
    ('Drugs', 'Aspirin', 'PharmaGroup', 70, '2024-08-05', 59),
    ('Antiseptics', 'Hydrogen peroxide', 'BioMed', 100, '2025-10-12', 14),
    ('Dressings', 'Elastic bandage', 'MedTech', 60, '2024-06-18', 27),
    ('Drugs', 'Ibuprofen', 'PharmaGroup', 110, '2025-01-22', 38),
    ('Antiseptics', 'Medical alcohol', 'BioMed', 40, '2026-03-30', 3),
    ('Dressings', 'Sterile wipes', 'MedTech', 170, '2025-09-15', 49),
    ('Drugs', 'Citramon', 'PharmaGroup', 85, '2024-12-10', 17),
    ('Antiseptics', 'Betadine', 'BioMed', 75, '2026-07-05', 60),
    ('Dressings', 'Tourniquet', 'MedTech', 30, '2025-04-20', 22),
    ('Drugs', 'No-Spa', 'PharmaGroup', 95, '2024-10-25', 41),
    ('Antiseptics', 'Miramistin', 'BioMed', 130, '2026-01-15', 10),
    ('Dressings', 'Cotton wool', 'MedTech', 200, '2025-08-30', 55),
    ('Drugs', 'Ketorol', 'PharmaGroup', 65, '2024-07-12', 29),
    ('Antiseptics', 'Furacilin', 'BioMed', 45, '2026-04-18', 6),
    ('Dressings', 'Non-sterile bandage', 'MedTech', 140, '2025-02-28', 34),
    ('Drugs', 'Nimesil', 'PharmaGroup', 55, '2024-05-22', 47),
    ('Antiseptics', 'Brilliant green', 'BioMed', 160, '2026-06-10', 18),
    ('Dressings', 'Bandage', 'MedTech', 25, '2025-11-05', 52),
    ('Drugs', 'Amoxicillin', 'PharmaGroup', 105, '2024-03-15', 25),
    ('Antiseptics', 'Septomir', 'BioMed', 90, '2026-09-20', 39),
    ('Dressings', 'Gauze bandage', 'MedTech', 75, '2025-12-25', 11),
    ('Drugs', 'Levomycetin', 'PharmaGroup', 115, '2024-04-30', 44),
    ('Antiseptics', 'Chlorophyllipt', 'BioMed', 35, '2026-08-15', 2),
    ('Dressings', 'Antiseptic wipes', 'MedTech', 180, '2025-06-10', 57),
    ('Drugs', 'Diclofenac', 'PharmaGroup', 50, '2024-02-05', 30),
    ('Antiseptics', 'Boric acid', 'BioMed', 200, '2026-10-12', 13),
    ('Dressings', 'Tubular bandage', 'MedTech', 40, '2025-03-20', 48),
    ('Drugs', 'Azithromycin', 'PharmaGroup', 85, '2024-01-18', 20),
    ('Antiseptics', 'Sanguiritrin', 'BioMed', 120, '2026-11-25', 5),
    ('Dressings', 'Bactericidal plaster', 'MedTech', 95, '2025-07-15', 36),
    ('Drugs', 'Metronidazole', 'PharmaGroup', 70, '2024-09-10', 53),
    ('Antiseptics', 'Ethanol', 'BioMed', 150, '2026-12-30', 9),
    ('Dressings', 'Compression bandage', 'MedTech', 65, '2025-05-22', 24),
    ('Drugs', 'Ceftriaxone', 'PharmaGroup', 110, '2024-08-15', 58),
    ('Antiseptics', 'Fukortsin', 'BioMed', 80, '2026-02-10', 15),
    ('Dressings', 'Hemostatic wipes', 'MedTech', 130, '2025-10-05', 40),
    ('Drugs', 'Ampicillin', 'PharmaGroup', 45, '2024-06-20', 26),
    ('Antiseptics', 'Rivanol', 'BioMed', 170, '2026-03-15', 1),
    ('Dressings', 'Knitted bandage', 'MedTech', 55, '2025-01-30', 50),
    ('Drugs', 'Cefazolin', 'PharmaGroup', 100, '2024-12-12', 35),
    ('Antiseptics', 'Decasan', 'BioMed', 90, '2026-07-22', 4),
    ('Dressings', 'Roll plaster', 'MedTech', 75, '2025-09-10', 54),
    ('Drugs', 'Lincomycin', 'PharmaGroup', 60, '2024-03-25', 19),
    ('Antiseptics', 'Iodinol', 'BioMed', 140, '2026-05-18', 42),
    ('Dressings', 'Mesh bandage', 'MedTech', 85, '2025-04-15', 28),
    ('Drugs', 'Doxycycline', 'PharmaGroup', 95, '2024-11-05', 16),
    ('Antiseptics', 'Malavit', 'BioMed', 110, '2026-08-30', 37),
    ('Dressings', 'Alcohol wipes', 'MedTech', 50, '2025-12-20', 51),
    ('Drugs', 'Tetracycline', 'PharmaGroup', 120, '2024-10-15', 23),
    ('Antiseptics', 'Protargol', 'BioMed', 65, '2026-09-10', 32),
    ('Dressings', 'Elastic mesh bandage', 'MedTech', 180, '2025-03-05', 46),
    ('Drugs', 'Erythromycin', 'PharmaGroup', 40, '2024-07-22', 31),
    ('Antiseptics', 'Collargol', 'BioMed', 200, '2026-10-25', 43);

INSERT INTO ammunition (am_type, am_caliber, am_quantity, am_manuf_date, am_expr_date, am_st_id)
VALUES
    ('Ammo', '7.62x39', 100, 2020, '2030-01-01', 1),
    ('Ammo', '5.56x45', 200, 2019, '2029-05-15', 2),
    ('Grenades', '40mm', 50, 2021, '2031-03-20', 3),
    ('Ammo', '9x19', 150, 2018, '2028-12-10', 4),
    ('Shells', '120mm', 30, 2022, '2032-07-25', 5),
    ('Ammo', '7.62x54R', 120, 2020, '2030-11-30', 6),
    ('Grenades', '40mm', 60, 2021, '2031-08-12', 7),
    ('Ammo', '5.45x39', 180, 2019, '2029-09-18', 8),
    ('Shells', '105mm', 40, 2022, '2032-04-05', 9),
    ('Ammo', '12.7x108', 80, 2020, '2030-06-22', 10),
    ('Ammo', '7.62x39', 90, 2021, '2031-02-14', 1),
    ('Ammo', '5.56x45', 210, 2019, '2029-07-19', 2),
    ('Grenades', '40mm', 55, 2020, '2030-10-11', 3),
    ('Ammo', '9x19', 160, 2018, '2028-11-09', 4),
    ('Shells', '120mm', 35, 2022, '2032-08-30', 5),
    ('Ammo', '7.62x54R', 130, 2021, '2031-12-25', 6),
    ('Grenades', '40mm', 65, 2020, '2030-03-17', 7),
    ('Ammo', '5.45x39', 190, 2019, '2029-06-28', 8),
    ('Shells', '105mm', 45, 2022, '2032-05-14', 9),
    ('Ammo', '12.7x108', 85, 2021, '2031-09-10', 10),
    ('Ammo', '7.62x39', 95, 2020, '2030-04-12', 1),
    ('Ammo', '5.56x45', 220, 2019, '2029-08-21', 2),
    ('Grenades', '40mm', 70, 2021, '2031-01-05', 3),
    ('Ammo', '9x19', 170, 2018, '2028-10-30', 4),
    ('Shells', '120mm', 25, 2022, '2032-09-15', 5),
    ('Ammo', '7.62x54R', 140, 2020, '2030-07-18', 6),
    ('Grenades', '40mm', 75, 2021, '2031-11-22', 7),
    ('Ammo', '5.45x39', 200, 2019, '2029-04-09', 8),
    ('Shells', '105mm', 50, 2022, '2032-06-20', 9),
    ('Ammo', '12.7x108', 90, 2020, '2030-12-31', 10),
    ('Ammo', '7.62x39', 110, 2021, '2031-03-28', 1),
    ('Ammo', '5.56x45', 230, 2019, '2029-10-11', 2),
    ('Grenades', '40mm', 80, 2020, '2030-02-14', 3),
    ('Ammo', '9x19', 180, 2018, '2028-09-25', 4),
    ('Shells', '120mm', 20, 2022, '2032-10-10', 5),
    ('Ammo', '7.62x54R', 150, 2021, '2031-05-17', 6),
    ('Grenades', '40mm', 85, 2020, '2030-08-22', 7),
    ('Ammo', '5.45x39', 210, 2019, '2029-12-30', 8),
    ('Shells', '105mm', 55, 2022, '2032-01-15', 9),
    ('Ammo', '12.7x108', 95, 2021, '2031-07-19', 10),
    ('Ammo', '7.62x39', 105, 2020, '2030-05-20', 1),
    ('Ammo', '5.56x45', 240, 2019, '2029-11-12', 2),
    ('Grenades', '40mm', 90, 2021, '2031-04-18', 3),
    ('Ammo', '9x19', 190, 2018, '2028-08-14', 4),
    ('Shells', '120mm', 15, 2022, '2032-12-05', 5),
    ('Ammo', '7.62x54R', 160, 2020, '2030-09-28', 6),
    ('Grenades', '40mm', 95, 2021, '2031-06-21', 7),
    ('Ammo', '5.45x39', 220, 2019, '2029-03-22', 8),
    ('Shells', '105mm', 60, 2022, '2032-02-10', 9),
    ('Ammo', '12.7x108', 100, 2020, '2030-01-31', 10);

INSERT INTO weapons (w_type, w_model, w_manufacture, w_caliber, w_status, w_st_id)
VALUES
    ('Automatic rifle', 'AK-74', 'Izhmash', '5.45x39', 'Active', 1),
    ('Sidearm', 'Makarov PM', 'Izhmekh', '9x18', 'Active', 2),
    ('Sniper rifle', 'Dragunov SVD', 'Izhmash', '7.62x54R', 'Active', 3),
    ('Machine gun', 'PKM', 'Degtyaryov', '7.62x54R', 'Active', 4),
    ('Grenade launcher', 'RPG-7', 'Bazalt', '40mm', 'Active', 5),
    ('Automatic rifle', 'AK-12', 'Kalashnikov', '5.45x39', 'Active', 6),
    ('Sidearm', 'GSh-18', 'KBP', '9x19', 'Active', 7),
    ('Sniper rifle', 'OSV-96', 'KBP', '12.7x108', 'Active', 8),
    ('Machine gun', 'Pecheneg', 'TSNIITochMash', '7.62x54R', 'Active', 9),
    ('Grenade launcher', 'RPG-29', 'Bazalt', '105mm', 'Active', 10),
    ('Automatic rifle', 'AK-74M', 'Izhmash', '5.45x39', 'Inactive', 1),
    ('Sidearm', 'PMM', 'Izhmekh', '9x18', 'Inactive', 2),
    ('Sniper rifle', 'SVDS', 'Izhmash', '7.62x54R', 'Inactive', 3),
    ('Machine gun', 'PKP Pecheneg', 'Degtyaryov', '7.62x54R', 'Inactive', 4),
    ('Grenade launcher', 'RPG-28', 'Bazalt', '125mm', 'Inactive', 5),
    ('Automatic rifle', 'AK-15', 'Kalashnikov', '7.62x39', 'Active', 6),
    ('Sidearm', 'MP-443 Grach', 'Izhmekh', '9x19', 'Active', 7),
    ('Sniper rifle', 'VSS Vintorez', 'TSNIITochMash', '9x39', 'Active', 8),
    ('Machine gun', 'RPK-16', 'Kalashnikov', '5.45x39', 'Active', 9),
    ('Grenade launcher', 'RPG-30', 'Bazalt', '105mm', 'Active', 10),
    ('Automatic rifle', 'AK-103', 'Izhmash', '7.62x39', 'Inactive', 1),
    ('Sidearm', 'SR-1 Gyurza', 'TSNIITochMash', '9x21', 'Inactive', 2),
    ('Sniper rifle', 'T-5000', 'Orsis', '7.62x51', 'Inactive', 3),
    ('Machine gun', 'AEK-999', 'Kovrov Plant', '7.62x54R', 'Inactive', 4),
    ('Grenade launcher', 'RPG-32', 'Bazalt', '105mm', 'Inactive', 5),
    ('Automatic rifle', 'AK-74N', 'Izhmash', '5.45x39', 'Active', 6),
    ('Sidearm', 'MP-443 Grach', 'Izhmekh', '9x19', 'Active', 7),
    ('Sniper rifle', 'MC-116M', 'TSNIITochMash', '7.62x54R', 'Active', 8),
    ('Machine gun', 'PKMN', 'Degtyaryov', '7.62x54R', 'Active', 9),
    ('Grenade launcher', 'RPG-26', 'Bazalt', '72.5mm', 'Active', 10),
    ('Automatic rifle', 'AK-105', 'Izhmash', '5.45x39', 'Inactive', 1),
    ('Sidearm', 'MP-353', 'Izhmekh', '9x17', 'Inactive', 2),
    ('Sniper rifle', 'VSK-94', 'TSNIITochMash', '9x39', 'Inactive', 3),
    ('Machine gun', 'RPK-74', 'Kalashnikov', '5.45x39', 'Inactive', 4),
    ('Grenade launcher', 'RPG-22', 'Bazalt', '72.5mm', 'Inactive', 5),
    ('Automatic rifle', 'AK-104', 'Izhmash', '7.62x39', 'Active', 6),
    ('Sidearm', 'MP-655K', 'Izhmekh', '9x17', 'Active', 7),
    ('Sniper rifle', 'SV-98', 'Izhmash', '7.62x54R', 'Active', 8),
    ('Machine gun', 'PKMS', 'Degtyaryov', '7.62x54R', 'Active', 9),
    ('Grenade launcher', 'RPG-18', 'Bazalt', '64mm', 'Active', 10),
    ('Automatic rifle', 'AK-74N2', 'Izhmash', '5.45x39', 'Inactive', 1),
    ('Sidearm', 'MP-446 Viking', 'Izhmekh', '9x19', 'Inactive', 2),
    ('Sniper rifle', 'SV-99', 'Izhmash', '7.62x54R', 'Inactive', 3),
    ('Machine gun', 'PKMN2', 'Degtyaryov', '7.62x54R', 'Inactive', 4),
    ('Grenade launcher', 'RPG-27', 'Bazalt', '105mm', 'Inactive', 5),
    ('Automatic rifle', 'AK-74M2', 'Izhmash', '5.45x39', 'Active', 6),
    ('Sidearm', 'MP-654K', 'Izhmekh', '9x17', 'Active', 7),
    ('Sniper rifle', 'SV-98M', 'Izhmash', '7.62x54R', 'Active', 8),
    ('Machine gun', 'PKMSN', 'Degtyaryov', '7.62x54R', 'Active', 9),
    ('Grenade launcher', 'RPG-16', 'Bazalt', '58mm', 'Active', 10),
    ('Automatic rifle', 'AK-74N3', 'Izhmash', '5.45x39', 'Inactive', 1),
    ('Sidearm', 'MP-448 Skyph', 'Izhmekh', '9x17', 'Inactive', 2),
    ('Sniper rifle', 'SV-99M', 'Izhmash', '7.62x54R', 'Inactive', 3),
    ('Machine gun', 'PKMSN2', 'Degtyaryov', '7.62x54R', 'Inactive', 4),
    ('Grenade launcher', 'RPG-7V2', 'Bazalt', '40mm', 'Inactive', 5),
    ('Automatic rifle', 'AK-74M3', 'Izhmash', '5.45x39', 'Active', 6),
    ('Sidearm', 'MP-449', 'Izhmekh', '9x17', 'Active', 7),
    ('Sniper rifle', 'SV-99M2', 'Izhmash', '7.62x54R', 'Active', 8),
    ('Machine gun', 'PKMSN3', 'Degtyaryov', '7.62x54R', 'Active', 9),
    ('Grenade launcher', 'RPG-7V3', 'Bazalt', '40mm', 'Active', 10);

INSERT INTO m2m_weapons_ammunition (wa_w_id, wa_am_id)
SELECT w.w_id, am.am_id
FROM weapons w
JOIN ammunition am ON w.w_caliber = am.am_caliber
LIMIT 60;

INSERT INTO eng_equipment (ee_type, ee_model, ee_manufacture, ee_manuf_year, ee_status, ee_st_id)
VALUES
    ('Bulldozer', 'D6T', 'Caterpillar', 2018, 'Active', 1),
    ('Excavator', '320D', 'Caterpillar', 2019, 'Active', 2),
    ('Crane', 'LTM 1100', 'Liebherr', 2020, 'Active', 3),
    ('Concrete mixer', 'MX30', 'Cifa', 2021, 'Active', 4),
    ('Truck', 'Actros', 'Mercedes-Benz', 2017, 'Inactive', 5),
    ('Bulldozer', 'D9T', 'Caterpillar', 2018, 'Active', 6),
    ('Excavator', '330D', 'Caterpillar', 2019, 'Active', 7),
    ('Crane', 'LTM 1200', 'Liebherr', 2020, 'Active', 8),
    ('Concrete mixer', 'MX40', 'Cifa', 2021, 'Active', 9),
    ('Truck', 'Arocs', 'Mercedes-Benz', 2017, 'Inactive', 10),
    ('Bulldozer', 'D7E', 'Caterpillar', 2018, 'Active', 1),
    ('Excavator', '336D', 'Caterpillar', 2019, 'Active', 2),
    ('Crane', 'LTM 1300', 'Liebherr', 2020, 'Active', 3),
    ('Concrete mixer', 'MX50', 'Cifa', 2021, 'Active', 4),
    ('Truck', 'Actros L', 'Mercedes-Benz', 2017, 'Inactive', 5),
    ('Bulldozer', 'D8T', 'Caterpillar', 2018, 'Active', 6),
    ('Excavator', '340D', 'Caterpillar', 2019, 'Active', 7),
    ('Crane', 'LTM 1400', 'Liebherr', 2020, 'Active', 8),
    ('Concrete mixer', 'MX60', 'Cifa', 2021, 'Active', 9),
    ('Truck', 'Arocs L', 'Mercedes-Benz', 2017, 'Inactive', 10),
    ('Bulldozer', 'D10T', 'Caterpillar', 2018, 'Active', 1),
    ('Excavator', '350D', 'Caterpillar', 2019, 'Active', 2),
    ('Crane', 'LTM 1500', 'Liebherr', 2020, 'Active', 3),
    ('Concrete mixer', 'MX70', 'Cifa', 2021, 'Active', 4),
    ('Truck', 'Actros LS', 'Mercedes-Benz', 2017, 'Inactive', 5),
    ('Bulldozer', 'D11T', 'Caterpillar', 2018, 'Active', 6),
    ('Excavator', '365D', 'Caterpillar', 2019, 'Active', 7),
    ('Crane', 'LTM 1600', 'Liebherr', 2020, 'Active', 8),
    ('Concrete mixer', 'MX80', 'Cifa', 2021, 'Active', 9),
    ('Truck', 'Arocs LS', 'Mercedes-Benz', 2017, 'Inactive', 10),
    ('Bulldozer', 'D5K', 'Caterpillar', 2018, 'Active', 1),
    ('Excavator', '390D', 'Caterpillar', 2019, 'Active', 2),
    ('Crane', 'LTM 1700', 'Liebherr', 2020, 'Active', 3),
    ('Concrete mixer', 'MX90', 'Cifa', 2021, 'Active', 4),
    ('Truck', 'Actros LX', 'Mercedes-Benz', 2017, 'Inactive', 5),
    ('Bulldozer', 'D6K', 'Caterpillar', 2018, 'Active', 6),
    ('Excavator', '395D', 'Caterpillar', 2019, 'Active', 7),
    ('Crane', 'LTM 1800', 'Liebherr', 2020, 'Active', 8),
    ('Concrete mixer', 'MX100', 'Cifa', 2021, 'Active', 9),
    ('Truck', 'Arocs LX', 'Mercedes-Benz', 2017, 'Inactive', 10),
    ('Bulldozer', 'D7K', 'Caterpillar', 2018, 'Active', 1),
    ('Excavator', '365D L', 'Caterpillar', 2019, 'Active', 2),
    ('Crane', 'LTM 1900', 'Liebherr', 2020, 'Active', 3),
    ('Concrete mixer', 'MX110', 'Cifa', 2021, 'Active', 4),
    ('Truck', 'Actros LZ', 'Mercedes-Benz', 2017, 'Inactive', 5),
    ('Bulldozer', 'D8K', 'Caterpillar', 2018, 'Active', 6),
    ('Excavator', '390D L', 'Caterpillar', 2019, 'Active', 7),
    ('Crane', 'LTM 2000', 'Liebherr', 2020, 'Active', 8),
    ('Concrete mixer', 'MX120', 'Cifa', 2021, 'Active', 9),
    ('Truck', 'Arocs LZ', 'Mercedes-Benz', 2017, 'Inactive', 10),
    ('Bulldozer', 'D9K', 'Caterpillar', 2018, 'Active', 1),
    ('Excavator', '395D L', 'Caterpillar', 2019, 'Active', 2),
    ('Crane', 'LTM 2100', 'Liebherr', 2020, 'Active', 3),
    ('Concrete mixer', 'MX130', 'Cifa', 2021, 'Active', 4),
    ('Truck', 'Actros LZ', 'Mercedes-Benz', 2017, 'Inactive', 5),
    ('Bulldozer', 'D10K', 'Caterpillar', 2018, 'Active', 6),
    ('Excavator', '365D XL', 'Caterpillar', 2019, 'Active', 7),
    ('Crane', 'LTM 2200', 'Liebherr', 2020, 'Active', 8),
    ('Concrete mixer', 'MX140', 'Cifa', 2021, 'Active', 9),
    ('Truck', 'Arocs LZ', 'Mercedes-Benz', 2017, 'Inactive', 10);

INSERT INTO vehicles (v_type, v_model, v_manufacture, v_manuf_year, v_status, v_st_id)
VALUES
    ('Truck', 'KamAZ-5350', 'KamAZ', 2018, 'Active', 1),
    ('APC', 'BTR-80', 'GAZ', 2019, 'Active', 2),
    ('Tank', 'T-90', 'Uralvagonzavod', 2020, 'Active', 3),
    ('Car', 'UAZ-469', 'UAZ', 2021, 'Active', 4),
    ('Bus', 'PAZ-3205', 'PAZ', 2017, 'Inactive', 5),
    ('Truck', 'Ural-4320', 'UralAZ', 2018, 'Active', 6),
    ('APC', 'BTR-82', 'GAZ', 2019, 'Active', 7),
    ('Tank', 'T-72', 'Uralvagonzavod', 2020, 'Active', 8),
    ('Car', 'UAZ Patriot', 'UAZ', 2021, 'Active', 9),
    ('Bus', 'LiAZ-5256', 'LiAZ', 2017, 'Inactive', 10),
    ('Truck', 'KamAZ-6350', 'KamAZ', 2018, 'Active', 1),
    ('APC', 'BTR-70', 'GAZ', 2019, 'Active', 2),
    ('Tank', 'T-80', 'Uralvagonzavod', 2020, 'Active', 3),
    ('Car', 'UAZ Hunter', 'UAZ', 2021, 'Active', 4),
    ('Bus', 'PAZ-4234', 'PAZ', 2017, 'Inactive', 5),
    ('Truck', 'Ural-5323', 'UralAZ', 2018, 'Active', 6),
    ('APC', 'BTR-60', 'GAZ', 2019, 'Active', 7),
    ('Tank', 'T-14 Armata', 'Uralvagonzavod', 2020, 'Active', 8),
    ('Car', 'UAZ-452', 'UAZ', 2021, 'Active', 9),
    ('Bus', 'LiAZ-5292', 'LiAZ', 2017, 'Inactive', 10),
    ('Truck', 'KamAZ-4310', 'KamAZ', 2018, 'Active', 1),
    ('APC', 'BTR-90', 'GAZ', 2019, 'Active', 2),
    ('Tank', 'T-62', 'Uralvagonzavod', 2020, 'Active', 3),
    ('Car', 'UAZ-2206', 'UAZ', 2021, 'Active', 4),
    ('Bus', 'PAZ-3204', 'PAZ', 2017, 'Inactive', 5),
    ('Truck', 'Ural-5557', 'UralAZ', 2018, 'Active', 6),
    ('APC', 'BTR-40', 'GAZ', 2019, 'Active', 7),
    ('Tank', 'T-55', 'Uralvagonzavod', 2020, 'Active', 8),
    ('Car', 'UAZ-3962', 'UAZ', 2021, 'Active', 9),
    ('Bus', 'LiAZ-6213', 'LiAZ', 2017, 'Inactive', 10),
    ('Truck', 'KamAZ-4326', 'KamAZ', 2018, 'Active', 1),
    ('APC', 'BTR-152', 'GAZ', 2019, 'Active', 2),
    ('Tank', 'T-34', 'Uralvagonzavod', 2020, 'Active', 3),
    ('Car', 'UAZ-3303', 'UAZ', 2021, 'Active', 4),
    ('Bus', 'PAZ-3203', 'PAZ', 2017, 'Inactive', 5),
    ('Truck', 'Ural-43206', 'UralAZ', 2018, 'Active', 6),
    ('APC', 'BTR-50', 'GAZ', 2019, 'Active', 7),
    ('Tank', 'T-26', 'Uralvagonzavod', 2020, 'Active', 8),
    ('Car', 'UAZ-3151', 'UAZ', 2021, 'Active', 9),
    ('Bus', 'LiAZ-5293', 'LiAZ', 2017, 'Inactive', 10),
    ('Truck', 'KamAZ-4350', 'KamAZ', 2018, 'Active', 1),
    ('APC', 'BTR-3', 'GAZ', 2019, 'Active', 2),
    ('Tank', 'T-64', 'Uralvagonzavod', 2020, 'Active', 3),
    ('Car', 'UAZ-3159', 'UAZ', 2021, 'Active', 4),
    ('Bus', 'PAZ-3206', 'PAZ', 2017, 'Inactive', 5),
    ('Truck', 'Ural-4322', 'UralAZ', 2018, 'Active', 6),
    ('APC', 'BTR-4', 'GAZ', 2019, 'Active', 7),
    ('Tank', 'T-44', 'Uralvagonzavod', 2020, 'Active', 8),
    ('Car', 'UAZ-3160', 'UAZ', 2021, 'Active', 9),
    ('Bus', 'LiAZ-5294', 'LiAZ', 2017, 'Inactive', 10),
    ('Truck', 'KamAZ-43501', 'KamAZ', 2018, 'Active', 1),
    ('APC', 'BTR-7', 'GAZ', 2019, 'Active', 2),
    ('Tank', 'T-28', 'Uralvagonzavod', 2020, 'Active', 3),
    ('Car', 'UAZ-3162', 'UAZ', 2021, 'Active', 4),
    ('Bus', 'PAZ-3207', 'PAZ', 2017, 'Inactive', 5),
    ('Truck', 'Ural-43207', 'UralAZ', 2018, 'Active', 6),
    ('APC', 'BTR-60PB', 'GAZ', 2019, 'Active', 7),
    ('Tank', 'T-35', 'Uralvagonzavod', 2020, 'Active', 8),
    ('Car', 'UAZ-3163', 'UAZ', 2021, 'Active', 9),
    ('Bus', 'LiAZ-5295', 'LiAZ', 2017, 'Inactive', 10);

INSERT INTO suppliers (sp_name, sp_contacts, sp_rating)
VALUES
    ('LLC "MilTechSupply"', '+7-999-123-45-67', 4.75),
    ('JSC "ArsenalService"', '+7-999-234-56-78', 4.50),
    ('CJSC "TechImpex"', '+7-999-345-67-89', 4.25),
    ('SP "Supply & Co"', '+7-999-456-78-90', 4.00),
    ('LLC "GlobalTech"', '+7-999-567-89-01', 4.80),
    ('JSC "MilMach"', '+7-999-678-90-12', 4.60),
    ('LLC "TechSupply"', '+7-999-789-01-23', 4.40),
    ('SP "Army Solutions"', '+7-999-890-12-34', 4.20),
    ('LLC "SpecialTech"', '+7-999-901-23-45', 4.90),
    ('JSC "MilKit"', '+7-999-012-34-56', 4.70),
    ('LLC "TechPro"', '+7-999-123-45-67', 4.55),
    ('SP "SupplyTech"', '+7-999-234-56-78', 4.35),
    ('LLC "ArsenalGroup"', '+7-999-345-67-89', 4.15),
    ('JSC "TechService"', '+7-999-456-78-90', 4.85),
    ('LLC "MilSupply"', '+7-999-567-89-01', 4.65),
    ('SP "TechWorld"', '+7-999-678-90-12', 4.45),
    ('LLC "Army Technologies"', '+7-999-789-01-23', 4.25),
    ('JSC "SpecialSupply"', '+7-999-890-12-34', 4.95),
    ('LLC "TechGuarantee"', '+7-999-901-23-45', 4.75),
    ('SP "MilResource"', '+7-999-012-34-56', 4.55),
    ('LLC "ArsenalTech"', '+7-999-123-45-67', 4.35),
    ('JSC "TechSupplyCo"', '+7-999-234-56-78', 4.15),
    ('LLC "MilKitService"', '+7-999-345-67-89', 4.85),
    ('SP "TechProSupply"', '+7-999-456-78-90', 4.65),
    ('LLC "Army Resources"', '+7-999-567-89-01', 4.45),
    ('JSC "SpecialTechSupply"', '+7-999-678-90-12', 4.25),
    ('LLC "TechGuaranteeService"', '+7-999-789-01-23', 4.95),
    ('SP "MilTechResource"', '+7-999-890-12-34', 4.75),
    ('LLC "ArsenalSupply"', '+7-999-901-23-45', 4.55),
    ('JSC "TechServiceGroup"', '+7-999-012-34-56', 4.35),
    ('LLC "MilTechService"', '+7-999-123-45-67', 4.15),
    ('SP "TechSupplyResource"', '+7-999-234-56-78', 4.85),
    ('LLC "ArmyTechSupply"', '+7-999-345-67-89', 4.65),
    ('JSC "SpecialTechService"', '+7-999-456-78-90', 4.45),
    ('LLC "TechGuaranteeResource"', '+7-999-567-89-01', 4.25),
    ('SP "MilSupplyResource"', '+7-999-678-90-12', 4.95),
    ('LLC "ArsenalTechService"', '+7-999-789-01-23', 4.75),
    ('JSC "TechSupplyGroup"', '+7-999-890-12-34', 4.55),
    ('LLC "MilKitResource"', '+7-999-901-23-45', 4.35),
    ('SP "TechProService"', '+7-999-012-34-56', 4.15),
    ('LLC "ArmyResourcesSupply"', '+7-999-123-45-67', 4.85),
    ('JSC "SpecialTechResource"', '+7-999-234-56-78', 4.65),
    ('LLC "TechGuaranteeSupply"', '+7-999-345-67-89', 4.45),
    ('SP "MilTechServiceResource"', '+7-999-456-78-90', 4.25),
    ('LLC "ArsenalServiceResource"', '+7-999-567-89-01', 4.95),
    ('JSC "TechSupplyService"', '+7-999-678-90-12', 4.75),
    ('LLC "MilSupplyService"', '+7-999-789-01-23', 4.55),
    ('SP "TechProResource"', '+7-999-890-12-34', 4.35),
    ('LLC "ArmyTechResource"', '+7-999-901-23-45', 4.15),
    ('JSC "SpecialTechSupplyService"', '+7-999-012-34-56', 4.85),
    ('LLC "TechGuaranteeServiceResource"', '+7-999-123-45-67', 4.65),
    ('SP "MilTechSupplyResource"', '+7-999-234-56-78', 4.45),
    ('LLC "ArsenalResource"', '+7-999-345-67-89', 4.25),
    ('JSC "TechServiceResource"', '+7-999-456-78-90', 4.95),
    ('LLC "MilKitSupply"', '+7-999-567-89-01', 4.75),
    ('SP "TechSupplyResourceService"', '+7-999-678-90-12', 4.55),
    ('LLC "ArmyResourcesService"', '+7-999-789-01-23', 4.35),
    ('JSC "SpecialTechResourceService"', '+7-999-890-12-34', 4.15),
    ('LLC "TechGuaranteeResourceService"', '+7-999-901-23-45', 4.85),
    ('SP "MilSupplyResourceService"', '+7-999-012-34-56', 4.65);

INSERT INTO personnel (p_fullname, p_rank, p_unit, p_contacts, p_acc_level)
VALUES
    ('Ivanov Ivan Ivanovich', 'Private', '1st Motor Rifle Company', '+7-999-111-11-11', 'employee'),
    ('Petrov Petr Petrovich', 'Sergeant', '2nd Tank Company', '+7-999-222-22-22', 'employee'),
    ('Sidorov Sidor Sidorovich', 'Lieutenant', '3rd Artillery Battery', '+7-999-333-33-33', 'manager'),
    ('Kuznetsov Alexey Vladimirovich', 'Captain', 'Battalion HQ', '+7-999-444-44-44', 'administrator'),
    ('Smirnov Dmitry Sergeevich', 'Major', 'Logistics Department', '+7-999-555-55-55', 'administrator'),
    ('Vasilyev Andrey Nikolaevich', 'Private', '1st Motor Rifle Company', '+7-999-666-66-66', 'employee'),
    ('Mikhailov Mikhail Mikhailovich', 'Sergeant', '2nd Tank Company', '+7-999-777-77-77', 'employee'),
    ('Novikov Alexander Alexandrovich', 'Lieutenant', '3rd Artillery Battery', '+7-999-888-88-88', 'manager'),
    ('Fedorov Fedor Fedorovich', 'Captain', 'Battalion HQ', '+7-999-999-99-99', 'administrator'),
    ('Morozov Igor Viktorovich', 'Major', 'Logistics Department', '+7-999-000-00-00', 'administrator'),
    ('Volkov Vladimir Vladimirovich', 'Private', '1st Motor Rifle Company', '+7-999-111-22-33', 'employee'),
    ('Alexeev Alexey Alexeevich', 'Sergeant', '2nd Tank Company', '+7-999-222-33-44', 'employee'),
    ('Lebedev Leonid Leonidovich', 'Lieutenant', '3rd Artillery Battery', '+7-999-333-44-55', 'manager'),
    ('Semenov Semen Semenovich', 'Captain', 'Battalion HQ', '+7-999-444-55-66', 'administrator'),
    ('Egorov Egor Egorovich', 'Major', 'Logistics Department', '+7-999-555-66-77', 'administrator'),
    ('Pavlov Pavel Pavlovich', 'Private', '1st Motor Rifle Company', '+7-999-666-77-88', 'employee'),
    ('Sergeev Sergey Sergeevich', 'Sergeant', '2nd Tank Company', '+7-999-777-88-99', 'employee'),
    ('Nikolaev Nikolay Nikolaevich', 'Lieutenant', '3rd Artillery Battery', '+7-999-888-99-00', 'manager'),
    ('Kozlov Konstantin Konstantinovich', 'Captain', 'Battalion HQ', '+7-999-999-00-11', 'administrator'),
    ('Ilyin Ilya Ilyich', 'Major', 'Logistics Department', '+7-999-000-11-22', 'administrator'),
    ('Makarov Maxim Maximovich', 'Private', '1st Motor Rifle Company', '+7-999-111-33-44', 'employee'),
    ('Zakharov Zakhar Zakharovich', 'Sergeant', '2nd Tank Company', '+7-999-222-44-55', 'employee'),
    ('Stepanov Stepan Stepanovich', 'Lieutenant', '3rd Artillery Battery', '+7-999-333-55-66', 'manager'),
    ('Dmitriev Dmitry Dmitrievich', 'Captain', 'Battalion HQ', '+7-999-444-66-77', 'administrator'),
    ('Andreev Andrey Andreevich', 'Major', 'Logistics Department', '+7-999-555-77-88', 'administrator'),
    ('Timofeev Timofey Timofeevich', 'Private', '1st Motor Rifle Company', '+7-999-666-88-99', 'employee'),
    ('Romanov Roman Romanovich', 'Sergeant', '2nd Tank Company', '+7-999-777-99-00', 'employee'),
    ('Vladimirov Vladimir Vladimirovich', 'Lieutenant', '3rd Artillery Battery', '+7-999-888-00-11', 'manager'),
    ('Borisov Boris Borisovich', 'Captain', 'Battalion HQ', '+7-999-999-11-22', 'administrator'),
    ('Grigoriev Grigory Grigorievich', 'Major', 'Logistics Department', '+7-999-000-22-33', 'administrator'),
    ('Filippov Filipp Filippovich', 'Private', '1st Motor Rifle Company', '+7-999-111-44-55', 'employee'),
    ('Markov Mark Markovich', 'Sergeant', '2nd Tank Company', '+7-999-222-55-66', 'employee'),
    ('Kirillov Kirill Kirillovich', 'Lieutenant', '3rd Artillery Battery', '+7-999-333-66-77', 'manager'),
    ('Alexandrov Alexander Alexandrovich', 'Captain', 'Battalion HQ', '+7-999-444-77-88', 'administrator'),
    ('Danilov Daniil Danilovich', 'Major', 'Logistics Department', '+7-999-555-88-99', 'administrator'),
    ('Gerasimov Gerasim Gerasimovich', 'Private', '1st Motor Rifle Company', '+7-999-666-99-00', 'employee'),
    ('Savelyev Saveliy Savelyevich', 'Sergeant', '2nd Tank Company', '+7-999-777-00-11', 'employee'),
    ('Yakovlev Yakov Yakovlevich', 'Lieutenant', '3rd Artillery Battery', '+7-999-888-11-22', 'manager'),
    ('Gordeev Gordey Gordeevich', 'Captain', 'Battalion HQ', '+7-999-999-22-33', 'administrator'),
    ('Tikhonov Tikhon Tikhonovich', 'Major', 'Logistics Department', '+7-999-000-33-44', 'administrator'),
    ('Artemyev Artem Artemovich', 'Private', '1st Motor Rifle Company', '+7-999-111-55-66', 'employee'),
    ('Glebov Gleb Glebovich', 'Sergeant', '2nd Tank Company', '+7-999-222-66-77', 'employee'),
    ('Matveev Matvey Matveevich', 'Lieutenant', '3rd Artillery Battery', '+7-999-333-77-88', 'manager'),
    ('Rodionov Rodion Rodionovich', 'Captain', 'Battalion HQ', '+7-999-444-88-99', 'administrator'),
    ('Olegov Oleg Olegovich', 'Major', 'Logistics Department', '+7-999-555-99-00', 'administrator'),
    ('Viktorov Viktor Viktorovich', 'Private', '1st Motor Rifle Company', '+7-999-666-00-11', 'employee'),
    ('Efimov Efim Efimovich', 'Sergeant', '2nd Tank Company', '+7-999-777-11-22', 'employee'),
    ('Denisov Denis Denisovich', 'Lieutenant', '3rd Artillery Battery', '+7-999-888-22-33', 'manager'),
    ('Arsenyev Arseniy Arsenyevich', 'Captain', 'Battalion HQ', '+7-999-999-33-44', 'administrator'),
    ('Ignatyev Ignat Ignatyevich', 'Major', 'Logistics Department', '+7-999-000-44-55', 'administrator'),
    ('Lvov Lev Lvovich', 'Private', '1st Motor Rifle Company', '+7-999-111-66-77', 'employee'),
    ('Maximov Maxim Maximovich', 'Sergeant', '2nd Tank Company', '+7-999-222-77-88', 'employee'),
    ('Svyatoslavov Svyatoslav Svyatoslavovich', 'Lieutenant', '3rd Artillery Battery', '+7-999-333-88-99', 'manager'),
    ('Vsevolodov Vsevolod Vsevolodovich', 'Captain', 'Battalion HQ', '+7-999-444-99-00', 'administrator'),
    ('Yaroslavov Yaroslav Yaroslavovich', 'Major', 'Logistics Department', '+7-999-555-00-11', 'administrator');

INSERT INTO m2m_personnel_storages (ps_p_id, ps_st_id)
VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
    (11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
    (21, 21), (22, 22), (23, 23), (24, 24), (25, 25), (26, 26), (27, 27), (28, 28), (29, 29), (30, 30),
    (31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40),
    (41, 41), (42, 42), (43, 43), (44, 44), (45, 45), (46, 46), (47, 47), (48, 48), (49, 49), (50, 50),
    (51, 51), (52, 52), (53, 53), (54, 54), (55, 55), (1, 56), (2, 57), (3, 58), (4, 59), (5, 60);

INSERT INTO resources (res_name, res_quantity)
VALUES
    ('Cement', 10000),
    ('Sand', 50000),
    ('Crushed stone', 30000),
    ('Rebar', 20000),
    ('Concrete blocks', 15000),
    ('Brick', 25000),
    ('Boards', 40000),
    ('Plywood', 10000),
    ('Drywall', 8000),
    ('Metal sheets', 12000),
    ('Steel pipes', 9000),
    ('Plastic pipes', 7000),
    ('Paint', 5000),
    ('Screws', 30000),
    ('Nails', 40000),
    ('Wire', 20000),
    ('Cable', 15000),
    ('Roofing felt', 10000),
    ('Roof tiles', 8000),
    ('Glass', 6000),
    ('Foam plastic', 7000),
    ('Mineral wool', 5000),
    ('Ceramic tiles', 9000),
    ('Linoleum', 6000),
    ('Varnish', 4000),
    ('Glue', 3000),
    ('Primer', 2000),
    ('Putty', 3000),
    ('Gypsum', 4000),
    ('Lime', 5000),
    ('Asphalt', 10000),
    ('Bitumen', 8000),
    ('Waterproofing', 6000),
    ('Thermal insulation', 7000),
    ('Sandwich panels', 5000),
    ('Metal profile', 9000),
    ('Plastic panels', 6000),
    ('Door units', 4000),
    ('Window units', 5000),
    ('Stair flights', 3000),
    ('Beams', 2000),
    ('Columns', 1500),
    ('Foundation blocks', 2500),
    ('Piles', 3000),
    ('Roofing materials', 4000),
    ('Ventilation grilles', 5000),
    ('Sewer manholes', 2000),
    ('Plumbing pipes', 3000),
    ('Electrical wiring', 4000),
    ('Sockets', 5000),
    ('Switches', 6000),
    ('Light fixtures', 7000),
    ('Cable channels', 8000),
    ('Junction boxes', 9000),
    ('Circuit breakers', 10000),
    ('Transformers', 500),
    ('Generators', 300),
    ('Compressors', 200),
    ('Pumps', 400);

INSERT INTO maintenance (mn_date, mn_type, mn_desc, mn_res_id)
VALUES
    ('2023-01-15', 'Maintenance', 'Electrical wiring replacement', 17), -- Cable
    ('2023-02-10', 'Repair', 'Foundation crack repair', 1), -- Cement
    ('2023-03-05', 'Prevention', 'Mechanism cleaning and lubrication', 20), -- Metal sheets
    ('2023-04-20', 'Inspection', 'Roof condition inspection', 19), -- Roof tiles
    ('2023-05-12', 'Maintenance', 'Light fixture replacement', 52), -- Light fixtures
    ('2023-06-18', 'Repair', 'Pipe leak repair', 12), -- Plastic pipes
    ('2023-07-22', 'Prevention', 'Ventilation system cleaning', 16), -- Wire
    ('2023-08-30', 'Inspection', 'Window unit condition check', 39), -- Window units
    ('2023-09-14', 'Maintenance', 'Door hinge replacement', 38), -- Door units
    ('2023-10-05', 'Repair', 'Wall damage repair', 6), -- Brick
    ('2023-11-11', 'Prevention', 'Facade cleaning and painting', 13), -- Paint
    ('2023-12-25', 'Inspection', 'Stair condition inspection', 41), -- Stair flights
    ('2024-01-07', 'Maintenance', 'Socket and switch replacement', 50), -- Sockets
    ('2024-02-15', 'Repair', 'Heating system troubleshooting', 11), -- Steel pipes
    ('2024-03-20', 'Prevention', 'Sewer system cleaning', 48), -- Plumbing pipes
    ('2024-04-10', 'Inspection', 'Plumbing condition check', 48), -- Plumbing pipes
    ('2024-05-05', 'Maintenance', 'Circuit breaker replacement', 55), -- Circuit breakers
    ('2024-06-12', 'Repair', 'Asphalt crack repair', 31), -- Asphalt
    ('2024-07-18', 'Prevention', 'Gate cleaning and lubrication', 36), -- Metal profile
    ('2024-08-22', 'Inspection', 'Fence condition inspection', 36), -- Metal profile
    ('2024-09-30', 'Maintenance', 'Waterproofing replacement', 33), -- Waterproofing
    ('2024-10-14', 'Repair', 'Roof damage repair', 19), -- Roof tiles
    ('2024-11-05', 'Prevention', 'Pipe cleaning and painting', 11), -- Steel pipes
    ('2024-12-20', 'Inspection', 'Foundation condition check', 1), -- Cement
    ('2025-01-15', 'Maintenance', 'Window glass replacement', 39), -- Window units
    ('2025-02-10', 'Repair', 'Roof leak repair', 19), -- Roof tiles
    ('2025-03-05', 'Prevention', 'Door cleaning and lubrication', 38), -- Door units
    ('2025-04-20', 'Inspection', 'Wall condition inspection', 6), -- Brick
    ('2025-05-12', 'Maintenance', 'Electrical wiring replacement', 17), -- Cable
    ('2025-06-18', 'Repair', 'Floor crack repair', 5), -- Concrete blocks
    ('2025-07-22', 'Prevention', 'Ventilation system cleaning', 16), -- Wire
    ('2025-08-30', 'Inspection', 'Door condition check', 38), -- Door units
    ('2025-09-14', 'Maintenance', 'Door handle replacement', 38), -- Door units
    ('2025-10-05', 'Repair', 'Ceiling damage repair', 9), -- Drywall
    ('2025-11-11', 'Prevention', 'Wall cleaning and painting', 13), -- Paint
    ('2025-12-25', 'Inspection', 'Stair condition inspection', 41), -- Stair flights
    ('2026-01-07', 'Maintenance', 'Light fixture replacement', 52), -- Light fixtures
    ('2026-02-15', 'Repair', 'Heating system troubleshooting', 11), -- Steel pipes
    ('2026-03-20', 'Prevention', 'Sewer system cleaning', 48), -- Plumbing pipes
    ('2026-04-10', 'Inspection', 'Plumbing condition check', 48), -- Plumbing pipes
    ('2026-05-05', 'Maintenance', 'Socket and switch replacement', 50), -- Sockets
    ('2026-06-12', 'Repair', 'Asphalt crack repair', 31), -- Asphalt
    ('2026-07-18', 'Prevention', 'Gate cleaning and lubrication', 36), -- Metal profile
    ('2026-08-22', 'Inspection', 'Fence condition inspection', 36), -- Metal profile
    ('2026-09-30', 'Maintenance', 'Waterproofing replacement', 33), -- Waterproofing
    ('2026-10-14', 'Repair', 'Roof damage repair', 19), -- Roof tiles
    ('2026-11-05', 'Prevention', 'Pipe cleaning and painting', 11), -- Steel pipes
    ('2026-12-20', 'Inspection', 'Foundation condition check', 1), -- Cement
    ('2027-01-15', 'Maintenance', 'Window glass replacement', 39), -- Window units
    ('2027-02-10', 'Repair', 'Roof leak repair', 19), -- Roof tiles
    ('2027-03-05', 'Prevention', 'Door cleaning and lubrication', 38), -- Door units
    ('2027-04-20', 'Inspection', 'Wall condition inspection', 6), -- Brick
    ('2027-05-12', 'Maintenance', 'Electrical wiring replacement', 17), -- Cable
    ('2027-06-18', 'Repair', 'Floor crack repair', 5), -- Concrete blocks
    ('2027-07-22', 'Prevention', 'Ventilation system cleaning', 16), -- Wire
    ('2027-08-30', 'Inspection', 'Door condition check', 38), -- Door units
    ('2027-09-14', 'Maintenance', 'Door handle replacement', 38), -- Door units
    ('2027-10-05', 'Repair', 'Ceiling damage repair', 9), -- Drywall
    ('2027-11-11', 'Prevention', 'Wall cleaning and painting', 13), -- Paint
    ('2027-12-25', 'Inspection', 'Stair condition inspection', 41); -- Stair flights
    
INSERT INTO m2m_personnel_maintenance (pm_p_id, pm_mn_id)
VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
    (11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
    (21, 21), (22, 22), (23, 23), (24, 24), (25, 25), (26, 26), (27, 27), (28, 28), (29, 29), (30, 30),
    (31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40),
    (41, 41), (42, 42), (43, 43), (44, 44), (45, 45), (46, 46), (47, 47), (48, 48), (49, 49), (50, 50),
    (51, 51), (52, 52), (53, 53), (54, 54), (55, 55), (1, 56), (2, 57), (3, 58), (4, 59), (5, 60);

INSERT INTO orders (o_quantity, o_date, o_status, o_res_id)
VALUES
    (100, '2023-01-15', 'Processing', 1), -- Cement
    (200, '2023-02-10', 'Completed', 2), -- Sand
    (150, '2023-03-05', 'Processing', 3), -- Crushed stone
    (300, '2023-04-20', 'Completed', 4), -- Арматура
    (250, '2023-05-12', 'Processing', 5), -- Бетонные блоки
    (400, '2023-06-18', 'Completed', 6), -- Кирпич
    (500, '2023-07-22', 'Processing', 7), -- Доски
    (100, '2023-08-30', 'Completed', 8), -- Фанера
    (200, '2023-09-14', 'Processing', 9), -- Гипсокартон
    (300, '2023-10-05', 'Completed', 10), -- Металлические листы
    (150, '2023-11-11', 'Processing', 11), -- Трубы стальные
    (250, '2023-12-25', 'Completed', 12), -- Трубы пластиковые
    (100, '2024-01-07', 'Processing', 13), -- Краска
    (200, '2024-02-15', 'Completed', 14), -- Шурупы
    (150, '2024-03-20', 'Processing', 15), -- Гвозди
    (300, '2024-04-10', 'Completed', 16), -- Проволока
    (250, '2024-05-05', 'Processing', 17), -- Кабель
    (400, '2024-06-12', 'Completed', 18), -- Рубероид
    (500, '2024-07-18', 'Processing', 19), -- Черепица
    (100, '2024-08-22', 'Completed', 20), -- Стекло
    (200, '2024-09-30', 'Processing', 21), -- Пенопласт
    (150, '2024-10-14', 'Completed', 22), -- Минеральная вата
    (300, '2024-11-05', 'Processing', 23), -- Керамическая плитка
    (250, '2024-12-20', 'Completed', 24), -- Линолеум
    (100, '2025-01-15', 'Processing', 25), -- Лак
    (200, '2025-02-10', 'Completed', 26), -- Клей
    (150, '2025-03-05', 'Processing', 27), -- Грунтовка
    (300, '2025-04-20', 'Completed', 28), -- Шпатлевка
    (250, '2025-05-12', 'Processing', 29), -- Гипс
    (400, '2025-06-18', 'Completed', 30), -- Известь
    (500, '2025-07-22', 'Processing', 31), -- Асфальт
    (100, '2025-08-30', 'Completed', 32), -- Битум
    (200, '2025-09-14', 'Processing', 33), -- Гидроизоляция
    (150, '2025-10-05', 'Completed', 34), -- Теплоизоляция
    (300, '2025-11-11', 'Processing', 35), -- Сэндвич-панели
    (250, '2025-12-25', 'Completed', 36), -- Металлопрофиль
    (100, '2026-01-07', 'Processing', 37), -- Пластиковые панели
    (200, '2026-02-15', 'Completed', 38), -- Дверные блоки
    (150, '2026-03-20', 'Processing', 39), -- Оконные блоки
    (300, '2026-04-10', 'Completed', 40), -- Лестничные марши
    (250, '2026-05-05', 'Processing', 41), -- Балки
    (400, '2026-06-12', 'Completed', 42), -- Колонны
    (500, '2026-07-18', 'Processing', 43), -- Фундаментные блоки
    (100, '2026-08-22', 'Completed', 44), -- Сваи
    (200, '2026-09-30', 'Processing', 45), -- Кровельные материалы
    (150, '2026-10-14', 'Completed', 46), -- Вентиляционные решетки
    (300, '2026-11-05', 'Processing', 47), -- Канализационные люки
    (250, '2026-12-20', 'Completed', 48), -- Сантехнические трубы
    (100, '2027-01-15', 'Processing', 49), -- Электропроводка
    (200, '2027-02-10', 'Completed', 50), -- Розетки
    (150, '2027-03-05', 'Processing', 51), -- Выключатели
    (300, '2027-04-20', 'Completed', 52), -- Светильники
    (250, '2027-05-12', 'Processing', 53), -- Кабельные каналы
    (400, '2027-06-18', 'Completed', 54), -- Распределительные коробки
    (500, '2027-07-22', 'Processing', 55), -- Автоматические выключатели
    (100, '2027-08-30', 'Completed', 56), -- Трансформаторы
    (200, '2027-09-14', 'Processing', 57), -- Генераторы
    (150, '2027-10-05', 'Completed', 58), -- Компрессоры
    (300, '2027-11-11', 'Processing', 59), -- Насосы
    (250, '2027-12-25', 'Completed', 59); -- Насосы

INSERT INTO m2m_orders_suppliers (os_o_id, os_sp_id)
VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
    (11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
    (21, 21), (22, 22), (23, 23), (24, 24), (25, 25), (26, 26), (27, 27), (28, 28), (29, 29), (30, 30),
    (31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40),
    (41, 41), (42, 42), (43, 43), (44, 44), (45, 45), (46, 46), (47, 47), (48, 48), (49, 49), (50, 50),
    (51, 51), (52, 52), (53, 53), (54, 54), (55, 55), (56, 56), (57, 57), (58, 58), (59, 59), (60, 60);

INSERT INTO m2m_resources_suppliers (rs_res_id, rs_sp_id)
VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
    (11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
    (21, 21), (22, 22), (23, 23), (24, 24), (25, 25), (26, 26), (27, 27), (28, 28), (29, 29), (30, 30),
    (31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40),
    (41, 41), (42, 42), (43, 43), (44, 44), (45, 45), (46, 46), (47, 47), (48, 48), (49, 49), (50, 50),
    (51, 51), (52, 52), (53, 53), (54, 54), (55, 55), (56, 56), (57, 57), (58, 58), (59, 59), (1, 60);

INSERT INTO m2m_personnel_orders (po_p_id, po_o_id)
VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
    (11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
    (21, 21), (22, 22), (23, 23), (24, 24), (25, 25), (26, 26), (27, 27), (28, 28), (29, 29), (30, 30),
    (31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40),
    (41, 41), (42, 42), (43, 43), (44, 44), (45, 45), (46, 46), (47, 47), (48, 48), (49, 49), (50, 50),
    (51, 51), (52, 52), (53, 53), (54, 54), (55, 55), (1, 56), (2, 57), (3, 58), (4, 59), (5, 60);

INSERT INTO write_offs (wo_reason, wo_date, wo_res_id)
VALUES
    ('Damaged', '2023-01-15', 1), -- Cement
    ('Out of date', '2023-02-10', 2), -- Sand
    ('Damaged', '2023-03-05', 3), -- Crushed stone
    ('Out of date', '2023-04-20', 4), -- Арматура
    ('Damaged', '2023-05-12', 5), -- Бетонные блоки
    ('Out of date', '2023-06-18', 6), -- Кирпич
    ('Damaged', '2023-07-22', 7), -- Доски
    ('Out of date', '2023-08-30', 8), -- Фанера
    ('Damaged', '2023-09-14', 9), -- Гипсокартон
    ('Out of date', '2023-10-05', 10), -- Металлические листы
    ('Damaged', '2023-11-11', 11), -- Трубы стальные
    ('Out of date', '2023-12-25', 12), -- Трубы пластиковые
    ('Damaged', '2024-01-07', 13), -- Краска
    ('Out of date', '2024-02-15', 14), -- Шурупы
    ('Damaged', '2024-03-20', 15), -- Гвозди
    ('Out of date', '2024-04-10', 16), -- Проволока
    ('Damaged', '2024-05-05', 17), -- Кабель
    ('Out of date', '2024-06-12', 18), -- Рубероид
    ('Damaged', '2024-07-18', 19), -- Черепица
    ('Out of date', '2024-08-22', 20), -- Стекло
    ('Damaged', '2024-09-30', 21), -- Пенопласт
    ('Out of date', '2024-10-14', 22), -- Минеральная вата
    ('Damaged', '2024-11-05', 23), -- Керамическая плитка
    ('Out of date', '2024-12-20', 24), -- Линолеум
    ('Damaged', '2025-01-15', 25), -- Лак
    ('Out of date', '2025-02-10', 26), -- Клей
    ('Damaged', '2025-03-05', 27), -- Грунтовка
    ('Out of date', '2025-04-20', 28), -- Шпатлевка
    ('Damaged', '2025-05-12', 29), -- Гипс
    ('Out of date', '2025-06-18', 30), -- Известь
    ('Damaged', '2025-07-22', 31), -- Асфальт
    ('Out of date', '2025-08-30', 32), -- Битум
    ('Damaged', '2025-09-14', 33), -- Гидроизоляция
    ('Out of date', '2025-10-05', 34), -- Теплоизоляция
    ('Damaged', '2025-11-11', 35), -- Сэндвич-панели
    ('Out of date', '2025-12-25', 36), -- Металлопрофиль
    ('Damaged', '2026-01-07', 37), -- Пластиковые панели
    ('Out of date', '2026-02-15', 38), -- Дверные блоки
    ('Damaged', '2026-03-20', 39), -- Оконные блоки
    ('Out of date', '2026-04-10', 40), -- Лестничные марши
    ('Damaged', '2026-05-05', 41), -- Балки
    ('Out of date', '2026-06-12', 42), -- Колонны
    ('Damaged', '2026-07-18', 43), -- Фундаментные блоки
    ('Out of date', '2026-08-22', 44), -- Сваи
    ('Damaged', '2026-09-30', 45), -- Кровельные материалы
    ('Out of date', '2026-10-14', 46), -- Вентиляционные решетки
    ('Damaged', '2026-11-05', 47), -- Канализационные люки
    ('Out of date', '2026-12-20', 48), -- Сантехнические трубы
    ('Damaged', '2027-01-15', 49), -- Электропроводка
    ('Out of date', '2027-02-10', 50), -- Розетки
    ('Damaged', '2027-03-05', 51), -- Выключатели
    ('Out of date', '2027-04-20', 52), -- Светильники
    ('Damaged', '2027-05-12', 53), -- Кабельные каналы
    ('Out of date', '2027-06-18', 54), -- Распределительные коробки
    ('Damaged', '2027-07-22', 55), -- Автоматические выключатели
    ('Out of date', '2027-08-30', 56), -- Трансформаторы
    ('Damaged', '2027-09-14', 57), -- Генераторы
    ('Out of date', '2027-10-05', 58), -- Компрессоры
    ('Damaged', '2027-11-11', 59), -- Насосы
    ('Out of date', '2027-12-25', 59); -- Насосы

INSERT INTO m2m_personnel_write_offs (pwo_p_id, pwo_wo_id)
VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
    (11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
    (21, 21), (22, 22), (23, 23), (24, 24), (25, 25), (26, 26), (27, 27), (28, 28), (29, 29), (30, 30),
    (31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40),
    (41, 41), (42, 42), (43, 43), (44, 44), (45, 45), (46, 46), (47, 47), (48, 48), (49, 49), (50, 50),
    (51, 51), (52, 52), (53, 53), (54, 54), (55, 55), (1, 56), (2, 57), (3, 58), (4, 59), (5, 60);

INSERT INTO transfers (tr_date, tr_start_storage_id, tr_end_storage_id, tr_res_id)
VALUES
    ('2023-01-15', 1, 2, 1), -- Cement из Storage A в Storage B
    ('2023-02-10', 2, 3, 2), -- Sand из Storage B в Storage C
    ('2023-03-05', 3, 4, 3), -- Crushed stone из Storage C в Storage D
    ('2023-04-20', 4, 5, 4), -- Арматура из Storage D в Storage E
    ('2023-05-12', 5, 6, 5), -- Бетонные блоки из Storage E в Storage F
    ('2023-06-18', 6, 7, 6), -- Кирпич из Storage F в Storage G
    ('2023-07-22', 7, 8, 7), -- Доски из Storage G в Storage H
    ('2023-08-30', 8, 9, 8), -- Фанера из Storage H в Storage I
    ('2023-09-14', 9, 10, 9), -- Гипсокартон из Storage I в Storage J
    ('2023-10-05', 10, 11, 10), -- Металлические листы из Storage J в Storage K
    ('2023-11-11', 11, 12, 11), -- Трубы стальные из Storage K в Storage L
    ('2023-12-25', 12, 13, 12), -- Трубы пластиковые из Storage L в Storage M
    ('2024-01-07', 13, 14, 13), -- Краска из Storage M в Storage N
    ('2024-02-15', 14, 15, 14), -- Шурупы из Storage N в Storage O
    ('2024-03-20', 15, 16, 15), -- Гвозди из Storage O в Storage P
    ('2024-04-10', 16, 17, 16), -- Проволока из Storage P в Storage Q
    ('2024-05-05', 17, 18, 17), -- Кабель из Storage Q в Storage R
    ('2024-06-12', 18, 19, 18), -- Рубероид из Storage R в Storage S
    ('2024-07-18', 19, 20, 19), -- Черепица из Storage S в Storage T
    ('2024-08-22', 20, 21, 20), -- Стекло из Storage T в Storage U
    ('2024-09-30', 21, 22, 21), -- Пенопласт из Storage U в Storage V
    ('2024-10-14', 22, 23, 22), -- Минеральная вата из Storage V в Storage W
    ('2024-11-05', 23, 24, 23), -- Керамическая плитка из Storage W в Storage X
    ('2024-12-20', 24, 25, 24), -- Линолеум из Storage X в Storage Y
    ('2025-01-15', 25, 26, 25), -- Лак из Storage Y в Storage Z
    ('2025-02-10', 26, 27, 26), -- Клей из Storage Z в Storage AA
    ('2025-03-05', 27, 28, 27), -- Грунтовка из Storage AA в Storage AB
    ('2025-04-20', 28, 29, 28), -- Шпатлевка из Storage AB в Storage AC
    ('2025-05-12', 29, 30, 29), -- Гипс из Storage AC в Storage AD
    ('2025-06-18', 30, 31, 30), -- Известь из Storage AD в Storage AE
    ('2025-07-22', 31, 32, 31), -- Асфальт из Storage AE в Storage AF
    ('2025-08-30', 32, 33, 32), -- Битум из Storage AF в Storage AG
    ('2025-09-14', 33, 34, 33), -- Гидроизоляция из Storage AG в Storage AH
    ('2025-10-05', 34, 35, 34), -- Теплоизоляция из Storage AH в Storage AI
    ('2025-11-11', 35, 36, 35), -- Сэндвич-панели из Storage AI в Storage AJ
    ('2025-12-25', 36, 37, 36), -- Металлопрофиль из Storage AJ в Storage AK
    ('2026-01-07', 37, 38, 37), -- Пластиковые панели из Storage AK в Storage AL
    ('2026-02-15', 38, 39, 38), -- Дверные блоки из Storage AL в Storage AM
    ('2026-03-20', 39, 40, 39), -- Оконные блоки из Storage AM в Storage AN
    ('2026-04-10', 40, 41, 40), -- Лестничные марши из Storage AN в Storage AO
    ('2026-05-05', 41, 42, 41), -- Балки из Storage AO в Storage AP
    ('2026-06-12', 42, 43, 42), -- Колонны из Storage AP в Storage AQ
    ('2026-07-18', 43, 44, 43), -- Фундаментные блоки из Storage AQ в Storage AR
    ('2026-08-22', 44, 45, 44), -- Сваи из Storage AR в Storage AS
    ('2026-09-30', 45, 46, 45), -- Кровельные материалы из Storage AS в Storage AT
    ('2026-10-14', 46, 47, 46), -- Вентиляционные решетки из Storage AT в Storage AU
    ('2026-11-05', 47, 48, 47), -- Канализационные люки из Storage AU в Storage AV
    ('2026-12-20', 48, 49, 48), -- Сантехнические трубы из Storage AV в Storage AW
    ('2027-01-15', 49, 50, 49), -- Электропроводка из Storage AW в Storage AX
    ('2027-02-10', 50, 51, 50), -- Розетки из Storage AX в Storage AY
    ('2027-03-05', 51, 52, 51), -- Выключатели из Storage AY в Storage AZ
    ('2027-04-20', 52, 53, 52), -- Светильники из Storage AZ в Storage BA
    ('2027-05-12', 53, 54, 53), -- Кабельные каналы из Storage BA в Storage BB
    ('2027-06-18', 54, 55, 54), -- Распределительные коробки из Storage BB в Storage BC
    ('2027-07-22', 55, 56, 55), -- Автоматические выключатели из Storage BC в Storage BD
    ('2027-08-30', 56, 57, 56), -- Трансформаторы из Storage BD в Storage BE
    ('2027-09-14', 57, 58, 57), -- Генераторы из Storage BE в Storage BF
    ('2027-10-05', 58, 59, 58), -- Компрессоры из Storage BF в Storage BG
    ('2027-11-11', 59, 60, 59), -- Насосы из Storage BG в Storage BH
    ('2027-12-25', 60, 1, 59); -- Насосы из Storage BH в Storage A

INSERT INTO m2m_personnel_transfers (pt_p_id, pt_tr_id)
VALUES
    (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
    (11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
    (21, 21), (22, 22), (23, 23), (24, 24), (25, 25), (26, 26), (27, 27), (28, 28), (29, 29), (30, 30),
    (31, 31), (32, 32), (33, 33), (34, 34), (35, 35), (36, 36), (37, 37), (38, 38), (39, 39), (40, 40),
    (41, 41), (42, 42), (43, 43), (44, 44), (45, 45), (46, 46), (47, 47), (48, 48), (49, 49), (50, 50),
    (51, 51), (52, 52), (53, 53), (54, 54), (55, 55), (1, 56), (2, 57), (3, 58), (4, 59), (5, 60);