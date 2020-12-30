--SemiProject KH-MEETYOURFAMILY 12.28
--DOG TABLE 생성.
drop table dog;
select * from dog;


/*dog 테이블 생성*/
create table dog(
    dog_serial    NUMBER primary key,
    dog_group     VARCHAR2(30) not null,
    dog_name      VARCHAR2(30) not null,
    dog_breed     VARCHAR2(30) not null,
    dog_gender    VARCHAR2(10) not null,
    dog_age       VARCHAR2(10) not null,
    dog_weight    VARCHAR2(10) not null,
    dog_mbti      VARCHAR2(10) not null,
    dog_mbti_char VARCHAR2(30) not null,
    dog_photo     VARCHAR2(200),
    dog_stroy     VARCHAR2(4000)  
);

/*dog_serial 시퀀스 생성*/
create sequence seq_dog_serial;
drop sequence seq_dog_serial;

insert into dog values(seq_dog_serial.nextval,'소','츄비','푸들','수컷','2살','2.8kg','INFP','재밌는 개그맨형','','');
insert into dog values(seq_dog_serial.nextval,'소','찰랑','비숑프라제','수컷','4살','3.6kg','ISFP','어리버리 모범생형','','');
insert into dog values(seq_dog_serial.nextval,'소','무무','치와와','수컷','3살','2.9kg','ISTJ','듬직한 기사형','','');
insert into dog values(seq_dog_serial.nextval,'소','아라','요크셔테리어','암컷','13살','2.9kg','INTJ','음흉한 귀족형','','');

insert into dog values(seq_dog_serial.nextval,'소','봉봉','페키니즈','암컷','8살','6.3kg','ISTP','오늘만사는 백수형','','');
insert into dog values(seq_dog_serial.nextval,'소','큐피트','닥스훈트','수컷','1살','2.3kg','ESTJ','솔직한 정치가형','','');
insert into dog values(seq_dog_serial.nextval,'소','조이','말티즈','수컷','1살','2.0kg','ISFJ','까칠한 신데렐라형','','');

insert into dog values(seq_dog_serial.nextval,'중','만두','웰시코기','수컷','4살','5.5kg','ESTP','생일맞은 왕자님형','','');
insert into dog values(seq_dog_serial.nextval,'중','초희','프렌치불독','수컷','2살','15.3kg','ENTJ','대담한 운동선수형','','');
insert into dog values(seq_dog_serial.nextval,'중','서울','비글','암컷','4살','3.0kg','ESFP','신나는 댄싱머신형','','');
insert into dog values(seq_dog_serial.nextval,'중','아델','보스턴테리어','암컷','12살','5.0kg','ESFJ','겁많은 젠틀형','','');

insert into dog values(seq_dog_serial.nextval,'중','딸기','스피츠','수컷','2살','5.0kg','ENTP','사차원 예술가형','','');

insert into dog values(seq_dog_serial.nextval,'대','수호랑','시베리안허스키','수컷','2살','12.5kg','INTP','시크한 무사형','','');
insert into dog values(seq_dog_serial.nextval,'대','주호','도베르만','수컷','1살','10.6kg','ENFJ','잘나가는 유튜브형','','');

insert into dog values(seq_dog_serial.nextval,'대','브로콜리','보더콜리','수컷','1살','10.6kg','INFJ','소심한 피터팬형','','');
insert into dog values(seq_dog_serial.nextval,'대','코바','골든리트리버','수컷','1살','2.4kg','ENFP','헌신적인 테레사형','','');


update dog set dog_photo='(소)푸들1.jpg' where dog_serial = 1;
update dog set dog_photo='(소)비숑프리제1.jpg' where dog_serial = 2;
update dog set dog_photo='(소)치와와1.jpg' where dog_serial = 3;
update dog set dog_photo='(소)요크셔테리어1.jpg' where dog_serial = 4;
update dog set dog_photo='(소)페키니즈1.jpg' where dog_serial = 5;
update dog set dog_photo='(소)닥스훈트1.jpg' where dog_serial = 6;
update dog set dog_photo='(소)말티즈1.jpg' where dog_serial = 7;
update dog set dog_photo='(중)웰시코기1.jpg' where dog_serial = 8;
update dog set dog_photo='(중)프렌치불독1.jpg' where dog_serial = 9;
update dog set dog_photo='(중)비글1.jpg' where dog_serial = 10;
update dog set dog_photo='(중)보스턴테리어1.jpg' where dog_serial = 11;
update dog set dog_photo='(중)스피츠1.jpg' where dog_serial = 12;
update dog set dog_photo='(대)시베리안허스키1.jpg' where dog_serial = 13;
update dog set dog_photo='(대)도베르만1.jpg' where dog_serial = 14;
update dog set dog_photo='(대)보더콜리1.jpg' where dog_serial = 15;
update dog set dog_photo='(대)골든리트리버1.jpg' where dog_serial = 16;

commit;

