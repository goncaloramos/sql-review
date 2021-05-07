# allow
set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');


# disallow
set @@global.sql_mode := concat('ONLY_FULL_GROUP_BY,', @@global.sql_mode);