--
-- packages/acs-subsite/sql/user-profiles-drop.sql
--
-- @author oumi@arsdigita.com
-- @creation-date 2000-02-02
-- @cvs-id $Id: user-profiles-drop.sql,v 1.2 2010/10/19 20:12:15 po34demo Exp $
--

drop table user_profiles;
drop package user_profile;

begin
  acs_rel_type.drop_type('user_profile');
end;
/
show errors

