CREATE TABLE TEST_BOARD (
    BOARD_NUM NUMBER PRIMARY KEY
    , BOARD_TITLE VARCHAR2(200) NOT NULL
    , BOARD_CONTENT VARCHAR2(500)
    , BOARD_WRITER VARCHAR2(100) NOT NULL
    , CREATE_DATE DATE DEFAULT SYSDATE
);
INSERT INTO TEST_BOARD (
    BOARD_NUM
    , BOARD_TITLE
    , BOARD_CONTENT
    , BOARD_WRITER
) VALUES (
    (SELECT NVL(MAX(BOARD_NUM), 0) FROM TEST_BOARD) + 1
    , 'title1'
    , 'content1'
    , 'writer1'
);
select rownum from test_board where board_num = 1;
SELECT rownum, board_num, board_title, board_writer, board_content FROM TEST_BOARD;
DELETE FROM TEST_BOARD WHERE BOARD_NUM = 142;

SELECT BOARD_NUM
		    , BOARD_TITLE
		    , BOARD_WRITER
		    , CREATE_DATE
		    , ROW_NUM
		FROM 
		(
		    SELECT BOARD_NUM
		        , BOARD_TITLE
		        , BOARD_WRITER
		        , CREATE_DATE
		        , ROWNUM AS ROW_NUM
            FROM TEST_BOARD
		)
		WHERE ROW_NUM >= 130 AND ROW_NUM <= 139
		ORDER BY BOARD_NUM DESC;
       
       -- 한번에 검색하려고 했는데 검색알고리즘을 못 쓰니까 그냥 분류해서 검색. 
SELECT BOARD_NUM
		    , BOARD_TITLE
		    , BOARD_WRITER
		    , CREATE_DATE
		    , ROW_NUM
		FROM 
		(
		    SELECT BOARD_NUM
		        , BOARD_TITLE
		        , BOARD_WRITER
		        , CREATE_DATE
		        , ROWNUM AS ROW_NUM
            FROM TEST_BOARD
		)
WHERE (ROW_NUM >= 1 AND ROW_NUM <= 10)
AND (UPPER(BOARD_TITLE) LIKE UPPER('%T%')
OR UPPER(BOARD_WRITER) LIKE UPPER('%T%'));