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
CORD VARCHAR2(1) NOT NULL,
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
VALUES(PET_NUM_SEQ.NEXTVAL, 'CLOUD', 'IMG.JPG','hi' , 'M', '도베르만','tlffur20@naver.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '구름', 'IMG.JPG', 'hi' , 'M', '말티즈', 'Delkin@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Green', 'IMG.JPG', 'hi' , 'F', '노르웨이숲', 'LightJoo@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Blue', 'IMG.JPG', 'hi' , 'M', '러시안블루', 'LightJoo@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Chicken', 'IMG.JPG', 'hi' , 'M', '먼치킨','SeaMonkey@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Jjam', 'IMG.JPG', '3대 600' , 'M', '푸들','gmlrud@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '창식', 'IMG.JPG', 'hi' , 'M', '치와와','gmlrud@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '마룡', 'IMG.JPG', 'hi' , 'M', '시암','TwoDoubleRow@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Joohwan_junior', 'IMG.JPG', 'hi' , 'M', '퍼그','ILLONEP@naver.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '윤선', 'IMG.JPG', 'hi' , 'F', '코리안 숏헤어', 'NoYoon@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Cutie', 'IMG.JPG', 'hi' , 'F', '골든 리트리버', 'Cutie@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '뭉치', 'IMG.JPG', 'hi' , 'M', '비숑 프리제', 'GaIn@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '메리', 'IMG.JPG', 'hi' , 'F', '믹스견', 'Baaam@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '먼지', 'IMG.JPG', 'hi' , 'M', '먼치킨', 'Baaam@gmail.com');

INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 10, 'imgs/img_section/img01.jpg', '윤선', '1,2,3', 'L', TO_DATE('2017-10-17','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 2, 'imgs/img_section/img02.jpg', '구름', '1,2,3', 'U', TO_DATE('2017-10-21','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 10, 'imgs/img_section/img03.jpg', '윤선', '1,2,3', 'L', TO_DATE('2017-11-20','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 7, 'imgs/img_section/img01.jpg', '창식', '1,2,3', 'L', TO_DATE('2017-12-11','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 7, 'imgs/img_section/img02.jpg', '창식', '1,2,3', 'U', TO_DATE('2018-03-25','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 7, 'imgs/img_section/img03.jpg', '창식', '1,2,3', 'L', TO_DATE('2018-09-26','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 10, 'imgs/img_section/img01.jpg', '윤선', '1,2,3', 'U', TO_DATE('2018-07-22','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 8, 'imgs/img_section/img02.jpg', '마룡', '1,2,3', 'U', TO_DATE('2018-11-19','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 8, 'imgs/img_section/img01.jpg', '마룡', '1,2,3', 'U', TO_DATE('2018-11-20','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 2, 'imgs/img_section/img02.jpg', '구름', '1,2,3', 'L', TO_DATE('2018-11-21','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 10, 'imgs/img_section/img03.jpg', '윤선', '1,2,3', 'U', TO_DATE('2019-01-21','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 12, 'imgs/img_section/img01.jpg', '뭉치', '1,2,3', 'U', TO_DATE('2019-08-26','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 10, 'imgs/img_section/img02.jpg', '윤선', '1,2,3', 'U', TO_DATE('2019-12-22','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 6, 'imgs/img_section/img03.jpg', 'Jjam', '1,2,3', 'U', TO_DATE('2020-06-24','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 7, 'imgs/img_section/img01.jpg', '창식', '1,2,3', 'U', TO_DATE('2020-08-15','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 2, 'imgs/img_section/img02.jpg', '구름', '1,2,3', 'U', TO_DATE('2020-10-13','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 10, 'imgs/img_section/img03.jpg', '윤선', '1,2,3', 'U', TO_DATE('2021-05-25','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 2, 'imgs/img_section/img01.jpg', '구름', '1,2,3,4,5,6,7,8,9', 'U', sysdate);


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
VALUES('HAPPY', 'FELLING IS SO GOOD', 'FUNNY');

INSERT INTO SITUATION
VALUES('SNACK', 'EXCITING' , 'HAPPY');

select * from (select * from feedinfo order by DBMS_RANDOM.RANDOM) where rownum < 2
