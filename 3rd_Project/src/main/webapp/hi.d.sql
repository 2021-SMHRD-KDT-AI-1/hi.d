DROP TABLE MEMBERINFO CASCADE CONSTRAINTS;
DROP TABLE PETINFO CASCADE CONSTRAINTS;
DROP TABLE FOLLOWINFO CASCADE CONSTRAINTS;
DROP TABLE FEEDINFO CASCADE CONSTRAINTS;
DROP TABLE SPECIES CASCADE CONSTRAINTS;
DROP TABLE FEED_COMMENT CASCADE CONSTRAINTS;
DROP TABLE EMOTION CASCADE CONSTRAINTS;
DROP TABLE SITUATION CASCADE CONSTRAINTS;

CREATE TABLE MEMBERINFO(
EMAIL VARCHAR2(200) NOT NULL,
MEM_PW VARCHAR2(100) NOT NULL,
CONSTRAINT MEMBERINFO_EMAIL_PK PRIMARY KEY(EMAIL)
);

CREATE TABLE SPECIES(
SPECIES VARCHAR2(500),
CORD VARCHAR2(2) NOT NULL,
CONSTRAINT SPECIES_SPECIES_PK PRIMARY KEY(SPECIES),
CONSTRAINT SPECIES_CORD_CK CHECK(CORD IN('C','D'))
);

CREATE TABLE PETINFO(
PET_NUM NUMBER NOT NULL,
PET_NICK VARCHAR2(100) NOT NULL,
PET_PROFILE VARCHAR2(1000),
PET_INTRODUCE VARCHAR2(1000),
PET_GEN VARCHAR2(2),
SPECIES VARCHAR2(500),
EMAIL VARCHAR2(200),
CONSTRAINT PETINFO_PET_NUM_PK PRIMARY KEY(PET_NUM),
CONSTRAINT PETINFO_PET_GEN_CK CHECK(PET_GEN IN('F','M')),
CONSTRAINT PETINFO_SPECIES_FK FOREIGN KEY(SPECIES)
REFERENCES SPECIES(SPECIES),
CONSTRAINT PETINFO_EMAIL_FK FOREIGN KEY(EMAIL)
REFERENCES MEMBERINFO(EMAIL)
);

CREATE TABLE FOLLOWINFO(
PET_NUM NUMBER NOT NULL,
FOLLOWING_PET NUMBER NOT NULL,
CONSTRAINT FOLLOWINFO_PET_NUM_FK FOREIGN KEY(PET_NUM)
REFERENCES PETINFO(PET_NUM),
CONSTRAINT FOLLOWINFO_FOLLOWING_PET_FK FOREIGN KEY(FOLLOWING_PET)
REFERENCES PETINFO(PET_NUM)
);

CREATE TABLE FEEDINFO(
FEED_NUM NUMBER,
PET_NUM NUMBER NOT NULL,
IMG_ADDR VARCHAR2(1000) NOT NULL,
FEED_CONTENT VARCHAR2(1000) NOT NULL,
LIKE_PET VARCHAR2(1000),
F_LOCK VARCHAR2(2),
UPLOAD_TIME DATE DEFAULT SYSDATE NOT NULL,
CONSTRAINT FEEDINFO_FEED_NUM_PK PRIMARY KEY(FEED_NUM),
CONSTRAINT FEEDINFO_PET_NUM_FK FOREIGN KEY(PET_NUM)
REFERENCES PETINFO(PET_NUM),
CONSTRAINT FEEDINFO_F_LOCK_CK CHECK(F_LOCK IN('L','U'))
);


CREATE TABLE FEED_COMMENT(
COMMENT_NUM NUMBER NOT NULL,
PET_NUM NUMBER NOT NULL,
FEED_NUM NUMBER NOT NULL,
COMMENT_CONTENT VARCHAR2(1000) NOT NULL,
LIKE_PET VARCHAR2(1000),
CONSTRAINT COMMENT_COMMENT_NUM_PK PRIMARY KEY(COMMENT_NUM),
CONSTRAINT COMMENT_PET_NUM_FK FOREIGN KEY(PET_NUM)
REFERENCES PETINFO(PET_NUM),
CONSTRAINT COMMENT_FEED_NUM_FK FOREIGN KEY(FEED_NUM)
REFERENCES FEEDINFO(FEED_NUM)
);

CREATE TABLE EMOTION(
EMOTION VARCHAR2(100) NOT NULL,
E_COMMENT VARCHAR2(1000),
TAG VARCHAR2(500)
);

CREATE TABLE SITUATION(
SITUATION VARCHAR2(400) NOT NULL,
S_COMMENT VARCHAR2(1000),
TAG VARCHAR2(500)
);

DROP SEQUENCE PET_NUM_SEQ;
DROP SEQUENCE FEED_NUM_SEQ;
DROP SEQUENCE COMMENT_NUM_SEQ;

CREATE SEQUENCE PET_NUM_SEQ
	START WITH 1
	NOCACHE
	NOCYCLE;

CREATE SEQUENCE FEED_NUM_SEQ
	START WITH 1
	NOCACHE
	NOCYCLE;

CREATE SEQUENCE COMMENT_NUM_SEQ
	START WITH 1
	NOCACHE
	NOCYCLE;

INSERT INTO MEMBERINFO
VALUES('tlffur20@naver.com', '12');
INSERT INTO MEMBERINFO
VALUES('Delkin@gmail.com', '0000');
INSERT INTO MEMBERINFO
VALUES('Baaam@gmail.com', '0000');
INSERT INTO MEMBERINFO
VALUES('ILLONEP@naver.com', '0000');
INSERT INTO MEMBERINFO
VALUES('TwoDoubleRow@gmail.com', '0000');
INSERT INTO MEMBERINFO
VALUES('NoYoon@gmail.com', '0000');
INSERT INTO MEMBERINFO
VALUES('gmlrud@gmail.com', '0000');
INSERT INTO MEMBERINFO
VALUES('SeaMonkey@gmail.com', '0000');
INSERT INTO MEMBERINFO
VALUES('Unji@gmail.com', '0000');
INSERT INTO MEMBERINFO
VALUES('LightJoo@gmail.com', '0000');
INSERT INTO MEMBERINFO
VALUES('GaIn@gmail.com', '0000');
INSERT INTO MEMBERINFO
VALUES('Cutie@gmail.com', '0000');
INSERT INTO MEMBERINFO
VALUES('mino@gmail.com', '0000');
INSERT INTO MEMBERINFO
VALUES('maru@gmail.com', '0000');



insert into species values('코리안 숏헤어','C');
insert into species values('러시안블루','C');
insert into species values('노르웨이숲','C');
insert into species values('엑조틱 숏헤어','C');
insert into species values('브리티쉬 숏헤어','C');
insert into species values('먼치킨','C');	
insert into species values('스코티쉬 폴드','C');
insert into species values('벵갈','C');
insert into species values('스코티쉬 폴드 롱헤어','C');
insert into species values('시암','C');
insert into species values('터키시 앙고라','C');
insert into species values('래그돌','C');
insert into species values('스코티쉬 스트레이드 롱헤어','C');
insert into species values('라팜 숏헤어','C');
insert into species values('페르시안','C');
insert into species values('먼치킨 롱헤어','C');
insert into species values('스코티쉬 스트레이드','C');
insert into species values('아메리칸 숏헤어','C');
insert into species values('버마','C');
insert into species values('스노우슈','C');
insert into species values('아비시니안','C');
insert into species values('코랏','C');
insert into species values('발리니즈','C');
insert into species values('아메리칸 컬','C');
insert into species values('메인 쿤','C');
insert into species values('시베리안','C');
insert into species values('돈스코이','C');
insert into species values('소말리','C');
insert into species values('스핑크스','C');
insert into species values('나폴레옹','C');
insert into species values('샤르트뢰','C');
insert into species values('네벨룽','C');
insert into species values('맹크스','C');
insert into species values('재패니즈밥테일','C');
insert into species values('브리티쉬 롱헤어','C');
insert into species values('데본렉스','C');
insert into species values('라이코이','C');
insert into species values('터키시 반','C');
insert into species values('라팜','C');
insert into species values('고양이기타','C');

insert into species values('포메라니안','D');
insert into species values('치와와','D');
insert into species values('믹스견','D');
insert into species values('래브라도 리트리버','D');
insert into species values('말티즈','D');
insert into species values('푸들','D');
insert into species values('닥스훈트','D');
insert into species values('프렌치 불독','D');
insert into species values('파피용','D');
insert into species values('웰시 코기 (카디건)','D');
insert into species values('골든 리트리버','D');
insert into species values('미니어처 핀셔','D');
insert into species values('셔틀랜드 쉽독','D');
insert into species values('웰시 코기 (펨브록)','D');
insert into species values('진돗개','D');
insert into species values('재패니스 스피츠','D');
insert into species values('풍산개','D');
insert into species values('시베리안 허스키','D');
insert into species values('비숑 프리제','D');
insert into species values('보스턴 테리어','D');
insert into species values('시추','D');
insert into species values('시바','D');
insert into species values('삽살개','D');
insert into species values('베들링턴 테리어','D');
insert into species values('요크셔 테리어','D');
insert into species values('페키니즈','D');
insert into species values('독일 스피츠','D');
insert into species values('스탠다드 푸들','D');
insert into species values('사모예드견','D');
insert into species values('보더 콜리','D');
insert into species values('비글','D');
insert into species values('아메리칸 코커 스패니얼','D');
insert into species values('아메리칸 불독','D');
insert into species values('이탈리안 그레이하운드','D');
insert into species values('도베르만','D');
insert into species values('피니시 스피츠','D');
insert into species values('잭 러셀 테리어','D');
insert into species values('퍼그','D');
insert into species values('카발리에 킹 찰스 스패니얼','D');
insert into species values('미니어처 슈나우저','D');
insert into species values('스코티시 테리어','D');
insert into species values('슈나우저','D');
insert into species values('오스트레일리안 실키 테리어','D');
insert into species values('로트바일러','D');
insert into species values('샤페이','D');
insert into species values('라사 압소','D');
insert into species values('와이어 폭스 테리어','D');
insert into species values('달마티안','D');
insert into species values('그리폰 비글','D');
insert into species values('올드 잉글리시 쉽독','D');
insert into species values('잉글리시 코커 스패니얼','D');
insert into species values('코통 드 튈레아르','D');
insert into species values('아메리칸 불리','D');
insert into species values('강아지기타','D');

INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'MadCrown', 'imgs/profile/madcrown.jpg','hi' , 'M', '도베르만','tlffur20@naver.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '구름', 'imgs/profile/cloud.jpg', 'hi' , 'M', '말티즈', 'Delkin@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Green', 'imgs/profile/green.jpg', 'hi' , 'F', '노르웨이숲', 'LightJoo@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Blue', 'imgs/profile/blue.png', 'hi' , 'M', '러시안블루', 'LightJoo@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Chicken', 'imgs/profile/chicken.jpg', 'hi' , 'M', '먼치킨','SeaMonkey@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Jjam', 'imgs/profile/jjam.jpg', '3대 600' , 'M', '푸들','gmlrud@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '창식', 'imgs/profile/changsik.jpg', 'hi' , 'M', '치와와','gmlrud@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '마롱', 'imgs/profile/marong.jpg', 'hi' , 'M', '시암','TwoDoubleRow@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Joohwan_junior', 'imgs/profile/junior.png', 'hi' , 'M', '퍼그','ILLONEP@naver.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '윤선', 'imgs/profile/yoon.jpg', 'hi' , 'F', '코리안 숏헤어', 'NoYoon@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Cutie', 'imgs/profile/cutie.jpg', 'hi' , 'F', '골든 리트리버', 'Cutie@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '뭉치', 'imgs/profile/moongchi.jpg', 'hi' , 'M', '비숑 프리제', 'GaIn@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '메리', 'imgs/profile/merry.jpg', 'hi' , 'F', '믹스견', 'Baaam@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '먼지', 'imgs/profile/munji.jpg', 'hi' , 'M', '먼치킨', 'Baaam@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '방자', 'imgs/profile/bangja.jpg', 'hi' , 'M', '비숑 프리제', 'tlffur20@naver.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '까미', 'imgs/profile/kkami.jpg', 'hi' , 'F', '푸들', 'maru@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '마루', 'imgs/profile/maru.jpg', 'hi' , 'M', '포메라니안', 'maru@gmail.com');



INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 10, 'videos/yoon01.mp4', '졸려어어어 잘거야아아 건들지마아아~~ #졸려 #피곤 #방해금지', '1,2,3,4,5,6,7,8,9', 'L', TO_DATE('2017-10-17','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 2, 'videos/Cloud1.mp4', '뭐해 나심심해 놀아줘!! #장난감 #심심해 #놀아줘 ', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2017-10-21','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 15, 'videos/bangja01.mp4', '콜라 시키신분! #콜라 #행복 # 기쁨', '1,2,3', 'L', TO_DATE('2017-11-20','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 7, 'videos/changsik01.mp4', '이거하면 간식줄거야?? 간식줘! #간식 #두개 #맛있어', '1,2,3,4,5,6,7,8,9', 'L', TO_DATE('2017-12-11','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 14, 'videos/munji01.mp4', '뭘보냥 저리가~ #긴장 ', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2018-03-25','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 12, 'videos/moongchi01.mp4', '오랫만이야 반가워!! #행복 #신남', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2018-03-25','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 14, 'videos/munji02.mp4', '먼지가 많네 가려워', '1,2,3', 'U', TO_DATE('2018-03-25','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 14, 'videos/munji03.mp4', ' 누가 자꾸 쳐다보냥', '1,2,3,4,5,6,7,8,9', 'L', TO_DATE('2018-09-26','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 12, 'videos/moongchi02.mp4', '메리~~~크리스마스~~~ #선물 #장난감', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2018-09-27','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 10, 'videos/yoon02.mp4', '건들지 마라고오~~~~~', '1,2,3', 'U', TO_DATE('2018-10-22','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 8, 'videos/marong01.mp4', '놀아줘~~~ 쓰담쓰담해줘~~', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2018-11-19','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 8, 'videos/marong02.mp4', '귀찮아......졸려어....', '1,2,3', 'U', TO_DATE('2018-11-20','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 16, 'videos/kkami01.mp4', '햇살좋다~~~~ 나른해~~~', '1,2,3', 'U', TO_DATE('2018-11-20','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 12, 'videos/moongchi03.mp4', '뭐하냐고~~ 귀찮다고오~~~', '1,2,3,4,5,6,7,8,9,10', 'U', TO_DATE('2018-11-20','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 17, 'videos/maru01.mp4', '오늘 저녁은 뭐먹지? #장난감 #간식 #즐거워 #신난다 오늘 점심 오점무?', '1,2,3', 'U', TO_DATE('2018-11-20','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 14, 'videos/munji04.mp4', '아! 깜짝이야!! 오지마!!!', '1,2,3,4,5,6,7,8,9', 'L', TO_DATE('2018-11-21','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 12, 'videos/moongchi04.mp4', '요새 살이 너무쪗나...문이좁네..', '1,2,3,4,5,6,7,8,9,10,11', 'U', TO_DATE('2018-12-27','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 15, 'videos/bangja02.mp4', '날씨 좋다아! 따라와~따라와~ #산책', '1,2,3,4,5', 'U', TO_DATE('2019-01-21','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 14, 'videos/munji05.mp4', '누가왔나 한번볼까??', '1,2,3', 'U', TO_DATE('2019-08-26','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 14, 'videos/munji06.mp4', '어디한번 쓰다듬어봐!', '1,2,3', 'U', TO_DATE('2019-12-22','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 6, 'videos/jjam01.mp4', '왜에에에 나 졸려어어 건들지마아~~', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15', 'U', TO_DATE('2020-06-24','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 15, 'videos/bangja03.mp4', '메롱~', '1,2,3', 'U', TO_DATE('2020-10-13','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 16, 'videos/kkami02.mp4', '이집 껌 잘하네~ #간식 #맛있어', '1,2,3', 'U', TO_DATE('2020-10-13','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 17, 'videos/maru02.mp4', '눈이 내려요!!', '1,2,3', 'U', TO_DATE('2020-10-13','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 15, 'videos/bangja04.mp4', '#반가워! #신나! #놀아줘! #간식줘! #빨리!! #빨리!!', '1,2,3', 'U', TO_DATE('2020-10-27','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 12, 'videos/moongchi05.mp4', '잉? #궁금해', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2020-11-07','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 8, 'videos/marong03.mp4', '이게뭐지? 장난감인가?? #놀아줘 #장난감', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2020-11-13','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 14, 'videos/munji07.mp4', '저여저여! #간식', '1,2,3,4', 'U', TO_DATE('2021-05-25','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 13, 'videos/merry01.mp4', '안녕? 나 귀엽지!', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2021-06-01','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 13, 'videos/merry02.mp4', '카메라 저리 치워!! #화남 #귀찮아', '1,2,3', 'U', TO_DATE('2021-06-03','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 15, 'videos/bangja05.mp4', '너랑 함께 있어서 행복해', 'U', TO_DATE('2021-06-03','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 17, 'videos/maru03.mp4', '나 따라오고 있지? #산책 #궁금', '1,2,3', 'U', TO_DATE('2021-06-03','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 12, 'videos/moongchi06.mp4', '나랑 눈싸움 하자 #찌릿', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2021-06-04','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 13, 'videos/merry03.mp4', '나도 그거 먹을래', '1,2,3', 'U', TO_DATE('2021-06-04','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 13, 'videos/merry04.mp4', ' 나 심심해...장난감 던져줘! #심심해 #장난감 #친구', '1,2,3', 'U', TO_DATE('2021-06-05','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 2, 'videos/Cloud2.mp4', '빨리와! 빨리~ #산책 #호기심', '1,2,3,4,5,6,7,8,9,10', 'U', sysdate);
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 14, 'videos/munji08.mp4', '내일은 뭐하고 놀징?', '1,2,3,4,5,6,7,8,9', 'U', sysdate);


INSERT INTO FEED_COMMENT
VALUES(COMMENT_NUM_SEQ.NEXTVAL, 2, 1, 'HI', '4,5,6,11,12');
INSERT INTO FEED_COMMENT
VALUES(COMMENT_NUM_SEQ.NEXTVAL, 2, 1, 'HI2트', '4,5,6,11,12');
INSERT INTO FEED_COMMENT
VALUES(COMMENT_NUM_SEQ.NEXTVAL, 2, 1, 'HI3트', '4,5,6,11,12');
INSERT INTO FEED_COMMENT
VALUES(COMMENT_NUM_SEQ.NEXTVAL, 2, 1, 'HI4트', '4,5,6,11,12');
INSERT INTO FEED_COMMENT
VALUES(COMMENT_NUM_SEQ.NEXTVAL, 2, 1, 'HI받아줄때까지한다', '4,5,6,11,12,1,3,7');


INSERT INTO FOLLOWINFO
VALUES(1,2);
INSERT INTO FOLLOWINFO
VALUES(1,3);
INSERT INTO FOLLOWINFO
VALUES(1,4);
INSERT INTO FOLLOWINFO
VALUES(1,5);
INSERT INTO FOLLOWINFO
VALUES(1,6);
INSERT INTO FOLLOWINFO
VALUES(1,7);
INSERT INTO FOLLOWINFO
VALUES(1,8);
INSERT INTO FOLLOWINFO
VALUES(1,9);
INSERT INTO FOLLOWINFO
VALUES(1,10);
INSERT INTO FOLLOWINFO
VALUES(1,11);
INSERT INTO FOLLOWINFO
VALUES(1,12);

INSERT INTO FOLLOWINFO
VALUES(2,1);
INSERT INTO FOLLOWINFO
VALUES(2,3);
INSERT INTO FOLLOWINFO
VALUES(2,4);
INSERT INTO FOLLOWINFO
VALUES(2,5);
INSERT INTO FOLLOWINFO
VALUES(2,6);
INSERT INTO FOLLOWINFO
VALUES(2,7);
INSERT INTO FOLLOWINFO
VALUES(2,8);
INSERT INTO FOLLOWINFO
VALUES(2,9);
INSERT INTO FOLLOWINFO
VALUES(2,10);
INSERT INTO FOLLOWINFO
VALUES(2,11);
INSERT INTO FOLLOWINFO
VALUES(2,12);
INSERT INTO FOLLOWINFO
VALUES(2,13);
INSERT INTO FOLLOWINFO
VALUES(2,14);
INSERT INTO FOLLOWINFO
VALUES(2,15);
INSERT INTO FOLLOWINFO
VALUES(2,16);
INSERT INTO FOLLOWINFO
VALUES(2,17);

INSERT INTO FOLLOWINFO
VALUES(3,1);
INSERT INTO FOLLOWINFO
VALUES(3,2);
INSERT INTO FOLLOWINFO
VALUES(3,4);
INSERT INTO FOLLOWINFO
VALUES(3,5);
INSERT INTO FOLLOWINFO
VALUES(3,6);
INSERT INTO FOLLOWINFO
VALUES(3,7);
INSERT INTO FOLLOWINFO
VALUES(3,8);
INSERT INTO FOLLOWINFO
VALUES(3,9);
INSERT INTO FOLLOWINFO
VALUES(3,10);
INSERT INTO FOLLOWINFO
VALUES(3,11);
INSERT INTO FOLLOWINFO
VALUES(3,12);

INSERT INTO FOLLOWINFO
VALUES(4,1);
INSERT INTO FOLLOWINFO
VALUES(4,2);
INSERT INTO FOLLOWINFO
VALUES(4,3);
INSERT INTO FOLLOWINFO
VALUES(4,5);
INSERT INTO FOLLOWINFO
VALUES(4,6);
INSERT INTO FOLLOWINFO
VALUES(4,7);
INSERT INTO FOLLOWINFO
VALUES(4,8);
INSERT INTO FOLLOWINFO
VALUES(4,9);
INSERT INTO FOLLOWINFO
VALUES(4,10);
INSERT INTO FOLLOWINFO
VALUES(4,11);
INSERT INTO FOLLOWINFO
VALUES(4,12);

INSERT INTO FOLLOWINFO
VALUES(5,1);
INSERT INTO FOLLOWINFO
VALUES(5,2);
INSERT INTO FOLLOWINFO
VALUES(5,3);
INSERT INTO FOLLOWINFO
VALUES(5,4);
INSERT INTO FOLLOWINFO
VALUES(5,6);
INSERT INTO FOLLOWINFO
VALUES(5,7);
INSERT INTO FOLLOWINFO
VALUES(5,8);
INSERT INTO FOLLOWINFO
VALUES(5,9);
INSERT INTO FOLLOWINFO
VALUES(5,10);
INSERT INTO FOLLOWINFO
VALUES(5,11);
INSERT INTO FOLLOWINFO
VALUES(5,12);

INSERT INTO EMOTION
VALUES('comfortable', '잠온다..', '#잠와');
INSERT INTO EMOTION
VALUES('comfortable', '구름을 타고있는 기분이야', '#구름속');
INSERT INTO EMOTION
VALUES('comfortable', '평안한 기분이 들어', '#편-안');
INSERT INTO EMOTION
VALUES('comfortable', '지금 딱좋아', '#편안그자체');
INSERT INTO EMOTION
VALUES('sad', '내 거친생각과 불안한 눈빛과 그걸 지켜보는 너', '#너를위해');
INSERT INTO EMOTION
VALUES('sad', '난... ㄱ ㅏ끔... 눈물을 흘린 ㄷ ㅏ .... ', '#눈물');
INSERT INTO EMOTION
VALUES('sad', '모래를 삼킨 듯이 가슴이 먹먹한 날이 있지 ', '#먹먹');
INSERT INTO EMOTION
VALUES('happy', '아 너무좋아!', '#행복그자체');
INSERT INTO EMOTION
VALUES('happy', '이 시간이 제일 행복해', '#HAPPY!!!');
INSERT INTO EMOTION
VALUES('happy', '항상 새로워, 짜릿해', '#짜릿');
INSERT INTO EMOTION
VALUES('angry', '빨리 간식을 달라', '#4딸라');
INSERT INTO EMOTION
VALUES('angry', '내 이름 그만 불러', '#이미삐졌으');
INSERT INTO EMOTION
VALUES('angry', '흐즈믈르그흣드', '#뜨르흐즈므르');
INSERT INTO EMOTION
VALUES('aggressive', '뭘봐', '#저리가');
INSERT INTO EMOTION
VALUES('aggressive', '혼날래?', '#일촉즉발');


INSERT INTO SITUATION
VALUES('SNACK', 'EXCITING' , 'HAPPY');

select * from (select * from feedinfo order by DBMS_RANDOM.RANDOM) where rownum < 2;
select * from memberinfo;

select * from petinfo;
select * from FEEDINFO;
select * from FOLLOWINFO where pet_num = 1;
select * from feedinfo where pet_num in (select following_pet from FOLLOWINFO where pet_num = 1);


select * from feedinfo where feed_num = 16;

select feed.feed_num, pet.pet_num, pet.pet_nick, pet.pet_profile, feed.img_addr, feed.feed_content, feed.like_pet, feed.f_lock, feed.upload_time
from feedinfo feed, petinfo pet
where pet.pet_num = feed.pet_num
and pet.pet_num in (select following_pet from FOLLOWINFO where pet_num = 1)
order by feed.upload_time desc;


select * from feedinfo where pet_num = 2;

--오너 사진, 오너 이름, 오너가 팔로우한사람 수, 오너를 팔로우한 사람 수, 게시글 수, 소개글

select o.pet_profile, o.pet_nick, o.pet_introduce
from PETINFO o
where o.pet_num = 2;

select fo1.following_pet, fo2.pet_num
from FOLLOWINFO fo1, followinfo fo2, PETINFO pet
where fo1.pet_num = pet.pet_num
and fo2.following_pet = pet.pet_num
and pet.pet_num = 2;

select fo1.following_pet
from followinfo fo1, petinfo pet
where fo1.pet_num = pet.pet_num
and pet.pet_num = 2;


select fo2.pet_num
from followinfo fo2, petinfo pet
where fo2.following_pet = pet.pet_num
and pet.pet_num = 2;

select pet_nick, pet_profile, pet_introduce from petinfo where pet_num = 2;

select count(feed.feed_num)
from feedinfo feed, petinfo pet
where feed.pet_num = pet.pet_num
and pet.pet_num = 2;


select pet.pet_nick, comm.comment_content
from petinfo pet, FEED_COMMENT comm, FEEDINFO feed
where feed.feed_num = comm.feed_num
and pet.pet_num = comm.pet_num
and feed.feed_num = 1;

select feed.feed_num, pet.pet_num, pet.pet_nick, pet.pet_profile, feed.img_addr, feed.feed_content, feed.like_pet, feed.f_lock, feed.upload_time
from feedinfo feed, petinfo pet where pet.pet_num = feed.pet_num and pet.pet_num in (select following_pet from FOLLOWINFO where pet_num = 2) order by feed.upload_time desc;

select * from FEEDINFO where pet_num = 2 order by upload_time desc;

select * from (select * from petinfo where SPECIES in (select species from species where cord = 'D') order by DBMS_RANDOM.RANDOM) where rownum < 6;

select * from (select * from petinfo order by DBMS_RANDOM.RANDOM) where rownum < 11;

