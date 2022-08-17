--------------------------------------------------------
--  File created - Cuma-Haziran-03-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_ALBUM_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_ALBUM_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ALBUMLER_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_ALBUMLER_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_KONUSAN_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_KONUSAN_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_KONUSAN_KISI_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_KONUSAN_KISI_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_KULLANICI_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_KULLANICI_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_KULLANICI_PLAYLIST_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_KULLANICI_PLAYLIST_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PAKET_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_PAKET_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PLAYLIST_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_PLAYLIST_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PODCASTLER_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_PODCASTLER_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SANATCILAR_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_SANATCILAR_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SARKICILAR_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_SARKICILAR_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SARKILAR_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_SARKILAR_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SARKI_TUR_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_SARKI_TUR_ID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ALBUM
--------------------------------------------------------

  CREATE TABLE "ALBUM" 
   (	"ID" NUMBER, 
	"ADI" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table ALBUMLER
--------------------------------------------------------

  CREATE TABLE "ALBUMLER" 
   (	"ID" NUMBER, 
	"SARKI_ID" NUMBER, 
	"ALBUM_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table DENETIM_TABLOSU
--------------------------------------------------------

  CREATE TABLE "DENETIM_TABLOSU" 
   (	"TABLO_ADI" VARCHAR2(20), 
	"DEGISIM_TUR" VARCHAR2(15), 
	"DEGÝSTÝREN_KISI" VARCHAR2(30), 
	"DEGISIM_TARIHI" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table KONUSAN
--------------------------------------------------------

  CREATE TABLE "KONUSAN" 
   (	"ID" NUMBER, 
	"ADI" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table KONUSAN_KISI
--------------------------------------------------------

  CREATE TABLE "KONUSAN_KISI" 
   (	"ID" NUMBER, 
	"PODCAST_ID" NUMBER, 
	"KONUSAN_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table KULLANICI_PLAYLIST
--------------------------------------------------------

  CREATE TABLE "KULLANICI_PLAYLIST" 
   (	"ID" NUMBER, 
	"KULLANICI_ID" NUMBER, 
	"PLAYLIST_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table KULLANÝCÝ
--------------------------------------------------------

  CREATE TABLE "KULLANÝCÝ" 
   (	"ID" NUMBER, 
	"KULLANÝCÝ_ADÝ" VARCHAR2(50), 
	"EMAÝL" VARCHAR2(250), 
	"PAKET_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table PAKET
--------------------------------------------------------

  CREATE TABLE "PAKET" 
   (	"ID" NUMBER, 
	"ADI" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table PLAYLIST
--------------------------------------------------------

  CREATE TABLE "PLAYLIST" 
   (	"ID" NUMBER, 
	"SARKI_ID" NUMBER, 
	"PODCAST_ID" NUMBER(4,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PODCASTLER
--------------------------------------------------------

  CREATE TABLE "PODCASTLER" 
   (	"ID" NUMBER, 
	"ADI" VARCHAR2(500)
   ) ;
--------------------------------------------------------
--  DDL for Table SANATCILAR
--------------------------------------------------------

  CREATE TABLE "SANATCILAR" 
   (	"ID" NUMBER, 
	"SARKI_ID" NUMBER, 
	"SARKICI_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SARKICILAR
--------------------------------------------------------

  CREATE TABLE "SARKICILAR" 
   (	"ID" NUMBER, 
	"ADI" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table SARKILAR
--------------------------------------------------------

  CREATE TABLE "SARKILAR" 
   (	"ID" NUMBER, 
	"ADI" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table SARKI_TURLERI
--------------------------------------------------------

  CREATE TABLE "SARKI_TURLERI" 
   (	"ID" NUMBER, 
	"TURU" VARCHAR2(50), 
	"TUR_ID" NUMBER(4,0), 
	"SARKI_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for View ALBUM_BILGI
--------------------------------------------------------

  CREATE OR REPLACE VIEW "ALBUM_BILGI" ("ID", "SARKI_AD", "ALBUM_AD") AS 
  SELECT AL.ID,S.ADI SARKI_AD,A.ADI ALBUM_AD FROM ALBUM A,SARKILAR S,ALBUMLER AL WHERE AL.SARKI_ID=s.ýd AND al.album_ýd=a.ýd
;
REM INSERTING into ALBUM
SET DEFINE OFF;
Insert into ALBUM (ID,ADI) values ('2005','Bir Bakmýþsýn');
Insert into ALBUM (ID,ADI) values ('2007','Her Sey Sensin');
Insert into ALBUM (ID,ADI) values ('2010','Teenage Dream');
Insert into ALBUM (ID,ADI) values ('2008','One Of The Boys');
REM INSERTING into ALBUMLER
SET DEFINE OFF;
Insert into ALBUMLER (ID,SARKI_ID,ALBUM_ID) values ('99','34','2005');
Insert into ALBUMLER (ID,SARKI_ID,ALBUM_ID) values ('96','35','2005');
Insert into ALBUMLER (ID,SARKI_ID,ALBUM_ID) values ('95','36','2005');
Insert into ALBUMLER (ID,SARKI_ID,ALBUM_ID) values ('94','37','2005');
Insert into ALBUMLER (ID,SARKI_ID,ALBUM_ID) values ('93','38','2007');
Insert into ALBUMLER (ID,SARKI_ID,ALBUM_ID) values ('92','39','2008');
Insert into ALBUMLER (ID,SARKI_ID,ALBUM_ID) values ('91','40','2008');
Insert into ALBUMLER (ID,SARKI_ID,ALBUM_ID) values ('90','41','2008');
Insert into ALBUMLER (ID,SARKI_ID,ALBUM_ID) values ('89','42','2008');
Insert into ALBUMLER (ID,SARKI_ID,ALBUM_ID) values ('88','43','2010');
Insert into ALBUMLER (ID,SARKI_ID,ALBUM_ID) values ('87','44','2010');
Insert into ALBUMLER (ID,SARKI_ID,ALBUM_ID) values ('86','45','2010');
REM INSERTING into DENETIM_TABLOSU
SET DEFINE OFF;
Insert into DENETIM_TABLOSU (TABLO_ADI,DEGISIM_TUR,"DEGÝSTÝREN_KISI",DEGISIM_TARIHI) values ('SARKILAR','INSERT','MERVE',to_date('03/06/2022','DD/MM/RRRR'));
Insert into DENETIM_TABLOSU (TABLO_ADI,DEGISIM_TUR,"DEGÝSTÝREN_KISI",DEGISIM_TARIHI) values ('SARKILAR','INSERT','MERVE',to_date('03/06/2022','DD/MM/RRRR'));
REM INSERTING into KONUSAN
SET DEFINE OFF;
Insert into KONUSAN (ID,ADI) values ('50','Beyhan Budak');
Insert into KONUSAN (ID,ADI) values ('51','Dogan Cuceloglu');
REM INSERTING into KONUSAN_KISI
SET DEFINE OFF;
Insert into KONUSAN_KISI (ID,PODCAST_ID,KONUSAN_ID) values ('45','56','50');
Insert into KONUSAN_KISI (ID,PODCAST_ID,KONUSAN_ID) values ('46','57','50');
Insert into KONUSAN_KISI (ID,PODCAST_ID,KONUSAN_ID) values ('47','58','51');
Insert into KONUSAN_KISI (ID,PODCAST_ID,KONUSAN_ID) values ('48','59','51');
REM INSERTING into KULLANICI_PLAYLIST
SET DEFINE OFF;
Insert into KULLANICI_PLAYLIST (ID,KULLANICI_ID,PLAYLIST_ID) values ('25','22','80');
Insert into KULLANICI_PLAYLIST (ID,KULLANICI_ID,PLAYLIST_ID) values ('26','21','77');
Insert into KULLANICI_PLAYLIST (ID,KULLANICI_ID,PLAYLIST_ID) values ('27','23','79');
REM INSERTING into "KULLANÝCÝ"
SET DEFINE OFF;
Insert into "KULLANÝCÝ" (ID,"KULLANÝCÝ_ADÝ","EMAÝL",PAKET_ID) values ('7','efecan','efecan2002@gmail.com','22');
Insert into "KULLANÝCÝ" (ID,"KULLANÝCÝ_ADÝ","EMAÝL",PAKET_ID) values ('8','japonemre','japonemre2000@gmail.com','23');
Insert into "KULLANÝCÝ" (ID,"KULLANÝCÝ_ADÝ","EMAÝL",PAKET_ID) values ('9','tubiko','tubiko978@gmail.com','21');
REM INSERTING into PAKET
SET DEFINE OFF;
Insert into PAKET (ID,ADI) values ('21','premium');
Insert into PAKET (ID,ADI) values ('22','ogrenci');
Insert into PAKET (ID,ADI) values ('23','ucretsiz');
REM INSERTING into PLAYLIST
SET DEFINE OFF;
Insert into PLAYLIST (ID,SARKI_ID,PODCAST_ID) values ('80','34','56');
Insert into PLAYLIST (ID,SARKI_ID,PODCAST_ID) values ('79','39',null);
Insert into PLAYLIST (ID,SARKI_ID,PODCAST_ID) values ('78','40',null);
Insert into PLAYLIST (ID,SARKI_ID,PODCAST_ID) values ('77','45',null);
Insert into PLAYLIST (ID,SARKI_ID,PODCAST_ID) values ('76','43',null);
REM INSERTING into PODCASTLER
SET DEFINE OFF;
Insert into PODCASTLER (ID,ADI) values ('56','Kendine Iyi Davran');
Insert into PODCASTLER (ID,ADI) values ('57','Ask mi Bagimlilik Mi ?');
Insert into PODCASTLER (ID,ADI) values ('58','Insan Insana Konusabilmek');
Insert into PODCASTLER (ID,ADI) values ('59','Taniklik ve Guven Duygusu');
REM INSERTING into SANATCILAR
SET DEFINE OFF;
Insert into SANATCILAR (ID,SARKI_ID,SARKICI_ID) values ('65','34','10');
Insert into SANATCILAR (ID,SARKI_ID,SARKICI_ID) values ('66','35','10');
Insert into SANATCILAR (ID,SARKI_ID,SARKICI_ID) values ('67','36','10');
Insert into SANATCILAR (ID,SARKI_ID,SARKICI_ID) values ('68','37','10');
Insert into SANATCILAR (ID,SARKI_ID,SARKICI_ID) values ('69','38','10');
Insert into SANATCILAR (ID,SARKI_ID,SARKICI_ID) values ('70','39','11');
Insert into SANATCILAR (ID,SARKI_ID,SARKICI_ID) values ('71','40','11');
Insert into SANATCILAR (ID,SARKI_ID,SARKICI_ID) values ('72','41','11');
Insert into SANATCILAR (ID,SARKI_ID,SARKICI_ID) values ('73','42','11');
Insert into SANATCILAR (ID,SARKI_ID,SARKICI_ID) values ('74','43','11');
Insert into SANATCILAR (ID,SARKI_ID,SARKICI_ID) values ('75','44','11');
Insert into SANATCILAR (ID,SARKI_ID,SARKICI_ID) values ('64','45','11');
REM INSERTING into SARKICILAR
SET DEFINE OFF;
Insert into SARKICILAR (ID,ADI) values ('10','Yalin');
Insert into SARKICILAR (ID,ADI) values ('11','Katty Perry');
REM INSERTING into SARKILAR
SET DEFINE OFF;
Insert into SARKILAR (ID,ADI) values ('34','Istanbul Benden Buyuk');
Insert into SARKILAR (ID,ADI) values ('35','Kucucugum');
Insert into SARKILAR (ID,ADI) values ('36','Keske');
Insert into SARKILAR (ID,ADI) values ('37','Ben Bilmem');
Insert into SARKILAR (ID,ADI) values ('38','Cumhuriyet');
Insert into SARKILAR (ID,ADI) values ('46','Seni Yazdim');
Insert into SARKILAR (ID,ADI) values ('47','Nilüfer');
Insert into SARKILAR (ID,ADI) values ('39','Hot N Cold');
Insert into SARKILAR (ID,ADI) values ('40','One Of The Boys');
Insert into SARKILAR (ID,ADI) values ('41','Mannequin');
Insert into SARKILAR (ID,ADI) values ('42','Lost');
Insert into SARKILAR (ID,ADI) values ('43','Firework');
Insert into SARKILAR (ID,ADI) values ('44','Last Friday Night');
Insert into SARKILAR (ID,ADI) values ('45','E.T');
REM INSERTING into SARKI_TURLERI
SET DEFINE OFF;
Insert into SARKI_TURLERI (ID,TURU,TUR_ID,SARKI_ID) values ('1','Arabesk',null,null);
Insert into SARKI_TURLERI (ID,TURU,TUR_ID,SARKI_ID) values ('2','Pop',null,null);
Insert into SARKI_TURLERI (ID,TURU,TUR_ID,SARKI_ID) values ('3','Slow',null,null);
REM INSERTING into ALBUM_BILGI
SET DEFINE OFF;
Insert into ALBUM_BILGI (ID,SARKI_AD,ALBUM_AD) values ('99','Istanbul Benden Buyuk','Bir Bakmýþsýn');
Insert into ALBUM_BILGI (ID,SARKI_AD,ALBUM_AD) values ('96','Kucucugum','Bir Bakmýþsýn');
Insert into ALBUM_BILGI (ID,SARKI_AD,ALBUM_AD) values ('95','Keske','Bir Bakmýþsýn');
Insert into ALBUM_BILGI (ID,SARKI_AD,ALBUM_AD) values ('94','Ben Bilmem','Bir Bakmýþsýn');
Insert into ALBUM_BILGI (ID,SARKI_AD,ALBUM_AD) values ('93','Cumhuriyet','Her Sey Sensin');
Insert into ALBUM_BILGI (ID,SARKI_AD,ALBUM_AD) values ('92','Hot N Cold','One Of The Boys');
Insert into ALBUM_BILGI (ID,SARKI_AD,ALBUM_AD) values ('91','One Of The Boys','One Of The Boys');
Insert into ALBUM_BILGI (ID,SARKI_AD,ALBUM_AD) values ('90','Mannequin','One Of The Boys');
Insert into ALBUM_BILGI (ID,SARKI_AD,ALBUM_AD) values ('89','Lost','One Of The Boys');
Insert into ALBUM_BILGI (ID,SARKI_AD,ALBUM_AD) values ('88','Firework','Teenage Dream');
Insert into ALBUM_BILGI (ID,SARKI_AD,ALBUM_AD) values ('87','Last Friday Night','Teenage Dream');
Insert into ALBUM_BILGI (ID,SARKI_AD,ALBUM_AD) values ('86','E.T','Teenage Dream');
--------------------------------------------------------
--  DDL for Index ALBUMLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALBUMLER_PK" ON "ALBUMLER" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index ALBUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALBUM_PK" ON "ALBUM" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index KONUSAN_KISI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KONUSAN_KISI_PK" ON "KONUSAN_KISI" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index KONUSAN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KONUSAN_PK" ON "KONUSAN" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index KULLANICI_PLAYLIST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KULLANICI_PLAYLIST_PK" ON "KULLANICI_PLAYLIST" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index KULLANICI_PLAYLIST_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "KULLANICI_PLAYLIST_UK1" ON "KULLANICI_PLAYLIST" ("KULLANICI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index KULLANÝCÝ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KULLANÝCÝ_PK" ON "KULLANÝCÝ" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index PAKET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PAKET_PK" ON "PAKET" ("ID", "ADI") 
  ;
--------------------------------------------------------
--  DDL for Index PLAYLIST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PLAYLIST_PK" ON "PLAYLIST" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index PODCASTLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PODCASTLER_PK" ON "PODCASTLER" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index SANATCILAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SANATCILAR_PK" ON "SANATCILAR" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index SARKICILAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SARKICILAR_PK" ON "SARKICILAR" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index SARKILAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SARKILAR_PK" ON "SARKILAR" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index SARKI_TURLERI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SARKI_TURLERI_PK" ON "SARKI_TURLERI" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index ALBUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALBUM_PK" ON "ALBUM" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index ALBUMLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ALBUMLER_PK" ON "ALBUMLER" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index KONUSAN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KONUSAN_PK" ON "KONUSAN" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index KONUSAN_KISI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KONUSAN_KISI_PK" ON "KONUSAN_KISI" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index KULLANICI_PLAYLIST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KULLANICI_PLAYLIST_PK" ON "KULLANICI_PLAYLIST" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index KULLANICI_PLAYLIST_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "KULLANICI_PLAYLIST_UK1" ON "KULLANICI_PLAYLIST" ("KULLANICI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index KULLANÝCÝ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KULLANÝCÝ_PK" ON "KULLANÝCÝ" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index PAKET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PAKET_PK" ON "PAKET" ("ID", "ADI") 
  ;
--------------------------------------------------------
--  DDL for Index PLAYLIST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PLAYLIST_PK" ON "PLAYLIST" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index PODCASTLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PODCASTLER_PK" ON "PODCASTLER" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index SANATCILAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SANATCILAR_PK" ON "SANATCILAR" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index SARKICILAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SARKICILAR_PK" ON "SARKICILAR" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index SARKILAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SARKILAR_PK" ON "SARKILAR" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index SARKI_TURLERI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SARKI_TURLERI_PK" ON "SARKI_TURLERI" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Trigger TRIG_EKLEME
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRIG_EKLEME" 
AFTER DELETE OR INSERT OR UPDATE ON SARKILAR 
DECLARE
   DEGISIM VARCHAR2(10);
BEGIN
    DEGISIM := CASE  
         WHEN UPDATING THEN 'UPDATE'
         WHEN DELETING THEN 'DELETE'
         WHEN INSERTING THEN 'INSERT'
END;
    INSERT INTO DENETIM_TABLOSU (TABLO_ADI, DEGISIM_TUR, DEGÝSTÝREN_KISI, DEGISIM_TARIHI)
    VALUES('SARKILAR', DEGISIM, USER, SYSDATE);
END;
/
ALTER TRIGGER "TRIG_EKLEME" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_ALBUM_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_ALBUM_ID" 
   before insert on "ALBUM" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_ALBUM_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_ALBUM_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_ALBUMLER_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_ALBUMLER_ID" 
   before insert on "ALBUMLER" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_ALBUMLER_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_ALBUMLER_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_KONUSAN_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_KONUSAN_ID" 
   before insert on "KONUSAN" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_KONUSAN_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_KONUSAN_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_KONUSAN_KISI_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_KONUSAN_KISI_ID" 
   before insert on "KONUSAN_KISI" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_KONUSAN_KISI_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_KONUSAN_KISI_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_KULLANICI_PLAYLIST_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_KULLANICI_PLAYLIST_ID" 
   before insert on "KULLANICI_PLAYLIST" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_KULLANICI_PLAYLIST_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_KULLANICI_PLAYLIST_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_KULLANÝCÝ_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_KULLANÝCÝ_ID" 
   before insert on "KULLANÝCÝ" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_KULLANICI_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_KULLANÝCÝ_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_PAKET_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_PAKET_ID" 
   before insert on "PAKET" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_PAKET_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_PAKET_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_PLAYLIST_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_PLAYLIST_ID" 
   before insert on "PLAYLIST" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_PLAYLIST_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_PLAYLIST_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_PODCASTLER_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_PODCASTLER_ID" 
   before insert on "PODCASTLER" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_PODCASTLER_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_PODCASTLER_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_SANATCILAR_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_SANATCILAR_ID" 
   before insert on "SANATCILAR" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_SANATCILAR_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_SANATCILAR_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_SARKICILAR_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_SARKICILAR_ID" 
   before insert on "SARKICILAR" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_SARKICILAR_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_SARKICILAR_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_SARKILAR_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_SARKILAR_ID" 
   before insert on "SARKILAR" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_SARKILAR_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_SARKILAR_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_SARKI_TUR_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_SARKI_TUR_ID" 
   before insert on "SARKI_TURLERI" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_SARKI_TUR_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_SARKI_TUR_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_ALBUM_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_ALBUM_ID" 
   before insert on "ALBUM" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_ALBUM_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_ALBUM_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_ALBUMLER_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_ALBUMLER_ID" 
   before insert on "ALBUMLER" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_ALBUMLER_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_ALBUMLER_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_KONUSAN_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_KONUSAN_ID" 
   before insert on "KONUSAN" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_KONUSAN_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_KONUSAN_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_KONUSAN_KISI_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_KONUSAN_KISI_ID" 
   before insert on "KONUSAN_KISI" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_KONUSAN_KISI_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_KONUSAN_KISI_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_KULLANICI_PLAYLIST_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_KULLANICI_PLAYLIST_ID" 
   before insert on "KULLANICI_PLAYLIST" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_KULLANICI_PLAYLIST_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_KULLANICI_PLAYLIST_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_KULLANÝCÝ_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_KULLANÝCÝ_ID" 
   before insert on "KULLANÝCÝ" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_KULLANICI_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_KULLANÝCÝ_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_PAKET_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_PAKET_ID" 
   before insert on "PAKET" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_PAKET_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_PAKET_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_PLAYLIST_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_PLAYLIST_ID" 
   before insert on "PLAYLIST" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_PLAYLIST_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_PLAYLIST_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_PODCASTLER_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_PODCASTLER_ID" 
   before insert on "PODCASTLER" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_PODCASTLER_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_PODCASTLER_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_SANATCILAR_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_SANATCILAR_ID" 
   before insert on "SANATCILAR" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_SANATCILAR_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_SANATCILAR_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_SARKICILAR_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_SARKICILAR_ID" 
   before insert on "SARKICILAR" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_SARKICILAR_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_SARKICILAR_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_SARKILAR_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_SARKILAR_ID" 
   before insert on "SARKILAR" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_SARKILAR_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_SARKILAR_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIG_EKLEME
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRIG_EKLEME" 
AFTER DELETE OR INSERT OR UPDATE ON SARKILAR 
DECLARE
   DEGISIM VARCHAR2(10);
BEGIN
    DEGISIM := CASE  
         WHEN UPDATING THEN 'UPDATE'
         WHEN DELETING THEN 'DELETE'
         WHEN INSERTING THEN 'INSERT'
END;
    INSERT INTO DENETIM_TABLOSU (TABLO_ADI, DEGISIM_TUR, DEGÝSTÝREN_KISI, DEGISIM_TARIHI)
    VALUES('SARKILAR', DEGISIM, USER, SYSDATE);
END;
/
ALTER TRIGGER "TRIG_EKLEME" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRÝG_SARKI_TUR_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRÝG_SARKI_TUR_ID" 
   before insert on "SARKI_TURLERI" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select SEQ_SARKI_TUR_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "TRÝG_SARKI_TUR_ID" ENABLE;
--------------------------------------------------------
--  DDL for Procedure EKLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EKLE" (
PKULLANICI_ADI VARCHAR2,
PEMAIL VARCHAR2,
PPAKET_ID NUMBER
) AS 
BEGIN
    INSERT INTO
    KULLANÝCÝ (KULLANÝCÝ_ADÝ, EMAÝL,PAKET_ID) 
    VALUES (PKULLANICI_ADI,PEMAIL,PPAKET_ID );

END EKLE;

/
--------------------------------------------------------
--  DDL for Function TOPLAM_SARKI
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "TOPLAM_SARKI" RETURN NUMBER AS 

    toplam number :=0;
BEGIN
    select count(*) INTO toplam FROM SARKILAR;
     RETURN TOPLAM;
END TOPLAM_SARKI;

/
--------------------------------------------------------
--  Constraints for Table ALBUM
--------------------------------------------------------

  ALTER TABLE "ALBUM" ADD CONSTRAINT "ALBUM_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ALBUM" MODIFY ("ADI" NOT NULL ENABLE);
  ALTER TABLE "ALBUM" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ALBUMLER
--------------------------------------------------------

  ALTER TABLE "ALBUMLER" ADD CONSTRAINT "ALBUMLER_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ALBUMLER" MODIFY ("ALBUM_ID" NOT NULL ENABLE);
  ALTER TABLE "ALBUMLER" MODIFY ("SARKI_ID" NOT NULL ENABLE);
  ALTER TABLE "ALBUMLER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KONUSAN
--------------------------------------------------------

  ALTER TABLE "KONUSAN" ADD CONSTRAINT "KONUSAN_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "KONUSAN" MODIFY ("ADI" NOT NULL ENABLE);
  ALTER TABLE "KONUSAN" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KONUSAN_KISI
--------------------------------------------------------

  ALTER TABLE "KONUSAN_KISI" ADD CONSTRAINT "KONUSAN_KISI_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "KONUSAN_KISI" MODIFY ("KONUSAN_ID" NOT NULL ENABLE);
  ALTER TABLE "KONUSAN_KISI" MODIFY ("PODCAST_ID" NOT NULL ENABLE);
  ALTER TABLE "KONUSAN_KISI" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KULLANICI_PLAYLIST
--------------------------------------------------------

  ALTER TABLE "KULLANICI_PLAYLIST" ADD CONSTRAINT "KULLANICI_PLAYLIST_UK1" UNIQUE ("KULLANICI_ID") ENABLE;
  ALTER TABLE "KULLANICI_PLAYLIST" ADD CONSTRAINT "KULLANICI_PLAYLIST_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "KULLANICI_PLAYLIST" MODIFY ("PLAYLIST_ID" NOT NULL ENABLE);
  ALTER TABLE "KULLANICI_PLAYLIST" MODIFY ("KULLANICI_ID" NOT NULL ENABLE);
  ALTER TABLE "KULLANICI_PLAYLIST" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KULLANÝCÝ
--------------------------------------------------------

  ALTER TABLE "KULLANÝCÝ" ADD CONSTRAINT "KULLANÝCÝ_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "KULLANÝCÝ" MODIFY ("PAKET_ID" NOT NULL ENABLE);
  ALTER TABLE "KULLANÝCÝ" MODIFY ("EMAÝL" NOT NULL ENABLE);
  ALTER TABLE "KULLANÝCÝ" MODIFY ("KULLANÝCÝ_ADÝ" NOT NULL ENABLE);
  ALTER TABLE "KULLANÝCÝ" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PAKET
--------------------------------------------------------

  ALTER TABLE "PAKET" ADD CONSTRAINT "PAKET_PK" PRIMARY KEY ("ID", "ADI") ENABLE;
  ALTER TABLE "PAKET" MODIFY ("ADI" NOT NULL ENABLE);
  ALTER TABLE "PAKET" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PLAYLIST
--------------------------------------------------------

  ALTER TABLE "PLAYLIST" ADD CONSTRAINT "PLAYLIST_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "PLAYLIST" MODIFY ("SARKI_ID" NOT NULL ENABLE);
  ALTER TABLE "PLAYLIST" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PODCASTLER
--------------------------------------------------------

  ALTER TABLE "PODCASTLER" ADD CONSTRAINT "PODCASTLER_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "PODCASTLER" MODIFY ("ADI" NOT NULL ENABLE);
  ALTER TABLE "PODCASTLER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SANATCILAR
--------------------------------------------------------

  ALTER TABLE "SANATCILAR" ADD CONSTRAINT "SANATCILAR_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SANATCILAR" MODIFY ("SARKICI_ID" NOT NULL ENABLE);
  ALTER TABLE "SANATCILAR" MODIFY ("SARKI_ID" NOT NULL ENABLE);
  ALTER TABLE "SANATCILAR" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SARKICILAR
--------------------------------------------------------

  ALTER TABLE "SARKICILAR" ADD CONSTRAINT "SARKICILAR_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SARKICILAR" MODIFY ("ADI" NOT NULL ENABLE);
  ALTER TABLE "SARKICILAR" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SARKILAR
--------------------------------------------------------

  ALTER TABLE "SARKILAR" ADD CONSTRAINT "SARKILAR_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SARKILAR" MODIFY ("ADI" NOT NULL ENABLE);
  ALTER TABLE "SARKILAR" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SARKI_TURLERI
--------------------------------------------------------

  ALTER TABLE "SARKI_TURLERI" MODIFY ("TURU" NOT NULL ENABLE);
  ALTER TABLE "SARKI_TURLERI" ADD CONSTRAINT "SARKI_TURLERI_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SARKI_TURLERI" MODIFY ("ID" NOT NULL ENABLE);
