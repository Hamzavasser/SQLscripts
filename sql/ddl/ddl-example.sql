show databases;
Create Database Gamestop;
use gamestop;

Create table customer (
customer_id int auto_increment,
name varchar(20) Not Null,
email varchar(100) Not Null,
address varchar(140) Not Null,
PRIMARY KEY (customer_id)
);

Create table product (
product_id int AUTO_INCREMENT,
title varchar(50) Not Null,
price decimal(6,2) Not Null,
stock int NOT NULL,
PRIMARY KEY (product_id)
);

Create table orders (
order_id int Auto_increment,
date_placed date not null,
fk_customer_id int not null,
fk_product_id int not null,
FOREIGN KEY (fk_customer_id) REFERENCES customer(customer_id),
FOREIGN KEY (fk_product_id) REFERENCES product(product_id),
PRIMARY KEY (order_id)
);








