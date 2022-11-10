USE `full-stack-shopping` ;
SET @position := 126;
SET @guitar:=126;
INSERT INTO product_category(category_name) VALUES ('Guitar');
INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
 unit_price, category_id, date_created)
 VALUES (concat('Guitars',@position), concat('guitar',@guitar), 'Guitar',
 CONCAT('assets/images/products/guitar/' ,@position,'.jpg')
,1,100,29.99,2, NOW());
  set @position := @position+1,@guitar:= @guitar+1;
  
  INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
 unit_price, category_id, date_created)
 VALUES (concat('Guitars',@position), concat('guitar',@guitar), 'Guitar',
 CONCAT('assets/images/products/guitar/' ,@position,'.jpg')
,1,100,29.99,2, NOW());
  set @position := @position+1,@guitar:= @guitar+1;
  
  INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
 unit_price, category_id, date_created)
 VALUES (concat('Guitars',@position), concat('guitar',@guitar), 'Guitar',
 CONCAT('assets/images/products/guitar/' ,@position,'.jpg')
,1,100,29.99,2, NOW());
  set @position := @position+1,@guitar:= @guitar+1;
  
  INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
 unit_price, category_id, date_created)
 VALUES (concat('Guitars',@position), concat('guitar',@guitar), 'Guitar',
 CONCAT('assets/images/products/guitar/' ,@position,'.jpg')
,1,100,29.99,2, NOW());
  set @position := @position+1,@guitar:= @guitar+1;
  
 
