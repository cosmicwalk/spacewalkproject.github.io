-- created by Oraschemadoc Wed Jan  9 15:07:09 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNXCCDFRULEIDENTMAP"
   (	"RRESULT_ID" NUMBER NOT NULL ENABLE,
	"IDENT_ID" NUMBER NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNXCCDFRULEIDENTMAP" ADD CONSTRAINT "RHN_XCCDF_RIM_RRESULT_FK" FOREIGN KEY ("RRESULT_ID")
	  REFERENCES "SPACEUSER"."RHNXCCDFRULERESULT" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNXCCDFRULEIDENTMAP" ADD CONSTRAINT "RHN_XCCDF_RIM_IDENT_FK" FOREIGN KEY ("IDENT_ID")
	  REFERENCES "SPACEUSER"."RHNXCCDFIDENT" ("ID") ENABLE;
