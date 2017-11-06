-- Create schema
CREATE SCHEMA s3594800;

CREATE TABLE IF NOT EXISTS `s3594800`.`customer1` (
`customer_id` INT(11) NOT NULL AUTO_INCREMENT,
`surname` VARCHAR(45) NULL DEFAULT NULL,
`lastname` VARCHAR(45) NULL DEFAULT NULL,
`DOB` DATE NULL DEFAULT NULL,
`address` VARCHAR(45) NULL DEFAULT NULL,
`surburb` VARCHAR(45) NULL DEFAULT NULL,
`state` VARCHAR(45) NULL DEFAULT NULL,
`postcode` INT(4) NULL DEFAULT NULL,
PRIMARY KEY (`customer_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
--
-----------------------------------------------------
-- Table `s3594800`.`customization`
--
-----------------------------------------------------
CREATE TABLE IF NOT EXISTS `s3594800`.`customization` (
`customization_id` INT(11) NOT NULL AUTO_INCREMENT,
`data` VARCHAR(45) NOT NULL,
PRIMARY KEY (`customization_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
--
-----------------------------------------------------


-- Table `s3594800`.`item`
--
-----------------------------------------------------
CREATE TABLE IF NOT EXISTS `s3594800`.`item` (
`item_id` INT(11) NOT NULL AUTO_INCREMENT,
`name` VARCHAR(45) NULL,
`style` VARCHAR(255) NULL DEFAULT NULL,
`type` VARCHAR(45) NULL DEFAULT NULL,
`sleeves_type` VARCHAR(45) NULL DEFAULT NULL,
`size` VARCHAR(3) NULL DEFAULT NULL,
`color` VARCHAR(45) NULL DEFAULT NULL,
`price` INT(4) NULL DEFAULT NULL,
PRIMARY KEY (`item_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
--
-----------------------------------------------------
-- Table `s3594800`.`order`
--
-----------------------------------------------------
CREATE TABLE IF NOT EXISTS `s3594800`.`order` (
`order_id` INT(11) NOT NULL AUTO_INCREMENT,
`date_order` DATE NULL DEFAULT NULL,
`quantity` INT(11) NULL DEFAULT NULL,
`total_price` INT(11) NULL DEFAULT NULL,
`customer_id` INT(11) NULL DEFAULT NULL,
PRIMARY KEY (`order_id`),
INDEX `fk_order_customer11_idx` (`customer_id` ASC),
CONSTRAINT `fk_order_customer11`
FOREIGN KEY (`customer_id`)
REFERENCES `s3594800`.`customer1` (`customer_id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
--
-----------------------------------------------------
-- Table `s3594800`.`type`
--
-----------------------------------------------------
CREATE TABLE IF NOT EXISTS `s3594800`.`type` (
`type_info` VARCHAR(10) NOT NULL,
`size` VARCHAR(3) NOT NULL,
`price` INT(11) NOT NULL,
PRIMARY KEY (`type_info`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


--
-----------------------------------------------------
-- Table `s3594800`.`order_infor`
--
-----------------------------------------------------
CREATE TABLE IF NOT EXISTS `s3594800`.`order_infor` (
`Info_id` INT(11) NOT NULL AUTO_INCREMENT,
`order_id` INT(11) NULL DEFAULT NULL,
`item_id` INT(11) NULL DEFAULT NULL,
`customization_id` INT(11) NULL DEFAULT NULL,
`type_info` VARCHAR(45) NULL DEFAULT NULL,
PRIMARY KEY (`Info_id`),
INDEX `fk_Order_Infor_item1` (`item_id` ASC),
INDEX `fk_Order_Infor_order1` (`order_id` ASC),
INDEX `fk_order_infor_customization1` (`customization_id` ASC),
INDEX `fk_order_infor_Type1` (`type_info` ASC),
CONSTRAINT `fk_Order_Infor_item1`
FOREIGN KEY (`item_id`)
REFERENCES `s3594800`.`item` (`item_id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT `fk_Order_Infor_order1`
FOREIGN KEY (`order_id`)
REFERENCES `s3594800`.`order` (`order_id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT `fk_order_infor_Type1`
FOREIGN KEY (`type_info`)
REFERENCES `s3594800`.`type` (`type_info`)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT `fk_order_infor_customization1`
FOREIGN KEY (`customization_id`)
REFERENCES `s3594800`.`customization` (`customization_id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
--
-----------------------------------------------------
-- Table `s3594800`.`transact`
--
-----------------------------------------------------
CREATE TABLE IF NOT EXISTS `s3594800`.`transact` (
`transact_id` INT(11) NOT NULL AUTO_INCREMENT,
`date_purchase` DATE NULL DEFAULT NULL,
`received` VARCHAR(1) NULL DEFAULT NULL,
`purchaseType` VARCHAR(45) NULL DEFAULT NULL,
`cc_num` VARCHAR(16) NULL DEFAULT NULL,
`paypal_id` VARCHAR(45) NULL DEFAULT NULL,


`order_order_id` INT(11) NOT NULL,
`cc_exdate` VARCHAR(5) NULL DEFAULT NULL,
PRIMARY KEY (`transact_id`),
INDEX `fk_transact_order1_idx` (`order_order_id` ASC),
CONSTRAINT `fk_transact_order1`
FOREIGN KEY (`order_order_id`)
REFERENCES `s3594800`.`order` (`order_id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION);

