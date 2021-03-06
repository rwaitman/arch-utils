define pm_schema = &1;
define user_id = &2;

whenever sqlerror continue;
delete from i2b2pm.pm_project_user_roles
  where user_id = '&user_id'
  and project_id = 'PCORI';

whenever sqlerror exit sql.sqlcode;
insert into &pm_schema..pm_project_user_roles (
  project_id,
  user_id,
  user_role_cd,
  status_cd
) values (
  'PCORI',
  '&user_id',
  'USER',
  'A'
);

insert into &pm_schema..pm_project_user_roles (
  project_id,
  user_id,
  user_role_cd,
  status_cd
) values (
  'PCORI',
  '&user_id',
  'DATA_AGG',
  'A'
);

insert into &pm_schema..pm_project_user_roles (
  project_id,
  user_id,
  user_role_cd,
  status_cd
) values (
  'PCORI',
  '&user_id',
  'DATA_DEID',
  'A'
);

insert into &pm_schema..pm_project_user_roles (
  project_id,
  user_id,
  user_role_cd,
  status_cd
) values (
  'PCORI',
  '&user_id',
  'DATA_LDS',
  'A'
);

insert into &pm_schema..pm_project_user_roles (
  project_id,
  user_id,
  user_role_cd,
  status_cd
) values (
  'PCORI',
  '&user_id',
  'DATA_OBFSC',
  'A'
);
