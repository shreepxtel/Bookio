/*compile database & made sure table creation match inserts in terms of data types etc.*/

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
  comp_location varchar(100) not null,
  comp_os varchar(20) not null,
  comp_available boolean not null
);

/*create laptop table to store information about laptops available and to book a laptop*/
create table laptop(
  laptop_id serial primary Key,
  laptop_os varchar(20) not null,
  laptop_available boolean not null
);

/*create room table to store information about the rooms available,
for example a person might want a room that allows upto 30 students and has a
projector*/
create table room(
  room_id serial primary key,
  room_capacity varchar(15) not null,
  room_type varchar(100) not null,
  room_features varchar(200) not null,
  room_available boolean not null
  );

/*create booking table. If a student wants to use a room, they have to book it*/
/*a booking will provide the room id, student id, time slot and will generate a
booking_id*/
create table booking(
  booking_id serial primary key,
  booking_time timestamp not null,
  student_id varchar(6) references student(student_id),
  comp_id int references computer(comp_id),
  laptop_id int references laptop(laptop_id),
  room_id varchar(10) references room(room_id)
);


insert into Student (Student_id, Student_password) values (894074, 'NcGAqd6g8XX5');
insert into Student (Student_id, Student_password) values (918993, 'RWSIbROkv');
insert into Student (Student_id, Student_password) values (912284, 'AcpDRqUNEA');
insert into Student (Student_id, Student_password) values (820484, 'VJb7FY9el5h');
insert into Student (Student_id, Student_password) values (893645, 'tZw2U8DGO');
insert into Student (Student_id, Student_password) values (963522, 'gNS0IMohyxVg');
insert into Student (Student_id, Student_password) values (830322, 'ujXsOWb8S7');
insert into Student (Student_id, Student_password) values (912739, 'ADWdf7Ru');
insert into Student (Student_id, Student_password) values (920373, '6CNPS0tbqmMe');
insert into Student (Student_id, Student_password) values (892634, 'Vfk5johZ');

insert into Computer (comp_id, comp_os, comp_location, comp_available) values (401, 'floor 1', 'Linux', TRUE);
insert into Computer (comp_id, comp_os, comp_location, comp_available) values (402, 'floor 2', 'Mac', FALSE);
insert into Computer (comp_id, comp_os, comp_location, comp_available) values (403, 'ground floor', 'Mac', TRUE);
insert into Computer (comp_id, comp_os, comp_location, comp_available) values (404, 'floor 1', 'Mac', TRUE);
insert into Computer (comp_id, comp_os, comp_location, comp_available) values (405, 'floor 1', 'Windows 10', FALSE);
insert into Computer (comp_id, comp_os, comp_location, comp_available) values (406, 'floor 2', 'Windows 10', TRUE);
insert into Computer (comp_id, comp_os, comp_location, comp_available) values (407, 'floor 1', 'Windows 10', TRUE);
insert into Computer (comp_id, comp_os, comp_location, comp_available) values (408, 'ground floor', 'Mac', TRUE);
insert into Computer (comp_id, comp_os, comp_location, comp_available) values (409, 'floor 2', 'Mac', FALSE);
insert into Computer (comp_id, comp_os, comp_location, comp_available) values (410, 'floor 2', 'Mac', TRUE);

insert into Laptop (laptop_id, laptop_os, laptop_available) values (501, 'Linux', TRUE);
insert into Laptop (laptop_id, laptop_os, laptop_available) values (502, 'Mac', FALSE);
insert into Laptop (laptop_id, laptop_os, laptop_available) values (503, 'Mac', TRUE);
insert into Laptop (laptop_id, laptop_os, laptop_available) values (504, 'Mac', TRUE);
insert into Laptop (laptop_id, laptop_os, laptop_available) values (505, 'Windows 10', FALSE);
insert into Laptop (laptop_id, laptop_os, laptop_available) values (506, 'Windows 10', TRUE);
insert into Laptop (laptop_id, laptop_os, laptop_available) values (507, 'Windows 10', TRUE);
insert into Laptop (laptop_id, laptop_os, laptop_available) values (508, 'Mac', TRUE);
insert into Laptop (laptop_id, laptop_os, laptop_available) values (509, 'Mac', FALSE);
insert into Laptop (laptop_id, laptop_os, laptop_available) values (510, 'Mac', TRUE);

insert into Room (room_id, room_capacity, room_type, room_features, Room_available) values (101, '6-8 people', 'Computer Room', 'Inc Projector', TRUE);
insert into Room (room_id, room_capacity, room_type, room_features, Room_available) values (102, '3 people', 'Teaching room', 'Inc presentation Stand', FALSE);
insert into Room (room_id, room_capacity, room_type, room_features, Room_available) values (103, '6-8 people', 'Teaching room', 'Inc presentation Stand', TRUE);
insert into Room (room_id, room_capacity, room_type, room_features, Room_available) values (104, '4-5 people', 'Teaching room', 'Inc presentation Stand', TRUE);
insert into Room (room_id, room_capacity, room_type, room_features, Room_available) values (105, '3 people', 'Teaching room', 'Inc Whiteboard', FALSE);
insert into Room (room_id, room_capacity, room_type, room_features, Room_available) values (106, '4-5 people', 'Computer Room', 'Inc presentation Stand', FALSE);
insert into Room (room_id, room_capacity, room_type, room_features, Room_available) values (107, '3 people', 'Teaching room', 'Inc presentation Stand', TRUE);
insert into Room (room_id, room_capacity, room_type, room_features, Room_available) values (108, '4-5 people', 'Teaching room', 'Inc Projector', FALSE);
insert into Room (room_id, room_capacity, room_type, room_features, Room_available) values (109, '3 people', 'Teaching room', 'Inc presentation Stand', TRUE);
insert into Room (room_id, room_capacity, room_type, room_features, Room_available) values (110, '6-8 people', 'Teaching room', 'Inc Whiteboard', FALSE);

insert into Booking (booking_id, booking_time, student_id, room_id, laptop_id) values (801, '2019-12-08 04:05:06', 894074, 101, null);
insert into Booking (booking_id, booking_time, student_id, room_id, laptop_id) values (802, '2019-11-16 03:08:16', 918993, 109, null);
insert into Booking (booking_id, booking_time, student_id, room_id, laptop_id) values (803, '2020-01-01 12:05:00', 912284, 108, null);
insert into Booking (booking_id, booking_time, student_id, room_id, laptop_id) values (804, '2020-01-04 14:15:07', 820484, 104, null);
insert into Booking (booking_id, booking_time, student_id, room_id, laptop_id) values (805, '2019-11-26 15:08:16', 918993, null, 501);
insert into Booking (booking_id, booking_time, student_id, room_id, laptop_id) values (806, '2019-10-01 11:05:00', 912284, null, 505);
insert into Booking (booking_id, booking_time, student_id, room_id, laptop_id) values (807, '2020-01-04 18:15:07', 820484, null, 508);
