-- created by Oraschemadoc Wed Jan  9 15:07:02 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNPACKAGEUPGRADEARCHCOMPAT"
   (	"PACKAGE_ARCH_ID" NUMBER NOT NULL ENABLE,
	"PACKAGE_UPGRADE_ARCH_ID" NUMBER NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNPACKAGEUPGRADEARCHCOMPAT" ADD CONSTRAINT "RHN_PUAC_PAID_FK" FOREIGN KEY ("PACKAGE_ARCH_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEARCH" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNPACKAGEUPGRADEARCHCOMPAT" ADD CONSTRAINT "RHN_PUAC_PAUID_FK" FOREIGN KEY ("PACKAGE_UPGRADE_ARCH_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEARCH" ("ID") ENABLE;
