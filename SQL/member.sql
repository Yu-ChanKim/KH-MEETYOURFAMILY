-- drop table MEMBER;

create table member(
userId varchar2(300) not null,
userPwd varchar2(300) not null,
userName varchar2(300) not null,
userBirth date not null,
userTel varchar2(300) not null,
userAnswer varchar2(300) not null,
userGender varchar2(300) not null,
ZipCode varchar2(300) not null,
Address1 varchar2(300) not null,
Address2  varchar2(300) not null,
constraint pk_mem_userId primary key(userId)
);

INSERT INTO member (userId, userPwd, userName, userBirth, userTel, userAnswer,
                    userGender, zipcode, address1, address2) 
<<<<<<< HEAD
VALUES ('gmchan', '123', '?΄κΈμ°¬', '19961112', '01083550433', 'λ§κ³‘μ΄λ±?κ΅?', '?¨?', '21512', 'κ²½κΈ°? κ΅¬λ¦¬? ??? λ§μ ?€???', '1μΈ?');

=======
VALUES ('gmchan', '123', 'μ΄κΈμ°¬', '19961112', '01083550433', 'λ§κ³‘μ΄λ±νκ΅', 'λ¨μ', '21512', 'κ²½κΈ°λ κ΅¬λ¦¬μ μνλ λ§μ μ€νμ', '1μΈ΅');
INSERT INTO member (userId, userPwd, userName, userBirth, userTel, userAnswer,
                    userGender, zipcode, address1, address2) 
VALUES ('admin', 'admin', 'admin', '19450815', '01008150815', '815μ΄λ±νκ΅', 'λ¨μ', '84250', 'κ²½κΈ°λ κ΅¬λ¦¬μ μνλ λ§μ μ€νμ', '1μΈ΅');
>>>>>>> adca6272a023b3df0e28d7a51b52fa34598d05d2
commit;

select * from MEMBER;