-- created by Oraschemadoc Wed Jan  9 15:07:05 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSERVERPACKAGEARCHCOMPAT"
   (	"SERVER_ARCH_ID" NUMBER NOT NULL ENABLE,
	"PACKAGE_ARCH_ID" NUMBER NOT NULL ENABLE,
	"PREFERENCE" NUMBER NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNSERVERPACKAGEARCHCOMPAT" ADD CONSTRAINT "RHN_SP_AC_SAID_PAID_UQ" UNIQUE ("SERVER_ARCH_ID", "PACKAGE_ARCH_ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERPACKAGEARCHCOMPAT" ADD CONSTRAINT "RHN_SP_AC_PREF_SAID_UQ" UNIQUE ("PREFERENCE", "SERVER_ARCH_ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERPACKAGEARCHCOMPAT" ADD CONSTRAINT "RHN_SP_AC_SAID_FK" FOREIGN KEY ("SERVER_ARCH_ID")
	  REFERENCES "SPACEUSER"."RHNSERVERARCH" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERPACKAGEARCHCOMPAT" ADD CONSTRAINT "RHN_SP_AC_PAID_FK" FOREIGN KEY ("PACKAGE_ARCH_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEARCH" ("ID") ENABLE;