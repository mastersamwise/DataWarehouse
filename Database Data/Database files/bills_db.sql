CREATE TABLE [bills].[Payments]
(
	[payment_id]			int identity(1,1)	not null,
	[company]				nvarchar (100)		not null,
	[payment_date]			datetime2 (7)		not null,
	[due_date]				datetime2 (7)		not null,
	[payment_amount]		decimal (6,2)		not null default(0.0),
	[confirmation_number]	nvarchar (50)		not null default('-'),
	[comment]				nvarchar (500)		null,
	CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED ( [payment_id] ASC )
)