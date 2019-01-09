-- created by Oraschemadoc Wed Jan  9 15:07:04 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSERVERGROUPMEMBERS"
   (	"SERVER_ID" NUMBER NOT NULL ENABLE,
	"SERVER_GROUP_ID" NUMBER NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNSERVERGROUPMEMBERS" ADD CONSTRAINT "RHN_SG_MEMBERS_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERGROUPMEMBERS" ADD CONSTRAINT "RHN_SG_GROUPS_FK" FOREIGN KEY ("SERVER_GROUP_ID")
	  REFERENCES "SPACEUSER"."RHNSERVERGROUP" ("ID") ENABLE;