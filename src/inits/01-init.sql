-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema arsenal
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `arsenal` ;

-- -----------------------------------------------------
-- Schema arsenal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `arsenal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `arsenal` ;

-- -----------------------------------------------------
-- Table `arsenal`.`storages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`storages` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`storages` (
  `st_id` INT NOT NULL AUTO_INCREMENT,
  `st_name` VARCHAR(50) NOT NULL,
  `st_location` VARCHAR(255) NOT NULL,
  `st_capacity` INT NOT NULL,
  PRIMARY KEY (`st_id`),
  UNIQUE INDEX `st_id_UNIQUE` (`st_id` ASC) VISIBLE)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`weapons`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`weapons` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`weapons` (
  `w_id` INT NOT NULL AUTO_INCREMENT,
  `w_type` VARCHAR(50) NOT NULL,
  `w_model` VARCHAR(100) NULL,
  `w_manufacture` VARCHAR(100) NULL,
  `w_caliber` VARCHAR(20) NULL,
  `w_status` VARCHAR(20) NOT NULL,
  `w_st_id` INT NOT NULL,
  PRIMARY KEY (`w_id`),
  INDEX `fk_weapons_storages_idx` (`w_st_id` ASC) VISIBLE,
  UNIQUE INDEX `w_id_UNIQUE` (`w_id` ASC) VISIBLE,
  CONSTRAINT `fk_weapons_storage`
    FOREIGN KEY (`w_st_id`)
    REFERENCES `arsenal`.`storages` (`st_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`ammunition`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`ammunition` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`ammunition` (
  `am_id` INT NOT NULL AUTO_INCREMENT,
  `am_type` VARCHAR(50) NOT NULL,
  `am_caliber` VARCHAR(20) NULL,
  `am_quantity` INT UNSIGNED NOT NULL,
  `am_manuf_date` YEAR(4) NOT NULL,
  `am_expr_date` DATE NOT NULL,
  `am_st_id` INT NOT NULL,
  PRIMARY KEY (`am_id`),
  INDEX `fk_ammunition_storages1_idx` (`am_st_id` ASC) VISIBLE,
  UNIQUE INDEX `am_id_UNIQUE` (`am_id` ASC) VISIBLE,
  CONSTRAINT `fk_ammunition_storage`
    FOREIGN KEY (`am_st_id`)
    REFERENCES `arsenal`.`storages` (`st_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`vehicles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`vehicles` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`vehicles` (
  `v_id` INT NOT NULL AUTO_INCREMENT,
  `v_type` VARCHAR(50) NOT NULL,
  `v_model` VARCHAR(100) NULL,
  `v_manufacture` VARCHAR(100) NULL,
  `v_manuf_year` YEAR(4) NULL,
  `v_status` VARCHAR(20) NOT NULL,
  `v_st_id` INT NOT NULL,
  PRIMARY KEY (`v_id`),
  INDEX `fk_vehicles_storages1_idx` (`v_st_id` ASC) VISIBLE,
  UNIQUE INDEX `v_id_UNIQUE` (`v_id` ASC) VISIBLE,
  CONSTRAINT `fk_vehicles_storage`
    FOREIGN KEY (`v_st_id`)
    REFERENCES `arsenal`.`storages` (`st_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`equipment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`equipment` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`equipment` (
  `eq_id` INT NOT NULL AUTO_INCREMENT,
  `eq_type` VARCHAR(50) NOT NULL,
  `eq_model` VARCHAR(100) NULL,
  `eq_manufacture` VARCHAR(100) NULL,
  `eq_size` VARCHAR(10) NULL,
  `eq_status` VARCHAR(20) NOT NULL,
  `eq_st_id` INT NOT NULL,
  PRIMARY KEY (`eq_id`),
  INDEX `fk_equipment_storages1_idx` (`eq_st_id` ASC) VISIBLE,
  UNIQUE INDEX `eq_id_UNIQUE` (`eq_id` ASC) VISIBLE,
  CONSTRAINT `fk_equipment_storage`
    FOREIGN KEY (`eq_st_id`)
    REFERENCES `arsenal`.`storages` (`st_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`comm_devices`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`comm_devices` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`comm_devices` (
  `cd_id` INT NOT NULL AUTO_INCREMENT,
  `cd_type` VARCHAR(50) NOT NULL,
  `cd_model` VARCHAR(100) NULL,
  `cd_manufacture` VARCHAR(100) NULL,
  `cd_freq_min` FLOAT UNSIGNED NULL,
  `cd_freq_max` FLOAT UNSIGNED NULL,
  `cd_status` VARCHAR(20) NOT NULL,
  `cd_st_id` INT NOT NULL,
  PRIMARY KEY (`cd_id`),
  INDEX `fk_comm_devices_storages1_idx` (`cd_st_id` ASC) VISIBLE,
  UNIQUE INDEX `cd_id_UNIQUE` (`cd_id` ASC) VISIBLE,
  CONSTRAINT `fk_comm_devices_storage`
    FOREIGN KEY (`cd_st_id`)
    REFERENCES `arsenal`.`storages` (`st_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`med_supplies`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`med_supplies` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`med_supplies` (
  `ms_id` INT NOT NULL AUTO_INCREMENT,
  `ms_type` VARCHAR(50) NOT NULL,
  `ms_title` VARCHAR(100) NOT NULL,
  `ms_manufacture` VARCHAR(100) NULL,
  `ms_quantity` INT UNSIGNED NOT NULL,
  `ms_expr_date` DATE NOT NULL,
  `ms_st_id` INT NOT NULL,
  PRIMARY KEY (`ms_id`),
  INDEX `fk_med_supplies_storages1_idx` (`ms_st_id` ASC) VISIBLE,
  UNIQUE INDEX `ms_id_UNIQUE` (`ms_id` ASC) VISIBLE,
  CONSTRAINT `fk_med_supplies_storage`
    FOREIGN KEY (`ms_st_id`)
    REFERENCES `arsenal`.`storages` (`st_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`eng_equipment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`eng_equipment` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`eng_equipment` (
  `ee_id` INT NOT NULL AUTO_INCREMENT,
  `ee_type` VARCHAR(50) NOT NULL,
  `ee_model` VARCHAR(100) NULL,
  `ee_manufacture` VARCHAR(100) NULL,
  `ee_manuf_year` YEAR(4) NULL,
  `ee_status` VARCHAR(20) NOT NULL,
  `ee_st_id` INT NOT NULL,
  PRIMARY KEY (`ee_id`),
  INDEX `fk_eng_equipment_storages1_idx` (`ee_st_id` ASC) VISIBLE,
  UNIQUE INDEX `ee_id_UNIQUE` (`ee_id` ASC) VISIBLE,
  CONSTRAINT `fk_eng_equipment_storage`
    FOREIGN KEY (`ee_st_id`)
    REFERENCES `arsenal`.`storages` (`st_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`personnel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`personnel` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`personnel` (
  `p_id` INT NOT NULL AUTO_INCREMENT,
  `p_fullname` VARCHAR(100) NOT NULL,
  `p_rank` VARCHAR(50) NULL,
  `p_unit` VARCHAR(100) NULL,
  `p_contacts` VARCHAR(255) NOT NULL,
  `p_acc_level` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`p_id`),
  UNIQUE INDEX `p_id_UNIQUE` (`p_id` ASC) VISIBLE)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`resources`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`resources` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`resources` (
  `res_id` INT NOT NULL AUTO_INCREMENT,
  `res_name` VARCHAR(100) NOT NULL,
  `res_quantity` BIGINT NULL,
  PRIMARY KEY (`res_id`),
  UNIQUE INDEX `res_name_UNIQUE` (`res_name` ASC) VISIBLE,
  UNIQUE INDEX `res_id_UNIQUE` (`res_id` ASC) VISIBLE)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`transfers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`transfers` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`transfers` (
  `tr_id` INT NOT NULL AUTO_INCREMENT,
  `tr_date` DATE NOT NULL,
  `tr_start_storage_id` INT NOT NULL,
  `tr_end_storage_id` INT NOT NULL,
  `tr_res_id` INT NOT NULL,
  PRIMARY KEY (`tr_id`),
  INDEX `fk_transfers_storages1_idx` (`tr_start_storage_id` ASC) VISIBLE,
  INDEX `fk_transfers_storages2_idx` (`tr_end_storage_id` ASC) VISIBLE,
  INDEX `fk_transfers_resources1_idx` (`tr_res_id` ASC) VISIBLE,
  UNIQUE INDEX `tr_id_UNIQUE` (`tr_id` ASC) VISIBLE,
  CONSTRAINT `fk_transfers_start_storage`
    FOREIGN KEY (`tr_start_storage_id`)
    REFERENCES `arsenal`.`storages` (`st_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_transfers_end_storages`
    FOREIGN KEY (`tr_end_storage_id`)
    REFERENCES `arsenal`.`storages` (`st_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_transfers_resource`
    FOREIGN KEY (`tr_res_id`)
    REFERENCES `arsenal`.`resources` (`res_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`maintenance`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`maintenance` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`maintenance` (
  `mn_id` INT NOT NULL AUTO_INCREMENT,
  `mn_date` DATE NULL,
  `mn_type` VARCHAR(50) NOT NULL,
  `mn_desc` TEXT NULL,
  `mn_res_id` INT NOT NULL,
  PRIMARY KEY (`mn_id`),
  INDEX `fk_maintenance_resources1_idx` (`mn_res_id` ASC) VISIBLE,
  UNIQUE INDEX `mn_id_UNIQUE` (`mn_id` ASC) VISIBLE,
  CONSTRAINT `fk_maintenance_resource`
    FOREIGN KEY (`mn_res_id`)
    REFERENCES `arsenal`.`resources` (`res_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`write_offs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`write_offs` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`write_offs` (
  `wo_id` INT NOT NULL AUTO_INCREMENT,
  `wo_reason` VARCHAR(50) NULL,
  `wo_date` DATE NULL,
  `wo_res_id` INT NOT NULL,
  PRIMARY KEY (`wo_id`),
  INDEX `fk_write_offs_resources1_idx` (`wo_res_id` ASC) VISIBLE,
  CONSTRAINT `fk_write_offs_resource`
    FOREIGN KEY (`wo_res_id`)
    REFERENCES `arsenal`.`resources` (`res_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`suppliers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`suppliers` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`suppliers` (
  `sp_id` INT NOT NULL AUTO_INCREMENT,
  `sp_name` VARCHAR(100) NOT NULL,
  `sp_contacts` VARCHAR(255) NULL,
  `sp_rating` DECIMAL(3,2) NULL,
  PRIMARY KEY (`sp_id`),
  UNIQUE INDEX `sp_id_UNIQUE` (`sp_id` ASC) VISIBLE)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`orders` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`orders` (
  `o_id` INT NOT NULL AUTO_INCREMENT,
  `o_quantity` INT NULL,
  `o_date` DATE NULL,
  `o_status` VARCHAR(50) NULL,
  `o_res_id` INT NOT NULL,
  PRIMARY KEY (`o_id`),
  INDEX `fk_orders_resources1_idx` (`o_res_id` ASC) VISIBLE,
  UNIQUE INDEX `o_id_UNIQUE` (`o_id` ASC) VISIBLE,
  CONSTRAINT `fk_orders_resource`
    FOREIGN KEY (`o_res_id`)
    REFERENCES `arsenal`.`resources` (`res_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`m2m_weapons_ammunition`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`m2m_weapons_ammunition` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`m2m_weapons_ammunition` (
  `wa_w_id` INT NOT NULL,
  `wa_am_id` INT NOT NULL,
  PRIMARY KEY (`wa_w_id`, `wa_am_id`),
  INDEX `fk_weapons_has_ammunition_ammunition1_idx` (`wa_am_id` ASC) VISIBLE,
  INDEX `fk_weapons_has_ammunition_weapons1_idx` (`wa_w_id` ASC) VISIBLE,
  CONSTRAINT `fk_m2m_weapons_ammunition_weapons`
    FOREIGN KEY (`wa_w_id`)
    REFERENCES `arsenal`.`weapons` (`w_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_m2m_weapons_ammunition_ammunition`
    FOREIGN KEY (`wa_am_id`)
    REFERENCES `arsenal`.`ammunition` (`am_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`m2m_personnel_storages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`m2m_personnel_storages` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`m2m_personnel_storages` (
  `ps_p_id` INT NOT NULL,
  `ps_st_id` INT NOT NULL,
  PRIMARY KEY (`ps_p_id`, `ps_st_id`),
  INDEX `fk_personnel_has_storages_storages1_idx` (`ps_st_id` ASC) VISIBLE,
  INDEX `fk_personnel_has_storages_personnel1_idx` (`ps_p_id` ASC) VISIBLE,
  CONSTRAINT `fk_m2m_personnel_storages_personnel`
    FOREIGN KEY (`ps_p_id`)
    REFERENCES `arsenal`.`personnel` (`p_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_m2m_personnel_storages_storages`
    FOREIGN KEY (`ps_st_id`)
    REFERENCES `arsenal`.`storages` (`st_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`m2m_orders_suppliers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`m2m_orders_suppliers` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`m2m_orders_suppliers` (
  `os_o_id` INT NOT NULL,
  `os_sp_id` INT NOT NULL,
  PRIMARY KEY (`os_o_id`, `os_sp_id`),
  INDEX `fk_orders_has_suppliers_suppliers1_idx` (`os_sp_id` ASC) VISIBLE,
  INDEX `fk_orders_has_suppliers_orders1_idx` (`os_o_id` ASC) VISIBLE,
  CONSTRAINT `fk_m2m_orders_suppliers_orders`
    FOREIGN KEY (`os_o_id`)
    REFERENCES `arsenal`.`orders` (`o_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_m2m_orders_suppliers_suppliers`
    FOREIGN KEY (`os_sp_id`)
    REFERENCES `arsenal`.`suppliers` (`sp_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`m2m_personnel_transfers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`m2m_personnel_transfers` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`m2m_personnel_transfers` (
  `pt_p_id` INT NOT NULL,
  `pt_tr_id` INT NOT NULL,
  PRIMARY KEY (`pt_p_id`, `pt_tr_id`),
  INDEX `fk_personnel_has_transfers_transfers1_idx` (`pt_tr_id` ASC) VISIBLE,
  INDEX `fk_personnel_has_transfers_personnel1_idx` (`pt_p_id` ASC) VISIBLE,
  CONSTRAINT `fk_m2m_personnel_transfers_personnel`
    FOREIGN KEY (`pt_p_id`)
    REFERENCES `arsenal`.`personnel` (`p_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_m2m_personnel_transfers_transfers`
    FOREIGN KEY (`pt_tr_id`)
    REFERENCES `arsenal`.`transfers` (`tr_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`m2m_personnel_write_offs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`m2m_personnel_write_offs` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`m2m_personnel_write_offs` (
  `pwo_p_id` INT NOT NULL,
  `pwo_wo_id` INT NOT NULL,
  PRIMARY KEY (`pwo_p_id`, `pwo_wo_id`),
  INDEX `fk_personnel_has_write_offs_write_offs1_idx` (`pwo_wo_id` ASC) VISIBLE,
  INDEX `fk_personnel_has_write_offs_personnel1_idx` (`pwo_p_id` ASC) VISIBLE,
  CONSTRAINT `fk_m2m_personnel_write_offs_personnel`
    FOREIGN KEY (`pwo_p_id`)
    REFERENCES `arsenal`.`personnel` (`p_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_m2m_personnel_write_offs_write_offs`
    FOREIGN KEY (`pwo_wo_id`)
    REFERENCES `arsenal`.`write_offs` (`wo_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`m2m_resources_suppliers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`m2m_resources_suppliers` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`m2m_resources_suppliers` (
  `rs_res_id` INT NOT NULL,
  `rs_sp_id` INT NOT NULL,
  PRIMARY KEY (`rs_res_id`, `rs_sp_id`),
  INDEX `fk_resources_has_suppliers_suppliers1_idx` (`rs_sp_id` ASC) VISIBLE,
  INDEX `fk_resources_has_suppliers_resources1_idx` (`rs_res_id` ASC) VISIBLE,
  CONSTRAINT `fk_m2m_resources_suppliers_resources`
    FOREIGN KEY (`rs_res_id`)
    REFERENCES `arsenal`.`resources` (`res_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_m2m_resources_suppliers_suppliers`
    FOREIGN KEY (`rs_sp_id`)
    REFERENCES `arsenal`.`suppliers` (`sp_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`m2m_personnel_orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`m2m_personnel_orders` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`m2m_personnel_orders` (
  `po_p_id` INT NOT NULL,
  `po_o_id` INT NOT NULL,
  PRIMARY KEY (`po_p_id`, `po_o_id`),
  INDEX `fk_m2m_personnel_order_order_idx` (`po_o_id` ASC) VISIBLE,
  CONSTRAINT `fk_m2m_personnel_order_personnel`
    FOREIGN KEY (`po_p_id`)
    REFERENCES `arsenal`.`personnel` (`p_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_m2m_personnel_order_order`
    FOREIGN KEY (`po_o_id`)
    REFERENCES `arsenal`.`orders` (`o_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `arsenal`.`m2m_personnel_maintenance`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`m2m_personnel_maintenance` ;

CREATE TABLE IF NOT EXISTS `arsenal`.`m2m_personnel_maintenance` (
  `pm_p_id` INT NOT NULL,
  `pm_mn_id` INT NOT NULL,
  PRIMARY KEY (`pm_p_id`, `pm_mn_id`),
  INDEX `fk_personnel_has_maintenance_maintenance1_idx` (`pm_mn_id` ASC) VISIBLE,
  INDEX `fk_personnel_has_maintenance_personnel1_idx` (`pm_p_id` ASC) VISIBLE,
  CONSTRAINT `fk_m2m_personnel_maintenance_personnel`
    FOREIGN KEY (`pm_p_id`)
    REFERENCES `arsenal`.`personnel` (`p_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_m2m_personnel_maintenance_maintenance`
    FOREIGN KEY (`pm_mn_id`)
    REFERENCES `arsenal`.`maintenance` (`mn_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

USE `arsenal` ;

-- -----------------------------------------------------
-- Placeholder table for view `arsenal`.`active_orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsenal`.`active_orders` (`order_id` INT, `o_date` INT, `supplier_name` INT, `o_status` INT);

-- -----------------------------------------------------
-- Placeholder table for view `arsenal`.`transfer_history`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsenal`.`transfer_history` (`transfer_id` INT, `tr_date` INT, `resource_name` INT, `from_storage` INT, `to_storage` INT, `responsible_person` INT);

-- -----------------------------------------------------
-- Placeholder table for view `arsenal`.`order_history`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsenal`.`order_history` (`order_id` INT, `o_date` INT, `resource_name` INT, `supplier_name` INT, `responsible_person` INT, `o_status` INT);

-- -----------------------------------------------------
-- Placeholder table for view `arsenal`.`weapon_ammunition_compatibility`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsenal`.`weapon_ammunition_compatibility` (`weapon_id` INT, `weapon_name` INT, `ammunition_id` INT, `ammunition_type` INT);

-- -----------------------------------------------------
-- procedure create_order
-- -----------------------------------------------------

USE `arsenal`;
DROP procedure IF EXISTS `arsenal`.`create_order`;

DELIMITER $$
USE `arsenal`$$
CREATE PROCEDURE create_order(
    IN p_resource_id INT,
    IN p_quantity INT,
    IN p_supplier_id INT,
    IN p_personnel_id INT
)
BEGIN
    DECLARE available_quantity INT;

    SELECT res_quantity INTO available_quantity
    FROM resources
    WHERE res_id = p_resource_id;

    IF available_quantity < p_quantity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Not enough resources';
    ELSE
        INSERT INTO orders (o_res_id, o_quantity, o_status, o_date)
        VALUES (p_resource_id, p_quantity, 'Processing', NOW());

        INSERT INTO m2m_orders_suppliers (os_o_id, os_sp_id)
        VALUES (LAST_INSERT_ID(), p_supplier_id);

        INSERT INTO m2m_personnel_orders (po_p_id, po_o_id)
        VALUES (p_personnel_id, LAST_INSERT_ID());

        UPDATE resources
        SET res_quantity = res_quantity - p_quantity
        WHERE res_id = p_resource_id;
    END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure auto_replenish_resources
-- -----------------------------------------------------

USE `arsenal`;
DROP procedure IF EXISTS `arsenal`.`auto_replenish_resources`;

DELIMITER $$
USE `arsenal`$$
CREATE PROCEDURE auto_replenish_resources(IN p_threshold INT)
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE resource_id INT;
    DECLARE resource_name VARCHAR(255);
    DECLARE current_quantity INT;
    DECLARE supplier_id INT;

    DECLARE cur CURSOR FOR
    SELECT 
        r.res_id, 
        r.res_name, 
        r.res_quantity, 
        s.sp_id AS supplier_id
    FROM 
        resources r
    JOIN 
        m2m_resources_suppliers mrs ON r.res_id = mrs.rs_res_id
    JOIN 
        suppliers s ON mrs.rs_sp_id = s.sp_id
    WHERE 
        r.res_quantity < p_threshold;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO resource_id, resource_name, current_quantity, supplier_id;
        IF done THEN
            LEAVE read_loop;
        END IF;

        INSERT INTO orders (o_res_id, o_quantity, o_status, o_date)
        VALUES (resource_id, p_threshold - current_quantity, 'Processing', NOW());

        INSERT INTO m2m_orders_suppliers (os_o_id, os_sp_id)
        VALUES (LAST_INSERT_ID(), supplier_id);
    END LOOP;

    CLOSE cur;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- View `arsenal`.`active_orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`active_orders`;
DROP VIEW IF EXISTS `arsenal`.`active_orders` ;
USE `arsenal`;
CREATE OR REPLACE VIEW active_orders AS
SELECT 
    o.o_id AS order_id,
    o.o_date,
    s.sp_name AS supplier_name,
    o.o_status
FROM 
    orders o
JOIN 
    m2m_orders_suppliers mos ON o.o_id = mos.os_o_id
JOIN 
    suppliers s ON mos.os_sp_id = s.sp_id
WHERE 
    o.o_status = 'Processing';

-- -----------------------------------------------------
-- View `arsenal`.`transfer_history`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`transfer_history`;
DROP VIEW IF EXISTS `arsenal`.`transfer_history` ;
USE `arsenal`;
CREATE OR REPLACE VIEW transfer_history AS
SELECT 
    t.tr_id AS transfer_id,
    t.tr_date,
    r.res_name AS resource_name,
    s1.st_name AS from_storage,
    s2.st_name AS to_storage,
    p.p_fullname AS responsible_person
FROM 
    transfers t
JOIN 
    resources r ON t.tr_res_id = r.res_id
JOIN 
    storages s1 ON t.tr_start_storage_id = s1.st_id
JOIN 
    storages s2 ON t.tr_end_storage_id = s2.st_id
JOIN 
    m2m_personnel_transfers mpt ON t.tr_id = mpt.pt_tr_id
JOIN 
    personnel p ON mpt.pt_p_id = p.p_id;

-- -----------------------------------------------------
-- View `arsenal`.`order_history`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`order_history`;
DROP VIEW IF EXISTS `arsenal`.`order_history` ;
USE `arsenal`;
CREATE OR REPLACE VIEW order_history AS
SELECT 
    o.o_id AS order_id,
    o.o_date,
    r.res_name AS resource_name,
    s.sp_name AS supplier_name,
    p.p_fullname AS responsible_person,
    o.o_status
FROM 
    orders o
JOIN 
    resources r ON o.o_res_id = r.res_id
JOIN 
    m2m_orders_suppliers mos ON o.o_id = mos.os_o_id
JOIN 
    suppliers s ON mos.os_sp_id = s.sp_id
JOIN 
    m2m_personnel_orders mpo ON o.o_id = mpo.po_o_id
JOIN 
    personnel p ON mpo.po_o_id = p.p_id;

-- -----------------------------------------------------
-- View `arsenal`.`weapon_ammunition_compatibility`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `arsenal`.`weapon_ammunition_compatibility`;
DROP VIEW IF EXISTS `arsenal`.`weapon_ammunition_compatibility` ;
USE `arsenal`;
CREATE OR REPLACE VIEW weapon_ammunition_compatibility AS
SELECT 
    w.w_id AS weapon_id,
    w.w_model AS weapon_name,
    a.am_id AS ammunition_id,
    a.am_type AS ammunition_type
FROM 
    weapons w
JOIN 
    m2m_weapons_ammunition mwa ON w.w_id = mwa.wa_w_id
JOIN 
    ammunition a ON mwa.wa_am_id = a.am_id;
USE `arsenal`;

DELIMITER $$

USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_weapons_insert` $$
USE `arsenal`$$
CREATE TRIGGER before_weapons_insert
BEFORE INSERT ON weapons
FOR EACH ROW
BEGIN
    DECLARE current_capacity INT;

    -- Получаем текущую вместимость склада
    SELECT st_capacity INTO current_capacity
    FROM storages
    WHERE st_id = NEW.w_st_id;
    
    IF current_capacity <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Not enough capacity for chosen storage';
    END IF;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`after_weapons_insert` $$
USE `arsenal`$$
CREATE TRIGGER after_weapons_insert
AFTER INSERT ON weapons
FOR EACH ROW
BEGIN
    UPDATE storages
    SET st_capacity = st_capacity - 1
    WHERE st_id = NEW.w_st_id;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_weapons_update` $$
USE `arsenal`$$
CREATE TRIGGER before_weapons_update
BEFORE UPDATE ON weapons
FOR EACH ROW
BEGIN
    IF OLD.w_st_id != NEW.w_st_id THEN
        UPDATE storages
        SET st_capacity = st_capacity + 1
        WHERE st_id = OLD.w_st_id;

        UPDATE storages
        SET st_capacity = st_capacity - 1
        WHERE st_id = NEW.w_st_id;
    END IF;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_weapons_delete` $$
USE `arsenal`$$
CREATE TRIGGER before_weapons_delete
BEFORE DELETE ON weapons
FOR EACH ROW
BEGIN
    UPDATE storages
    SET st_capacity = st_capacity + 1
    WHERE st_id = OLD.w_st_id;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_ammunition_insert` $$
USE `arsenal`$$
CREATE TRIGGER before_ammunition_insert
BEFORE INSERT ON ammunition
FOR EACH ROW
BEGIN
    DECLARE current_capacity INT;

    SELECT st_capacity INTO current_capacity
    FROM storages
    WHERE st_id = NEW.am_st_id;

    IF current_capacity < NEW.am_quantity THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Not enough capacity for chosen storage';
    END IF;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`after_ammunition_insert` $$
USE `arsenal`$$
CREATE TRIGGER after_ammunition_insert
AFTER INSERT ON ammunition
FOR EACH ROW
BEGIN
    UPDATE storages
    SET st_capacity = st_capacity - NEW.am_quantity
    WHERE st_id = NEW.am_st_id;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_ammunition_update` $$
USE `arsenal`$$
CREATE TRIGGER before_ammunition_update
BEFORE UPDATE ON ammunition
FOR EACH ROW
BEGIN
    IF OLD.am_st_id != NEW.am_st_id OR OLD.am_quantity != NEW.am_quantity THEN
        UPDATE storages
        SET st_capacity = st_capacity + OLD.am_quantity
        WHERE st_id = OLD.am_st_id;

        UPDATE storages
        SET st_capacity = st_capacity - NEW.am_quantity
        WHERE st_id = NEW.am_st_id;
    END IF;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_ammunition_delete` $$
USE `arsenal`$$
CREATE TRIGGER before_ammunition_delete
BEFORE DELETE ON ammunition
FOR EACH ROW
BEGIN
    UPDATE storages
    SET st_capacity = st_capacity + OLD.am_quantity
    WHERE st_id = OLD.am_st_id;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`after_vehicle_status_update` $$
USE `arsenal`$$
CREATE TRIGGER after_vehicle_status_update
AFTER UPDATE ON vehicles
FOR EACH ROW
BEGIN
    IF NEW.v_status = 'requires maintenance' THEN
        INSERT INTO maintenance (vehicle_id, maintenance_date, mn_desc)
        VALUES (NEW.v_id, NOW(), 'Automatically added: vehicle requires maintenance');
    END IF;
END$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_vehicles_insert` $$
USE `arsenal`$$
CREATE TRIGGER before_vehicles_insert
BEFORE INSERT ON vehicles
FOR EACH ROW
BEGIN
    DECLARE current_capacity INT;

    SELECT st_capacity INTO current_capacity
    FROM storages
    WHERE st_id = NEW.v_st_id;

    IF current_capacity <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Not enough capacity for chosen storage';
    END IF;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`after_vehicles_insert` $$
USE `arsenal`$$
CREATE TRIGGER after_vehicles_insert
AFTER INSERT ON vehicles
FOR EACH ROW
BEGIN
    UPDATE storages
    SET st_capacity = st_capacity - 1
    WHERE st_id = NEW.v_st_id;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_vehicles_delete` $$
USE `arsenal`$$
CREATE TRIGGER before_vehicles_delete
BEFORE DELETE ON vehicles
FOR EACH ROW
BEGIN
    UPDATE storages
    SET st_capacity = st_capacity + 1
    WHERE st_id = OLD.v_st_id;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_vehicles_update` $$
USE `arsenal`$$
CREATE TRIGGER before_vehicles_update
BEFORE UPDATE ON vehicles
FOR EACH ROW
BEGIN
    IF OLD.v_st_id != NEW.v_st_id THEN
        UPDATE storages
        SET st_capacity = st_capacity + 1
        WHERE st_id = OLD.v_st_id;

        UPDATE storages
        SET st_capacity = st_capacity - 1
        WHERE st_id = NEW.v_st_id;
    END IF;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_equipment_insert` $$
USE `arsenal`$$
CREATE TRIGGER before_equipment_insert
BEFORE INSERT ON equipment
FOR EACH ROW
BEGIN
    DECLARE current_capacity INT;

    SELECT st_capacity INTO current_capacity
    FROM storages
    WHERE st_id = NEW.eq_st_id;

    IF current_capacity <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Not enough capacity for chosen storage';
    END IF;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`after_equipment_insert` $$
USE `arsenal`$$
CREATE TRIGGER after_equipment_insert
AFTER INSERT ON equipment
FOR EACH ROW
BEGIN
    UPDATE storages
    SET st_capacity = st_capacity - 1
    WHERE st_id = NEW.eq_st_id;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_equipment_delete` $$
USE `arsenal`$$
CREATE TRIGGER before_equipment_delete
BEFORE DELETE ON equipment
FOR EACH ROW
BEGIN
    UPDATE storages
    SET st_capacity = st_capacity + 1
    WHERE st_id = OLD.eq_st_id;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_equipment_update` $$
USE `arsenal`$$
CREATE TRIGGER before_equipment_update
BEFORE UPDATE ON equipment
FOR EACH ROW
BEGIN
    IF OLD.eq_st_id != NEW.eq_st_id THEN
        UPDATE storages
        SET st_capacity = st_capacity + 1
        WHERE st_id = OLD.eq_st_id;

        UPDATE storages
        SET st_capacity = st_capacity - 1
        WHERE st_id = NEW.eq_st_id;
    END IF;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_comm_devices_insert` $$
USE `arsenal`$$
CREATE TRIGGER before_comm_devices_insert
BEFORE INSERT ON comm_devices
FOR EACH ROW
BEGIN
    DECLARE current_capacity INT;
    
    SELECT st_capacity INTO current_capacity
    FROM storages
    WHERE st_id = NEW.cd_st_id;

    IF current_capacity <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Not enough capacity for chosen storage';
    END IF;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`after_comm_devices_insert` $$
USE `arsenal`$$
CREATE TRIGGER after_comm_devices_insert
AFTER INSERT ON comm_devices
FOR EACH ROW
BEGIN
    UPDATE storages
    SET st_capacity = st_capacity - 1
    WHERE st_id = NEW.cd_st_id;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_comm_devices_update` $$
USE `arsenal`$$
CREATE TRIGGER before_comm_devices_update
BEFORE UPDATE ON comm_devices
FOR EACH ROW
BEGIN
    IF OLD.cd_st_id != NEW.cd_st_id THEN
        UPDATE storages
        SET st_capacity = st_capacity + 1
        WHERE st_id = OLD.cd_st_id;

        UPDATE storages
        SET st_capacity = st_capacity - 1
        WHERE st_id = NEW.cd_st_id;
    END IF;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_comm_devices_delete` $$
USE `arsenal`$$
CREATE TRIGGER before_comm_devices_delete
BEFORE DELETE ON comm_devices
FOR EACH ROW
BEGIN
    UPDATE storages
    SET st_capacity = st_capacity + 1
    WHERE st_id = OLD.cd_st_id;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_med_supplies_insert` $$
USE `arsenal`$$
CREATE TRIGGER before_med_supplies_insert
BEFORE INSERT ON med_supplies
FOR EACH ROW
BEGIN
    DECLARE current_capacity INT;

    SELECT st_capacity INTO current_capacity
    FROM storages
    WHERE st_id = NEW.ms_st_id;

    IF current_capacity < NEW.ms_quantity THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Not enough capacity for chosen storage';
    END IF;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`after_med_supplies_insert` $$
USE `arsenal`$$
CREATE TRIGGER after_med_supplies_insert
AFTER INSERT ON med_supplies
FOR EACH ROW
BEGIN
    UPDATE storages
    SET st_capacity = st_capacity - NEW.ms_quantity
    WHERE st_id = NEW.ms_st_id;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_med_supplies_update` $$
USE `arsenal`$$
CREATE TRIGGER before_med_supplies_update
BEFORE UPDATE ON med_supplies
FOR EACH ROW
BEGIN
    IF OLD.ms_st_id != NEW.ms_st_id OR OLD.ms_quantity != NEW.ms_quantity THEN
        UPDATE storages
        SET st_capacity = st_capacity + OLD.ms_quantity
        WHERE st_id = OLD.ms_st_id;

        UPDATE storages
        SET st_capacity = st_capacity - NEW.ms_quantity
        WHERE st_id = NEW.ms_st_id;
    END IF;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_med_supplies_delete` $$
USE `arsenal`$$
CREATE TRIGGER before_med_supplies_delete
BEFORE DELETE ON med_supplies
FOR EACH ROW
BEGIN
    UPDATE storages
    SET st_capacity = st_capacity + OLD.ms_quantity
    WHERE st_id = OLD.ms_st_id;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_eng_equipment_insert` $$
USE `arsenal`$$
CREATE TRIGGER before_eng_equipment_insert
BEFORE INSERT ON eng_equipment
FOR EACH ROW
BEGIN
    DECLARE current_capacity INT;

    SELECT st_capacity INTO current_capacity
    FROM storages
    WHERE st_id = NEW.ee_st_id;

    IF current_capacity <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Not enough capacity for chosen storage';
    END IF;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`after_eng_equipment_insert` $$
USE `arsenal`$$
CREATE TRIGGER after_eng_equipment_insert
AFTER INSERT ON eng_equipment
FOR EACH ROW
BEGIN
    UPDATE storages
    SET st_capacity = st_capacity - 1
    WHERE st_id = NEW.ee_st_id;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_eng_equipment_delete` $$
USE `arsenal`$$
CREATE TRIGGER before_eng_equipment_delete
BEFORE DELETE ON eng_equipment
FOR EACH ROW
BEGIN
    UPDATE storages
    SET st_capacity = st_capacity + 1
    WHERE st_id = OLD.ee_st_id;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_eng_equipment_update` $$
USE `arsenal`$$
CREATE TRIGGER before_eng_equipment_update
BEFORE UPDATE ON eng_equipment
FOR EACH ROW
BEGIN
    IF OLD.ee_st_id != NEW.ee_st_id THEN
        UPDATE storages
        SET st_capacity = st_capacity + 1
        WHERE st_id = OLD.ee_st_id;

        UPDATE storages
        SET st_capacity = st_capacity - 1
        WHERE st_id = NEW.ee_st_id;
    END IF;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_m2m_weapons_ammunition_insert` $$
USE `arsenal`$$
CREATE TRIGGER before_m2m_weapons_ammunition_insert
BEFORE INSERT ON m2m_weapons_ammunition
FOR EACH ROW
BEGIN
    DECLARE weapon_caliber VARCHAR(20);
    DECLARE ammo_caliber VARCHAR(20);

    SELECT w_caliber INTO weapon_caliber
    FROM weapons
    WHERE w_id = NEW.wa_w_id;

    -- Получаем калибр боеприпасов
    SELECT am_caliber INTO ammo_caliber
    FROM ammunition
    WHERE am_id = NEW.wa_am_id;

    IF weapon_caliber != ammo_caliber THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Calibers does not match';
    END IF;
END;$$


USE `arsenal`$$
DROP TRIGGER IF EXISTS `arsenal`.`before_m2m_orders_suppliers_insert` $$
USE `arsenal`$$
CREATE TRIGGER before_m2m_orders_suppliers_insert
BEFORE INSERT ON m2m_orders_suppliers
FOR EACH ROW
BEGIN
    DECLARE supplier_count INT;
    SELECT COUNT(*) INTO supplier_count
    FROM m2m_orders_suppliers
    WHERE os_o_id = NEW.os_o_id AND os_sp_id = NEW.os_sp_id;
    
    IF supplier_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Supplier already connected to order.';
    END IF;
END$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
