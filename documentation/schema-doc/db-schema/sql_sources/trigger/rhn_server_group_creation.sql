-- created by Oraschemadoc Wed Jan  9 15:07:25 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_SERVER_GROUP_CREATION"
AFTER INSERT ON rhnServerGroup
FOR EACH ROW
DECLARE
        org_admin_group      NUMBER;
        org_id_val           NUMBER;
BEGIN
	org_id_val := :new.org_id;

	SELECT UG.id INTO org_admin_group
	  FROM rhnUserGroup UG,
	       rhnUserGroupType UGT
	 WHERE UGT.label = 'org_admin'
	   AND UGT.id = UG.group_type
	   AND UG.org_id = org_id_val;

EXCEPTION
        WHEN NO_DATA_FOUND THEN
          rhn_exception.raise_exception_val('no_org_admin_group', org_id_val);
END;
/
ALTER TRIGGER "SPACEUSER"."RHN_SERVER_GROUP_CREATION" ENABLE;
