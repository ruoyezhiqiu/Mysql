SHOW DATABASES;
USE scott;
SHOW TABLES;
#part 1
# 1. 查找部门30中员工的详细信息。
SELECT *
FROM emp
WHERE deptno = 30;
;
# 2. 找出从事clerk工作的员工的编号、姓名、部门号。
SELECT
  empno,
  ename,
  deptno
FROM emp
WHERE job = 'clerk';
# 3. 检索出奖金多于基本工资的员工信息。
SELECT *
FROM emp
WHERE comm > sal;
# 4. 检索出奖金多于基本工资60%的员工信息。
SHOW TABLES;
SELECT *
FROM emp
WHERE comm > sal * 0.6;
# 5. 希望看到10部门的经理或者20部门的职员(clerk)的信息。
SELECT *
FROM emp
WHERE (deptno = 10 AND job = 'manager') OR (deptno = 20 AND job = 'clerk');
# 6. 找出10部门的经理、20部门的职员或者既不是经理也不是职员但是高于2000元的员工信息。
SELECT *
FROM emp
WHERE (deptno = 10 AND job = 'manager') OR (deptno = 20 AND job = 'clerk') OR
      (job NOT IN ('manager', 'clerk') AND (sal + ifnull(comm, 0)) > 2000);
# 7. 找出获得奖金的员工的工作。
SELECT *
FROM emp
WHERE comm > 0;
# 8. 找出奖金少于100或者没有获得奖金的员工的信息。
SELECT *
FROM emp
WHERE comm < 100 OR comm IS NULL;
# 9. 查找员工雇佣日期中当月的最后一天雇佣的。

# 10. 检索出雇佣年限超过12年的员工信息。
# 11. 找出姓名以A、B、S开始的员工信息。
# 12. 找到名字长度为7个字符的员工信息。
# 13. 名字中不包含R字符的员工信息。
# 14. 找出员工名字的前3个字符。
# 15. 将名字中A改为a。
# 16. 将员工的雇佣日期拖后10年。
# 17. 返回员工的详细信息并按姓名排序。
# 18. 返回员工的信息并按员工的工作年限降序排列。
# 19. 返回员工的信息并按工作降序工资升序排列。
# 20. 返回员工的姓名、雇佣年份和月份并且按月份和雇佣日期排序。
# 21. 计算员工的日薪(按30天)。
# 22. 找出2月份雇佣的员工。
# 23. 至今为止，员工被雇佣的天数。
# 24. 找出姓名中包含A的员工信息。
# 25. 计算出员工被雇佣了多少年、多少月、多少日。

#part 2
# 1. 返回拥有员工的部门名、部门号。
# 2. 工资水平多于smith的员工信息。
# 3. 返回员工和所属经理的姓名。
# 4. 返回雇员的雇佣日期早于其经理雇佣日期的员工及其经理姓名。
# 5. 返回员工姓名及其所在的部门名称。
# 6. 返回从事clerk工作的员工姓名和所在部门名称。
# 7. 返回部门号及其本部门的最低工资。
# 8. 返回销售部sales所有员工的姓名。
# 9. 返回工资水平多于平均工资的员工。
# 10. 返回与SCOTT从事相同工作的员工。
# 11. 返回与30部门员工工资水平相同的员工姓名与工资。
# 12. 返回工资高于30部门所有员工工资水平的员工信息。
# 13. 返回部门号、部门名、部门所在位置及其每个部门的员工总数。
# 14. 返回员工的姓名、所在部门名及其工资。
# 15. 返回雇员表中不在同一部门但是从事相同工作的员工信息。
# 16. 返回员工的详细信息，包括部门名。
# 17. 返回员工工作及其从事此工作的最低工资。
# 18. 返回不同部门经理的最低工资。
# 19. 计算出员工的年薪，并且以年薪排序。
# 20. 返回工资处于第四级别的员工的姓名
CREATE TABLE test(
  id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
  sno INT(11) UNSIGNED,
  name VARCHAR(20),
  gender CHAR(2),
  major VARCHAR(20)
);
SHOW TABLES ;
DESC test;
show CREATE TABLE test;