-- created by Oraschemadoc Wed Jan  9 15:06:58 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNEXCEPTION"
   (	"ID" NUMBER NOT NULL ENABLE,
	"LABEL" VARCHAR2(128) NOT NULL ENABLE,
	"MESSAGE" VARCHAR2(2000) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNEXCEPTION" ADD CONSTRAINT "RHN_EXC_ID_PK" PRIMARY KEY ("ID") ENABLE;
