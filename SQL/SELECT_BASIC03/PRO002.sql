-- 1.
select max(salary) as "최고임금" , min(salary) as "최저임금",max(salary) - min(salary) as "차이값" from EMPLOYEES e;
-- 2.
select TO_CHAR(e.HIRE_DATE,'yyyy"년" MM"월" dd"일"')  from EMPLOYEES e ;
-- 3.
select e.DEPARTMENT_ID,avg(salary), max(salary), min(salary) from EMPLOYEES e GROUP BY department_id order by avg(salary), max(salary),min(salary) desc;
-- 4.
select e.JOB_ID, avg(salary), max(salary), min(salary) from EMPLOYEES e GROUP BY job_id ORDER BY avg(salary) desc, max(salary) desc ,min(salary) desc;
-- 5.
SELECT e.FIRST_NAME ||''||e.LAST_NAME ,TO_CHAR(MIN(e.HIRE_DATE),'yyyy"년" MM"월" dd"일"') from EMPLOYEES e;
-- 6.
select e.DEPARTMENT_ID, avg(salary), min(salary), avg(salary)-min(salary) as sub FROM EMPLOYEES e 
group by e.DEPARTMENT_ID
having avg(salary)- min(salary) <2000 
ORDER BY avg(salary)- min(salary) desc ;

-- 7.
select max(DIFF)
from(
select e.JOB_ID ,(max(salary) - min(salary)) as DIFF 
from EMPLOYEES e 
group by e.JOB_ID) a
where DIFF = (select max(different) 
					from( select e.JOB_ID, (max(salary) - min(salary)) as different
					from EMPLOYEES e
					group BY  e.JOB_ID))  ;
					
select e.JOB_ID ,(max(salary) - min(salary)) as DIFF 
from EMPLOYEES e 
group by e.JOB_ID;
					


-- select e.JOB_ID 
-- from (select e.JOB_ID, (max(salary)-min(salary)) as DIFF
-- 		from EMPLOYEES e;
-- where DIFF =(
-- select e.JOB_ID, max(salary)-min(salary) as DIFF 
-- from EMPLOYEES e
-- group by e.JOB_ID) a);









