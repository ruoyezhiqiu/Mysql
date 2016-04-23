SHOW DATABASES ;
USE scott;
show TABLES ;
DESC emp;

SELECT *FROM emp;

START TRANSACTION ;
SAVEPOINT a;
UPDATE emp SET ENAME ='Tester' WHERE EMPNO=7839;
SAVEPOINT b;
SET AUTOCOMMIT =1;
DELETE FROM emp WHERE EMPNO=7788;
SAVEPOINT c;
DELETE FROM emp;-- DML语句。
ROLLBACK TO a;
ROLLBACK TO b;
ROLLBACK TO c;

COMMIT ;
ROLLBACK ;
DROP TABLE emp;-- DDL语句将隐式结束一个事务所以下面的ROLLBACK将不再执行了。
DROP DATABASE scott;
