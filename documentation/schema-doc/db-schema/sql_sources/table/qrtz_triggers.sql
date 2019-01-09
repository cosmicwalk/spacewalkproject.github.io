-- created by Oraschemadoc Wed Jan  9 15:06:52 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."QRTZ_TRIGGERS"
   (	"TRIGGER_NAME" VARCHAR2(200) NOT NULL ENABLE,
	"TRIGGER_GROUP" VARCHAR2(200) NOT NULL ENABLE,
	"JOB_NAME" VARCHAR2(200) NOT NULL ENABLE,
	"JOB_GROUP" VARCHAR2(200) NOT NULL ENABLE,
	"IS_VOLATILE" VARCHAR2(1) NOT NULL ENABLE,
	"DESCRIPTION" VARCHAR2(250),
	"NEXT_FIRE_TIME" NUMBER(13,0),
	"PREV_FIRE_TIME" NUMBER(13,0),
	"PRIORITY" NUMBER(13,0),
	"TRIGGER_STATE" VARCHAR2(16) NOT NULL ENABLE,
	"TRIGGER_TYPE" VARCHAR2(8) NOT NULL ENABLE,
	"START_TIME" NUMBER(13,0) NOT NULL ENABLE,
	"END_TIME" NUMBER(13,0),
	"CALENDAR_NAME" VARCHAR2(200),
	"MISFIRE_INSTR" NUMBER(2,0),
	"JOB_DATA" BLOB
   ) ;
  ALTER TABLE "SPACEUSER"."QRTZ_TRIGGERS" ADD PRIMARY KEY ("TRIGGER_NAME", "TRIGGER_GROUP") ENABLE;
  ALTER TABLE "SPACEUSER"."QRTZ_TRIGGERS" ADD FOREIGN KEY ("JOB_NAME", "JOB_GROUP")
	  REFERENCES "SPACEUSER"."QRTZ_JOB_DETAILS" ("JOB_NAME", "JOB_GROUP") ENABLE;