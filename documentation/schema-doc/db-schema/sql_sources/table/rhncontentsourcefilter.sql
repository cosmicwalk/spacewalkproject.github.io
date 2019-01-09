-- created by Oraschemadoc Wed Jan  9 15:06:56 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNCONTENTSOURCEFILTER"
   (	"ID" NUMBER NOT NULL ENABLE,
	"SOURCE_ID" NUMBER,
	"SORT_ORDER" NUMBER NOT NULL ENABLE,
	"FLAG" VARCHAR2(1) NOT NULL ENABLE,
	"FILTER" VARCHAR2(4000) NOT NULL ENABLE,
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE,
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNCONTENTSOURCEFILTER" ADD CHECK (flag in ('+','-')) ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCONTENTSOURCEFILTER" ADD CONSTRAINT "RHN_CSF_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNCONTENTSOURCEFILTER" ADD CONSTRAINT "RHN_CSF_SOURCE_FK" FOREIGN KEY ("SOURCE_ID")
	  REFERENCES "SPACEUSER"."RHNCONTENTSOURCE" ("ID") ON DELETE CASCADE ENABLE;