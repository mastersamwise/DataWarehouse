CREATE TABLE common.People
(
	person_id				int	auto_increment	not null,
	person_first_name		nvarchar (25)		not null,
	person_last_name		nvarchar (25)		null,
	person_relationship	nvarchar (100)		null,
	CONSTRAINT PK_People PRIMARY KEY CLUSTERED ( person_id ASC )
)
GO
