drop database if exists ecommerce;
create database ecommerce;

use ecommerce;

create table category (
    category_id INT PRIMARY KEY NOT NULL,
    category_name VARCHAR(50) NOT NULL
);