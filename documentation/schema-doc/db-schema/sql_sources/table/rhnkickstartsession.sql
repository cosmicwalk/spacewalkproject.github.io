-- created by Oraschemadoc Wed Jan  9 15:06:59 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNKICKSTARTSESSION"
   (	"ID" NUMBER NOT NULL ENABLE,
	"KICKSTART_ID" NUMBER,
	"KICKSTART_MODE" VARCHAR2(32),
	"KSTREE_ID" NUMBER,
	"ORG_ID" NUMBER NOT NULL ENABLE,
	"SCHEDULER" NUMBER,
	"OLD_SERVER_ID" NUMBER,
	"NEW_SERVER_ID" NUMBER,
	"HOST_SERVER_ID" NUMBER,
	"ACTION_ID" NUMBER,
	"STATE_ID" NUMBER NOT NULL ENABLE,
	"SERVER_PROFILE_ID" NUMBER,
	"LAST_ACTION" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"PACKAGE_FETCH_COUNT" NUMBER DEFAULT (0) NOT NULL ENABLE,
	"LAST_FILE_REQUEST" VARCHAR2(2048),
	"SYSTEM_RHN_HOST" VARCHAR2(256),
	"KICKSTART_FROM_HOST" VARCHAR2(256),
	"DEPLOY_CONFIGS" CHAR(1) DEFAULT ('N') NOT NULL ENABLE,
	"VIRTUALIZATION_TYPE" NUMBER NOT NULL ENABLE,
	"CLIENT_IP" VARCHAR2(15),
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNKICKSTARTSESSION" ADD CONSTRAINT "RHN_KS_SESSION_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNKICKSTARTSESSION" ADD CONSTRAINT "RHN_KS_SESSION_KSID_FK" FOREIGN KEY ("KICKSTART_ID")
	  REFERENCES "SPACEUSER"."RHNKSDATA" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNKICKSTARTSESSION" ADD CONSTRAINT "RHN_KS_SESSION_KSTID_FK" FOREIGN KEY ("KSTREE_ID")
	  REFERENCES "SPACEUSER"."RHNKICKSTARTABLETREE" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "SPACEUSER"."RHNKICKSTARTSESSION" ADD CONSTRAINT "RHN_KS_SESSION_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEUSER"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNKICKSTARTSESSION" ADD CONSTRAINT "RHN_KS_SESSION_SCHED_FK" FOREIGN KEY ("SCHEDULER")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "SPACEUSER"."RHNKICKSTARTSESSION" ADD CONSTRAINT "RHN_KS_SESSION_OSID_FK" FOREIGN KEY ("OLD_SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNKICKSTARTSESSION" ADD CONSTRAINT "RHN_KS_SESSION_NSID_FK" FOREIGN KEY ("NEW_SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNKICKSTARTSESSION" ADD CONSTRAINT "RHN_KS_SESSION_HSID_FK" FOREIGN KEY ("HOST_SERVER_ID")
	  REFERENCES "SPACEUSER"."RHNSERVER" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNKICKSTARTSESSION" ADD CONSTRAINT "RHN_KS_SESSION_AID_FK" FOREIGN KEY ("ACTION_ID")
	  REFERENCES "SPACEUSER"."RHNACTION" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "SPACEUSER"."RHNKICKSTARTSESSION" ADD CONSTRAINT "RHN_KS_SESSION_KSSSID_FK" FOREIGN KEY ("STATE_ID")
	  REFERENCES "SPACEUSER"."RHNKICKSTARTSESSIONSTATE" ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNKICKSTARTSESSION" ADD CONSTRAINT "RHN_KS_SESSION_SPID_FK" FOREIGN KEY ("SERVER_PROFILE_ID")
	  REFERENCES "SPACEUSER"."RHNSERVERPROFILE" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "SPACEUSER"."RHNKICKSTARTSESSION" ADD CONSTRAINT "RHN_KSS_KVT_FK" FOREIGN KEY ("VIRTUALIZATION_TYPE")
	  REFERENCES "SPACEUSER"."RHNKICKSTARTVIRTUALIZATIONTYPE" ("ID") ON DELETE SET NULL ENABLE;