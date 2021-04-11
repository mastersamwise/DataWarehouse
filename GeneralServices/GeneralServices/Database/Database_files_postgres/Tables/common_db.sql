CREATE TABLE common.People
(
	person_id				serial 	primary key	not null,
	person_first_name		varchar (25)		not null,
	person_last_name		varchar (25)		null,
	person_relationship		varchar (100)		null
);
