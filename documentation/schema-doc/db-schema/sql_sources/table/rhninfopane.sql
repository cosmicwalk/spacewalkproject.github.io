-- created by Oraschemadoc Wed Jan  9 15:06:59 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNINFOPANE"
   (	"ID" NUMBER,
	"LABEL" VARCHAR2(64) NOT NULL ENABLE,
	"ACL" VARCHAR2(4000)
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNINFOPANE" ADD CONSTRAINT "RHN_INFO_PANE_ID_PK" PRIMARY KEY ("ID") ENABLE;