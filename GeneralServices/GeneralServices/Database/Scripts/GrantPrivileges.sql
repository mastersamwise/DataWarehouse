

psql general_services;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA concerts TO nik;

GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA concerts TO nik;

-- https://stackoverflow.com/questions/46773363/granted-all-privileges-on-my-postgres-table-but-still-am-getting-a-permission
insert into concerts.venues (venue_name, venue_city, venue_state)
values ('test', 'testcity', 'teststate')


ALTER TABLE concerts.venues OWNER TO pi; 
ALTER SCHEMA concerts OWNER TO pi;

-- to address "must be owner of table" error
grant pi to nik;

GRANT USAGE ON SCHEMA concerts TO pi;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA concerts TO pi;
GRANT SELECT, UPDATE, USAGE ON ALL SEQUENCES IN SCHEMA concerts to pi;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA concerts TO pi;
ALTER DEFAULT PRIVILEGES IN SCHEMA concerts GRANT SELECT, UPDATE, INSERT, DELETE, TRIGGER ON TABLES TO pi;
