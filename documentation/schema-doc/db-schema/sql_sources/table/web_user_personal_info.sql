-- created by Oraschemadoc Wed Jan  9 15:07:10 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."WEB_USER_PERSONAL_INFO"
   (	"WEB_USER_ID" NUMBER NOT NULL ENABLE,
	"PREFIX" VARCHAR2(12) DEFAULT (' ') NOT NULL ENABLE,
	"FIRST_NAMES" VARCHAR2(128) NOT NULL ENABLE,
	"LAST_NAME" VARCHAR2(128) NOT NULL ENABLE,
	"GENQUAL" VARCHAR2(12),
	"PARENT_COMPANY" VARCHAR2(128),
	"COMPANY" VARCHAR2(128),
	"TITLE" VARCHAR2(128),
	"PHONE" VARCHAR2(128),
	"FAX" VARCHAR2(128),
	"EMAIL" VARCHAR2(128),
	"EMAIL_UC" VARCHAR2(128),
	"PIN" NUMBER,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"FIRST_NAMES_OL" VARCHAR2(128),
	"LAST_NAME_OL" VARCHAR2(128),
	"GENQUAL_OL" VARCHAR2(12),
	"PARENT_COMPANY_OL" VARCHAR2(128),
	"COMPANY_OL" VARCHAR2(128),
	"TITLE_OL" VARCHAR2(128)
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."WEB_USER_PERSONAL_INFO" ADD CONSTRAINT "PERSONAL_INFO_WEB_USER_ID_FK" FOREIGN KEY ("WEB_USER_ID")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."WEB_USER_PERSONAL_INFO" ADD CONSTRAINT "WUPI_PREFIX_FK" FOREIGN KEY ("PREFIX")
	  REFERENCES "SPACEUSER"."WEB_USER_PREFIX" ("TEXT") ENABLE;