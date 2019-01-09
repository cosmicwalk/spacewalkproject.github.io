-- created by Oraschemadoc Wed Jan  9 15:06:54 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNCHANNELARCH"
   (	"ID" NUMBER NOT NULL ENABLE,
	"LABEL" VARCHAR2(64) NOT NULL ENABLE,
	"ARCH_TYPE_ID" NUMBER NOT NULL ENABLE,
	"NAME" VARCHAR2(64) NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNCHANNELARCH" ADD CONSTRAINT "RHN_CARCH_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCHANNELARCH" ADD CONSTRAINT "RHN_CARCH_LABEL_UQ" UNIQUE ("LABEL") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCHANNELARCH" ADD CONSTRAINT "RHN_CARCH_NAME_UQ" UNIQUE ("NAME") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCHANNELARCH" ADD CONSTRAINT "RHN_CARCH_ATID_FK" FOREIGN KEY ("ARCH_TYPE_ID")
	  REFERENCES "SPACEUSER"."RHNARCHTYPE" ("ID") ENABLE;