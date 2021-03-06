-- created by Oraschemadoc Wed Jan  9 15:07:03 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNREGTOKENCONFIGCHANNELS"
   (	"TOKEN_ID" NUMBER NOT NULL ENABLE,
	"CONFIG_CHANNEL_ID" NUMBER NOT NULL ENABLE,
	"POSITION" NUMBER NOT NULL ENABLE
   ) ENABLE ROW MOVEMENT ;
  ALTER TABLE "SPACEUSER"."RHNREGTOKENCONFIGCHANNELS" ADD CONSTRAINT "RHN_REGTOK_CONFCHAN_TID_FK" FOREIGN KEY ("TOKEN_ID")
	  REFERENCES "SPACEUSER"."RHNREGTOKEN" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SPACEUSER"."RHNREGTOKENCONFIGCHANNELS" ADD CONSTRAINT "RHN_REGTOK_CONFCHAN_CCID_FK" FOREIGN KEY ("CONFIG_CHANNEL_ID")
	  REFERENCES "SPACEUSER"."RHNCONFIGCHANNEL" ("ID") ON DELETE CASCADE ENABLE;
