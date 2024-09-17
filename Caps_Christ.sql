create database caps_christ_attendance;
use caps_christ_attendance;
create table coordinator (
    coordinator_id int primary key,
    name varchar(100) not null,
    email varchar(100),
    phone_number varchar(20),
    date_of_joining date not null
);
create table wing (
    wing_id int primary key,
    wing_name varchar(100) not null
);
create table mentor (
    mentor_id int primary key,
    name varchar(100) not null,
    email varchar(100),
    phone_number varchar(20),
    wing_id int,
    date_of_joining date not null,
    foreign key (wing_id) references wing(wing_id)
);
create table team_leader (
    team_leader_id int primary key,
    name varchar(100) not null,
    email varchar(100),
    phone_number varchar(20),
    mentor_id int,
    wing_id int,
    date_of_joining date not null,
    foreign key (mentor_id) references mentor(mentor_id),
    foreign key (wing_id) references wing(wing_id)
);
create table volunteer (
    volunteer_id int primary key,
    name varchar(100) not null,
    email varchar(100),
    phone_number varchar(20),
    team_leader_id int,
    date_of_joining date not null,
    foreign key (team_leader_id) references team_leader(team_leader_id)
);
create table attendance (
    attendance_id int primary key,
    date date not null,
    status varchar(10) not null,
    volunteer_id int,
    foreign key (volunteer_id) references volunteer(volunteer_id)
);

insert into coordinator (coordinator_id, name, email, phone_number, date_of_joining)
values 
(1, 'Jacob Stephan', 'jacobstephan@gmail.com', '9658245821', '2022-01-15'),
(2, 'Sarah Joseph', 'sarajoseph@gmail.com', '9652418274', '2023-03-21');

insert into wing (wing_id, wing_name)
values 
(101, 'Quantum Computing'),
(102, 'Programming'),
(103, 'Soft Skill'),
(104, 'Financial Education');

insert into mentor (mentor_id, name, email, phone_number, wing_id, date_of_joining)
values 
(1001, 'John Doe', 'johndoe@gmail.com', '9658245827', 101, '2021-06-10'),
(1002, 'Jane Smith', 'janesmith@gmail.com', '9876543210', 102, '2022-09-05'),
(1003, 'Michael Johnson', 'michaeljohnson@gmail.com', '9653241582', 103, '2020-11-19'),
(1004, 'Emily Brown', 'emilybrown@gmail.com', '9555826354', 104, '2023-01-15');

insert into team_leader (team_leader_id, name, email, phone_number, mentor_id, wing_id, date_of_joining)
values 
(100001, 'Alice Johnson', 'alicejohnson@gmail.com', '9658745263', 1001, 101, '2022-04-15'),
(100002, 'Bob Smith', 'bobsmith@gmail.com', '9658243568', 1001, 101, '2023-07-10'),
(200001, 'Charlie Brown', 'charliebrown@gmail.com', '9658245826', 1002, 102, '2021-05-25'),
(200002, 'Diana Lee', 'dianalee@gmail.com', '9875421365', 1002, 102, '2020-09-12'),
(300001, 'Eric Davis', 'ericdavis@gmail.com', '9658241425', 1003, 103, '2022-01-18'),
(300002, 'Fiona Carter', 'fionacarter@gmail.com', '9635241415', 1003, 103, '2023-03-05'),
(400001, 'George Wilson', 'georgewilson@gmail.com', '9865325852', 1004, 104, '2021-11-22'),
(400002, 'Helen Miller', 'helenmiller@gmail.com', '9852524152', 1004, 104, '2023-06-30');

insert into volunteer (volunteer_id, name, email, phone_number, team_leader_id, date_of_joining)
values 
(1000001, 'Alex Turner', 'alexturner@gmail.com', '9856524857', 100001, '2022-07-01'),
(1000002, 'Bella Davis', 'belladavis@gmail.com', '9652458754', 100001, '2023-08-15'),
(1000003, 'Charlie Green', 'charlieg@gmail.com', '9856325484', 100002, '2021-05-10'),
(1000004, 'Daisy White', 'daisyw@gmail.com', '9852548754', 100002, '2020-03-19'),
(1000005, 'Emily Brown', 'emilyb@gmail.com', '9658214752', 200001, '2023-01-22'),
(1000006, 'Frank Miller', 'frankm@gmail.com', '9658245872', 200001, '2022-10-30'),
(1000007, 'Grace Johnson', 'gracej@gmail.com', '9584712563', 200002, '2021-12-05'),
(1000008, 'Henry Carter', 'henryc@gmail.com', '9658241852', 200002, '2023-04-15'),
(1000009, 'Ivy Lee', 'ivy@gmail.com', '9012345678', 300001, '2020-09-20'),
(1000010, 'Jack Smith', 'jacksmith@gmail.com', '9856235241', 300001, '2021-06-18'),
(1000011, 'Liam Anderson', 'liamanderson@gmail.com', '9678521463', 300002, '2024-01-15'),
(1000012, 'Mia Martinez', 'miamartinez@gmail.com', '9654781320', 300002, '2024-02-20'),
(1000013, 'Noah Wilson', 'noahwilson@gmail.com', '9648753012', 400001, '2023-11-12'),
(1000014, 'Olivia Brown', 'oliviabrown@gmail.com', '9632547890', 400001, '2023-12-05'),
(1000015, 'Sophia Clark', 'sophiaclark@gmail.com', '9656321457', 400002, '2024-03-21'),
(1000016, 'Jackson Lewis', 'jacksonlewis@gmail.com', '9654178205', 400002, '2024-04-18');

insert into attendance (attendance_id, date, status, volunteer_id)
values
(1, '2024-08-01', 'Present', 1000001),
(2, '2024-08-01', 'Absent', 1000002),
(3, '2024-08-01', 'Present', 1000003),
(4, '2024-08-01', 'Absent', 1000004),
(5, '2024-08-01', 'Present', 1000005),
(6, '2024-08-02', 'Present', 1000001),
(7, '2024-08-02', 'Absent', 1000002),
(8, '2024-08-02', 'Present', 1000003),
(9, '2024-08-02', 'Absent', 1000004),
(10, '2024-08-02', 'Present', 1000005),
(11, '2024-08-03', 'Present', 1000006),
(12, '2024-08-03', 'Absent', 1000007),
(13, '2024-08-03', 'Present', 1000008),
(14, '2024-08-03', 'Absent', 1000009),
(15, '2024-08-03', 'Present', 1000010),
(16, '2024-08-04', 'Present', 1000011),
(17, '2024-08-04', 'Absent', 1000012),
(18, '2024-08-04', 'Present', 1000013),
(19, '2024-08-04', 'Absent', 1000014),
(20, '2024-08-04', 'Present', 1000015),
(21, '2024-08-05', 'Present', 1000016),
(22, '2024-08-05', 'Absent', 1000001),
(23, '2024-08-05', 'Present', 1000002),
(24, '2024-08-05', 'Absent', 1000003),
(25, '2024-08-05', 'Present', 1000004);

create role 'team_leader';
create role 'mentor';

grant insert on caps_christ_attendance.volunteer to 'team_leader';
grant insert on caps_christ_attendance.attendance to 'team_leader';

grant update, delete on caps_christ_attendance.volunteer to 'mentor';