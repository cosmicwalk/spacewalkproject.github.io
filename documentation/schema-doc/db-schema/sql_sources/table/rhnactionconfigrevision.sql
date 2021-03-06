-- created by Oraschemadoc Wed Jan  9 15:06:53 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNACTIONCONFIGREVISION"
   (	"ID" NUMBER NOT NULL ENABLE,
	"ACTION_ID" NUMBER NOT NULL ENABLE,
	"SERVER_ID" NUMBER NOT NULL ENABLE,
	"CONFIG_REVISION_ID" NUMBER NOT NULL ENABLE,
	"FAILURE_ID" NUMBER,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNACTIONCONFIGREVISION" ADD CONSTRAINT "RHN_ACTIONCR_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNACTIONCONFIGREVISION" ADD CONSTRAINT "RHN_ACTIONCR_AID_FK" FOREIGN KEY ("ACTION_ID")
	  REFERENCES "SPACEUSER"."RHNACTION" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNACTIONCONFIGREVISION" ADD CONSTRAINT "RHN_ACTIONCR_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNACTIONCONFIGREVISION" ADD CONSTRAINT "RHN_ACTIONCR_CRID_FK" FOREIGN KEY ("CONFIG_REVISION_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGREVISION" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNACTIONCONFIGREVISION" ADD CONSTRAINT "RHN_ACTIONCR_FAILID_FK" FOREIGN KEY ("FAILURE_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGFILEFAILURE" ("ID") ENABLE;
