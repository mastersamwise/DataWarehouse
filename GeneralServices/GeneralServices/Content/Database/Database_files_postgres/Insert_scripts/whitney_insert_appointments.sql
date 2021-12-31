/*
		2018-04-15:  Initial creation
*/

DECLARE @apptsTable table
(
	id_			int auto_increment,
	type_		nvarchar (75),
	reason_		nvarchar (150),
	date_		datetime2 (7),
	time_		nvarchar (10),
	address_	nvarchar (150),
	outcome_	nvarchar (1000),
	follow_up_	int,
	comment_	nvarchar (500)
)