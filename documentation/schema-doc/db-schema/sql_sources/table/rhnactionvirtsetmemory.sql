-- created by Oraschemadoc Wed Jan  9 15:06:54 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNACTIONVIRTSETMEMORY"
   (	"ACTION_ID" NUMBER NOT NULL ENABLE,
	"UUID" VARCHAR2(128) NOT NULL ENABLE,
	"MEMORY" NUMBER NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNACTIONVIRTSETMEMORY" ADD CONSTRAINT "RHN_AVSM_AID_PK" PRIMARY KEY ("ACTION_ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNACTIONVIRTSETMEMORY" ADD CONSTRAINT "RHN_AVSM_AID_FK" FOREIGN KEY ("ACTION_ID")
	  REFERENCES "SPACEUSER"."RHNACTION" ("ID") ON DELETE CASCADE ENABLE;
