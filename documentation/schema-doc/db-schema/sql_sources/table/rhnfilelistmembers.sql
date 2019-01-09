-- created by Oraschemadoc Wed Jan  9 15:06:58 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNFILELISTMEMBERS"
   (	"FILE_LIST_ID" NUMBER NOT NULL ENABLE,
	"CONFIG_FILE_NAME_ID" NUMBER NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNFILELISTMEMBERS" ADD CONSTRAINT "RHN_FLMEMBERS_FLID_FK" FOREIGN KEY ("FILE_LIST_ID")
	  REFERENCES "SPACEUSER"."RHNFILELIST" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNFILELISTMEMBERS" ADD CONSTRAINT "RHN_FLMEMBERS_CFNID_FK" FOREIGN KEY ("CONFIG_FILE_NAME_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGFILENAME" ("ID") ENABLE;