/* SQL Basics */

CREATE DATABASE coffee_store;

USE coffee_store;

CREATE TABLE products(
	id INT auto_increment PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    price DECIMAL(3,2)
);

CREATE TABLE customers(
	id INT auto_increment PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30),
    gender ENUM('M','F'),
    phonenumber VARCHAR(15)
);

CREATE TABLE orders(
	id INT auto_increment PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_time DATETIME,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);