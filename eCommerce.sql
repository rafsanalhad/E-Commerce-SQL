drop database if exists ecommerce;
create database ecommerce;

use ecommerce;

CREATE TABLE category (
    category_id INT PRIMARY KEY NOT NULL,
    category_name VARCHAR(50) NOT NULL
);


CREATE TABLE user (
    user_id INT PRIMARY KEY NOT NULL,
    username VARCHAR(20) UNIQUE NOT NULL,
    name VARCHAR(50) NOT NULL,
    gender ENUM('L', 'P') NOT NULL,
    birth_date DATE NOT NULL,
    address TEXT NOT NULL,
    phone_number VARCHAR(30) NOT NULL,
    email_address VARCHAR(50) NOT NULL,
    join_date DATETIME NOT NULL,
    country_code VARCHAR(10) NOT NULL,
    store_id INT(15),
    active_status BOOLEAN NOT NULL,
    last_login DATETIME NOT NULL,
    payment_id INT NULL
);

CREATE TABLE product (
    product_id INT PRIMARY KEY NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    price DOUBLE NOT NULL,
    quantity INT NOT NULL,
    voucher_id INT NOT NULL,
    category_id INT NOT NULL,
    store_id INT NOT NULL,
    date_posted DATETIME NOT NULL
);
create table payment(
    payment-_id int primary key,
    bank_coode int
    billing_adress varchar(50),
    card_holder_name varchar(50),
    cvv int,
    payment_gateway varchar(25),
    currency varchar(15)
);