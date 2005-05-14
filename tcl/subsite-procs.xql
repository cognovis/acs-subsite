<?xml version="1.0"?>
<queryset>

<fullquery name="subsite::after_mount.group_exists">      
      <querytext>
      
	    select 1
            from dual
            where exists (select 1
                          from application_groups
                          where package_id = :package_id)
	
      </querytext>
</fullquery>

<fullquery name="subsite::after_mount.subsite_name_query">      
      <querytext>
      
	    select instance_name
	    from apm_packages
	    where package_id = :package_id
	
      </querytext>
</fullquery>

 
<fullquery name="subsite::after_mount.parent_subsite_query">      
      <querytext>
      
         select m.group_id as supersite_group_id, p.instance_name as supersite_name
         from application_groups m, apm_packages p, site_nodes s1, site_nodes s2
         where s1.node_id = :node_id
           and s2.node_id = s1.parent_id
           and p.package_id = s2.object_id
	   and m.package_id = :subsite_id

      </querytext>
</fullquery>

 
<fullquery name="subsite::instance_name_exists_p.select_name_exists_p">      
      <querytext>
      
	select count(*) 
	  from site_nodes
	 where parent_id = :node_id
	   and name = :instance_name
    
      </querytext>
</fullquery>

 
<fullquery name="subsite::util::object_type_pretty_name.select_pretty_name">      
      <querytext>
      
	select pretty_name from acs_object_types 
	where object_type = :object_type
    
      </querytext>
</fullquery>

 
</queryset>