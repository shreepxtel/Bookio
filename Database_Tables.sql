create DATABASE booking_system;
\c booking_system

/*create student table to be able to identify
portsmouth university students validated on the login page*/
create table student(
  student_id varchar(6) primary key,
  student_password varchar(20) not null
);

/*create computer table to store information about computers available*/
create table computer(
  comp_id serial primary Key,
  comp_location varchar(100) not null
  comp_os varchar(20) not null,
  comp_available boolean not null
);

/*create laptop table to store information about laptops available and to book a laptop*/
create table computer(
  laptop_id serial primary Key,
  laptop_location varchar(100) not null
  laptop_os varchar(20) not null,
  laptop_available boolean not null
);

/*create room table to store information about the rooms available,
for example a person might want a room that allows upto 30 students and has a
projector*/
create table room(
  room_id varchar(10) primary key,
  room_location varchar(100) not null,
  room_type varchar(100) not null,
  room_capacity int not null,
  room_features varchar(200) not null
  room_available boolean not null
);

/*create booking table. If a student wants to use a room, they have to book it*/
/*a booking will provide the room id, student id, time slot and will generate a
booking_id*/ 
create table booking(
  booking_id serial primary key,
  booking_time interval not null,
  student_id int references student(student_id) not null,
  comp_id int references computer(comp_id) not null,
  laptop_id int references laptop(laptop_id) not null,
  room_id int references room(room_id) not null
);
