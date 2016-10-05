-- Date

SELECT employee_id, hire_date FROM employees;

-- 기본 포맷팅이 어떻게 되어 있는지 출력해줌

SELECT VALUE
  FROM nls_session_parameters
 WHERE parameter = 'NLS_DATE_FORMAT';

SELECT ADD_MONTHS (SYSDATE, 2) FROM DUAL;
SELECT ADD_MONTHS ('16/10/05', 2) FROM DUAL;

SELECT LAST_DAY (SYSDATE) FROM DUAL;

SELECT MONTHS_BETWEEN (ADD_MONTHS (SYSDATE, 2), SYSDATE) FROM DUAL;

SELECT employee_id, job_id, ROUND (MONTHS_BETWEEN (end_date, start_date))
  FROM job_history;

  --select next_day('01-SEP-95', 'FRIDAY') from dual;
  -- // 1-> sun, 7->sat
SELECT NEXT_DAY ('16/10/05', 7) FROM DUAL;