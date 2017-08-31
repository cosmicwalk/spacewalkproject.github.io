-- created by Oraschemadoc Wed Aug 30 22:57:47 2017
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEUSER"."RHN_SG_DEL_TRIG" 
before delete on rhnServerGroup
for each row
declare
	cursor snapshots is
		select	snapshot_id id
		from	rhnSnapshotServerGroup
		where	server_group_id = :old.id
		order by snapshot_id;
begin
	for snapshot in snapshots loop
		update rhnSnapshot
			set invalid = lookup_snapshot_invalid_reason('sg_removed')
			where id = snapshot.id;
		delete from rhnSnapshotServerGroup
			where snapshot_id = snapshot.id
				and server_group_id = :old.id;
	end loop;
end;
ALTER TRIGGER "SPACEUSER"."RHN_SG_DEL_TRIG" ENABLE
/
