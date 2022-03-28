
--1. EMP 테이블에서 모든 사원의 사번, 이름, 급여, 부서번호를 조회하는 쿼리문을 작성하세요.
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP;

--2. EMP 테이블에서 모든 사원의 사워명, 급여, 연봉을 조회하는 쿼리문을 작성하세요. 단, 연봉은 급여 * 12로 나타내며, 연봉에 대해서는 별칭을 사용하세요.
SELECT ENAME, SAL, SAL*12 AS ANN_SAL
FROM EMP;

--3. 전체 사원 중 커미션이 NULL이 아닌 사원의 사번, 사원명, 급여, 커미션을 조회하는 쿼리문을 작성하세요.
SELECT EMPNO, ENAME, SAL, COMM
FROM EMP
WHERE COMM IS NOT NULL;

--4. 사원 중 급여가 500이상인 사원의 사번, 사원명, 급여, 입사일을 조회하세요.
SELECT EMPNO, ENAME, SAL, HIREDATE
FROM EMP
WHERE SAL >= 500;

--5. 사원 중 급여가 300이상 1000이하이고, 커미션이 NULL인 사원의 사번, 사원명, 급여, 커미션을 조회하는 쿼리문을 작성하세요.
SELECT EMPNO, ENAME, SAL, COMM
FROM EMP
WHERE SAL BETWEEN 300 AND 1000 
AND COMM IS NOT NULL;


--6. 부서번호가 30번이 아닌 사원들의 모든 정보를 조회하되, 사원명 기준 오름차순으로 정렬하도록 쿼리문을 작성하세요.
SELECT *
FROM EMP
WHERE DEPTNO != 30
ORDER BY ENAME ASC;

--7. 이름이 ‘김’으로 시작하거나, ‘기’를 포함하는 사원의 사번과 사워명을 조회하는 쿼리문을 작성하세요.
SELECT EMPNO, ENAME
FROM EMP
WHERE ENAME LIKE '김%' 
OR ENAME LIKE '%기%';

--8. 커미션이 NULL이 아닌 사원 중 입사일이 2002년 10월 09일 이후에 입사한 사원들의 사원명, 커미션, 입사일을 조회하되, 입사일 기준 내림차순으로 정렬하세요.
SELECT ENAME, COMM, HIREDATE
FROM EMP
WHERE COMM IS NOT NULL 
AND HIREDATE >= '02-10-09';

--9. 부서번호가 30번인 사원들의 급여를 10%인상하는 쿼리문을 작성하세요.
UPDATE EMP 
SET SAL = SAL * 1.1
WHERE DEPTNO = 30;


--10. 이문세 사원이 속한 부서명을 조회하는 쿼리문을 작성하세요.
SELECT DNAME
FROM EMP, DEPT
WHERE ENAME = '이문세'
AND EMP.DEPTNO = DEPT.DEPTNO;
