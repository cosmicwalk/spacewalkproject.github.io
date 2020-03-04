-- created by Oraschemadoc Wed Mar  4 07:57:45 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEUSER"."RHNTASKOTEMPLATE" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"BUNCH_ID" NUMBER NOT NULL ENABLE, 
	"TASK_ID" NUMBER NOT NULL ENABLE, 
	"ORDERING" NUMBER NOT NULL ENABLE, 
	"START_IF" VARCHAR2(10), 
	"CREATED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	"MODIFIED" TIMESTAMP (6) WITH LOCAL TIME ZONE DEFAULT (current_timestamp) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_TASKO_TEMPLATE_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "TASKO_TEMPLATE_ORDERING_UQ" UNIQUE ("BUNCH_ID", "ORDERING")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_TASKO_TEMPLATE_BUNCH_FK" FOREIGN KEY ("BUNCH_ID")
	  REFERENCES "SPACEUSER"."RHNTASKOBUNCH" ("ID") ENABLE, 
	 CONSTRAINT "RHN_TASKO_TEMPLATE_TASK_FK" FOREIGN KEY ("TASK_ID")
	  REFERENCES "SPACEUSER"."RHNTASKOTASK" ("ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
/