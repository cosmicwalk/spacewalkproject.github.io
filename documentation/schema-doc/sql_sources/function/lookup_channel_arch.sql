-- created by Oraschemadoc Wed Apr 11 12:22:57 2018
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEUSER"."LOOKUP_CHANNEL_ARCH" (label_in IN VARCHAR2)
RETURN NUMBER
IS
	channel_arch_id		NUMBER;
BEGIN
	SELECT id
          INTO channel_arch_id
          FROM rhnChannelArch
         WHERE label = label_in;

	RETURN channel_arch_id;
EXCEPTION
        WHEN NO_DATA_FOUND THEN
            rhn_exception.raise_exception('channel_arch_not_found');
END;
/
