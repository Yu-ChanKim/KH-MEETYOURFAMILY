DROP VIEW NOTICE_VIEW;
DROP SEQUENCE NOTICE_COMMENT_TB_SEQ;
DROP TRIGGER NOTICE_COMMENT_TB_TRG;
DROP TABLE NOTICE_COMMENT_TB;
DROP SEQUENCE NOTICE_TB_SEQ;
DROP TRIGGER NOTICE_TB_TRG;
DROP TABLE NOTICE_TB;

CREATE TABLE NOTICE_TB
(
     ID		    NUMBER CONSTRAINT PK_NOTICE_TB_ID PRIMARY KEY,
     TITLE 		VARCHAR2(100) NOT NULL,
     WRITER     VARCHAR2(40) NOT NULL,
     CONTENT	VARCHAR2(4000),
     REGDATE    TIMESTAMP DEFAULT SYSTIMESTAMP - INTERVAL '1' SECOND NOT NULL,
     FILES      VARCHAR2(1000) DEFAULT NULL,
     HIT		NUMBER DEFAULT 0 NOT NULL,
     PUB        NUMBER(1) DEFAULT 1 NOT NULL
);

CREATE SEQUENCE NOTICE_TB_SEQ;

CREATE OR REPLACE TRIGGER NOTICE_TB_TRG
BEFORE INSERT ON NOTICE_TB 
FOR EACH ROW 
BEGIN
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT NOTICE_TB_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/

CREATE TABLE NOTICE_COMMENT_TB
(
     ID         NUMBER CONSTRAINT PK_NOTICE_COMMENT_TB_ID PRIMARY KEY,
     WRITER 	NVARCHAR2(40) NOT NULL,
     CONTENT	NVARCHAR2(1000) NOT NULL,
     REGDATE  	TIMESTAMP DEFAULT SYSTIMESTAMP - INTERVAL '1' SECOND NOT NULL,
     NOTICE_ID	NUMBER NOT NULL
);

CREATE SEQUENCE NOTICE_COMMENT_TB_SEQ;

CREATE OR REPLACE TRIGGER NOTICE_COMMENT_TB_TRG
    BEFORE INSERT ON NOTICE_COMMENT_TB
    FOR EACH ROW 
    BEGIN
        BEGIN
            IF INSERTING AND :NEW.ID IS NULL THEN
                SELECT NOTICE_COMMENT_TB_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
            END IF;
        END COLUMN_SEQUENCES;
    END;
/

CREATE VIEW NOTICE_VIEW AS
(
    SELECT N.ID, N.TITLE, N.WRITER, N.REGDATE, N.FILES, N.HIT, N.PUB, COUNT(C.ID) COMMENT_COUNT
    FROM NOTICE_TB N
    LEFT JOIN NOTICE_COMMENT_TB C ON N.ID = C.NOTICE_ID
    GROUP BY N.ID, N.TITLE, N.WRITER, N.CONTENT, N.REGDATE, N.FILES, N.HIT, N.PUB
);

----------------------------------------------------------------------------------------------------

BEGIN
    FOR i IN 1..250 LOOP
        INSERT INTO NOTICE_TB (TITLE, WRITER, CONTENT) VALUES('TITLE-'||i, 'WRITER-'||i, 'CONTENT-'||i);
    END LOOP;
END;
/

INSERT INTO NOTICE_TB (TITLE, WRITER, CONTENT, FILES) VALUES('TITLE', 'WRITER', 'CONTENT', 'dog.jpg, dog.zip');

BEGIN
    FOR i IN 1..250 LOOP
        INSERT INTO NOTICE_COMMENT_TB (WRITER, CONTENT, NOTICE_ID) VALUES('WRITER-'||i, 'COMMENT-'||i, CEIL(DBMS_RANDOM.VALUE(1,250)));
    END LOOP;
END;
/

COMMIT;



SELECT * FROM NOTICE_TB;

SELECT * FROM NOTICE_COMMENT_TB;

SELECT * FROM NOTICE_VIEW;