-- created by Oraschemadoc Wed Apr 11 12:22:56 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE PROCEDURE "SPACEUSER"."CREATE_NEW_ORG" 
(
	name_in      in varchar2,
	password_in  in varchar2,
	org_id_out   out number
) is
	ug_type			number;
	group_val		number;
	new_org_id              number;
begin

        select web_customer_id_seq.nextval into new_org_id from dual;

	insert into web_customer (
		id, name


	) values (
		new_org_id, name_in
	);

	select rhn_user_group_id_seq.nextval into group_val from dual;

	select	id
	into	ug_type
	from	rhnUserGroupType
	where	label = 'org_admin';

	insert into rhnUserGroup (
		id, name,
		description,
		max_members, group_type, org_id
	) values (
		group_val, 'Organization Administrators',
		'Organization Administrators for Org ' || name_in,
		NULL, ug_type, new_org_id
	);

	select rhn_user_group_id_seq.nextval into group_val from dual;

	select	id
	into	ug_type
	from	rhnUserGroupType
	where	label = 'system_group_admin';

	insert into rhnUserGroup (
		id, name,
		description,
		max_members, group_type, org_id
	) values (
		group_val, 'System Group Administrators',
		'System Group Administrators for Org ' || name_in,
		NULL, ug_type, new_org_id
	);


	select rhn_user_group_id_seq.nextval into group_val from dual;

	select	id
	into	ug_type
	from	rhnUserGroupType
	where	label = 'activation_key_admin';

	insert into rhnUserGroup (
		id, name,
		description,
		max_members, group_type, org_id
	) values (
		group_val, 'Activation Key Administrators',
		'Activation Key Administrators for Org ' || name_in,
		NULL, ug_type, new_org_id
	);

	select rhn_user_group_id_seq.nextval into group_val from dual;

	select	id
	into	ug_type
	from	rhnUserGroupType
	where	label = 'channel_admin';

	insert into rhnUserGroup (
		id, name,
		description,
		max_members, group_type, org_id
	) values (
		group_val, 'Channel Administrators',
		'Channel Administrators for Org ' || name_in,
		NULL, ug_type, new_org_id
	);

        select rhn_user_group_id_seq.nextval into group_val from dual;

        select  id
        into    ug_type
        from    rhnUserGroupType
        where   label = 'config_admin';

        insert into rhnUserGroup (
                id, name,
                description,
                max_members, group_type, org_id
        ) values (
                group_val, 'Configuration Administrators',
                'Configuration Administrators for Org ' || name_in,
                NULL, ug_type, new_org_id
        );

	-- there aren't any users yet, so we don't need to update
	-- rhnUserServerPerms

        insert into rhnServerGroup
                ( id, name, description, group_type, org_id )
                select rhn_server_group_id_seq.nextval, sgt.name, sgt.name,
                        sgt.id, new_org_id
                from rhnServerGroupType sgt
                where sgt.label = 'bootstrap_entitled';

        insert into rhnServerGroup
                ( id, name, description, group_type, org_id )
                select rhn_server_group_id_seq.nextval, sgt.name, sgt.name,
                        sgt.id, new_org_id
                from rhnServerGroupType sgt
                where sgt.label = 'enterprise_entitled';

        insert into rhnServerGroup
                ( id, name, description, group_type, org_id )
                select rhn_server_group_id_seq.nextval, sgt.name, sgt.name,
                        sgt.id, new_org_id
                from rhnServerGroupType sgt
                where sgt.label = 'virtualization_host';

	org_id_out := new_org_id;

end create_new_org;
/
