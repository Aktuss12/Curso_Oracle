--------------------------------------------------------
--  Arquivo criado - Quinta-feira-Junho-06-2013   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EMPRESA
--------------------------------------------------------


DROP TABLE "JOAO_SILVA"."ALUNO"; DROP TABLE "JOAO_SILVA"."EMPRESA"; DROP TABLE "JOAO_SILVA"."PEDIDOS"; DROP TABLE "JOAO_SILVA"."PEDIDO"; DROP TABLE "JOAO_SILVA"."CLIENTES"; DROP TABLE "JOAO_SILVA"."CLIENTE"; DROP TABLE "JOAO_SILVA"."PACOTES_DE_CURSOS"; DROP TABLE "JOAO_SILVA"."CURSOS"; DROP TABLE "JOAO_SILVA"."PACOTES";
  CREATE TABLE "JOAO_SILVA"."EMPRESA" 
   (	"CODIGO_EMPRESA" NUMBER(*,0), 
	"NOME_EMPRESA" VARCHAR2(40 BYTE), 
	"CGC" CHAR(14 BYTE), 
	"DATA_FUNDACAO" DATE, 
	"NUMERO_FUNCIONARIOS" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into JOAO_SILVA.EMPRESA
SET DEFINE OFF;
Insert into JOAO_SILVA.EMPRESA (CODIGO_EMPRESA,NOME_EMPRESA,CGC,DATA_FUNDACAO,NUMERO_FUNCIONARIOS) values ('1','Escolas Reunidas','123456789     ',to_date('14/10/56','DD/MM/RR'),'2500');
Insert into JOAO_SILVA.EMPRESA (CODIGO_EMPRESA,NOME_EMPRESA,CGC,DATA_FUNDACAO,NUMERO_FUNCIONARIOS) values ('2','Coqueiro Materiais para Limpeza Ltda','111111111     ',to_date('23/04/02','DD/MM/RR'),'1250');
Insert into JOAO_SILVA.EMPRESA (CODIGO_EMPRESA,NOME_EMPRESA,CGC,DATA_FUNDACAO,NUMERO_FUNCIONARIOS) values ('3','Distribuidora de Bebidas Alvorada S/A','222222222     ',to_date('23/11/01','DD/MM/RR'),'525');
--------------------------------------------------------
--  Constraints for Table EMPRESA
--------------------------------------------------------

  ALTER TABLE "JOAO_SILVA"."EMPRESA" MODIFY ("CODIGO_EMPRESA" NOT NULL ENABLE);
  ALTER TABLE "JOAO_SILVA"."EMPRESA" MODIFY ("NOME_EMPRESA" NOT NULL ENABLE);
  ALTER TABLE "JOAO_SILVA"."EMPRESA" MODIFY ("CGC" NOT NULL ENABLE);
