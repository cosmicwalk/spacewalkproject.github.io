-- created by Oraschemadoc Wed Jan  9 15:07:06 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSGTYPEBASEADDONCOMPAT"
   (	"BASE_ID" NUMBER NOT NULL ENABLE,
	"ADDON_ID" NUMBER NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNSGTYPEBASEADDONCOMPAT" ADD CONSTRAINT "RHN_SGT_BAC_BID_FK" FOREIGN KEY ("BASE_ID")
	  REFERENCES "SPACEUSER"."RHNSERVERGROUPTYPE" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSGTYPEBASEADDONCOMPAT" ADD CONSTRAINT "RHN_SGT_BAC_AID_FK" FOREIGN KEY ("ADDON_ID")
	  REFERENCES "SPACEUSER"."RHNSERVERGROUPTYPE" ("ID") ENABLE;
