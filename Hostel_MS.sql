
drop table bill;
drop table reservation;
drop table room; 
drop table employee;
drop table customer;

create table employee(
	emp_id number(10) primary key not null , 
	emp_name varchar(20),  
	gender varchar(10),
	emp_email varchar(20),
	designation varchar(30),
	emp_address varchar(25),
	phone_no varchar(15) unique key
);
create table customer (
	cust_id number(10) primary key not null , 
	cust_name varchar(20), 
	cust_email varchar(30),
	NID_no varchar(20),
	cust_address varchar(30), 
	phone_no varchar(15) unique key
);
create table room (
	room_no number(5) primary key not null , 
	price number(5), 
	room_status varchar(15),
    available varchar(12)
);
create table reservation (
	reservation_id varchar(10) primary key not null,
	cust_id number(10) not null , 
	room_no number(5) not null , 
    starting_date varchar(12),
	ending_date varchar(12), 
	foreign key (cust_id) references customer (cust_id) on DELETE cascade,
	foreign key (room_no) references room (room_no) on DELETE cascade
);
create table bill (
	bill_id varchar(20) primary key not null , 
	reservation_id varchar(10) not null,
	cust_id number(10) not null ,
	billing_date varchar(12),
	amount number(5),
	method varchar(12),
	foreign key (reservation_id) references reservation  (reservation_id) on DELETE cascade,
	foreign key (cust_id) references customer (cust_id) on DELETE cascade
);


--DESCRIPTION
desc bill;
desc reservation;
desc room; 
desc employee;
desc customer;

--EMPLOYEE Table
insert into employee (emp_id, emp_name, gender, emp_email, designation, emp_address, phone_no) values (01, 'Solomon Watkins',    'Male',   'tevin@yahoo.com',       'Managing Director',            '23 Boyd Ports Suite',          '15507464134' );
insert into employee (emp_id, emp_name, gender, emp_email, designation, emp_address, phone_no) values (02, 'Samara Hill',        'Female', 'dibbert@yahoo.com ',    'General Manager',              '60 Salvador Parkway Suite',    '12036785606' );
insert into employee (emp_id, emp_name, gender, emp_email, designation, emp_address, phone_no) values (03, 'Dominic Miller',     'Male',   'imayert@kemmer.com',    'Assistant General Manager',    '12 Janiya Street',             '18492735797' );
insert into employee (emp_id, emp_name, gender, emp_email, designation, emp_address, phone_no) values (04, 'Eric Newman ',       'Male',   'emery@bogisich.org ',   'Room Division Manager',        '31 West Jeniferton',           '15586584134' );
insert into employee (emp_id, emp_name, gender, emp_email, designation, emp_address, phone_no) values (05, 'Aurora Patel',       'Female', 'hoeger@yahoo.com ',     'Revenue Manager',              '55 Lakin Heights Port',        '92741356654' );
insert into employee (emp_id, emp_name, gender, emp_email, designation, emp_address, phone_no) values (06, 'Hayden King',        'Male',   'audra29@hagenes.com',   'Cashier',                      '29 Cummings Shoals',           '47260145292' );
insert into employee (emp_id, emp_name, gender, emp_email, designation, emp_address, phone_no) values (07, 'Travis Gray ',       'Male',   'sawayn@hotmail.com ',   'Front Office Manager',         '326 East Wilfridshire',        '82953780510' );
insert into employee (emp_id, emp_name, gender, emp_email, designation, emp_address, phone_no) values (08, 'Madeleine Campbell', 'Female', 'vjerde@reinger.com',    'Reservation Clerk',            '95 East Peggiestad',           '17477417890' );
insert into employee (emp_id, emp_name, gender, emp_email, designation, emp_address, phone_no) values (09, 'Emanuel Wood',       'Male',   'june61@gmail.com ',     'Receptionist',                 '47 Grant North Fern',          '19925061626' );
insert into employee (emp_id, emp_name, gender, emp_email, designation, emp_address, phone_no) values (10, 'Amelia Porter',      'Female', 'ulices@hirthe.org',     'Receptionist',                 '58 Gerald Lake ',              '33237056885' );
insert into employee (emp_id, emp_name, gender, emp_email, designation, emp_address, phone_no) values (11, 'Hayden King',        'Male',   'audra29@hagenes.com',   'Cashier',                      '29 Cummings Heights',          '47260145298' );
insert into employee (emp_id, emp_name, gender, emp_email, designation, emp_address, phone_no) values (12, 'Travis Gray ',       'Male',   'sawayn@hotmail.com ',   'Front Office Manager',         '326 Wilfridshire Ports',       '82953780515' );
insert into employee (emp_id, emp_name, gender, emp_email, designation, emp_address, phone_no) values (13, 'Madeleine Campbell', 'Female', 'vjerde@reinger.com',    'Reservation Clerk',            '95 South Peggiestad',          '17477417880' );
insert into employee (emp_id, emp_name, gender, emp_email, designation, emp_address, phone_no) values (14, 'Emanuel Wood',       'Male',   'june61@gmail.com ',     'Receptionist',                 '47 North Fern',                '19925061627' );
insert into employee (emp_id, emp_name, gender, emp_email, designation, emp_address, phone_no) values (15, 'Amelia Porter',      'Female', 'ulices@hirthe.org',     'Receptionist',                 '58 Gerald Janiya Lake ',       '33237052185' );
commit;
--CUSTOMER Table
insert into customer (cust_id, cust_name, cust_email, NID_no, cust_address, phone_no) values (01, 'Xavier Thomas',     'berry.schuppe@torphy.info',       '12345',     '33 Boyd Ports Suite',     '487.923.8812' );
insert into customer (cust_id, cust_name, cust_email, NID_no, cust_address, phone_no) values (02, 'Oliver Adams',      'catalina.heaney@hotmail.com',     '23456',     '54 Boyd Ports Suite',     '1-896-248-27' );
insert into customer (cust_id, cust_name, cust_email, NID_no, cust_address, phone_no) values (03, 'Taylor Clark',      'schoen.creola@bergstrom.org',     '34567',     '123 Boyd Ports Suite',    '803-252-6735' );
insert into customer (cust_id, cust_name, cust_email, NID_no, cust_address, phone_no) values (04, 'Oaklynn Gomez',     'dicki.trent@bartoletti.org',      '456788',    '90 Boyd Ports Suite',     '912.715.5877' );
insert into customer (cust_id, cust_name, cust_email, NID_no, cust_address, phone_no) values (05, 'Easton Hill',       'timmothy79@schamberger.com',      '56789',     '47 Boyd Ports Suite',     '676-221-8282' );
insert into customer (cust_id, cust_name, cust_email, NID_no, cust_address, phone_no) values (06, 'Zayn Harris',       'kuvalis.chandler@hotmail.com',    '67890',     '303 Boyd Ports Suite',    '585.721.8079' );
insert into customer (cust_id, cust_name, cust_email, NID_no, cust_address, phone_no) values (07, 'Gael Anderson',     'lakin.doug@abernathy.net',        '78901',     '94 Boyd Ports Suite',     '619-807-5652' );
insert into customer (cust_id, cust_name, cust_email, NID_no, cust_address, phone_no) values (08, 'Tyson Waters',      'danderson@gmail.com',             '89012',     '70 Boyd Ports Suite',     '683-558-3476' );
insert into customer (cust_id, cust_name, cust_email, NID_no, cust_address, phone_no) values (09, 'Leah Hamilton',     'bettie81@yahoo.com',              '90123',     '118 Boyd Ports Suite',    '969.846.3483' );
insert into customer (cust_id, cust_name, cust_email, NID_no, cust_address, phone_no) values (10, 'Sophie Wood',       'elliott.watsica@hotmail.com',     '01234',     '19 Boyd Ports Suite',     '1716-52-8495');
insert into customer (cust_id, cust_name, cust_email, NID_no, cust_address, phone_no) values (21, 'Zayn Harris',       'kuvalis.chandler@hotmail.com',    '67890',     '10 Boyd Ports Suite',     '585.521.8079' );
insert into customer (cust_id, cust_name, cust_email, NID_no, cust_address, phone_no) values (22, 'Gael Anderson',     'lakin.doug@abernathy.net',        '78901',     '39 Boyd Ports Suite',     '619-807-7852' );
insert into customer (cust_id, cust_name, cust_email, NID_no, cust_address, phone_no) values (23, 'Tyson Waters',      'danderson@gmail.com',             '89012',     '963 Boyd Ports Suite',    '683-558-3478' );
insert into customer (cust_id, cust_name, cust_email, NID_no, cust_address, phone_no) values (24, 'Leah Hamilton',     'bettie81@yahoo.com',              '90123',     '65 Boyd Ports Suite',     '969.846.3683' );
insert into customer (cust_id, cust_name, cust_email, NID_no, cust_address, phone_no) values (25, 'Sophie Wood',       'elliott.watsica@hotmail.com',     '01234',     '85 Boyd Ports Suite',     '1716-527-849');
commit;
--ROOM Table
insert into room (room_no, price, room_status, available) values (2001, 2000, 'AC-Single',    'Booked');
insert into room (room_no, price, room_status, available) values (2002, 3000, 'AC-Double',    'Booked');
insert into room (room_no, price, room_status, available) values (2003, 2000, 'AC-Single',    'Not Booked');
insert into room (room_no, price, room_status, available) values (2004, 2000, 'AC-Single',    'Booked');
insert into room (room_no, price, room_status, available) values (2005, 3000, 'AC-Double',    'Not Booked');
insert into room (room_no, price, room_status, available) values (2006, 1000, 'NonAC-Single', 'Booked');
insert into room (room_no, price, room_status, available) values (2007, 1000, 'NonAC-Single', 'Booked');
insert into room (room_no, price, room_status, available) values (2008, 1500, 'NonAC-Double', 'Not Booked');
insert into room (room_no, price, room_status, available) values (2009, 1500, 'NonAC-Double', 'Booked');
insert into room (room_no, price, room_status, available) values (2010, 1500, 'NonAC-Double', 'NotBooked');
insert into room (room_no, price, room_status, available) values (2015, 1000, 'NonAC-Single', 'Booked');
insert into room (room_no, price, room_status, available) values (2016, 1500, 'NonAC-Double', 'Not Booked');
insert into room (room_no, price, room_status, available) values (2017, 1500, 'NonAC-Double', 'Booked');
insert into room (room_no, price, room_status, available) values (2018, 1500, 'NonAC-Double', 'NotBooked');
commit;
--RESERVATION TABLE
insert into reservation (reservation_id, cust_id, room_no, starting_date, ending_date ) values ('R01', 01, 2001 , '2022-04-03' , '2022-04-04');
insert into reservation (reservation_id, cust_id, room_no, starting_date, ending_date ) values ('R02', 02, 2005 , '2022-04-03' , '2022-04-04');
insert into reservation (reservation_id, cust_id, room_no, starting_date, ending_date ) values ('R03', 03, 2010 , '2022-04-05' , '2022-04-06');
insert into reservation (reservation_id, cust_id, room_no, starting_date, ending_date ) values ('R04', 04, 2002 , '2022-04-13' , '2022-04-15');
insert into reservation (reservation_id, cust_id, room_no, starting_date, ending_date ) values ('R05', 05, 2003 , '2022-04-18' , '2022-04-19');
insert into reservation (reservation_id, cust_id, room_no, starting_date, ending_date ) values ('R06', 06, 2008 , '2022-04-22' , '2022-04-23');
insert into reservation (reservation_id, cust_id, room_no, starting_date, ending_date ) values ('R07', 07, 2004 , '2022-05-03' , '2022-05-05');
insert into reservation (reservation_id, cust_id, room_no, starting_date, ending_date ) values ('R08', 08, 2007 , '2022-05-11' , '2022-05-13');
insert into reservation (reservation_id, cust_id, room_no, starting_date, ending_date ) values ('R09', 09, 2006 , '2022-06-04' , '2022-06-08');
insert into reservation (reservation_id, cust_id, room_no, starting_date, ending_date ) values ('R10', 10, 2009 , '2022-06-10' , '2022-06-12');
commit;
--BILL Table
insert into bill (bill_id , reservation_id, cust_id, billing_date, amount, method) values ('B01','R01', 01,'2022-04-04' , 4000, 'Bkash');
insert into bill (bill_id , reservation_id, cust_id, billing_date, amount, method) values ('B02','R02', 02,'2022-04-04' , 6000, 'Cash');
insert into bill (bill_id , reservation_id, cust_id, billing_date, amount, method) values ('B03','R03', 03,'2022-04-06' , 3000, 'Bkash');
insert into bill (bill_id , reservation_id, cust_id, billing_date, amount, method) values ('B04','R04', 04,'2022-04-15' , 9000, 'Visa Card');
insert into bill (bill_id , reservation_id, cust_id, billing_date, amount, method) values ('B05','R05', 05,'2022-04-19' , 4000, 'Credit Card');
commit;
insert into bill (bill_id , reservation_id, cust_id, billing_date, amount, method) values ('B06','R06', 06,'2022-04-23' , 3000, 'Bkash');
--insert into bill (bill_id , reservation_id, cust_id, billing_date, amount, method) values ('B07','R07', 07,'2022-05-05' , 6000, 'Cash');
--insert into bill (bill_id , reservation_id, cust_id, billing_date, amount, method) values ('B08','R08', 08,'2022-05-13' , 3000, 'Bkash');
--insert into bill (bill_id , reservation_id, cust_id, billing_date, amount, method) values ('B09','R09', 09,'2022-06-08' , 5000, 'Visa Card');
--insert into bill (bill_id , reservation_id, cust_id, billing_date, amount, method) values ('B10','R10', 10,'2022-06-12' , 4500, 'Credit Card');

select * from employee;
select * from customer;
select * from room;
select * from reservation;
select * from bill;


alter table reservation add total_days_stayed number(1);
alter table reservation add total_amount number(5);
desc reservation;
select * from reservation;
insert into reservation (reservation_id, cust_id, room_no, starting_date, ending_date, total_days_stayed  ) values ('R11', 09, 2006 , '2022-06-04' , '2022-06-08', 5);
insert into reservation (reservation_id, cust_id, room_no, starting_date, ending_date, total_days_stayed ) values ('R12', 10, 2009 , '2022-06-10' , '2022-06-12',3);
select * from reservation;

--MODIFY Column
alter table reservation MODIFY total_days_stayed number(3);
desc reservation;
select * from reservation;
insert into reservation (reservation_id, cust_id, room_no, starting_date, ending_date, total_days_stayed  ) values ('R14', 09, 2006 , '2022-06-04' , '2022-06-15', 13);
select * from reservation;

--RENAME Column
alter table reservation rename Column starting_date to checkin_date;
alter table reservation rename Column ending_date to checkout_date;
select *  from reservation;

--UPDATE Data
select * from room;
update room set available = 'booked' where room_no = 2010;
select * from room;

--DELETE Row
select * from customer;
DELETE from customer  where cust_id= 01;
select * from customer;

--DELETE Column
desc reservation;
alter table reservation drop Column total_amount;
desc reservation;

--Calculated field
select * from room;
select (price/5) as price_div_by_5 from room;

--Applying Condition
select * from room;
select room_status , available from room where price=2000;

--Range search
select * from bill;
select bill_id , cust_id, billing_date, amount from bill where amount between 3000 and 5000;
select bill_id , cust_id, billing_date, amount from bill where amount  not between 3000 and 5000;

--Conditional Search
select bill_id , cust_id, billing_date, amount from bill where amount>=3000 and amount<=5000;
select bill_id , cust_id, billing_date, amount from bill where amount>=5000 or amount<=3000;

--Set Membership
select bill_id , cust_id, billing_date, amount from bill where amount in (3000,5000);
select bill_id , cust_id, billing_date, amount from bill where amount not in (3000,5000);

--Ordering by column values
select cust_id,cust_name from customer order by cust_id;
select cust_id,cust_name from customer order by cust_id desc;

--Ordering by multiple Column Values
select cust_id, cust_name, cust_email from customer order by cust_id, NID_no;
select cust_id, cust_name, cust_email from customer order by cust_id, NID_no desc;

--Use of Distinct
select Distinct(emp_id) from employee;

--Pattern Matching 
select emp_id, emp_name from employee where  emp_address like '%East%' ;

--aggregate function
select max(price) from room;
select min(price) from room;
select sum(price) from room;
select count(price) from room;
select count(*) from room;
select count(distinct(price)) from room;
select avg(price) from room;

--Group By Clause
select count(room_no), price from room group by price;
select count(room_no), price from room where room_no>2005 group by price;

--Having Clause
select count(room_no), price from room group by price having count(room_no) >2;

--Set Membership (IN) 
select emp_id, emp_name, emp_email from employee where emp_id in (01, 05, 10);

--IN with nested loop
select emp_id, emp_name, emp_email from employee where emp_id in (select emp_id from employee where emp_id =10);
select reservation_id, cust_id, room_no from reservation where cust_id in (select cust_id from customer where cust_id >6);

--Set Opertaions
--Union all
select cust_id, cust_name from customer where cust_id>01 and cust_id<09
union all 
select emp_id, emp_name from employee where emp_id>03 and emp_id<09;

--Union 
select cust_id, cust_name from customer where cust_id< 05
union 
select emp_id, emp_name from employee where emp_id>05;

--Intersect
select cust_id from customer
intersect
select emp_id from employee;

--Minus
select emp_id from employee
Minus
select cust_id from customer;

--Join
select c.cust_id, c.cust_name , e.emp_id, e.emp_name 
from customer c join employee e on c.cust_id = e.emp_id;

--Natural Join
select c.cust_id, c.cust_name , r.room_no 
from customer c natural join room r ; 

select room_no, res.reservation_id, res.cust_id
from room r natural join reservation res;

--Cross Join
select c.cust_id, c.cust_name , e.emp_id, e.emp_name 
from customer c cross join employee e;

--Inner Join
select c.cust_id, c.cust_name , e.emp_id, e.emp_name 
from customer c inner join employee e on c.cust_id = e.emp_id;

--Outer join
--LEFT Outer join
select c.cust_id, c.cust_name , e.emp_id, e.emp_name 
from customer c LEFT outer join employee e on c.cust_id = e.emp_id;

--RIGHT Outer join
select c.cust_id, c.cust_name , e.emp_id, e.emp_name 
from customer c RIGHT outer join employee e on c.cust_id = e.emp_id;

--FULL Outer Join
select c.cust_id, c.cust_name , e.emp_id, e.emp_name 
from customer c FULL outer join employee e on c.cust_id = e.emp_id;


-- Code1
--Max amount from bill table
set serveroutput on;
declare
 max_amount bill.amount%type;
begin
 select max(amount) into max_amount  from bill;
 dbms_output.put_line('The Maximum Amount is:' || max_amount);
end;
/

--Code2(cursor , %rowtype , %rowcount)
--select room_no and price for 1st 5 rows from room table
set serveroutput on;
declare
    cursor c1 is select room_no,price from room;
    room_record c1%rowtype;
begin
  open c1;
    loop
        fetch c1 into room_record;
        exit when c1%rowcount >5;
        dbms_output.put_line('Room Number:' || room_record.room_no|| ' ' ||'Price:'|| room_record.price);
    end loop;
  close c1;
end;
/


--Code3(procedure)
--finding bill_id for amount=5000 from bill table by procedure
set serveroutput on;
create or replace procedure getBillId is
 getamt bill.amount%type;
 Billing_id bill.bill_id%type;
begin
    getamt := 4000;
    select bill_id into Billing_id
    from bill where amount = getamt;
    dbms_output.put_line('bill ID  :  ' || Billing_id);
end;
/
begin
    getBillId;
end;
/

--Code4(Function)
--finding average amount from bill table by Function
set serveroutput on;
create or replace Function avg_amount return Number is
avg_amt bill.amount%type;
begin
     select AVG(amount) into avg_amt from bill;
     return avg_amt;
     dbms_output.put_line('Average Amount:' || avg_amount);
end;
/
--Calling function
set serveroutput on;
begin
 dbms_output.put_line('Average Amount:' || avg_amount);
 end;
/

 --Lab 9
 --Code5(Trigger)
 --update or insert room_status in room table using trigger

 create or replace trigger check_room_status before update or insert ON room for each row
 begin
 if :new.price = 1000 then 
 :new.room_status:= 'NonAC-Single';
 
 elsif :new.price = 1500 then 
 :new.room_status:= 'NonAC-Double';
 
 elsif :new.price = 2000 then 
 :new.room_status:= 'AC-Single';
 
 elsif :new.price = 3000 then 
 :new.room_status:= 'AC-Double';

 end if;
 end check_room_status;
 /
 show errors

insert into room (room_no, price, room_status, available) values (2011, 1000, NULL, 'Booked');
insert into room (room_no, price, room_status, available) values (2012, 1500, NULL, 'Booked');
insert into room (room_no, price, room_status, available) values (2013, 2000, NULL, 'Booked');
insert into room (room_no, price, room_status, available) values (2014, 3000, NULL, 'Booked');

select * from room;

--code6(rollback)
--using bill table

select * from bill;
DELETE from bill;
select * from bill;
rollback;
select * from bill;

--code7(savepoint)
insert into bill (bill_id , reservation_id, cust_id, billing_date, amount, method) values ('B07','R07', 07,'2022-05-05' , 6000, 'Cash');
savepoint cont_6;
rollback to cont_6;
select * from bill;

--code8(Date)
select sysdate from dual;
select current_date from dual;
select systimestamp from dual;

--code9(View)
drop view view_rooms;
create view view_rooms as 
select * from room
where room_no >= 2010;

select * from view_rooms;