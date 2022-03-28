-- VIEW : 가상 테이블
-- 1. 데이터 보안
-- 2. 자주 쓰는 조인, 서브쿼리를 편하게 사용하기 위해서.

select * from emp;

create or replace view V_EMP
AS
SELECT EMPNO, ENAME, JOB
FROM EMP;

SELECT * FROM V_EMP;

UPDATE EMP
SET
ENAME = '이사랑'
WHERE EMPNO =  1001;

CREATE OR REPLACE VIEW V_EMP2
AS
SELECT EMP.EMPNO, ENAME, DEPT.DEPTNO, DNAME
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;
SELECT * FROM V_EMP2;