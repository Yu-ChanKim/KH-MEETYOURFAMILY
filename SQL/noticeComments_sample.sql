DROP TABLE NOTICE_COMMENT_TB;

CREATE TABLE NOTICE_COMMENT_TB
(
     ID         NUMBER,
     WRITER 	NVARCHAR2(40),
     CONTENT	NVARCHAR2(1000),
     REGDATE  	TIMESTAMP,
     NOTICE_ID	NUMBER
);

INSERT INTO NOTICE_COMMENT_TB VALUES(1, 'COMMENTER-1', 'COMMENT-1', '20001231000101', 321);
INSERT INTO NOTICE_COMMENT_TB VALUES(2, 'COMMENTER-2', 'COMMENT-2', '20001231000105', 321);
INSERT INTO NOTICE_COMMENT_TB VALUES(3, 'COMMENTER-3', 'COMMENT-3', '20001231000205', 321);
INSERT INTO NOTICE_COMMENT_TB VALUES(4, 'COMMENTER-4', 'COMMENT-4', '20001231000125', 320);
INSERT INTO NOTICE_COMMENT_TB VALUES(5, 'COMMENTER-5', 'COMMENT-5', '20001231000333', 320);
INSERT INTO NOTICE_COMMENT_TB VALUES(6, 'COMMENTER-6', 'COMMENT-6', '20001231000505', 320);
INSERT INTO NOTICE_COMMENT_TB VALUES(7, 'COMMENTER-7', 'COMMENT-7', '20001231001205', 320);
INSERT INTO NOTICE_COMMENT_TB VALUES(8, 'COMMENTER-8', 'COMMENT-8', '20001231002205', 320);
INSERT INTO NOTICE_COMMENT_TB VALUES(9, 'COMMENTER-9', 'COMMENT-9', '20001231000505', 318);
INSERT INTO NOTICE_COMMENT_TB VALUES(10, 'COMMENTER-10', 'COMMENT-10', '20001231001105', 317);


CREATE VIEW NOTICE_VIEW AS
(
SELECT N.ID, N.TITLE, N.WRITER, N.REGDATE, N.FILES, N.HIT, COUNT(C.ID) COMMENT_COUNT
FROM NOTICE_TB N
LEFT JOIN NOTICE_COMMENT_TB C ON N.ID = C.NOTICE_ID
GROUP BY N.ID, N.TITLE, N.WRITER, N.CONTENT, N.REGDATE, N.HIT, N.FILES
);
--ORDER BY N.REGDATE DESC

COMMIT;

SELECT * FROM NOTICE_COMMENT_TB;
SELECT * FROM NOTICE_TB;
select * from ncomment;
DROP VIEW NOTICE_VIEW;


SELECT * FROM
(
    SELECT ROWNUM NUM, N.* FROM
	(
        SELECT * FROM NOTICE_VIEW WHERE TITLE LIKE '%%' ORDER BY REGDATE DESC
    ) N
)
WHERE NUM BETWEEN 1 AND 10;


SELECT * FROM NOTICE_TB;

SELECT COUNT(ID) COUNT FROM
(
    SELECT ROWNUM NUM, N.* FROM
    (
	SELECT * FROM NOTICE_TB WHERE TITLE LIKE '%%' ORDER BY REGDATE DESC
    ) N
);