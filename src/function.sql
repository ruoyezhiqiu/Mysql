SHOW DATABASES ;
USE scott;
show TABLES ;
DESC emp;

SELECT max(SAL) 工资最高的,sum(sal),avg(SAL),count(DISTINCT JOB)
FROM emp;