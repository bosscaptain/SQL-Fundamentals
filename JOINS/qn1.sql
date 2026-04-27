CREATE TABLE dept(
    deptid INT PRIMARY KEY,
    deptname VARCHAR(50)
);
CREATE TABLE emp(
    empid INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    deptid INT,
    FOREIGN KEY (deptid) REFERENCES dept(deptid)
);
insert into emp values(1,'raju',50000,101);
insert into emp values(2,'leela',65000,102);
insert into emp values(3,'geetha',70000,103);

insert into dept values(101,'HR');
insert into dept values(102,'IT');
insert into dept values(103,'Finance');
--display empname and dept name
select e.emp_name ,d.deptname
FROM emp e JOIN dept d
on e.deptid=d.deptid;
--count no employee in each dept
select d.deptname, count(e.empid)AS total_count
FROM emp e ,dept d
where e.deptid=d.deptid
group by d.deptname;
--Delete employees working in ‘IT’ department
delete FROM emp 
WHERE deptid in(
    SELECT deptid
    FROM DEPT
    WHERE deptname = 'IT'
);
