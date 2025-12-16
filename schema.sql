create table if not exists customers(
customer_ID int primary key auto_increment,
customer_name varchar(20),
email varchar(50),
city varchar(30),
signup_date date );

create table if not exists products(
product_ID int primary key auto_increment,
product_name varchar(30),
category varchar(20),
price decimal(10,2) );

create table if not exists orders(
order_ID int primary key auto_increment,
customer_ID int,
order_date date,
foreign key (customer_ID) references customers(customer_ID) );

create table if not exists order_details(
order_detail_id int primary key auto_increment,
order_id int,
product_id int,
quantity int,
foreign key(order_id) references orders(order_id),
foreign key(product_id) references products(product_id) );

create table if not exists payments (
payment_id int primary key auto_increment,
order_id int,
customer_id int,
order_date date,
payment_method VARCHAR(20),
payment_status VARCHAR(20),
foreign key(customer_id) references customers(customer_id) );
