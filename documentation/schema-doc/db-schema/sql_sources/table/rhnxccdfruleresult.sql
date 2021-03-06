-- created by Oraschemadoc Wed Jan  9 15:07:09 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNXCCDFRULERESULT"
   (	"ID" NUMBER NOT NULL ENABLE,
	"TESTRESULT_ID" NUMBER NOT NULL ENABLE,
	"RESULT_ID" NUMBER NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNXCCDFRULERESULT" ADD CONSTRAINT "RHN_XCCDF_RRESULT_ID_PK" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "SPACEUSER"."RHNXCCDFRULERESULT" ADD CONSTRAINT "RHN_XCCDF_RRESULT_TRESULT_FK" FOREIGN KEY ("TESTRESULT_ID")
	  REFERENCES "SPACEUSER"."RHNXCCDFTESTRESULT" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNXCCDFRULERESULT" ADD CONSTRAINT "RHN_XCCDF_RRESULT_RESULT_FK" FOREIGN KEY ("RESULT_ID")
	  REFERENCES "SPACEUSER"."RHNXCCDFRULERESULTTYPE" ("ID") ENABLE;
