-- created by Oraschemadoc Wed Apr 11 12:22:58 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."LOOKUP_SG_TYPE" (label_in in varchar2)
return number
deterministic
is
	server_group_type_id number;
begin
	select	id
	into	server_group_type_id
	from	rhnServerGroupType sgt
	where	label = label_in;

	return server_group_type_id;
exception
        when no_data_found then
            rhn_exception.raise_exception('invalid_server_group');
end;
/
