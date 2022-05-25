select * from dept_app;

select * from emp;
select * from member;

delete probatIOn where stu_no = 'STU_4';

UPDATE STUDENT
SET STU_STATUS = '재학'
WHERE STU_NO = 'STU_4';

update academic_app
set admin_process_date = null
    , admin_process_status = '미승인'
where app_no = 'APP_6';

update dept_app
set ori_dept_process_date = sysdate
    , ori_dept_process_status = '승인'
    , app_dept_process_date = sysdate
    , app_dept_process_status = '승인'
where dept_app_no = 'DEPT_APP_6';