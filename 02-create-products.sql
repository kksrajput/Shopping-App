-- -----------------------------------------------------
-- Schema full-stack-shopping-app
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-shopping`;

-- DROP SCHEMA IF EXISTS `full-stack-shopping`;
CREATE SCHEMA `full-stack-shopping`;


USE `full-stack-shopping` ;


CREATE TABLE IF NOT EXISTS `full-stack-shopping`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;


CREATE TABLE IF NOT EXISTS `full-stack-shopping`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


INSERT INTO product_category(category_name) VALUES ('BOOKS');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TechBooks-101', 'Spring in Action', 'Learn Spring',
'assets/images/products/books/101.jpg'
,1,100,19.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TechBooks-102', 'Pro Spring', 'Learn Spring',
'assets/images/products/books/102.jpg'
,1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TechBooks-103', 'MicroServices', 'Learn Microservices',
'assets/images/products/books/103.jpg'
,1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TechBooks-104', '189 Coding interview', 'Learn Coding',
'assets/images/products/books/104.jpg'
,1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TechBooks-105', 'Head First Java', 'Learn Java',
'assets/images/products/books/105.jpg'
,1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TechBooks-106', 'Ang-book', 'Learn Coding',
'assets/images/products/books/106.jpg'
,1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TechBooks-107', 'Road to React', 'Learn Coding',
'assets/images/products/books/107.jpg'
,1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TechBooks-108', 'The C programming language', 'Learn Coding',
'assets/images/products/books/108.jpg'
,1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TechBooks-109', 'C++ Primer plus', 'Learn Coding',
'assets/images/products/books/109.jpg'
,1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TechBooks-110', 'Effective java', 'Learn Coding',
'assets/images/products/books/110.jpg'
,1,100,29.99,1, NOW());
