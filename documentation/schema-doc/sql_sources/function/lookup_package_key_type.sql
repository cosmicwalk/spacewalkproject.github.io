-- created by Oraschemadoc Wed Mar  4 07:58:19 2020
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
