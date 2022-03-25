CREATE TABLE common.People
(
	person_id				serial 	primary key	not null,
	person_first_name		varchar (25)		not null,
	person_last_name		varchar (25)		null,
	person_relationship		varchar (100)		null
);

CREATE TABLE common.Users
(
	user_id			serial	primary key not null,
	user_name		varchar (50)		not null,
	username		varchar (25)		not null,
	created_date	timestamp			not null,
	last_updated	timestamp			not null,
	is_deleted		boolean				not null default false
);

CREATE TABLE common.Credentials
(
	user_id				int				not null,
	pin					varchar (25)	not null,
	pin_last_updated	timestamp		not null
);