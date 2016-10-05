-- date -> 문자열

SELECT employee_id, hire_date FROM employees;

SELECT employee_id,
       TO_CHAR (hire_date,
                'yyyy"년" mm"월" dd"일" PM hh"시" mi"분" ss"초"')
  FROM employees;

SELECT employee_id,
       TO_CHAR (hire_date,
                'yyyy"년" mm"월" dd"일" hh24"시" mi"분" ss"초" day d')
  FROM employees;

SELECT employee_id,
       TO_CHAR (hire_date,
                'yyyy"년" mm"월" dd"일" ddd"일째 되는 날"')
  FROM employees;

SELECT employee_id,
       TO_CHAR (hire_date,
                'year:syear')
  FROM employees;
  
  SELECT employee_id,
       TO_CHAR (hire_date,
                'RR')
  FROM employees;