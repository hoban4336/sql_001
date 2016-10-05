SELECT AVG (salary)
  FROM EMPLOYEES e;

--   직계 함수가 들어갔다면, 테이블을 하나더 만들어서 값을 저장했다가, 투영하기 때문에 다른 칼럼들과 호출시, 오류가 발생한다.  
-- 	  not a single-group group function  error 발생.
SELECT e.EMPLOYEE_ID, AVG (salary)
  FROM EMPLOYEES e;
--  <집계>
 SELECT AVG (salary)
  FROM EMPLOYEES
 ORDER BY  salary desc;
--   ORDER BY  avg(salary) desc;

 SELECT department_id ,AVG (salary)
  FROM EMPLOYEES
group by department_id
order by AVG (salary) desc;
 
 select * from EMPLOYEES e;
  -- <집계_조건>
 SELECT department_id ,AVG (salary), max(salary),min(salary)
  FROM EMPLOYEES
group by department_id
 having avg(salary) > 5000  -- group by 는 where 절을 지나갔으므로 조건을 걸때 having을  사용
 order by AVG (salary) desc ;  
 
 
 
 

 
 
  
 