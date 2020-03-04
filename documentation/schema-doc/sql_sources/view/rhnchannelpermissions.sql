-- created by Oraschemadoc Wed Mar  4 07:58:13 2020
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FORCE VIEW "SPACEUSER"."RHNCHANNELPERMISSIONS" ("ORG_ID", "CHANNEL_ID") AS 
  select distinct org_id, channel_id
 from ( select privcf.org_id,
               cfm.channel_id
        from   rhnChannelFamilyMembers cfm,
               rhnPrivateChannelFamily privcf
        where  privcf.channel_family_id = cfm.channel_family_id
       union all
       select  u.org_id, cfm.channel_id
       from    web_contact u,
               rhnChannelFamilyMembers cfm,
               rhnPublicChannelFamily pubcf
       where   pubcf.channel_family_id = cfm.channel_family_id
) S
/
