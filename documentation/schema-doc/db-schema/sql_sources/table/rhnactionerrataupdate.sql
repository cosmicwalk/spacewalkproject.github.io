-- created by Oraschemadoc Wed Jan  9 15:06:53 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNACTIONERRATAUPDATE"
   (	"ACTION_ID" NUMBER NOT NULL ENABLE,
	"ERRATA_ID" NUMBER NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNACTIONERRATAUPDATE" ADD CONSTRAINT "RHN_ACT_EU_ACT_FK" FOREIGN KEY ("ACTION_ID")
	  REFERENCES "SPACEUSER"."RHNACTION" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNACTIONERRATAUPDATE" ADD CONSTRAINT "RHN_ACT_EU_ERR_FK" FOREIGN KEY ("ERRATA_ID")
	  REFERENCES "SPACEUSER"."RHNERRATA" ("ID") ON DELETE CASCADE ENABLE;
