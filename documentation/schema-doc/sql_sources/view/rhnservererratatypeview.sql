-- created by Oraschemadoc Wed Mar  4 07:58:14 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNSERVERERRATATYPEVIEW" ("SERVER_ID", "ERRATA_ID", "ERRATA_TYPE") AS 
  SELECT
    	SNEC.server_id,
	SNEC.errata_id,
	E.advisory_type
FROM    rhnErrata E,
    	rhnServerNeededErrataCache SNEC
WHERE   E.id = SNEC.errata_id
GROUP BY SNEC.server_id, SNEC.errata_id, E.advisory_type

/
