-- created by Oraschemadoc Wed Jan  9 15:07:03 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNREGTOKEN"
   (	"ID" NUMBER NOT NULL ENABLE,
	"ORG_ID" NUMBER NOT NULL ENABLE,
	"USER_ID" NUMBER,
	"SERVER_ID" NUMBER,
	"NOTE" VARCHAR2(2048) NOT NULL ENABLE,
	"USAGE_LIMIT" NUMBER DEFAULT (0),
	"DISABLED" NUMBER DEFAULT (0) NOT NULL ENABLE,
	"DEPLOY_CONFIGS" CHAR(1) DEFAULT ('Y') NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNREGTOKEN" ADD CONSTRAINT "RHN_REG_TOKEN_DEPLOYCONFS_CK" CHECK (deploy_configs in ('Y','N')) ENABLE;
  ALTER TABLE "SPACEUSER"."RHNREGTOKEN" ADD CONSTRAINT "RHN_REG_TOKEN_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNREGTOKEN" ADD CONSTRAINT "RHN_REG_TOKEN_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEUSER"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNREGTOKEN" ADD CONSTRAINT "RHN_REG_TOKEN_UID_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "SPACEUSER"."RHNREGTOKEN" ADD CONSTRAINT "RHN_REG_TOKEN_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ENABLE;
