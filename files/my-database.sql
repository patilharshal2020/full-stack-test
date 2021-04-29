 
 /*
    SQL Database Qieries(CRUD).
 */
 
 

/*  CREATE  */

SQL> create table employee(EMPID number(10) unique,ENAME varchar2(10) not null,SAL number(10));

Table created.

/*
SQL> desc employee;
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 EMPID                                                                      NUMBER(10)
 ENAME                                                             NOT NULL VARCHAR2(10)
 SAL                                                                        NUMBER(10)

*/

/* INSERT QUERY */

SQL> insert into employee values(&EMPID,'&ENAME',&SAL);
Enter value for empid: 101
Enter value for ename: HARRY
Enter value for sal: 30000
old   1: insert into employee values(&EMPID,'&ENAME',&SAL)
new   1: insert into employee values(101,'HARRY',30000)

1 row created.

SQL> /
Enter value for empid: 102
Enter value for ename: JHON
Enter value for sal: 25000
old   1: insert into employee values(&EMPID,'&ENAME',&SAL)
new   1: insert into employee values(102,'JHON',25000)

1 row created.

SQL> /
Enter value for empid: 103
Enter value for ename: ALEX
Enter value for sal: 35000
old   1: insert into employee values(&EMPID,'&ENAME',&SAL)
new   1: insert into employee values(103,'ALEX',35000)

1 row created.

/*
SQL> select * from employee;

     EMPID ENAME             SAL
---------- ---------- ----------
       101 HARRY           30000
       102 JHON            25000
       103 ALEX            35000

*/



/* UPDATE */


SQL> update employee set sal = 40000 where empid = 102;

1 row updated.


/*
SQL> select * from employee;

     EMPID ENAME             SAL
---------- ---------- ----------
       101 HARRY           30000
       102 JHON            40000
       103 ALEX            35000
*/

/* DELETE */

SQL> delete from employee where ename = 'HARRY';

1 row deleted.

/*
SQL> select * from employee;

     EMPID ENAME             SAL
---------- ---------- ----------
       102 JHON            40000
       103 ALEX            35000

*/