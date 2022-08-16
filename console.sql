create  database database1;



create table contries(
    code int primary key,
    name varchar(20) unique ,
    continet_name varchar(20) not null


);

create table users(
    id int primary key ,
    full_name varchar(20),
    email varchar(20) unique ,
    gender char(1) check (gender='m'or gender='f'),
    date_of_birth varchar(15),
    created_at datetime,
    contry_code int,
    foreign key (contry_code) references contries(code));



create table orders (
        id int primary key ,
        user_id int ,
        status char(6) check (status='start' or status='finish' ),
        created_at datetime,
        foreign key(user_id)references users(id) );

create table products (
    id int primary key,
     name varchar(10) not null,
      price int default 0,
      status varchar(10)check (status='valid' or status='expired' ),
      created_at datetime );

create table order_products (
    order_id int,
    product_id int,
     quantity int default 0,
      foreign key(order_id)references orders(id),
      foreign key(product_id)references products(id) );
