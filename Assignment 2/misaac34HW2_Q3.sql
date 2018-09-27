
INSERT INTO customers(`cid`, `address`, `firstname`, `lastname`, `phone`)
VALUES(00246587911, '123 anywhere ln, notown, IA 60137', 'steve', 'hurtz', 00301234567);

INSERT INTO customers(`cid`, `address`, `firstname`, `lastname`, `phone`)
VALUES(00345678999, '111 any rd, greentown, GA, 50010', 'steve', 'carr', 00321023456);

INSERT INTO employees(`eid`, `address`, `firstname`, `lastname`, `phone`)
VALUES(00000000003, '600 lame rd, bluetown, IA, 50010', 'bobs', 'burgers', 00666666666);

INSERT INTO employees(`eid`, `address`, `firstname`, `lastname`, `phone`)
VALUES(00000000002, '500 lame rd, bluetown, IA, 50010', 'bob', 'bobs', 00555555555);

INSERT INTO employees(`eid`, `address`, `firstname`, `lastname`, `phone`)
VALUES(00000000001, '400 lame rd, bluetown, IA, 50010', 'robert', 'bobby', 00444444444);

INSERT INTO employees(`eid`, `address`, `firstname`, `lastname`, `phone`)
VALUES(00000000011, '300 lame rd, bluetown, IA, 50010', 'bob', 'shultz', 00333333333);

INSERT INTO employees(`eid`, `address`, `firstname`, `lastname`, `phone`)
VALUES(00000000111, '200 lame rd, bluetown, IA, 50010', 'kelly', 'shultz', 00222222222);

INSERT INTO employees(`eid`, `address`, `firstname`, `lastname`, `phone`)
VALUES(00000001111, '100 lame rd, bluetown, IA, 50010', 'ruth', 'kurts', 00111111111);

INSERT INTO hourly_workers(`hWage`, `hours`, `specialty`, `employees_eid`)
VALUES(12.75, 43, 'plastics', 00000001111);

INSERT INTO hourly_workers(`hWage`, `hours`, `specialty`, `employees_eid`)
VALUES(8.75, 37, 'shoes', 0000000000111);

INSERT INTO fulltime(`salary`, `title`, `employees_eid`)
VALUES(80000, 'Project Manager', 000000000011);

INSERT INTO fulltime(`salary`, `title`, `employees_eid`)
VALUES(90000, 'Lead Developer', 00000000001);

INSERT INTO managers(`salary`, `maxcapacity`, `employees_eid`)
VALUES(60000, 10, 00000000002);

INSERT INTO managers(`salary`, `maxcapacity`, `employees_eid`)
VALUES(70000, 13, 00000000003);

INSERT INTO products(`iid`, `name`, `qtyleft`, `price`, `hourly_workers_employees_eid`)
VALUES(00021678911, 'water bottle', 200, 89.99, 00000001111);

INSERT INTO products(`iid`, `name`, `qtyleft`, `price`, `hourly_workers_employees_eid`)
VALUES(00045678911, 'running shoes', 50, 69.99, 00000000111);

INSERT INTO producttype(`typename`, `products_iid`)
VALUES('accessories', 00021678911);

INSERT INTO producttype(`typename`, `products_iid`)
VALUES('fitness', 00045678911);

INSERT INTO suppliers(`sid`, `sname`, `address`)
VALUES(00345432100, 'camelback', '555 no st, anytown, IA 50001');

INSERT INTO suppliers(`sid`, `sname`, `address`)
VALUES(00345432101, 'reebox', '500 no st, anytown, PA 50011');

INSERT INTO ingredients(`itemid`, `desc`)
VALUES(00011100011, 'plastic, rubber');

INSERT INTO ingredients(`itemid`, `desc`)
VALUES(00011122200, 'rubber, cloth');

INSERT INTO boughtfrom(`products_iid`, `ingredients_itemid`, `suppliers_sid`, `qty`, `price`, `DoP`)
VALUES(00045678911, 00011122200, 00345432101, 500, 87.99, 06182003);

INSERT INTO boughtfrom(`products_iid`, `ingredients_itemid`, `suppliers_sid`, `qty`, `price`, `DoP`)
VALUES(00021678911, 00011100011, 00345432100, 1000, 32.99, 06262004);

INSERT INTO purchase(`products_iid`, `customers_cid`, `purchaseQTY`)
VALUES(00045678911, 00345678999, 2);

INSERT INTO purchase(`products_iid`, `customers_cid`, `purchaseQTY`)
VALUES(00021678911, 00246587911, 3);

