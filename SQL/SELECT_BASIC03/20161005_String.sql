-- 문자열 함수

-- 소문자로 바꾸기

SELECT LOWER ('Database Management System') FROM DUAL;

SELECT first_name, LOWER (first_name) FROM employees;

-- 대문자로 바꾸기

SELECT UPPER ('Database Management System') FROM DUAL;

SELECT last_name, UPPER (last_name) FROM employees;

-- 첫단어만 대문자

SELECT INITCAP ('database management system') FROM DUAL;

-- 문자열 합치기

SELECT CONCAT (first_name, ' ' || last_name) FROM employees;

SELECT CONCAT (CONCAT (first_name, ' '), last_name) FROM employees;

SELECT first_name || ' ' || last_name
  FROM employees;

-- 처음 시작하는 인덱스는 1이다  (0이 아님)

SELECT SUBSTR ('Database Management System', 2, 4) FROM DUAL;

SELECT LENGTH ('Database Management System') FROM DUAL;

SELECT INSTR ('Database Management System', 'Sys') FROM DUAL;

SELECT INSTR (LOWER ('Database Management System'), 'sys') FROM DUAL;

SELECT employee_id, LPAD (salary, 10, '*') FROM employees;

SELECT employee_id, RPAD (salary, 10, '*') FROM employees;

SELECT TRIM ('#' FROM '####Data###base####') FROM DUAL;

SELECT '---' || TRIM (' ' FROM ' Data base             ') || '---'
  FROM DUAL;


SELECT '---' || LTRIM ('    Data base             ', ' ') || '---'
  FROM DUAL;

SELECT '---' || RTRIM ('       Data base             ', ' ') || '---'
  FROM DUAL;

SELECT REPLACE ('Database Management System', 'System', 'Sys.') FROM DUAL;

SELECT REPLACE ('Database Management System', 'a', 'A') FROM DUAL;