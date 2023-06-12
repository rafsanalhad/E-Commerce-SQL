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

CREATE TABLE voucher (
    voucher_id INT PRIMARY KEY NOT NULL,
    voucher_code VARCHAR(50) NOT NULL,
    store_id INT NOT NULL,
    discount_percentage DECIMAL(5,2) NOT NULL,
    usage_limit INT NOT NULL,
    usage_count INT NOT NULL,
    date_created DATETIME NOT NULL,
    date_expired DATETIME NOT NULL
);

CREATE TABLE notification (
    notification_id INT PRIMARY KEY NOT NULL,
    user_id INT NOT NULL,
    store_id INT NOT NULL,
    notification_type VARCHAR(50) NOT NULL,
    notification_role VARCHAR(50) NOT NULL,
    notification_text TEXT NOT NULL,
    notification_timestamp TIMESTAMP NOT NULL
);

CREATE TABLE chat (
    chat_id INT PRIMARY KEY NOT NULL,
    message TEXT NOT NULL,
    timestamp TIMESTAMP NOT NULL,
    is_read BOOLEAN NOT NULL,
    is_archived BOOLEAN NOT NULL,
    store_id INT NOT NULL,
    product_id INT NULL,
    user_id INT NOT NULL
);

create table payment(
    payment_id int primary key,
    bank_code int,
    billing_adress varchar(50),
    card_holder_name varchar(50),
    cvv int,
    payment_gateway varchar(25),
    currency varchar(15)
);
create table store(
    store_id int primary key,
    user_id int,
    store_name varchar(50),
    country_code varchar(10),
    description varchar(100),
    date_created DATETIME,
    store_rating DOUBLE,
    last_online DATETIME,
    active_status boolean
);
create table order(
    order_id int primary key,
    store_id int,
    product_id int,
    quantity int,
    price double,
    order_date DATETIME,
    payment_method int,
    payment_status boolean,
    order_status boolean
);
create table transaction(
    transaction_id int primary key,
    user_id int,
    order_id int,
    payment_method int,
    transaction_date DATETIME,
    transaction_amount int,
    transaction_status boolean,
    transaction_confirmation boolean
);
