--------------------------------------------------------
--  Arquivo criado - Sexta-feira-Junho-07-2013   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CLIENTES
--------------------------------------------------------
DROP TABLE "JOAO_SILVA"."ALUNO"; DROP TABLE "JOAO_SILVA"."EMPRESA"; DROP TABLE "JOAO_SILVA"."PEDIDOS"; DROP TABLE "JOAO_SILVA"."PEDIDO"; DROP TABLE "JOAO_SILVA"."CLIENTES"; DROP TABLE "JOAO_SILVA"."CLIENTE"; DROP TABLE "JOAO_SILVA"."PACOTES_DE_CURSOS"; DROP TABLE "JOAO_SILVA"."CURSOS"; DROP TABLE "JOAO_SILVA"."PACOTES";
  CREATE TABLE "JOAO_SILVA"."CLIENTES" 
   (	"COD_CLIENTE" NUMBER, 
	"NOME_CLIENTE" VARCHAR2(50 BYTE), 
	"CGC" VARCHAR2(14 BYTE), 
	"ENDERECO" VARCHAR2(80 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PEDIDOS
--------------------------------------------------------

  CREATE TABLE "JOAO_SILVA"."PEDIDOS" 
   (	"COD_PEDIDO" NUMBER, 
	"COD_CLIENTE" NUMBER, 
	"DATA_PEDIDO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into JOAO_SILVA.CLIENTES
SET DEFINE OFF;
REM INSERTING into JOAO_SILVA.PEDIDOS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index CLIENTES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOAO_SILVA"."CLIENTES_PK" ON "JOAO_SILVA"."CLIENTES" ("COD_CLIENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PEDIDOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOAO_SILVA"."PEDIDOS_PK" ON "JOAO_SILVA"."PEDIDOS" ("COD_PEDIDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CLIENTES
--------------------------------------------------------

  ALTER TABLE "JOAO_SILVA"."CLIENTES" ADD CONSTRAINT "CLIENTES_PK" PRIMARY KEY ("COD_CLIENTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JOAO_SILVA"."CLIENTES" MODIFY ("COD_CLIENTE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PEDIDOS
--------------------------------------------------------

  ALTER TABLE "JOAO_SILVA"."PEDIDOS" ADD CONSTRAINT "PEDIDOS_PK" PRIMARY KEY ("COD_PEDIDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "JOAO_SILVA"."PEDIDOS" MODIFY ("COD_CLIENTE" NOT NULL ENABLE);
  ALTER TABLE "JOAO_SILVA"."PEDIDOS" MODIFY ("COD_PEDIDO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table PEDIDOS
--------------------------------------------------------

  ALTER TABLE "JOAO_SILVA"."PEDIDOS" ADD CONSTRAINT "PEDIDOS_CLIENTES_FK1" FOREIGN KEY ("COD_CLIENTE")
	  REFERENCES "JOAO_SILVA"."CLIENTES" ("COD_CLIENTE") ENABLE;
