-------------------------미타씨 파트--------------------------------
CREATE TABLE MEMBER ( -- 회원 테이블
    MEM_NO VARCHAR2(50) CONSTRAINT PK_MEM_NO PRIMARY KEY -- 회원 번호(PK)
    , MEM_PW VARCHAR2(50) NOT NULL -- 회원 비밀번호
    , MEM_NAME VARCHAR2(10 CHAR) NOT NULL -- 회원 이름
    , MEM_EMAIL VARCHAR2(100) CONSTRAINT UK_MEM_EMAIL UNIQUE NOT NULL -- 회원 이메일
    , MEM_ADDR VARCHAR2(100 CHAR) NOT NULL -- 회원 주소
    , MEM_PHONE VARCHAR2(30) CONSTRAINT UK_MEM_PHONE UNIQUE NOT NULL -- 회원 연락처
    , MEM_IMAGE VARCHAR2(100 CHAR) NOT NULL -- 회원 사진
    , MEM_GENDER VARCHAR2(10) NOT NULL -- 회원 성별
    , MEM_BIRTH DATE NOT NULL -- 회원 생일
    , MEM_TYPE VARCHAR2(10) NOT NULL -- 회원 유형
    , IS_JOIN VARCHAR2(10) DEFAULT 'Y' NOT NULL -- 가입/탈퇴 여부
    , CREATE_DATE DATE DEFAULT SYSDATE NOT NULL -- 회원 가입일
    , WITHDRAW_DATE DATE -- 회원 탈퇴일
);
INSERT INTO MEMBER (
    MEM_NO
    , MEM_PW
    , MEM_NAME
    , MEM_EMAIL
    , MEM_ADDR
    , MEM_PHONE
    , MEM_IMAGE
    , MEM_GENDER
    , MEM_BIRTH
    , MEM_TYPE
) VALUES (
    'MEM_10004'
    , '1111'
    , '최교수'
    , '....10004@gmail.com'
    , '울산 중구 복산동'
    , '01000010004'
    , 'IMAGE10004'
    , 'M'
    , SYSDATE
    , 'PROF'
);
update member set mem_image = '사진.png' where 1 = 1;
SELECT * FROM MEMBER;

CREATE TABLE BOARD_CATEGORY ( -- 게시판 카테고리 테이블
    CATE_NO VARCHAR2(50) CONSTRAINT PK_CATE_NO PRIMARY KEY -- 카테고리 번호(PK)
    , CATE_NAME VARCHAR2(30 CHAR) CONSTRAINT UK_CATE_NAME UNIQUE NOT NULL -- 카테고리명
);

CREATE TABLE BOARD ( -- 게시판 테이블
    BOARD_NO VARCHAR2(50) CONSTRAINT PK_BOARD_NO PRIMARY KEY -- 게시판 번호(PK)
    , BOARD_TITLE VARCHAR2(100 CHAR) NOT NULL -- 게시판 제목
    , BOARD_CONTENT VARCHAR2(1000 CHAR) -- 게시판 내용
    , CREATE_DATE DATE DEFAULT SYSDATE NOT NULL -- 게시판 작성일
    , UPDATE_DATE DATE -- 게시판 마지막 수정일
    , IS_DELETE VARCHAR2(10) DEFAULT 'N' NOT NULL -- 게시판 삭제 여부
    , READ_CNT NUMBER DEFAULT 0 NOT NULL -- 게시판 조회 수
    , REPLY_CNT NUMBER DEFAULT 0 NOT NULL -- 게시판 댓글 수
    , CATE_NO VARCHAR2(50) CONSTRAINT FK_BOARD_CATE_NO REFERENCES BOARD_CATEGORY (CATE_NO) NOT NULL -- 게시판 카테고리(FK)
);

CREATE TABLE REPLY ( -- 댓글 테이블
    REPLY_NO VARCHAR2(50) CONSTRAINT PK_REPLY_NO PRIMARY KEY -- 댓글 번호(PK)
    , BOARD_NO VARCHAR2(50) CONSTRAINT FK_REPLY_BOARD_NO REFERENCES BOARD (BOARD_NO) ON DELETE CASCADE NOT NULL -- 게시글 번호(FK)
    , REPLY_CONTENT VARCHAR2(100 CHAR) NOT NULL -- 댓글 내용
    , REPLY_WRITER VARCHAR2(50) CONSTRAINT FK_REPLY_WRITER REFERENCES MEMBER (MEM_NO) ON DELETE CASCADE NOT NULL -- 댓글 작성자
    , CREATE_DATE DATE DEFAULT SYSDATE NOT NULL -- 댓글 작성일
    , UPDATE_DATE DATE -- 댓글 마지막 수정일
);

CREATE TABLE COLLEGE ( -- 단과대학 테이블
    COLL_NO VARCHAR2(50) CONSTRAINT PK_COLL_NO PRIMARY KEY -- 단과대학 번호(PK)
    , COLL_NAME VARCHAR2(20 CHAR) CONSTRAINT UK_COLL_NAME UNIQUE NOT NULL -- 단과대학명
);

INSERT INTO COLLEGE (
    COLL_NO
    , COLL_NAME
) VALUES (
    'COLL_3'
    , '예술대학'
);
SELECT * FROM COLLEGE;

CREATE TABLE DEPT ( -- 학과 테이블
    DEPT_NO VARCHAR2(50) CONSTRAINT PK_DEPT_NO PRIMARY KEY -- 학과 번호(PK)
    , DEPT_NAME VARCHAR2(20 CHAR) CONSTRAINT UK_DEPT_NAME UNIQUE NOT NULL -- 학과명
    , COLL_NO VARCHAR2(50) CONSTRAINT FK_DEPT_COLL_NO REFERENCES COLLEGE (COLL_NO) ON DELETE CASCADE NOT NULL -- 단과대학 번호(FK)
);

INSERT INTO DEPT (
    DEPT_NO
    , DEPT_NAME
    , COLL_NO
) VALUES (
    'DEPT_9'
    , '무용과'
    , 'COLL_3'
);

SELECT * FROM DEPT;

--------------------------내 파트--------------------------------
-- 직원 테이블
CREATE TABLE EMP ( 
	EMP_NO VARCHAR2(50) PRIMARY KEY --직원번호 pk
	, EMP_TYPE VARCHAR2(50)	NOT NULL -- 직원 구분
	, EMP_JOB VARCHAR2(50)	NOT NULL -- 직급
	, MEM_NO VARCHAR2(50)	REFERENCES MEMBER (MEM_NO) -- 회원번호
	, DEPT_NO VARCHAR2(50)	REFERENCES COLLEGE (COLL_NO) -- 소속단대
	, COLL_NO VARCHAR2(50)	REFERENCES DEPT (DEPT_NO) -- 소속학과
);
DROP TABLE EMP;
SELECT * FROM DEPT;
SELECT DEPT_NO FROM DEPT;
SELECT COLL_NO FROM COLLEGE;
SELECT * FROM EMP;

insert into emp(
    EMP_NO  --직원번호 pk
	, EMP_TYPE  -- 직원 구분
	, EMP_JOB -- 직급
	, MEM_NO -- 회원번호
    , COLL_NO
) values (
    'EMP_4'
    , 'prof'
    , 'prof'
    , 'MEM_10004'
    , 'COLL_1'
);

SELECT * FROM EMP;
SELECT * FROM MEMBER;

CREATE TABLE SCHOLARSHIP ( --장학금 테이블
	SCHOL_NO	    VARCHAR2(100) PRIMARY KEY --장학금 번호
    , SCHOL_TYPE    VARCHAR2(100) NOT NULL -- 장학금 유형
	, STU_NO	    VARCHAR2(100) REFERENCES STUDENT(STU_NO) -- 학생 번호
    , SCHOL_DATE	DATE	      NOT NULL -- 장학금 지급 일시
    , SCHOL_REASON	VARCHAR2(200) NOT NULL -- 장학금 지급 사유
    , SEM_NO	    VARCHAR(100)  REFERENCES SEMESTER(SEM_NO) -- 학기번호
    , MEM_NO      	VARCHAR2(50)  REFERENCES MEMBER(MEM_NO) -- 회원번호
);

select * from scholarship;
select * from member;
-- 학사경고 테이블
CREATE TABLE PROBATION (
    PROB_NO       VARCHAR2(50)    PRIMARY KEY -- 경고번호
    , STU_NO      VARCHAR2(50)    REFERENCES STUDENT(STU_NO) -- 학생번호
    , PROB_DATE   DATE            DEFAULT SYSDATE -- 경고일자
    , PROB_REASON VARCHAR2(100)   NOT NULL -- 경고사유
    , SEM_NO      VARCHAR2(50)    REFERENCES SEMESTER(SEM_NO) -- 경고학기
    , MEM_NO      VARCHAR2(50)    REFERENCES MEMBER(MEM_NO) -- 회원번호
);

INSERT INTO PROBATION (
     PROB_NO    
    , STU_NO    
    , PROB_REASON
    , SEM_NO     
    , MEM_NO     
) VALUES (
    CONCAT('PROB_', (SELECT NVL(MAX(TO_NUMBER(SUBSTR(PROB_NO, 6))), 0) + 1 FROM PROBATION))
    , 'STU_1'
    , '학칙 위반'
    , 'SEM_1'
    , 'MEM_1'
);
SELECT * FROM PROBATION;
delete from probation where prob_no = 'PROB_2';

-- 학적관리(휴, 복학)
CREATE TABLE ACADEMIC_APP (
    APP_NO VARCHAR2(50) PRIMARY KEY -- 학적변동신청번호
    , STU_NO VARCHAR2(50) REFERENCES STUDENT(STU_NO) -- 학생번호
    , APPLY_TYPE VARCHAR2(50) NOT NULL -- 신청타입
    , APPLY_DATE DATE NOT NULL -- 신청일
    , PROF_PROCESS_DATE DATE -- 교수승인일
    , PROF_PROCESS_STATUS VARCHAR2(50) DEFAULT '미승인' -- 교수승인여부
    , ADMIN_PROCESS_DATE DATE -- 관리자승인일
    , ADMIN_PROCESS_STATUS VARCHAR2(50) DEFAULT '미승인' -- 관리자승인여부
    , SEM_NO VARCHAR2(50) REFERENCES SEMESTER(SEM_NO) -- 학기정보
);
DROP TABLE ACADEMIC_APP;

INSERT INTO ACADEMIC_APP (
    APP_NO
    , STU_NO
    , APPLY_TYPE
    , APPLY_DATE
    , SEM_NO
) VALUES (
    CONCAT('APP_', (SELECT NVL(MAX(TO_NUMBER(SUBSTR(APP_NO, 5))), 0) + 1 FROM ACADEMIC_APP))
    , 'STU_1'
    , '일반휴학'
    , SYSDATE
    , 'SEM_1'
);
SELECT * FROM ACADEMIC_APP;
delete from academic_app where 1 = 1;
update academic_app
set admin_process_status = '미승인'
    , admin_process_date = null
where 1 = 1;

--전과 복전 신청 테이블
CREATE TABLE DEPT_APP (
	DEPT_APP_NO	                VARCHAR2(50)    PRIMARY KEY -- 신청번호
    , STU_NO	                VARCHAR2(100)	REFERENCES STUDENT(STU_NO) -- 학생번호
    , APPLY_TYPE	            VARCHAR2(30)	NOT NULL -- 신청타입
    , APPLY_DATE	            DATE		    DEFAULT SYSDATE -- 신청날짜
    , ORIGINAL_COLL	            VARCHAR2(100)	REFERENCES COLLEGE(COLL_NO) -- 기존단대
    , ORIGINAL_DEPT             VARCHAR2(100)	REFERENCES DEPT(DEPT_NO) -- 기존학과
    , ORI_DEPT_PROCESS_STATUS	VARCHAR2(50)	DEFAULT '미승인' -- 기존학과승인상태
    , ORI_DEPT_PROCESS_DATE 	DATE		    NULL -- 기존학과승인날짜
    , APPLY_COLL	            VARCHAR2(50)	REFERENCES COLLEGE(COLL_NO) -- 신청단대
    , APPLY_COLL_NAME           VARCHAR2(50)    NOT NULL -- 신청단대명
    , APPLY_DEPT	            VARCHAR2(50)	REFERENCES DEPT(DEPT_NO) -- 신청학과
    , APPLY_DEPT_NAME           VARCHAR2(50)    NOT NULL -- 신청학과명
    , APP_DEPT_PROCESS_STATUS	VARCHAR2(50)	DEFAULT '미승인' -- 신청학과승인상태
    , APP_DEPT_PROCESS_DATE 	DATE		    NULL -- 신청학과승인날짜
    , SEM_NO	                VARCHAR2(100)   REFERENCES SEMESTER(SEM_NO) -- 학기정보
);
INSERT INTO DEPT_APP (
    DEPT_APP_NO
    , STU_NO
    , APPLY_TYPE
    , APPLY_DATE
    , SEM_NO
) VALUES (
    CONCAT('DEPT_APP_', (SELECT NVL(MAX(TO_NUMBER(SUBSTR(DEPT_APP_NO, 10))), 0) + 1 FROM DEPT_APP))
    , 'STU_1'
    , '일반휴학'
    , SYSDATE
    , 'SEM_1'
);
SELECT * FROM dept_app;
select app_dept_process_date from dept_app;
delete from dept_app where 1 = 1;
drop table dept_app;
--------------------------강국씨 파트---------------------------
--강의 등록 테이블
CREATE TABLE LEC (
    LEC_NO VARCHAR2(100) PRIMARY KEY --강의 PK     LEC_1, LEC_2.....
    , LEC_NAME VARCHAR2(200) NOT NULL --강의 이름
    , LEC_SCORE NUMBER NOT NULL --강의 학점
    , COLL_NO VARCHAR2(50) NOT NULL REFERENCES COLLEGE(COLL_NO) --단대 번호 FK
    , DEPT_NO VARCHAR2(50) NOT NULL REFERENCES DEPT(DEPT_NO) -- 소속 학과 FK
    , EMP_NO VARCHAR2(100) NOT NULL REFERENCES EMP(EMP_NO) --담당 교수
    , CREATE_DATE VARCHAR2(100) DEFAULT SYSDATE
    , MAX_NUM VARCHAR2(100) NOT NULL --최대 인원
    , NOW_NUM VARCHAR2(100) DEFAULT 0 --현재 인원
    , SEM_NO VARCHAR2(100) NOT NULL REFERENCES SEMESTER(SEM_NO) --학기정보
    , LEC_CLOSE VARCHAR2(50) DEFAULT 'N' --폐강 유무 Y or N
);
select * from lec;

insert into lec (
    LEC_NO
    , LEC_NAME
    , LEC_SCORE
    , COLL_NO
    , DEPT_NO
    , EMP_NO
    , MAX_NUM
    , SEM_NO
    , LEC_DAY
    , LEC_FIRST_TIME
    , LEC_LAST_TIME
) values (
    'LEC_9'
    , '현대무용 기초'
    , 3
    , 'COLL_3'
    , 'DEPT_9'
    , 'EMP_3'
    , '30'
    , 'SEM_1'
    , '수'
    , '1'
    , '7'
);
SELECT * FROM LEC;
SELECT * FROM DEPT;

--강의 시간
CREATE TABLE LEC_TIME(
    TIME_NO VARCHAR2(50) PRIMARY KEY
    , DAY VARCHAR2(50) NOT NULL --강의 요일 월, 화, 수....
    , FIRST_TIME NUMBER NOT NULL --강의 시작 시간 1, 2, 3 교시~
    , LAST_TIME NUMBER NOT NULL --강의 끝나는 시간
    , LEC_NO VARCHAR2(50) NOT NULL REFERENCES LEC(LEC_NO) ON DELETE CASCADE
);
drop table lec_time;


--학생 수강 테이블
CREATE TABLE STU_GRADE (
    CLASS_NO VARCHAR2(100) PRIMARY KEY NOT NULL
    , GRADE VARCHAR2(100) DEFAULT '미등록' --성적 A, B, C, D
    , SCORE VARCHAR2(100) DEFAULT '0'  -- 학점 10, 9, 8....
    , LEC_NO VARCHAR2(100) NOT NULL REFERENCES LEC(LEC_NO)  --강의 번호
    , STU_NO VARCHAR2(100) NOT NULL REFERENCES STUDENT(STU_NO) --학생 번호
    , SEM_NO VARCHAR2(100) NOT NULL REFERENCES SEMESTER(SEM_NO) --학기 번호
);
drop table stu_grade;


INSERT INTO STU_GRADE (
     CLASS_NO
    , GRADE
    , SCORE
    , LEC_NO
    , STU_NO
    , SEM_NO
) VALUES (
    'CLASS_6'
    , 'A'
    , '90'
    , 'LEC_3'
    , 'STU_1'
    , 'SEM_1'
);
select * from stu_grade;

UPDATE STU_GRADE
SET GRADE = '미입력',
    SCORE = '미입력'
WHERE 1 = 1;

SELECT * FROM LEC;
select * from stu_grade;
select * from college;
-- 강의별 학생 조회
select s.stu_no, mem_name, grade, coll_name, dept_name
from student s, stu_grade g, member m, college c, dept d
where s.stu_no = g.stu_no
and s.mem_no = m.mem_no
and s.coll_no = c.coll_no
and s.dept_no = d.dept_no
and g.lec_no = 'LEC_1';

--학기 정보 테이블
CREATE TABLE SEMESTER (
    SEM_NO VARCHAR2(100) PRIMARY KEY --학기번호 PK
    , YEAR NUMBER NOT NULL  --학기 년도
    , SEMESTER NUMBER NOT NULL --학기
    , SEM_NAME VARCHAR2(300) NOT NULL --학기 출력명
);
select sem_no
from semester
where year = 2022 and semester = 1;

INSERT INTO SEMESTER (
    SEM_NO 
    , YEAR 
    , SEMESTER 
    , SEM_NAME 
) VALUES (
    'SEM_2'
    , 2022
    , 2
    , '2022-2'
);
SELECT * FROM SEMESTER;
delete from semester where sem_no = 'SEM_2';
------------------------모세씨 파트--------------------------------
--학생 테이블
CREATE TABLE STUDENT( --학생테이블
    STU_NO VARCHAR2(100) PRIMARY KEY, -- 학생번호
    COLL_NO VARCHAR2(50) NOT NULL REFERENCES COLLEGE (COLL_NO), -- 단대번호
    DEPT_NO VARCHAR2(50) NOT NULL REFERENCES DEPT(DEPT_NO), -- 전공코드
    DOUBLE_NO VARCHAR2(50) REFERENCES DEPT(DEPT_NO), -- 복수전공코드
    STU_YEAR NUMBER NOT NULL, -- 학년
    STU_SEM NUMBER NOT NULL, -- 학기
    STU_STATUS VARCHAR2(50) NOT NULL, --학적상태
    MEM_NO VARCHAR2(50) NOT NULL REFERENCES MEMBER(MEM_NO) --회원번호
);
select * from student;
insert into student (
    STU_NO 
    , COLL_NO
    , DEPT_NO 
    , DOUBLE_NO 
    , STU_YEAR
    , STU_SEM 
    , STU_STATUS
    , MEM_NO
) values (
    'STU_9'
    , 'COLL_3'
    , 'DEPT_2'
    , 'DEPT_5'
    , 2
    , 2
    , '재학'
    , 'MEM_9'
);

-- 학생리스트 조회 (이름, 학생테이블 + 소속대학, 전공)
SELECT STU_NO
    , C.COLL_NAME
    , D.DEPT_NAME
    , DOUBLE_NO
    , STU_YEAR
    , STU_SEM
    , STU_STATUS
    , S.MEM_NO
    , MEM_NAME
FROM STUDENT S, DEPT D, COLLEGE C, MEMBER M
WHERE S.DEPT_NO = D.DEPT_NO
    AND D.COLL_NO = C.COLL_NO
    AND S.MEM_NO = M.MEM_NO
    AND S.COLL_NO = 'COLL_1'
    AND S.STU_YEAR = 1
    AND S.DEPT_NO = 'DEPT_1'
    AND S.STU_STATUS = '재학'
    AND M.MEM_NAME = '김자바'
ORDER BY STU_NO DESC;

SELECT * FROM MEMBER;
UPDATE STUDENT SET DOUBLE_NO = 'DEPT_6' WHERE STU_NO = 'STU_4';
select * from student;
DROP TABLE STUDENT;

--학생시간표
CREATE TABLE STU_CLASS ( 
    STU_NO VARCHAR2(20) PRIMARY KEY, --학번PK
    LEC_DAY VARCHAR2(20), --날짜
    TIME_START NUMBER , --강의시작
    LEC_ROOM VARCHAR2(20) , --강의실
    LEC_NO VARCHAR2(20) NOT NULL, --강의번호
    TIME NUMBER --수업시간
    );

select * from stu_grade;
