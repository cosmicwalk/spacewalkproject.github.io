-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."INSERT_EVR" (e_in in varchar2, v_in in varchar2, r_in in varchar2)
return number
is
    pragma autonomous_transaction;
    evr_id  number;
begin
    insert into rhnPackageEVR(id, epoch, version, release, evr)
    values (rhn_pkg_evr_seq.nextval,
            e_in,
            v_in,
            r_in,
            evr_t(e_in, v_in, r_in)) returning id into evr_id;
    commit;
    return evr_id;
end;
/
