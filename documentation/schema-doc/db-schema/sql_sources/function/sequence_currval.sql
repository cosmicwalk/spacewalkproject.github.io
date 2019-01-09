-- created by Oraschemadoc Wed Jan  9 15:07:27 2019
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."SEQUENCE_CURRVAL" ( seq_name varchar2 ) return number as
	ret number;
begin
	execute immediate 'select '|| seq_name || '.currval from dual'
		into ret;
	return ret;
end;
/
