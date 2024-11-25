revoke create on schema public from public;
revoke all on database warehouse from public;


create role readonly;
grant connect on database warehouse to readonly;
grant usage on schema warehouse to readonly;
grant usage on schema marts to readonly;
grant select on all tables in schema warehouse to readonly;
grant select on all tables in schema marts to readonly;
alter default privileges in schema warehouse grant select on tables to readonly;
alter default privileges in schema marts grant select on tables to readonly;

create role readwrite;
grant connect on database warehouse to readwrite;
grant usage, create on schema raw to readwrite;
grant usage, create on schema warehouse to readwrite;
grant usage, create on schema marts to readwrite;
grant usage, create on schema aws_s3 to readwrite;
grant select, insert, update, delete on all tables in schema raw to readwrite;
grant select, insert, update, delete on all tables in schema warehouse to readwrite;
grant select, insert, update, delete on all tables in schema marts to readwrite;
grant select, insert, update, delete on all tables in schema aws_s3 to readwrite;
alter default privileges in schema raw grant select, insert, update, delete on tables to readwrite;
alter default privileges in schema warehouse grant select, insert, update, delete on tables to readwrite;
alter default privileges in schema marts grant select, insert, update, delete on tables to readwrite;
alter default privileges in schema aws_s3 grant select, insert, update, delete on tables to readwrite;
grant usage on all sequences in schema raw to readwrite;
grant usage on all sequences in schema warehouse to readwrite;
grant usage on all sequences in schema marts to readwrite;
grant usage on all sequences in schema aws_s3 to readwrite;
alter default privileges in schema raw grant usage on sequences to readwrite;
alter default privileges in schema warehouse grant usage on sequences to readwrite;
alter default privileges in schema marts grant usage on sequences to readwrite;
alter default privileges in schema aws_s3 grant usage on sequences to readwrite;
grant execute on all functions in schema aws_s3 to readwrite; 


create user biuser with password 'dashboard';
grant readonly to biuser;

create user etluser with password 'warehouse';
grant readwrite to etluser;

