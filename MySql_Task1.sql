/* Create Table Empl */
create table Empl (
empno  int not null,
ename  varchar(50) not null,    
job varchar(50) not null, 
mgr int,  
hiredate date not null,  
sal   int not null,   
comm    int, 
deptno  int not null);

/* Insert values to the table Empl */
Insert into empl(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values
(8369,'SMITH'      ,'CLERK'      ,8902,'1990-12-18',800.00 ,NULL   ,20),  
(8499,'ANYA'       ,'SALESMAN'   ,8698,'1991-02-20',1600.00,300.00 ,30),  
(8521,'SETH'       ,'SALESMAN'   ,8698,'1991-02-22',1250.00,500.00 ,30),  
(8566,'MAHADEVAN'  ,'MANAGER'    ,8839,'1991-04-02',2985.00,NULL   ,20),  
(8654,'MOMIN'      ,'SALESMAN'   ,8698,'1991-09-28',1250.00,1400.00,30),  
(8698,'BINA'       ,'MANAGER'    ,8839,'1991-05-01',2850.00,NULL   ,30),  
(8882,'SHIVANSH'   ,'MANAGER'    ,8839,'1991-06-09',2450.00,NULL   ,20),  
(8883,'SCOTT'      ,'ANALYST'    ,8566,'1992-12-09',3000.00,NULL   ,20),  
(8889,'AMIR'       ,'PRESIDENT'  ,NULL,'1991-11-18',5000.00,NULL   ,10),  
(8844,'KULDEEP'    ,'SALESMAN'   ,8698,'1991-09-08',1500.00,0.00   ,30); 
 
select * from empl;
 
 /* 1 */
select ename,sal from empl where sal >=2200 order by sal;
 
 /* 2 */
select * from empl where comm is null;
  
 /* 3 */
select ename,sal from empl where not sal between 2500 and 4000 order by sal;
   
 /* 4 */
 select ename,job,sal from empl where mgr is null;
 
/* 5 */
 select ename from empl where ename like '__a%';
 
 /* 6 */
 select ename from empl where ename like '%t';
 
 
 
 