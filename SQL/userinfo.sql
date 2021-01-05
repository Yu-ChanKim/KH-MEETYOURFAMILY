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
VALUES ('gmchan', '123', '이금찬', '19961112', '01083550433', '마곡초등학교', '남자', '경기도 구리시 수택동 마제스타워', 'null', 'null');

commit;

select * from MEMBER;