Assignment – 1

1.	Create a table called deptmst_rollno, where rollno is your rollno with the following columns.

Deptno number (2) primary key
Deptname varchar2(20) not null


Code:

create table deptmst_76 (
    deptno number(2) primary key,
    deptname varchar2(20) not null
);


2.	Create a table called empmst_rollno where rollno is your rollno with the following columns.
Empno number (6) primary key,
Empname varchar2(30) not null,
Salary number (9,2),
Deptno number (2) foreign key references deptno of deptmst table,
Dob date,
City varchar2(20) not null.


Code:

create table empmst_76 (
    empno number(6) primary key,
    empname varchar2(30) not null,
    salary number(9,2),
    deptno number(2) not null,
    dob date,
    city varchar2(20) not null,
    constraint deptno
        foreign key (deptno) references deptmst_76(deptno)
);

3.	Insert records into the above-mentioned tables with your choice maintaining referential integrity like primary keys, foreign keys etc. to perform the following.

Code (deptmst):

insert into deptmst_76 values (10, 'engineering');
insert into deptmst_76 values (20, 'sales');
insert into deptmst_76 values (30, 'hr');
insert into deptmst_76 values (40, 'marketing');





Code(empmst):

insert into empmst_76 values (1001, 'Akash', 50000.00, 10, '15-jan-1990', 'Kolkata);
insert into empmst_76 values (1002, 'Harsh', 60000.00, 15, '20-mar-1985', 'Delhi');
insert into empmst_76 values (1003, 'Sumit', 45000.00, 10, '01-jul-1992','Mumbai');
insert into empmst_76 values (1004, 'Varun', 75000.00, 30, '10-dec-1980','Kolkata');
insert into empmst_76 values (1005, 'Rohit', 55000.00, 15, '25-apr-1995', 'Chennai');



a.	Describe the structure of the above two tables. 

	desc deptmst_76;
	desc empmst_76;


b.	Select all the rows of the empmst table.

select * from empmst_76;

c.	Select the rows from empmst table who live in city = “Kolkata”

select * from empmst_76 where city = 'Kolkata';

d.	Select the rows from empmst who work in a particular deptno (e.g. 15)

select * from empmst_76 where deptno = 10;

e.	Increase the salary of the employees of the empmst table by 3000 by update command who work in a particular deptno (e.g. 15)

update empmst_76
set salary = salary + 3000
where deptno = 15;

f.	Update the deptmst table set deptname = ‘MIS and Systems’ for a particular deptno (e.g. 15).

update deptmst_76
set deptname = 'mis and systems'
where deptno = 15;

g.	Delete the rows from the empmst table for a empno (where empno is your choice) and validate with select command.

delete from empmst_76
where empno = 1005;

select * from empmst_76;


h.	Join the two tables to display the following columns
Empno, empname, deptno, deptname, salary, dob


select e.empno,e.empname,e.deptno,d.deptname,e.salary,e.dob
from
    empmst_76 e
join
    deptmst_76 d on e.deptno = d.deptno;


i.	Find the details of the employee who is the youngest and eldest employee from the empmst table.

Oldest
select * from empmst_76
where dob = (select min(dob) from empmst_76);

Youngest
select *
from empmst_76
where dob = (select max(dob) from empmst_76);

