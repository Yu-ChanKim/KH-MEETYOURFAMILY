CREATE TABLE USERINFO (
    userID VARCHAR(20) PRIMARY KEY,
    userPassword VARCHAR(20) NOT NULL,
    userGender VARCHAR(20) NOT NULL,
    userName VARCHAR(20) NOT NULL,
    userdate VARCHAR(20) NOT NULL,
    userChoice NUMBER NOT NULL,
    userAnswer VARCHAR(20) NOT NULL
);

INSERT INTO USERINFO VALUES('gmchan','123','남자', '이금찬', '19961112', 2, '인천');
INSERT INTO USERINFO VALUES('minjae','456','남자', '김민재', '19960000', 2, '김포');
INSERT INTO USERINFO VALUES('qjqrb','789','남자', '김법규', '19890000', 2, '구리');