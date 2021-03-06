-- created by Oraschemadoc Wed Jan  9 15:07:04 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYRESULT"
   (	"SERVER_ID" NUMBER NOT NULL ENABLE,
	"ACTION_ID" NUMBER NOT NULL ENABLE,
	"PACKAGE_NAME_ID" NUMBER NOT NULL ENABLE,
	"PACKAGE_EVR_ID" NUMBER NOT NULL ENABLE,
	"PACKAGE_ARCH_ID" NUMBER NOT NULL ENABLE,
	"PACKAGE_CAPABILITY_ID" NUMBER NOT NULL ENABLE,
	"ATTRIBUTE" CHAR(1),
	"SIZE_DIFFERS" CHAR(1) NOT NULL ENABLE,
	"MODE_DIFFERS" CHAR(1) NOT NULL ENABLE,
	"CHECKSUM_DIFFERS" CHAR(1) NOT NULL ENABLE,
	"DEVNUM_DIFFERS" CHAR(1) NOT NULL ENABLE,
	"READLINK_DIFFERS" CHAR(1) NOT NULL ENABLE,
	"UID_DIFFERS" CHAR(1) NOT NULL ENABLE,
	"GID_DIFFERS" CHAR(1) NOT NULL ENABLE,
	"MTIME_DIFFERS" CHAR(1) NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYRESULT" ADD CONSTRAINT "RHN_SACTIONVR_ATTR_CK" CHECK (attribute in ('c','d','g','l','r')) ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYRESULT" ADD CONSTRAINT "RHN_SACTIONVR_SIZE_CK" CHECK (size_differs in ('Y','N','?')) ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYRESULT" ADD CONSTRAINT "RHN_SACTIONVR_MODE_CK" CHECK (mode_differs in ('Y','N','?')) ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYRESULT" ADD CONSTRAINT "RHN_SACTIONVR_CHSUM_CK" CHECK (checksum_differs in ( 'Y' , 'N' , '?' )) ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYRESULT" ADD CONSTRAINT "RHN_SACTIONVR_DEVNUM_CK" CHECK (devnum_differs in ('Y','N','?')) ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYRESULT" ADD CONSTRAINT "RHN_SACTIONVR_READLINK_CK" CHECK (readlink_differs in ('Y','N','?')) ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYRESULT" ADD CONSTRAINT "RHN_SACTIONVR_UID_CK" CHECK (uid_differs in ('Y','N','?')) ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYRESULT" ADD CONSTRAINT "RHN_SACTIONVR_GID_CK" CHECK (gid_differs in ('Y','N','?')) ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYRESULT" ADD CONSTRAINT "RHN_SACTIONVR_MTIME_CK" CHECK (mtime_differs in ('Y','N','?')) ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYRESULT" ADD CONSTRAINT "RHN_SACTIONVR_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYRESULT" ADD CONSTRAINT "RHN_SACTIONVR_AID_FK" FOREIGN KEY ("ACTION_ID")
	  REFERENCES "SPACEUSER"."RHNACTION" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYRESULT" ADD CONSTRAINT "RHN_SACTIONVR_PNID_FK" FOREIGN KEY ("PACKAGE_NAME_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGENAME" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYRESULT" ADD CONSTRAINT "RHN_SACTIONVR_PEID_FK" FOREIGN KEY ("PACKAGE_EVR_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEEVR" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYRESULT" ADD CONSTRAINT "RHN_SACTIONVR_PAID_FK" FOREIGN KEY ("PACKAGE_ARCH_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGEARCH" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNSERVERACTIONVERIFYRESULT" ADD CONSTRAINT "RHN_SACTIONVR_PCID_FK" FOREIGN KEY ("PACKAGE_CAPABILITY_ID")
	  REFERENCES "SPACEUSER"."RHNPACKAGECAPABILITY" ("ID") ENABLE;
