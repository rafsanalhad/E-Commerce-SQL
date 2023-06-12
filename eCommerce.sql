drop database if exists ecommerce;
create database ecommerce;

use ecommerce;
create table payment(
    payment-_id int primary key,
    bank_coode int
    billing_adress varchar(50),
    card_holder_name varchar(50),
    cvv int,
    payment_gateway varchar(25),
    currency varchar(15)
);