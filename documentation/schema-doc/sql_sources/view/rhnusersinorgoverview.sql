-- created by Oraschemadoc Wed Apr 11 12:22:52 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNUSERSINORGOVERVIEW" ("ORG_ID", "USER_ID", "USER_LOGIN", "USER_FIRST_NAME", "USER_LAST_NAME", "USER_MODIFIED", "SERVER_COUNT", "SERVER_GROUP_COUNT", "ROLE_NAMES") AS 
  select
	u.org_id					as org_id,
	u.id						as user_id,
	u.login						as user_login,
	pi.first_names					as user_first_name,
	pi.last_name					as user_last_name,
	u.modified					as user_modified,
    	(	select	count(server_id)
		from	rhnUserServerPerms sp
		where	sp.user_id = u.id)
							as server_count,
	(	select	count(server_group_id)
		from	rhnUserManagedServerGroups umsg
		where	umsg.user_id = u.id and exists (
			select	1
			from	rhnVisibleServerGroup sg
			where	sg.id = umsg.server_group_id))
							as server_group_count,
	coalesce(rhn_user.role_names(u.id), '(normal user)') as role_names
from	web_user_personal_info pi,
	web_contact u
where
	u.id = pi.web_user_id
/
