-- created by Oraschemadoc Wed Jan  9 15:06:53 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNACTIONCONFIGREVISIONRESULT"
   (	"ACTION_CONFIG_REVISION_ID" NUMBER NOT NULL ENABLE,
	"RESULT" BLOB,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNACTIONCONFIGREVISIONRESULT" ADD CONSTRAINT "RHN_ACTIONCFR_ACRID_FK" FOREIGN KEY ("ACTION_CONFIG_REVISION_ID")
	  REFERENCES "SPACEUSER"."RHNACTIONCONFIGREVISION" ("ID") ON DELETE CASCADE ENABLE;
