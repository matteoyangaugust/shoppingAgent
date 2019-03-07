create database shopping_agent;

use shopping_agent;

create table system_user(
	sn int primary key auto_increment,
    name varchar(20) not null default '',
	username varchar(20) not null default '',
	password varchar(20) not null default '',
	role varchar(15) not null default 'ROLE_UNKNOWN',
	email varchar(200) not null default '',
	facebook_name varchar(200) not null default '',
	phone varchar(50) not null default '',
	status int not null default 0
);

create table system_main_menu(
	sn int primary key auto_increment,
	name varchar(10) not null default '',
	category varchar(10) not null default '',
	is_default int not null default 0
);

create table system_sub_menu(
	sn int primary key auto_increment,
	main_menu_sn int not null default 0,
	name varchar(10) not null default '',
	url varchar(200) not null default '',
	roles varchar(200) not null default '',
	is_default int not null default 0,
	is_show int not null default 1
);

create table sa_item_category(
	sn int primary key auto_increment,
	name varchar(100) not null default '',
	activation tinyint not null default 1
);

create table sa_item(
	sn int primary key auto_increment,
	category_sn int not null default 0,
	brand_sn int not null default 0,
	name varchar(100) not null default '',
	allow_size int not null default 0,
	allow_color int not null default 0,
	gender int not null default 0,
	default_cost double not null default 0,
	default_international_shipping_fee double  not null default 0,
	default_domestic_shipping_fee int not null default 0,
	default_profit int not null default 0,
	default_fixed_price int not null default 0,
	default_selling_price int not null default 0,
	does_sell int not null default 1,
	description varchar(500) not null default ''
);

create table sa_item_photo(
	sn int primary key auto_increment,
	item_sn int not null default 0,
	name varchar(200) not null default '',
	base_64_photo MediumBlob
);

create table sa_item_color(
	sn int primary key auto_increment,
	item_sn int not null default 0,
	color varchar(30) not null default 'none'
);

create table sa_item_size(
	sn int primary key auto_increment,
	item_sn int not null default 0,
	size varchar(30) not null default 'none'
);

create table sa_item_stock(
	sn int primary key auto_increment,
	item_sn int not null default 0,
	color_sn int not null default 0,
	size_sn int not null default 0,
	stock int not null default 0
);

create table sa_item_brand(
	sn int primary key auto_increment,
	name varchar(50) not null default '',
	activation tinyint not null default 1
)

