--------------------------------------------------------
--  Arquivo criado - Segunda-feira-Junho-10-2013   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CURSOS
--------------------------------------------------------


DROP TABLE "JOAO_SILVA"."ALUNO"; DROP TABLE "JOAO_SILVA"."EMPRESA"; DROP TABLE "JOAO_SILVA"."PEDIDOS"; DROP TABLE "JOAO_SILVA"."PEDIDO"; DROP TABLE "JOAO_SILVA"."CLIENTES"; DROP TABLE "JOAO_SILVA"."CLIENTE"; DROP TABLE "JOAO_SILVA"."PACOTES_DE_CURSOS"; DROP TABLE "JOAO_SILVA"."CURSOS"; DROP TABLE "JOAO_SILVA"."PACOTES";
  CREATE TABLE "JOAO_SILVA"."CURSOS" 
   (	"COD_CURSO" NUMBER, 
	"NOME_CURSO" VARCHAR2(40 BYTE), 
	"CARGA_HORARIA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PACOTES
--------------------------------------------------------

  CREATE TABLE "JOAO_SILVA"."PACOTES" 
   (	"COD_PACOTE" NUMBER, 
	"NOME_PACOTE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PACOTES_DE_CURSOS
--------------------------------------------------------

  CREATE TABLE "JOAO_SILVA"."PACOTES_DE_CURSOS" 
   (	"CODIGO_DO_PACOTE" NUMBER, 
	"CODIGO_DO_CURSO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into JOAO_SILVA.CURSOS
SET DEFINE OFF;
Insert into JOAO_SILVA.CURSOS (COD_CURSO,NOME_CURSO,CARGA_HORARIA) values ('1','Windows 7','22');
Insert into JOAO_SILVA.CURSOS (COD_CURSO,NOME_CURSO,CARGA_HORARIA) values ('2','Microsoft Word 2010','16');
Insert into JOAO_SILVA.CURSOS (COD_CURSO,NOME_CURSO,CARGA_HORARIA) values ('3','Microsoft PowerPoint 2010','15');
Insert into JOAO_SILVA.CURSOS (COD_CURSO,NOME_CURSO,CARGA_HORARIA) values ('4','Microsoft Excel 2010','25');
Insert into JOAO_SILVA.CURSOS (COD_CURSO,NOME_CURSO,CARGA_HORARIA) values ('5','Microsoft Access 2010','30');
Insert into JOAO_SILVA.CURSOS (COD_CURSO,NOME_CURSO,CARGA_HORARIA) values ('6','Internet e Seguran�a','25');
REM INSERTING into JOAO_SILVA.PACOTES
SET DEFINE OFF;
Insert into JOAO_SILVA.PACOTES (COD_PACOTE,NOME_PACOTE) values ('1','Inform�tica B�sica');
Insert into JOAO_SILVA.PACOTES (COD_PACOTE,NOME_PACOTE) values ('2','Inform�tica Completa');
REM INSERTING into JOAO_SILVA.PACOTES_DE_CURSOS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PACOTES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOAO_SILVA"."PACOTES_PK" ON "JOAO_SILVA"."PACOTES" ("COD_PACOTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CURSOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOAO_SILVA"."CURSOS_PK" ON "JOAO_SILVA"."CURSOS" ("COD_CURSO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table PACOTES
--------------------------------------------------------

  ALTER TABLE "JOAO_SILVA"."PACOTES" MODIFY ("COD_PACOTE" NOT NULL ENABLE);
  ALTER TABLE "JOAO_SILVA"."PACOTES" ADD CONSTRAINT "PACOTES_PK" PRIMARY KEY ("COD_PACOTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PACOTES_DE_CURSOS
--------------------------------------------------------

  ALTER TABLE "JOAO_SILVA"."PACOTES_DE_CURSOS" MODIFY ("CODIGO_DO_CURSO" NOT NULL ENABLE);
  ALTER TABLE "JOAO_SILVA"."PACOTES_DE_CURSOS" MODIFY ("CODIGO_DO_PACOTE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CURSOS
--------------------------------------------------------

  ALTER TABLE "JOAO_SILVA"."CURSOS" MODIFY ("COD_CURSO" NOT NULL ENABLE);
  ALTER TABLE "JOAO_SILVA"."CURSOS" ADD CONSTRAINT "CURSOS_PK" PRIMARY KEY ("COD_CURSO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PACOTES_DE_CURSOS
--------------------------------------------------------

  ALTER TABLE "JOAO_SILVA"."PACOTES_DE_CURSOS" ADD CONSTRAINT "PACOTES_DE_CURSOS_FK1" FOREIGN KEY ("CODIGO_DO_CURSO")
	  REFERENCES "JOAO_SILVA"."CURSOS" ("COD_CURSO") ENABLE;
  ALTER TABLE "JOAO_SILVA"."PACOTES_DE_CURSOS" ADD CONSTRAINT "PACOTES_DE_CURSOS_FK2" FOREIGN KEY ("CODIGO_DO_PACOTE")
	  REFERENCES "JOAO_SILVA"."PACOTES" ("COD_PACOTE") ENABLE;
