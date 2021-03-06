-- created by Oraschemadoc Wed Jan  9 15:07:02 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNPACKAGESOURCE"
   (	"ID" NUMBER NOT NULL ENABLE,
	"ORG_ID" NUMBER,
	"SOURCE_RPM_ID" NUMBER NOT NULL ENABLE,
	"PACKAGE_GROUP" NUMBER NOT NULL ENABLE,
	"RPM_VERSION" VARCHAR2(16) NOT NULL ENABLE,
	"PAYLOAD_SIZE" NUMBER NOT NULL ENABLE,
	"BUILD_HOST" VARCHAR2(256) NOT NULL ENABLE,
	"BUILD_TIME" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE,
	"SIGCHECKSUM_ID" NUMBER NOT NULL ENABLE,
	"VENDOR" VARCHAR2(64) NOT NULL ENABLE,
	"COOKIE" VARCHAR2(128) NOT NULL ENABLE,
	"PATH" VARCHAR2(1000),
	"CHECKSUM_ID" NUMBER NOT NULL ENABLE,
	"PACKAGE_SIZE" NUMBER NOT NULL ENABLE,
	"LAST_MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNPACKAGESOURCE" ADD CONSTRAINT "RHN_PKGSRC_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNPACKAGESOURCE" ADD CONSTRAINT "RHN_PKGSRC_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEUSER"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNPACKAGESOURCE" ADD CONSTRAINT "RHN_PKGSRC_SRID_FK" FOREIGN KEY ("SOURCE_RPM_ID")
	  REFERENCES "SPACEUSER"."RHNSOURCERPM" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNPACKAGESOURCE" ADD CONSTRAINT "RHN_PKGSRC_GROUP_FK" FOREIGN KEY ("PACKAGE_GROUP")
	  REFERENCES "SPACEUSER"."RHNPACKAGEGROUP" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNPACKAGESOURCE" ADD CONSTRAINT "RHN_PKGSRC_SIGCHSUM_FK" FOREIGN KEY ("SIGCHECKSUM_ID")
	  REFERENCES "SPACEUSER"."RHNCHECKSUM" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNPACKAGESOURCE" ADD CONSTRAINT "RHN_PKGSRC_CHSUM_FK" FOREIGN KEY ("CHECKSUM_ID")
	  REFERENCES "SPACEUSER"."RHNCHECKSUM" ("ID") ENABLE;
