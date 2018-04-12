-- created by Oraschemadoc Wed Apr 11 12:22:51 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNSERVERFEATURESVIEW" ("SERVER_ID", "LABEL") AS 
  select
   distinct
   sgm.server_id,
   f.label
from
   rhnFeature f,
   rhnServerGroupTypeFeature sgtf,
   rhnServerGroupMembers sgm,
   rhnServerGroup sg
where
   sg.id = sgm.server_group_id
   and sgtf.feature_id = f.id
   and sg.group_type = sgtf.server_group_type_id

/
