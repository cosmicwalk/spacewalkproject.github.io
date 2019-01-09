-- created by Oraschemadoc Wed Jan  9 15:07:08 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNUSERINFOPANE"
   (	"USER_ID" NUMBER NOT NULL ENABLE,
	"PANE_ID" NUMBER NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNUSERINFOPANE" ADD CONSTRAINT "RHN_USR_INFO_PANE_UID_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "SPACEUSER"."WEB_CONTACT" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNUSERINFOPANE" ADD CONSTRAINT "RHN_USR_INFO_PANE_PID_FK" FOREIGN KEY ("PANE_ID")
	  REFERENCES "SPACEUSER"."RHNINFOPANE" ("ID") ON DELETE CASCADE ENABLE;