-- created by Oraschemadoc Wed Jan  9 15:07:01 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNPACKAGEKEYTYPE"
   (	"ID" NUMBER NOT NULL ENABLE,
	"LABEL" VARCHAR2(64) NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ;
  ALTER TABLE "SPACEUSER"."RHNPACKAGEKEYTYPE" ADD CONSTRAINT "RHN_PKG_KEY_TYPE_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNPACKAGEKEYTYPE" ADD CONSTRAINT "RHN_PKG_KEY_TYPE_LABEL_UQ" UNIQUE ("LABEL") ENABLE;
