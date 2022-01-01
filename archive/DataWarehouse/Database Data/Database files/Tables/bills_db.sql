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
GO

CREATE TABLE [bills].[CreditCards]
(
	[credit_card_id]		int identity(1,1)	not null,
	[credit_card_type]		nvarchar (50)		not null,
	[activation_date]		datetime2 (7)		not null,
	[cancelation_date]		datetime2 (7)		null,
	[comment]				nvarchar (500)		null,
	CONSTRAINT [PK_Cards] PRIMARY KEY CLUSTERED ( [credit_card_id] ASC )
)
GO

/*   List of cards and which cards they are linked to    */
CREATE TABLE [bills].[Services]
(
	[service_id]			int identity(1,1)	not null,
	[service_name]			nvarchar (100)		not null,
	[service_description]	nvarchar (500)		not null,
	[recurring_payment]		bit					not null default(0),
	[start_date]			datetime2 (7)		null,
	[end_date]				datetime2 (7)		null,
	[comment]				nvarchar (500)		null,
	[credit_card_id]		int					not null,
	CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED ( [service_id] ASC )
)
GO

/***********************************************************************************************************
			Foreign Keys
***********************************************************************************************************/
ALTER TABLE [bills].[Servies]	ADD CONSTRAINT [FK_CreditCards]		FOREIGN KEY ( [credit_card_id] )	REFERENCES [bills].[CreditCards]	( [credit_card_id] )


/***********************************************************************************************************
			Drop Everything
***********************************************************************************************************/
--ALTER TABLE [bills].[Services]					DROP CONSTRAINT [FK_CreditCards]

--DROP [bills].[Services]
--DROP [bills].[CreditCards]
--DROP [bills].[Payments]