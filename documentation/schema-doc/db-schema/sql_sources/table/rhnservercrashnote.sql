-- created by Oraschemadoc Wed Jan  9 15:07:04 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSERVERCRASHNOTE"
   (	"ID" NUMBER NOT NULL ENABLE,
	"CREATOR" NUMBER,
	"CRASH_ID" NUMBER NOT NULL ENABLE,
	"SUBJECT" VARCHAR2(80) NOT NULL ENABLE,
	"NOTE" VARCHAR2(4000),
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNSERVERCRASHNOTE" ADD CONSTRAINT "RHN_SERVER_CRASH_NOTE_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERCRASHNOTE" ADD CONSTRAINT "RHN_SRV_CRASH_NOTE_CREATOR_FK" FOREIGN KEY ("CREATOR")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERCRASHNOTE" ADD CONSTRAINT "RHN_SRV_CRASH_NOTE_SID_FK" FOREIGN KEY ("CRASH_ID")
	  REFERENCES "SPACEUSER"."RHNSERVERCRASH" ("ID") ON DELETE CASCADE ENABLE;