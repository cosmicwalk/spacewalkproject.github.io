-- created by Oraschemadoc Wed Jan  9 15:07:01 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNPACKAGENAME"
   (	"ID" NUMBER NOT NULL ENABLE,
	"NAME" VARCHAR2(256) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNPACKAGENAME" ADD CONSTRAINT "RHN_PN_ID_PK" PRIMARY KEY ("ID") ENABLE;
