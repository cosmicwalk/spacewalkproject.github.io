-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."LOOKUP_CONFIG_FILENAME" (name_in in varchar2)
return number
is
    pragma autonomous_transaction;
    name_id		number;
begin
    select id
      into name_id
      from rhnConfigFileName
     where path = name_in;

    return name_id;
exception when no_data_found then
    begin
        select insert_config_filename(name_in) into name_id from dual;
    exception when dup_val_on_index then
        select id
          into name_id
          from rhnConfigFileName
         where path = name_in;
    end;

	return name_id;
end;
/
