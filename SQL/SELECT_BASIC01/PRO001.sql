--1.
select first_name||' '||last_name as "이름" ,EMAIL as "이메일", PHONE_NUMBER as "전화번호" from EMPLOYEES e  ORDER BY hire_date ASC;
--2.
select job_title, max_salary from JOBS ORDER BY max_salary DESC;
--3.
select count(employee_id) from EMPLOYEES where MANAGER_ID is null;
--4.
select  e.FIRST_NAME||''||e.LAST_NAME , e.JOB_ID from EMPLOYEES e , JOBS j 
where  e.JOB_ID  = j.JOB_ID ORDER BY MAX_SALARY  DESC , e.FIRST_NAME||''||e.LAST_NAME ;
--5.
select count(DEPARTMENT_ID) as dep_count from DEPARTMENTS;
--6.
select * from DEPARTMENTS order by length(DEPARTMENT_NAME) DESC;
--7.
select COUNT(DEPARTMENT_ID) from DEPARTMENTS where MANAGER_ID is null;
--8.
select DISTINCT upper(region_name) from locations lo,countries co ,regions re 
where lo.COUNTRY_ID = co.COUNTRY_ID and co.REGION_ID = re.REGION_ID order by UPPER(region_name) ASC ;
--9.
select distinct region_name from REGIONS ORDER by length(region_name) ASC;
desc REGIONS;
--10.
select distinct lower(r.REGION_NAME) from locations l ,countries c, regions r  
where l.COUNTRY_ID = c.COUNTRY_ID and c.REGION_ID = r.REGION_ID 
order by lower(r.REGION_NAME) ASC;
