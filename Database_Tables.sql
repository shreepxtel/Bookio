create DATABASE booking_system;
\c booking_system

create table student(
  student_id varchar(6) primary key,
  student_password varchar(20) not null
);

create table computer(
  comp_id serial primary Key,
  comp_type varchar(100) not null,
  comp_location varchar(100) not null
);

create table room(
  room_id varchar(10) primary key,
  room_type varchar(100) not null,
  room_capacity int not null,
  room_features varchar(200) not null
);

create table booking(
  booking_id serial primary key,
  booking_time interval not null,
  booking_location varchar(100) not null,
  student_id int references student(student_id) not null,
  comp_id int references computer(comp_id) not null,
  room_id int references room(room_id) not null
);
