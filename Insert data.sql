-- Insert data into database
INSERT INTO customer1 (surname, lastname, DOB, address, surburb, state, postcode)
VALUES ('Cardinal', 'Tom B. Erichsen', '1997/08/07', '2 Kingsley Pl', 'Delahey', 'VIC', '3011');
INSERT INTO customer1 (surname, lastname, DOB, address, surburb, state, postcode)
VALUES ('Truc', 'Mike', '1989/01/01', '2 Kingsley Pl', 'Delahey', 'VIC', '3011');
INSERT INTO customer1 (surname, lastname, DOB, address, surburb, state, postcode)
VALUES ('Mike', 'Chris', '1989/01/01', '2 Kingsley Pl', 'St Albans', 'VIC', '3037');
INSERT INTO customer1 (surname, lastname, DOB, address, surburb, state, postcode)
VALUES ('sthopier', 'Mike', '1989/01/01', '2 Kingsley Pl', 'Delahey', 'VIC', '3021');
INSERT INTO customer1 (surname, lastname, DOB, address, surburb, state, postcode)
VALUES ('Mike', 'Tim', '1989/01/01', '2 Kingsley Pl', 'Delahey', 'VIC', '3037');
INSERT INTO customer1 (surname, lastname, DOB, address, surburb, state, postcode)
VALUES ('Gleen', 'Mike', '1989/01/01', '2 Kingsley Pl', 'Melbourne', 'VIC', '3000');
INSERT INTO customer1 (surname, lastname, DOB, address, surburb, state, postcode)
VALUES ('Mike', 'Ly', '1989/01/01', '2 Kingsley Pl', 'Fooscray', 'VIC', '3059');
INSERT INTO customer1 (surname, lastname, DOB, address, surburb, state, postcode)
VALUES ('Truc', 'Mike', '1989/01/01', '2 Kingsley Pl', 'Delahey', 'VIC', '3037');
Insert into type (type_info, size, price) values ('LogoS','100','1');
Insert into type values ('LogoM','200','1');
Insert into type values ('LogoL','300','1');
Insert into type values ('TextS','100','1');
Insert into type values ('TextM','200','2');
Insert into type values ('TextL','300','3');
Insert into type values ('ImgS','100','1');
Insert into type values ('ImgM','200','2');
Insert into type values ('ImgL','300','3');

insert into customization (data) values ('test');
insert into customization (data) values ('school');
insert into customization (data) values ('database');
insert into customization (data) values ('data management');
insert into customization (data) values ('funny');


insert into customization (data) values ('funnies');
insert into customization (data) values ('rock');

insert into item (name, style, type, sleeves_type, size, color, price) values ('shirt', 'long-tee',
't-shirt', 'short', 'S', 'red', '7');
insert into item (name, style, type, sleeves_type, size, color, price) values ('shirt', 'T-bar', 't-
shirt', 'long', 'M', 'red', '8');
insert into item (name, style, type, sleeves_type, size, color, price) values ('shirt', 'normal', 't-
shirt', 'middle', 'L', 'red', '9');
insert into item (name, style, type, sleeves_type, size, color, price) values ('shirt', 'T-bar', 't-
shirt', 'long', 'S', 'red', '7');
insert into item (name, style, type, sleeves_type, size, color, price) values ('shirt', 'oversize',
't-shirt', 'short', 'M', 'red', '8');
insert into item (name, style, type, sleeves_type, size, color, price) values ('shirt', 'T-bar', 't-
shirt', 'short', 'L', 'red', '9');

insert into `order` (date_order, quantity, total_price, customer_id) values
('2017/10/20','10','100','1');
insert into `order` (date_order, quantity, total_price, customer_id) values
('2017/10/20','20','200','6');
insert into `order` (date_order, quantity, total_price, customer_id) values
('2017/10/20','30','300','4');
insert into `order` (date_order, quantity, total_price, customer_id) values
('2017/10/20','40','400','5');
insert into `order` (date_order, quantity, total_price, customer_id) values
('2017/10/20','50','500','1');
insert into `order` (date_order, quantity, total_price, customer_id) values
('2017/10/20','60','600','2');

insert into order_infor (order_id, item_id, customization_id, type_info) values
('1','1','1','LogoS');
insert into order_infor (order_id, item_id, customization_id, type_info) values
('2','5','2','LogoS');
insert into order_infor (order_id, item_id, customization_id, type_info) values
('3','2','3','LogoS');
insert into order_infor (order_id, item_id, customization_id, type_info) values
('5','4','4','TextL');
insert into order_infor (order_id, item_id, customization_id, type_info) values
('7','6','5','ImgM');
insert into order_infor (order_id, item_id, customization_id, type_info) values
('4','7','6','LogoS');
insert into order_infor (order_id, item_id, customization_id, type_info) values
('3','2','7','LogoS');


insert into order_infor (order_id, item_id, customization_id, type_info) values
('10','1','8','TextL');
insert into order_infor (order_id, item_id, customization_id, type_info) values
('13','1','7','ImgM');

insert into transact (date_purchase, received, purchaseType, cc_num, paypal_id,
order_order_id, cc_exdate) values ('2017/10/20','Y','bank','','','1','');
insert into transact (date_purchase, received, purchaseType, cc_num, paypal_id,
order_order_id, cc_exdate) values
('2017/10/20','Y','creditcard','0234567894561235','','1','07/20');
insert into transact (date_purchase, received, purchaseType, cc_num, paypal_id,
order_order_id, cc_exdate) values
('2017/10/20','N','paypal','','test@gmail.com','3','');
insert into transact (date_purchase, received, purchaseType, cc_num, paypal_id,
order_order_id, cc_exdate) values ('2017/10/20','N','bank','','','1','');
insert into transact (date_purchase, received, purchaseType, cc_num, paypal_id,
order_order_id, cc_exdate) values ('2017/10/20','Y','bank','','','1','');

alter table item
add column stocked_quantity INT;
update item
set stocked_quantity = ‘100’
where color = ‘red’;

alter table customer1
add column email varchar(45);
alter table customer1
add column phone varchar(11);
UPDATE customer1
SET email = 'test@gmail.com'
WHERE address = '2 Kingsley Pl';
UPDATE customer1
SET phone = '0392183492'
WHERE address = '2 Kingsley Pl';


UPDATE `transact`
SET date_purchase = Null
WHERE received = 'N';
alter table `s3594800`.`customer1`
change column `lastname` `firstname` varchar(45);

alter table `order`
add column cancel VARCHAR(1);
update `order`
set cancel = 'Y'
where customer_id = '6';