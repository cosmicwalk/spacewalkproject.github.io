-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."LOOKUP_PACKAGE_KEY_TYPE" (label_in in varchar2)
return number
is
	package_key_type_id number;
begin
	select id into package_key_type_id from rhnPackageKeyType where label = label_in;
	return package_key_type_id;
exception
	when no_data_found then
		rhn_exception.raise_exception('package_key_type_not_found');
end;
/
