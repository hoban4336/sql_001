-- NULL 관련 함수

SELECT NVL (NULL, 0) FROM DUAL;

SELECT NVL (1, 0) FROM DUAL;

SELECT employee_id, NVL (commission_pct, 0), NVL (commission_pct, 0) * salary
  FROM employees;

SELECT NVL2 (NULL, 10, 0) FROM DUAL;

SELECT NVL2 (1, 10, 0) FROM DUAL;

SELECT employee_id, NVL2 (commission_pct, commission_pct * salary, 0)
  FROM employees;

SELECT NULLIF (6, 3 + 2) FROM DUAL;

SELECT COALESCE (NULL,
                 NULL,
                 3,
                 4,
                 5)
  FROM DUAL;

SELECT COALESCE (1,
                 NULL,
                 3,
                 4,
                 5)
  FROM DUAL;

 --select employee_id, nvl(manager_id, '매니저 없음') from employees;

SELECT employee_id, NVL (TO_CHAR (manager_id), '매니저 없음')
  FROM employees;