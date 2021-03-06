-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."INSERT_PACKAGE_GROUP" (name_in in varchar2)
return number
is
    pragma autonomous_transaction;
    package_id   number;
begin
    insert into rhnPackageGroup(id, name)
    values (rhn_package_group_id_seq.nextval, name_in) returning id into package_id;
    commit;
    return package_id;
end;
/
