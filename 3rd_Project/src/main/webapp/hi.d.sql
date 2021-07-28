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
VALUES('admin', '1');


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
VALUES(PET_NUM_SEQ.NEXTVAL, 'moohoya', 'IMG.JPG' , 'hi' , 'M', '말티즈' , 'admin');

INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, PET_NUM_SEQ.CURRVAL, 'AVI.AVI', 'HELLOW WORLD', '1,2,3', 'L', sysdate);

INSERT INTO FEED_COMMENT
VALUES(COMMENT_NUM_SEQ.NEXTVAL, PET_NUM_SEQ.CURRVAL, FEED_NUM_SEQ.CURRVAL, 'HI', '4,5,6');

INSERT INTO FOLLOWINFO
VALUES(PET_NUM_SEQ.CURRVAL, PET_NUM_SEQ.CURRVAL);


INSERT INTO EMOTION
VALUES('HAPPY', 'FELLING IS SO GOOD', 'FUNNY');

INSERT INTO SITUATION
VALUES('SNACK', 'EXCITING' , 'HAPPY');
