-- created by Oraschemadoc Wed Jan  9 15:07:08 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNTRUSTEDORGS"
   (	"ORG_ID" NUMBER NOT NULL ENABLE,
	"ORG_TRUST_ID" NUMBER NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNTRUSTEDORGS" ADD CONSTRAINT "RHN_TRUSTED_ORGS_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEUSER"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNTRUSTEDORGS" ADD CONSTRAINT "RHN_TRUSTED_ORGS_OTID_FK" FOREIGN KEY ("ORG_TRUST_ID")
	  REFERENCES "SPACEUSER"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE;
