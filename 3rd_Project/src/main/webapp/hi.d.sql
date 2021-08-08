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



insert into species values('�ڸ��� �����','C');
insert into species values('���þȺ��','C');
insert into species values('�븣���̽�','C');
insert into species values('����ƽ �����','C');
insert into species values('�긮Ƽ�� �����','C');
insert into species values('��ġŲ','C');	
insert into species values('����Ƽ�� ����','C');
insert into species values('����','C');
insert into species values('����Ƽ�� ���� �����','C');
insert into species values('�þ�','C');
insert into species values('��Ű�� �Ӱ��','C');
insert into species values('���׵�','C');
insert into species values('����Ƽ�� ��Ʈ���̵� �����','C');
insert into species values('���� �����','C');
insert into species values('�丣�þ�','C');
insert into species values('��ġŲ �����','C');
insert into species values('����Ƽ�� ��Ʈ���̵�','C');
insert into species values('�Ƹ޸�ĭ �����','C');
insert into species values('����','C');
insert into species values('����콴','C');
insert into species values('�ƺ�ôϾ�','C');
insert into species values('�ڶ�','C');
insert into species values('�߸�����','C');
insert into species values('�Ƹ޸�ĭ ��','C');
insert into species values('���� ��','C');
insert into species values('�ú�����','C');
insert into species values('��������','C');
insert into species values('�Ҹ���','C');
insert into species values('����ũ��','C');
insert into species values('��������','C');
insert into species values('����Ʈ��','C');
insert into species values('�׺���','C');
insert into species values('��ũ��','C');
insert into species values('���д��������','C');
insert into species values('�긮Ƽ�� �����','C');
insert into species values('��������','C');
insert into species values('��������','C');
insert into species values('��Ű�� ��','C');
insert into species values('����','C');
insert into species values('����̱�Ÿ','C');

insert into species values('���޶�Ͼ�','D');
insert into species values('ġ�Ϳ�','D');
insert into species values('�ͽ���','D');
insert into species values('����� ��Ʈ����','D');
insert into species values('��Ƽ��','D');
insert into species values('Ǫ��','D');
insert into species values('�ڽ���Ʈ','D');
insert into species values('����ġ �ҵ�','D');
insert into species values('���ǿ�','D');
insert into species values('���� �ڱ� (ī���)','D');
insert into species values('��� ��Ʈ����','D');
insert into species values('�̴Ͼ�ó �ɼ�','D');
insert into species values('��Ʋ���� ����','D');
insert into species values('���� �ڱ� (����)','D');
insert into species values('������','D');
insert into species values('���дϽ� ������','D');
insert into species values('ǳ�갳','D');
insert into species values('�ú����� �㽺Ű','D');
insert into species values('��� ������','D');
insert into species values('������ �׸���','D');
insert into species values('����','D');
insert into species values('�ù�','D');
insert into species values('��찳','D');
insert into species values('���鸵�� �׸���','D');
insert into species values('��ũ�� �׸���','D');
insert into species values('��Ű����','D');
insert into species values('���� ������','D');
insert into species values('���Ĵٵ� Ǫ��','D');
insert into species values('��𿹵��','D');
insert into species values('���� �ݸ�','D');
insert into species values('���','D');
insert into species values('�Ƹ޸�ĭ ��Ŀ ���дϾ�','D');
insert into species values('�Ƹ޸�ĭ �ҵ�','D');
insert into species values('��Ż���� �׷����Ͽ��','D');
insert into species values('��������','D');
insert into species values('�ǴϽ� ������','D');
insert into species values('�� ���� �׸���','D');
insert into species values('�۱�','D');
insert into species values('ī�߸��� ŷ ���� ���дϾ�','D');
insert into species values('�̴Ͼ�ó ��������','D');
insert into species values('����Ƽ�� �׸���','D');
insert into species values('��������','D');
insert into species values('����Ʈ���ϸ��� ��Ű �׸���','D');
insert into species values('��Ʈ���Ϸ�','D');
insert into species values('������','D');
insert into species values('��� �м�','D');
insert into species values('���̾� ���� �׸���','D');
insert into species values('�޸�Ƽ��','D');
insert into species values('�׸��� ���','D');
insert into species values('�õ� �ױ۸��� ����','D');
insert into species values('�ױ۸��� ��Ŀ ���дϾ�','D');
insert into species values('���� �� ƥ���Ƹ�','D');
insert into species values('�Ƹ޸�ĭ �Ҹ�','D');
insert into species values('��������Ÿ','D');

INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'MadCrown', 'imgs/profile/madcrown.jpg','hi' , 'M', '��������','tlffur20@naver.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '����', 'imgs/profile/cloud.jpg', 'hi' , 'M', '��Ƽ��', 'Delkin@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Green', 'imgs/profile/green.jpg', 'hi' , 'F', '�븣���̽�', 'LightJoo@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Blue', 'imgs/profile/blue.png', 'hi' , 'M', '���þȺ��', 'LightJoo@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Chicken', 'imgs/profile/chicken.jpg', 'hi' , 'M', '��ġŲ','SeaMonkey@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Jjam', 'imgs/profile/jjam.jpg', '3�� 600' , 'M', 'Ǫ��','gmlrud@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'â��', 'imgs/profile/changsik.jpg', 'hi' , 'M', 'ġ�Ϳ�','gmlrud@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '����', 'imgs/profile/marong.jpg', 'hi' , 'M', '�þ�','TwoDoubleRow@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Joohwan_junior', 'imgs/profile/junior.png', 'hi' , 'M', '�۱�','ILLONEP@naver.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '����', 'imgs/profile/yoon.jpg', 'hi' , 'F', '�ڸ��� �����', 'NoYoon@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, 'Cutie', 'imgs/profile/cutie.jpg', 'hi' , 'F', '��� ��Ʈ����', 'Cutie@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '��ġ', 'imgs/profile/moongchi.jpg', 'hi' , 'M', '��� ������', 'GaIn@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '�޸�', 'imgs/profile/merry.jpg', 'hi' , 'F', '�ͽ���', 'Baaam@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '����', 'imgs/profile/munji.jpg', 'hi' , 'M', '��ġŲ', 'Baaam@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '����', 'imgs/profile/bangja.jpg', 'hi' , 'M', '��� ������', 'tlffur20@naver.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '���', 'imgs/profile/kkami.jpg', 'hi' , 'F', 'Ǫ��', 'maru@gmail.com');
INSERT INTO PETINFO
VALUES(PET_NUM_SEQ.NEXTVAL, '����', 'imgs/profile/maru.jpg', 'hi' , 'M', '���޶�Ͼ�', 'maru@gmail.com');



INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 10, 'videos/yoon01.mp4', '�������� �߰ž߾ƾ� �ǵ������ƾ�~~ #���� #�ǰ� #���ر���', '1,2,3,4,5,6,7,8,9', 'L', TO_DATE('2017-10-17','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 2, 'videos/Cloud1.mp4', '���� ���ɽ��� �����!! #�峭�� #�ɽ��� #����� ', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2017-10-21','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 15, 'videos/bangja01.mp4', '�ݶ� ��Ű�ź�! #�ݶ� #�ູ # ���', '1,2,3', 'L', TO_DATE('2017-11-20','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 7, 'videos/changsik01.mp4', '�̰��ϸ� �����ٰž�?? ������! #���� #�ΰ� #���־�', '1,2,3,4,5,6,7,8,9', 'L', TO_DATE('2017-12-11','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 14, 'videos/munji01.mp4', '������ ������~ #���� ', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2018-03-25','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 12, 'videos/moongchi01.mp4', '�������̾� �ݰ���!! #�ູ #�ų�', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2018-03-25','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 14, 'videos/munji02.mp4', '������ ���� ������', '1,2,3', 'U', TO_DATE('2018-03-25','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 14, 'videos/munji03.mp4', ' ���� �ڲ� �Ĵٺ���', '1,2,3,4,5,6,7,8,9', 'L', TO_DATE('2018-09-26','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 12, 'videos/moongchi02.mp4', '�޸�~~~ũ��������~~~ #���� #�峭��', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2018-09-27','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 10, 'videos/yoon02.mp4', '�ǵ��� ������~~~~~', '1,2,3', 'U', TO_DATE('2018-10-22','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 8, 'videos/marong01.mp4', '�����~~~ ���㾲������~~', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2018-11-19','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 8, 'videos/marong02.mp4', '������......������....', '1,2,3', 'U', TO_DATE('2018-11-20','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 16, 'videos/kkami01.mp4', '�޻�����~~~~ ������~~~', '1,2,3', 'U', TO_DATE('2018-11-20','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 12, 'videos/moongchi03.mp4', '���ϳİ�~~ �����ٰ��~~~', '1,2,3,4,5,6,7,8,9,10', 'U', TO_DATE('2018-11-20','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 17, 'videos/maru01.mp4', '���� ������ ������? #�峭�� #���� #��ſ� #�ų��� ���� ���� ������?', '1,2,3', 'U', TO_DATE('2018-11-20','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 14, 'videos/munji04.mp4', '��! ��¦�̾�!! ������!!!', '1,2,3,4,5,6,7,8,9', 'L', TO_DATE('2018-11-21','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 12, 'videos/moongchi04.mp4', '��� ���� �ʹ�����...��������..', '1,2,3,4,5,6,7,8,9,10,11', 'U', TO_DATE('2018-12-27','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 15, 'videos/bangja02.mp4', '���� ���پ�! �����~�����~ #��å', '1,2,3,4,5', 'U', TO_DATE('2019-01-21','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 14, 'videos/munji05.mp4', '�����Գ� �ѹ�����??', '1,2,3', 'U', TO_DATE('2019-08-26','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 14, 'videos/munji06.mp4', '����ѹ� ���ٵ���!', '1,2,3', 'U', TO_DATE('2019-12-22','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 6, 'videos/jjam01.mp4', '�ֿ����� �� ������� �ǵ�������~~', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15', 'U', TO_DATE('2020-06-24','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 15, 'videos/bangja03.mp4', '�޷�~', '1,2,3', 'U', TO_DATE('2020-10-13','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 16, 'videos/kkami02.mp4', '���� �� ���ϳ�~ #���� #���־�', '1,2,3', 'U', TO_DATE('2020-10-13','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 17, 'videos/maru02.mp4', '���� ������!!', '1,2,3', 'U', TO_DATE('2020-10-13','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 15, 'videos/bangja04.mp4', '#�ݰ���! #�ų�! #�����! #������! #����!! #����!!', '1,2,3', 'U', TO_DATE('2020-10-27','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 12, 'videos/moongchi05.mp4', '��? #�ñ���', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2020-11-07','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 8, 'videos/marong03.mp4', '�̰Թ���? �峭���ΰ�?? #����� #�峭��', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2020-11-13','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 14, 'videos/munji07.mp4', '��������! #����', '1,2,3,4', 'U', TO_DATE('2021-05-25','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 13, 'videos/merry01.mp4', '�ȳ�? �� �Ϳ���!', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2021-06-01','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 13, 'videos/merry02.mp4', 'ī�޶� ���� ġ��!! #ȭ�� #������', '1,2,3', 'U', TO_DATE('2021-06-03','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 15, 'videos/bangja05.mp4', '�ʶ� �Բ� �־ �ູ��', 'U', TO_DATE('2021-06-03','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 17, 'videos/maru03.mp4', '�� ������� ����? #��å #�ñ�', '1,2,3', 'U', TO_DATE('2021-06-03','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 12, 'videos/moongchi06.mp4', '���� ���ο� ���� #�', '1,2,3,4,5,6,7,8,9', 'U', TO_DATE('2021-06-04','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 13, 'videos/merry03.mp4', '���� �װ� ������', '1,2,3', 'U', TO_DATE('2021-06-04','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 13, 'videos/merry04.mp4', ' �� �ɽ���...�峭�� ������! #�ɽ��� #�峭�� #ģ��', '1,2,3', 'U', TO_DATE('2021-06-05','YYYY-MM-DD'));
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 2, 'videos/Cloud2.mp4', '������! ����~ #��å #ȣ���', '1,2,3,4,5,6,7,8,9,10', 'U', sysdate);
INSERT INTO FEEDINFO
VALUES(FEED_NUM_SEQ.NEXTVAL, 14, 'videos/munji08.mp4', '������ ���ϰ� ��¡?', '1,2,3,4,5,6,7,8,9', 'U', sysdate);


INSERT INTO FEED_COMMENT
VALUES(COMMENT_NUM_SEQ.NEXTVAL, 2, 1, 'HI', '4,5,6,11,12');
INSERT INTO FEED_COMMENT
VALUES(COMMENT_NUM_SEQ.NEXTVAL, 2, 1, 'HI2Ʈ', '4,5,6,11,12');
INSERT INTO FEED_COMMENT
VALUES(COMMENT_NUM_SEQ.NEXTVAL, 2, 1, 'HI3Ʈ', '4,5,6,11,12');
INSERT INTO FEED_COMMENT
VALUES(COMMENT_NUM_SEQ.NEXTVAL, 2, 1, 'HI4Ʈ', '4,5,6,11,12');
INSERT INTO FEED_COMMENT
VALUES(COMMENT_NUM_SEQ.NEXTVAL, 2, 1, 'HI�޾��ٶ������Ѵ�', '4,5,6,11,12,1,3,7');


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
VALUES('comfortable', '��´�..', '#���');
INSERT INTO EMOTION
VALUES('comfortable', '������ Ÿ���ִ� ����̾�', '#������');
INSERT INTO EMOTION
VALUES('comfortable', '����� ����� ���', '#��-��');
INSERT INTO EMOTION
VALUES('comfortable', '���� ������', '#��ȱ���ü');
INSERT INTO EMOTION
VALUES('sad', '�� ��ģ������ �Ҿ��� ������ �װ� ���Ѻ��� ��', '#�ʸ�����');
INSERT INTO EMOTION
VALUES('sad', '��... �� ����... ������ �기 �� �� .... ', '#����');
INSERT INTO EMOTION
VALUES('sad', '�𷡸� ��Ų ���� ������ �Ը��� ���� ���� ', '#�Ը�');
INSERT INTO EMOTION
VALUES('happy', '�� �ʹ�����!', '#�ູ����ü');
INSERT INTO EMOTION
VALUES('happy', '�� �ð��� ���� �ູ��', '#HAPPY!!!');
INSERT INTO EMOTION
VALUES('happy', '�׻� ���ο�, ¥����', '#¥��');
INSERT INTO EMOTION
VALUES('angry', '���� ������ �޶�', '#4����');
INSERT INTO EMOTION
VALUES('angry', '�� �̸� �׸� �ҷ�', '#�̹̻�����');
INSERT INTO EMOTION
VALUES('angry', '����ɸ������', '#�߸�����Ǹ�');
INSERT INTO EMOTION
VALUES('aggressive', '����', '#������');
INSERT INTO EMOTION
VALUES('aggressive', 'ȥ����?', '#�������');


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

--���� ����, ���� �̸�, ���ʰ� �ȷο��ѻ�� ��, ���ʸ� �ȷο��� ��� ��, �Խñ� ��, �Ұ���

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

