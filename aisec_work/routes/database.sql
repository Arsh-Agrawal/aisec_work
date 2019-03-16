create database dbs_project;

use dbs_project;

	-- entities table

create table user(
	id int(3) auto increment primary key,
	fname varchar(10) not null,
	lname varchar(10) not null,
	address varchar(40) not null,
	phone varchar(10) not null,
	dob varchar(10) not null
);

create table type(
	id int(2) auto increment not null primary key,
	name varchar(10) not null,
	beds int(2) not null,
	cost_per_night int(4) not null
);

create table room(
	room_no int(4) auto increment primary key,
	status boolean(0) default 0 not null,
	floor int(2) not null,
	type_id int(2) references type not null
);

create table facilities(
	id int(2) not null primary key,
	name varchar(10) not null,
	cost int(3) not null,
	hours int(1) not null
);

create table room_service(
	id int(2) not null primary key,
	name varchar(10) not null ,
	cost int(3) not null,
	quantity int(1) not null
);

create table bill(
	id int(3) auto increment not null,
	u_id int(3) references user not null,
	price int(9) not null,
	discount int(2) not null,
	primary key(id,u_id)
);

	-- relationship table

create table books(
	u_id int(3) references user not null,
	room_no int(4) references room not null,
	check_in date not null,
	check_out date not null,
	primary key(u_id,room_no)
);	

create table uses(
	u_id int(3) references user not null,
	f_id int(2) references facilities not null,
	primary key(u_id,f_id)

);

create table orders(
	u_id int(3) references user not null,
	r_id int(2) references room_service not null,
	primary key(u_id,r_id)
);
