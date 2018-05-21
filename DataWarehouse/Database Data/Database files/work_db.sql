CREATE TABLE [work].[TimeEntries]
(
	[time_entry_id]			INT IDENTITY(1,1)	NOT NULL,
	[day_of_week]			nvarchar (10)		NOT NULL,
	[date]					datetime2 (7)		NOT NULL,
	[time_in_office]		nvarchar (20)		NOT NULL	DEFAULT(' - '),
	[time_out_office]		nvarchar (20)		NOT NULL	DEFAULT(' - '),
	[at_home]				nvarchar (20)		NOT NULL	DEFAULT(' - '),
	[time_remaining]		decimal (4,2)		NOT NULL	DEFAULT(00.00),
	[vacation_used]			decimal (4,2)		NOT NULL	DEFAULT(00.00),
	[date_modified]			datetime2 (7)		NOT NULL	DEFAULT(GETDATE()),
	CONSTRAINT [PK_TimeEntries] PRIMARY KEY CLUSTERED ( [time_entry_id] ASC )
)