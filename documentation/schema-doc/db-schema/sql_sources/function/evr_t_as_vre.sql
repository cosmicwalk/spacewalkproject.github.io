-- created by Oraschemadoc Wed Jan  9 15:07:26 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."EVR_T_AS_VRE" ( a evr_t )
  return varchar2
is
begin
        return a.as_vre;
end;
/
