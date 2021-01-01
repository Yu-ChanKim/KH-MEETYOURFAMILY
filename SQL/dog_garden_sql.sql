--SemiProject KH-MEETYOURFAMILY 12.28
--DOG TABLE 삭제.
drop table dog;

/*dog_serial 시퀀스 삭제*/
drop sequence seq_dog_serial;

/*dog_serial 시퀀스 생성*/
create sequence seq_dog_serial;

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
    dog_story     VARCHAR2(4000) 
);

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

/*dog table 칼럼 추가*/
alter table dog rename column dog_photo to dog_photo1;
alter table dog add(dog_photo2 varchar2(200));
alter table dog add(dog_photo3 varchar2(200));
alter table dog add(dog_photo4 varchar2(200));

update dog set dog_photo1='(소)푸들1.jpg' where dog_serial = 1;
update dog set dog_photo1='(소)비숑프리제1.jpg' where dog_serial = 2;
update dog set dog_photo1='(소)치와와1.jpg' where dog_serial = 3;
update dog set dog_photo1='(소)요크셔테리어1.jpg' where dog_serial = 4;
update dog set dog_photo1='(소)페키니즈1.jpg' where dog_serial = 5;
update dog set dog_photo1='(소)닥스훈트1.jpg' where dog_serial = 6;
update dog set dog_photo1='(소)말티즈1.jpg' where dog_serial = 7;
update dog set dog_photo1='(중)웰시코기1.jpg' where dog_serial = 8;
update dog set dog_photo1='(중)프렌치불독1.jpg' where dog_serial = 9;
update dog set dog_photo1='(중)비글1.jpg' where dog_serial = 10;
update dog set dog_photo1='(중)보스턴테리어1.jpg' where dog_serial = 11;
update dog set dog_photo1='(중)스피츠1.jpg' where dog_serial = 12;
update dog set dog_photo1='(대)시베리안허스키1.jpg' where dog_serial = 13;
update dog set dog_photo1='(대)도베르만1.jpg' where dog_serial = 14;
update dog set dog_photo1='(대)보더콜리1.jpg' where dog_serial = 15;
update dog set dog_photo1='(대)골든리트리버1.jpg' where dog_serial = 16;

update dog set dog_photo2='(소)푸들2.jpg' where dog_serial = 1;
update dog set dog_photo2='(소)비숑프리제2.jpg' where dog_serial = 2;
update dog set dog_photo2='(소)치와와2.jpg' where dog_serial = 3;
update dog set dog_photo2='(소)요크셔테리어2.jpg' where dog_serial = 4;
update dog set dog_photo2='(소)페키니즈2.jpg' where dog_serial = 5;
update dog set dog_photo2='(소)닥스훈트2.jpg' where dog_serial = 6;
update dog set dog_photo2='(소)말티즈2.jpg' where dog_serial = 7;
update dog set dog_photo2='(중)웰시코기2.jpg' where dog_serial = 8;
update dog set dog_photo2='(중)프렌치불독2.jpg' where dog_serial = 9;
update dog set dog_photo2='(중)비글2.jpg' where dog_serial = 10;
update dog set dog_photo2='(중)보스턴테리어2.jpg' where dog_serial = 11;
update dog set dog_photo2='(중)스피츠2.jpg' where dog_serial = 12;
update dog set dog_photo2='(대)시베리안허스키2.jpg' where dog_serial = 13;
update dog set dog_photo2='(대)도베르만2.jpg' where dog_serial = 14;
update dog set dog_photo2='(대)보더콜리2.jpg' where dog_serial = 15;
update dog set dog_photo2='(대)골든리트리버2.jpg' where dog_serial = 16;

update dog set dog_photo3='(소)푸들3.jpg' where dog_serial = 1;
update dog set dog_photo3='(소)비숑프리제3.jpg' where dog_serial = 2;
update dog set dog_photo3='(소)치와와3.jpg' where dog_serial = 3;
update dog set dog_photo3='(소)요크셔테리어3.jpg' where dog_serial = 4;
update dog set dog_photo3='(소)페키니즈3.jpg' where dog_serial = 5;
update dog set dog_photo3='(소)닥스훈트3.jpg' where dog_serial = 6;
update dog set dog_photo3='(소)말티즈3.jpg' where dog_serial = 7;
update dog set dog_photo3='(중)웰시코기3.jpg' where dog_serial = 8;
update dog set dog_photo3='(중)프렌치불독3.jpg' where dog_serial = 9;
update dog set dog_photo3='(중)비글3.jpg' where dog_serial = 10;
update dog set dog_photo3='(중)보스턴테리어3.jpg' where dog_serial = 11;
update dog set dog_photo3='(중)스피츠3.jpg' where dog_serial = 12;
update dog set dog_photo3='(대)시베리안허스키3.jpg' where dog_serial = 13;
update dog set dog_photo3='(대)도베르만3.jpg' where dog_serial = 14;
update dog set dog_photo3='(대)보더콜리3.jpg' where dog_serial = 15;
update dog set dog_photo3='(대)골든리트리버3.jpg' where dog_serial = 16;

update dog set dog_photo4='(소)푸들4.jpg' where dog_serial = 1;
update dog set dog_photo4='(소)비숑프리제4.jpg' where dog_serial = 2;
update dog set dog_photo4='(소)치와와4.jpg' where dog_serial = 3;
update dog set dog_photo4='(소)요크셔테리어4.jpg' where dog_serial = 4;
update dog set dog_photo4='(소)페키니즈4.jpg' where dog_serial = 5;
update dog set dog_photo4='(소)닥스훈트4.jpg' where dog_serial = 6;
update dog set dog_photo4='(소)말티즈4.jpg' where dog_serial = 7;
update dog set dog_photo4='(중)웰시코기4.jpg' where dog_serial = 8;
update dog set dog_photo4='(중)프렌치불독4.jpg' where dog_serial = 9;
update dog set dog_photo4='(중)비글4.jpg' where dog_serial = 10;
update dog set dog_photo4='(중)보스턴테리어4.jpg' where dog_serial = 11;
update dog set dog_photo4='(중)스피츠4.jpg' where dog_serial = 12;
update dog set dog_photo4='(대)시베리안허스키4.jpg' where dog_serial = 13;
update dog set dog_photo4='(대)도베르만4.jpg' where dog_serial = 14;
update dog set dog_photo4='(대)보더콜리4.jpg' where dog_serial = 15;
update dog set dog_photo4='(대)골든리트리버4.jpg' where dog_serial = 16;


-------------------------------------------------------------------------------------------      
update dog 
set dog_story ='작은몸에 초롱초롱한 눈망울이 매력적인 츄비예요<br> 츄비는 구조당시 심장사상충에 걸려 있었고<br>
               현재 심장사상충 치료중입니다.<br> (심장사상충 임시보호 가능합니다.)<br> 친구들과도 잘 어울리고
               사람도 좋아 좋아하는 츄비!<br> 패드도 잘 가리는 야무진 아이예요<br> 미용이나 병원처치 등에서도
               묵묵히 잘 견뎌는 강한 츄비<br> 사상충 치료중으로 현재 행동에 제한이 되다보니<br> 아직 다양한
               상황을 만나보지 못했고<br> 새로운 츄비의 모습이 있을까 궁금하기도 합니다<br> 얼른 임보가정이라도
               만나서 답답한 병원 생활을 청산해주고 싶어요!!<br>' where dog_serial = '1';
               
update dog 
set dog_story ='하얀털에 간식좋아하는 장난꾸러기 찰랑이에요<br> 찰랑이는 구조당시 심장사상충에 걸려 있었고<br>
					현재 심장사상충 치료중입니다.<br> (심장사상충 임시보호 가능합니다.)<br> <br>
					수컷답게 마킹을 하는 찰랑이 입니다~!<br> 입양후에 산책을 나가게 되면 집안에서의 마킹은 없어질거라 믿어요~<br>
					입소시에 전혀 관리가 안 되어있는 모습으로 들어왔던 찰랑이..<br> 한번 싹 털을 정리하고 나니 짱구반려견
					힌둥이 친구가 되었어요 !!<br> <br> 사상충 치료중으로 현재 행동에 제한이 되다보니<br>
					아직 다양한 상황을 만나보지 못했고<br> 새로운 찰랑이의 모습이 있을까 궁금하기도 합니다<br> <br>
					얼른 임보가정이라도 만나서 답답한 병원 생활을 청산해주고 싶어요!!<br>' where dog_serial = '2';

update dog 
set dog_story ='똥꼬발랄~ ★<br> 사람에게 푹 빠져있는 무릎강아지랍니다.<br> 사람과 교감을 중요하게 생각하고
					사람을 너무 좋아해요!<br> 안겨서 애교부리는 것을 즐겨하죠.<br> <br> 그래서인지
					불리불안이 관찰돼요.<br> 다른 개들 귀에 멍멍 짖곤 해 사랑을 독차지하는 외동이 좋을 듯해요.<br>
					<br> 사람이 있다면 천사견이 되는 반전매력견 무무!<br> 패드배변과 앉아-기다려-손 등의 지시어도
					곧잘 하는 똑똑한 푸들이랍니다.<br> <br> 무무는 긴급구호조치를 통해 센터에 입소했어요.<br>
					전 가족들은 무무를 치료나 관리등을 하지 않아서 갖가지 질환과 심장사상충에 걸려있었지만 얼마전 치료를 완료하고 건강을
					되찾았답니다!<br> <br> 하지만, 검사와 치료 결과 육류 알러지를 갖고 있어 처방식 사료 급여를
					하고 있고,<br> 만성 결막염을 지녀 관리가 지속적으로 필요해요.<br> 사람 곁이 너무 좋은
					치와와, 무무의 가족이 되어주세요.<br>' where dog_serial = '3';
update dog 
set dog_story ='구조 당시 센터에서 살펴본 바로는 추정나이 13세.<br> <br> 이미 한쪽 눈은 백내장이 있어
					치료를 받은 상태 2.9kg의 매우 마른 몸.<br> 심한 각질과 발치가 요구되는 치아상태.<br>
					항체가 검사 결과 항체가 낮아 백신 접종이 요구되었습니다.<br> <br> 센터에 입소한 아라는
					치료하면서 살도 찌고, <br> 꽤나 괜찮은 컨디션을 갖게 되었습니다.<br> <br> 거의
					1년이 지난 요즘 돌아다니다가 빙빙 도는 치매행동을 보이며<br> 잦은 배변 실수를 하고 약해진 심장과 신장으로
					인해 간헐적으로 심하게 아파<br> 센터 직원들을 걱정시키며 마음을 아프게 했어요.<br> <br>
					아라의 입양을 바람은 어쩌면 사치일지도 모릅니다.<br> 이미 어리고 젊은 많은 아이들도 가족을 못 만나고 있는
					현실에<br> 입양과 동시에 지속적으로 들어가는 병원비, 하루하루 달라지는<br> 컨디션에 입양 가족들
					마음도 천국과 지옥을 오갈 테니 말이죠.<br> <br> 하지만 지금 이 순간에도 그런 기적들은
					이뤄지고 있고<br> 우리 센터에서도 다시 한 번 환상적인 기적을 바래봅니다.<br> 길지 않을 아라의
					마지막 곁을 지켜주실 가족을 기다립니다.<br>' where dog_serial = '4';
update dog 
set dog_story ='작은몸에 초롱초롱한 눈망울이 매력적인 봉봉예요<br>
봉봉은 구조당시 심장사상충에 걸려 있었고<br>
현재 심장사상충 치료중입니다.<br>
친구들과도 잘 어울리고 사람도 좋아 좋아하는 봉봉!<br>
패드도 잘 가리는 야무진 아이예요<br>
미용이나 병원처치 등에서도 묵묵히 잘 견뎌는 강한 봉봉<br>
사상충 치료중으로 현재 행동에 제한이 되다보니<br>
아직 다양한 상황을 만나보지 못했고<br>
새로운 봉봉의 모습이 있을까 궁금하기도 합니다<br>
얼른 임보가정이라도 만나서 답답한 병원 생활을 청산해주고 싶어요!!<br>' where dog_serial = '5';

update dog 
set dog_story ='짧은 다리에 두툼한 꼬리를 흔드는 큐피트는 너무 귀엽답니다!<br>
궁디팡팡을 부르는 오동통한 엉덩이~♥<br>
외동으로 자란 듯, 다른 강아지 친구들을 좋아하지는 않아요.<br>
귀차니즘에 빠져 마치 고양이처럼 낮잠 자기가 취미랍니다.<br>
(매 시간 같은 장소, 같은 자리에 누워 있는 건 안비밀!)<br>
구조당시 심장사상충에 걸려있었지만, 현재 치료 완치 했어요!<br>
신나게 아침 산책하며 하루를 시작하는 건강한 큐피트!<br>
해맑은 웃음이 예쁜 큐피트의가족이 되어주세요.<br>' where dog_serial = '6';
update dog 
set dog_story ='치렁치렁 한 털에 숨켜진 자그마한 체구와 예쁜 얼굴,<br>
입소절차에 따라 건강검진을 하던 중 조이에게 내장형 인식칩이 발견되었고,<br>
직원 모두는 조이가 곧 가족의 품으로 돌아갈 것이라 예상했어요.<br>
그러나 인식칩에 등록된 연락처는 조이의 가족이 아닌 다른 사람이 받았고,<br>
그렇게 조이의 가족이었던 사람들의 행방은 알 수 없게 되었어요.<br>
조금은 까칠한 부분이 있는 말티즈답게 하기 싫거나,<br>
아픈 주사 같은 병원치료를 할 때 싫다는 표현을 확고하게 해주는 조이...<br>
하지만 마음을 허락한 선생님에게 만큼은 센터의 그 어떤 친구들보다<br>
착하고 다정하며 애교동이, 사랑둥이라고 해요.<br>
이런 모습을 보면 상처받은 내면을 까칠한 겉모습으로<br>
숨기고 있는 게 아닐까 더욱 안타까워요.<br>
사람을 좋아하고 따르는 다른 친구들과 달리 친해지는데<br>
오랜 시간이 필요한 조이는 천천히 얼굴을 익히고, 스스로 마음을 열 때 까지<br>
기다려 주실 수 있는 가족을 기다려요.<br>
하루 빨리 버림받은 마음의 상처를 사랑으로 보듬어 주실 가족을 만나 안정된 환경에서<br>
스트레스와 예민함을 내려놓고 건강한 몸과 마음으로 진심으로<br>
밝은 미소를 지을 수 있는 그 날을 손꼽아 기다려요.<br>' where dog_serial = '7';
update dog 
set dog_story ='초롱초롱한 동그란 눈에 저절로 웃음이 나오는<br> 장난끼 많은 만두입니다! ^^<br> 갈색 카펫을
					등에 지고있는듯한 몸이 매력뽀인트 에요!<br> <br> 만두는 구조 당시에 기가 죽어서 소심한
					성격이였어요<br> 하지만 시간이 지나면서 사람들을 보면 반가워서 꼬리를 마구 흔든답니다!<br> <br>
					만두는 구조당시 심장사상충에 걸려 있었고<br> 현재 심장사상충 치료중입니다.<br> (심장사상충
					임시보호 가능합니다)<br> <br> 성격은 친화력 좋고 다른아이들과도 문제가 없어요!<br>
					손길이 한번 닿으면 꼬리모터가 작동한답니다! ^^ <br>' where dog_serial = '8';
update dog 
set dog_story ='멍뭉미가 있어 자꾸 쳐다보고 만져보고 싶게해요 ♡<br> 사람을 엄청 좋아해서 오줌을 지리기 까지 해요!<br>
					활발한 성격이라 흥분을 잘해요<br> 모든것에 호기심이 많아서 킁킁 킁킁 +_+<br> 털이 어느정도
					빠지는 편이여서 털에 민감하시면<br> 다시한번 생각해주세요!<br> 누구에게나 쉽게 다가가는
					성격이고,<br> 많이 놀아줄 수 있고 산책도 자주 갈수 있는<br> 인원이 많은 가정에게 좋은
					반려견이 될 것 같습니다 ~<br> 한 번 만나러 오시면 초희의 애교에 쉽게 떠나기 힘드실꺼에요~ ^0^<br>
					애교둥이 초희의 평생가족을 찾습니다!<br>' where dog_serial = '9';
update dog 
set dog_story ='토끼처럼 방방 뛰는게 좋은 서울이!<br> 아련아련한 눈동자를 가졌어요 0_0<br> 현재 심장사상충
					치료중입니다.<br> 다른 강아지들보다는 사람을 좋아하기 때문에<br> 서울이만 있는 가정이라면 좋을
					것 같습니다<br> 사회화실에서는 다른 강아지들에게 관심이 없어서 조용히 쉬다가<br> 혼자만의 공간을
					마련해주면 펄쩍펄쩍 신나신나!!<br> 패드도 잘 가리고 대소변은 밖에서 하려고 하는 깔끔쟁이 스타일!<br>
					처음 입소시에 양뒷발을 계속 들고 뛰는 행동이 있어<br> 검진을 받았지만 슬개골은 확인되지는 않는 상태라고
					합니다.<br> 사회화실로 이동후에 어느정도 지내면서 뒷다리에 근육이 많이 붙어<br> 지금은 뛰는
					행동이 없어졌어요 ^^<br> 조심스러우면서도 애교가 넘치는 깔끔쟁이 서울이!<br> 서울이의 가족을
					기다립니다^^<br>' where dog_serial = '10';
update dog 
set dog_story ='2019년 8월에 긴급구조가 되어온 조그만 장애견이 있어요.<br /> 처음 온 날부터 겁을 먹고 모두를 경계하며 어떤
					접촉과 사랑도 거부하던 아이였죠. <br /> 아델이의 하반신 장애는 시간이 지나도 회복되지 않고<br /> 아델이의
					생활에 고통과 불편함을 주었습니다.<br /> <br /> 그렇게 센터에 들어온 지 어느덧 1년이 넘어버린 지금..<br />
					아델이는 불편한 몸이지만, 기저귀를 차고 즐겁게 산책도 하고 밥도 잘 먹고<br /> 처음 들어왔을 때의 아델이보다 더
					마음을 열고 행복해진 모습을 보이고 있습니다.<br /> 아델이는 나이가 있어 털도 푸석하고 두터운 이중모라 털이 많이
					빠지기도 합니다.<br /> <br /> 쉽게 마음을 열지 않고 낯선 사람에게 경계심이 있어 아델이를 돌보기 위해서는<br />
					최대한 많은 만남을 가져야 하고, 스스로 마음을 열 때까지 인내하고 <br />이해해 주어야 하는 상처가 많은
					아이입니다. 그래서 마음을 열고 믿음을 주는 게 어려운 아델이입니다.<br /> 조금은 특별하고 다른 개들과는 다르지만
					스스로 마음을 열 줄 아는 아델이는<br /> 오늘도 이 세상에서 가장 행복한 아이가 되기 위해 새로운 가족을
					기다립니다. <br />' where dog_serial = '11';
update dog 
set dog_story ='귀염둥이 스피츠 딸기예요~<br>
사회화실에서 친구들과 트러블없이 잘 지내요!<br>
사람도 좋아하는 성격 무난한 딸기!<br>
현재 털을 얼굴만 밀어놓은 상태여서<br>
얼굴부분까지 털이 자라면 더 귀요미가 될거예요♥<br>
마킹을 하기 때문에 산책을 자주 나가는게 좋고<br>
털빠짐은 거의 없답니다 ㅎ<br>
사회화실에서 어느정도 적응했어요!<br>
친구들과 크게 트러블이 없습니다!<br>
다른친구를 만지고 있으면<br>
본인 차례가 올때까지 얌전히 옆에 앉아 기다리는 편이에요 +_+<br>
손길이 닿으면 좋아서 배를 발라당! 눕고 너무 행복해해요 !<br>
생활공간에서는 대소변을 보지 않는 깔끔한 성격이에요<br>
친해지면 둘도 없는 친구가 될것 같은 딸기! 평생가족을 기다립니다 ^0^<br>' where dog_serial = '12';
update dog 
set dog_story ='순둥 순둥한 작은 호랑이 수호랑이랍니다!<br> 
					사람을 너무 좋아해서 똥그란 눈망울이 반짝반짝 빛나죠.<br>
					외동으로 자란 듯, 다른 강아지 친구들을 좋아하지는 않아요.<br> 
					귀차니즘에 빠져 마치 고양이처럼 낮잠 자기가 취미랍니다.<br> 
					(매 시간 같은 장소, 같은 자리에 누워 있는 건 안비밀!)<br> 
					구조당시 심장사상충에 걸려있었지만, 현재 치료 완치 했어요~<br> 
					신나게 아침 산책하며 하루를 시작하는 건강한 수호랑!<br>
					해맑은 웃음이 예쁜 수호랑의 가족이 되어주세요.<br>' where dog_serial = '13';
update dog 
set dog_story ='똥꼬발랄하게 노는게 좋은 주호예요 ★<br> 
					사람을 엄청 좋아하고 다른 친구들과도 어울려놀고<br>
					장난끼많은 귀염둥이입니다 ♥<br> 
					몸에 손이 닿으면 좋아좋아! (날좀 만져 주호!!)<br>
					다른강아지가 와서 만져달라고 하면 퀭!!하고 쫒아내요<br> 
					그만큼 사람손을 좋아한답니다 (나만 만져 주호!!)<br>
					자기공간에서는 대소변을 보지않는 깔끔한 성격이에요!<br> 
					소리에 대한 민감도나 털빠짐은 쏘쏘한 편입니다 ^^<br>
					운동량이 많아서 주호와 재밌게 놀아주실분이면 좋습니다~<br> 
					사회화실에서 친구들과 열심히 잘 놀고있어요<br>
					계속 놀아도 지치지 않는 개너자이저 입니다<br> 
					쪼코털이 매력적인 주호의 평생 가족을 찾습니다 ^^ <br>' where dog_serial = '14';
update dog 
set dog_story ='센터로 들어오면서 심장사상충이 발견되어 현재는 치료중에 있습니다!<br>
사상충으로 행동제한이 있어 움직일때마다 안돼! 를 외치곤 해요<br>
얼른 사상충이 치료되어서 좋은 가정으로 입양되었으면 합니다!<br>
패드도 잘 가리고 다른아이들과도 문제가 없어요~<br>
콩콩 뛰어다니는 모습에 <br>
저절로 엄마미소가 나오는 아이입니다^^<br>' where dog_serial = '15';
update dog 
set dog_story ='코바는 사람을 좋아하고 애교도 많아요.<br>
성격도 밝고 산책할 때 옆에서 차분하게 같이 걸어줘요.<br> 
코바는 조용한 성격으로 다른 친구들과 신나게 노는 것을 즐겨하지는 않아요.<br>
사람 무릎에 폭 안겨 스킨십을 좋아하는 무릎강아지죠.<br>
그리고 장난감을 엄청 좋아하는 친구예요.<br>
(장난감을 모아 산을 만드는 거 안비밀!)<br>
코바의 수많은 장점을 알아봐 주실 가족은 어디에 계실까요?<br>' where dog_serial = '16';

commit;