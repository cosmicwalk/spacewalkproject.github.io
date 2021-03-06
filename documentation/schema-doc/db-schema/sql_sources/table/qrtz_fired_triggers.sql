-- created by Oraschemadoc Wed Jan  9 15:06:52 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."QRTZ_FIRED_TRIGGERS"
   (	"ENTRY_ID" VARCHAR2(95) NOT NULL ENABLE,
	"TRIGGER_NAME" VARCHAR2(200) NOT NULL ENABLE,
	"TRIGGER_GROUP" VARCHAR2(200) NOT NULL ENABLE,
	"IS_VOLATILE" VARCHAR2(1) NOT NULL ENABLE,
	"INSTANCE_NAME" VARCHAR2(200) NOT NULL ENABLE,
	"FIRED_TIME" NUMBER(13,0) NOT NULL ENABLE,
	"PRIORITY" NUMBER(13,0) NOT NULL ENABLE,
	"STATE" VARCHAR2(16) NOT NULL ENABLE,
	"JOB_NAME" VARCHAR2(200),
	"JOB_GROUP" VARCHAR2(200),
	"IS_STATEFUL" VARCHAR2(1),
	"REQUESTS_RECOVERY" VARCHAR2(1)
   ) ;
  ALTER TABLE "SPACEUSER"."QRTZ_FIRED_TRIGGERS" ADD PRIMARY KEY ("ENTRY_ID") ENABLE;
