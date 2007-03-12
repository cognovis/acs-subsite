<?xml version="1.0"?>

<queryset>
   <rdbms><type>postgresql</type><version>7.1</version></rdbms>

<fullquery name="users_who_dont_have_any_permissions">      
      <querytext>

    select u.user_id,
           person__name(u.user_id) as name,
           u.email
    from   cc_users u
    where  1 = 1
    order  by name


      </querytext>
</fullquery>


</queryset>
