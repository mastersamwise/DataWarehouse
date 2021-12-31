CREATE TABLE [lxa].[Members]
(
	[member_id]				INT				NOT NULL IDENTITY(1,1),
	[member_first_name]		NVARCHAR (25)	NOT NULL,
	[member_last_name]		NVARCHAR (25)	NOT NULL,
	[member_type]			NVARCHAR (15)	NOT NULL,
	[phone_number]			CHAR (15)		NOT NULL,
	[current_address]		NVARCHAR (100)	NULL,
	[mailing_address]		NVARCHAR (100)	NULL,
	[permanent_address]		NVARCHAR (100)	NULL,
	[year]					NVARCHAR (15)	NULL,
	[graduation_year]		INT				NULL,
	[masters]				NVARCHAR (50)	NULL,
	[major]					NVARCHAR (50)	NULL,
	[minor]					NVARCHAR (50)	NULL,
	[zeta_number]			NVARCHAR (7)	NULL,
	[initiation_class_id]	INT				NOT NULL,
	[member_status]			NVARCHAR (20)	NOT NULL,
	[DateCreated]			DATETIME2 (7)	NOT NULL DEFAULT(GETDATE()),
	[LastModified]			DATETIME2 (7)	NOT NULL DEFAULT(GETDATE()),
	[IsDeleted]				BIT				NOT NULL DEFAULT(0),
	CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED ( [member_id] ASC )
)
GO

CREATE TABLE [lxa].[InitiationClasses]
(
	[initiation_class_id]	INT				NOT NULL IDENTITY(1,1),
	[initiation_class]		NVARCHAR (25)	NOT NULL,
	[initiation_date]		DATETIME2 (7)	NOT NULL,
	[e_member_id]			INT				NULL,
	[DateCreated]			DATETIME2 (7)	NOT NULL DEFAULT(GETDATE()),
	[LastModified]			DATETIME2 (7)	NOT NULL DEFAULT(GETDATE()),
	[IsDeleted]				BIT				NOT NULL DEFAULT(0),
	CONSTRAINT [PK_InitiationClasses] PRIMARY KEY CLUSTERED ( [initiation_class_id] ASC )
)
GO

CREATE TABLE [lxa].[HighZetaPositions]
(
	[position_id]			INT				NOT NULL IDENTITY(1,1),
	[position_name]			NVARCHAR (25)	NOT NULL,
	[position_description]	NVARCHAR (50)	NOT NULL,
	CONSTRAINT [PK_HighZetaPositions] PRIMARY KEY CLUSTERED ( [position_id] ASC )
)
GO

CREATE TABLE [lxa].[MemberZetaXREF]
(
	[member_id]		INT				NOT NULL,
	[position_id]	INT				NOT NULL,
	[start_date]	DATETIME2 (7)	NOT NULL DEFAULT(GETDATE()),
	[end_date]		DATETIME2 (7)	NOT NULL,
	[is_active]		BIT				NOT NULL DEFAULT(1)
)
GO

CREATE TABLE [lxa].[AlumniBoards]
(
	[board_id]				INT				NOT NULL IDENTITY(1,1),
	[board_name]			NVARCHAR (100)	NOT NULL,
	[board_description]		NVARCHAR (500)	NOT NULL,
	[DateCreated]			DATETIME2 (7)	NOT NULL DEFAULT(GETDATE()),
	[LastModified]			DATETIME2 (7)	NOT NULL DEFAULT(GETDATE()),
	[IsDeleted]				BIT				NOT NULL DEFAULT(0),
	CONSTRAINT [PK_AlumniBoards] PRIMARY KEY CLUSTERED ( [board_id] ASC )
)
GO

CREATE TABLE [lxa].[AlumniBoardMemberXREF]
(
	[board_id]			INT				NOT NULL,
	[member_id]			INT				NOT NULL,
	[board_role]		NVARCHAR (25)	NOT NULL,
	[term_start_date]	DATETIME2 (7)	NULL,
	[term_end_date]		DATETIME2 (7)	NULL,
	[DateCreated]		DATETIME2 (7)	NOT NULL DEFAULT(GETDATE()),
	[LastModified]		DATETIME2 (7)	NOT NULL DEFAULT(GETDATE()),
	[IsDeleted]			BIT				NOT NULL DEFAULT(0)
)
GO

CREATE TABLE [lxa].[EmergencyContacts]
(
	[member_id]				INT				NOT NULL,
	[contact_name]			NVARCHAR (50)	NOT NULL,
	[contact_relation]		NVARCHAR (25)	NOT NULL,
	[contact_phone_number]	CHAR (15)		NOT NULL,
	[contact_address]		NVARCHAR (100)	NOT NULL,
	[added_comment]			NVARCHAR (500)	NULL,
	[DateCreated]			DATETIME2 (7)	NOT NULL DEFAULT(GETDATE()),
	[LastModified]			DATETIME2 (7)	NOT NULL DEFAULT(GETDATE()),
	[IsDeleted]				BIT				NOT NULL DEFAULT(0)
)
GO

CREATE TABLE [lxa].[AnnualAwards]
(
	[award_id]				INT				NOT NULL IDENTITY(1,1),
	[award_title]			NVARCHAR (50)	NOT NULL,
	[award_description]		NVARCHAR (100)	NULL,
	[DateCreated]			DATETIME2 (7)	NOT NULL DEFAULT(GETDATE()),
	[LastModified]			DATETIME2 (7)	NOT NULL DEFAULT(GETDATE()),
	[IsDeleted]				BIT				NOT NULL DEFAULT(0),
	CONSTRAINT [PK_AnnualAwards] PRIMARY KEY CLUSTERED ( [award_id] ASC )
)
GO

CREATE TABLE [lxa].[AnnualAwardsMembersXREF]
(
	[award_id]		INT		NOT NULL,
	[member_id]		INT		NOT NULL,
	[year_awarded]	INT		NOT NULL	
)
GO

INSERT INTO [lxa].[InitiationClasses]
( [initiation_class], [initiation_date] )
VALUES
( 'Empty', '1/1/1900' ),
( 'Refounding Fathers', '1/30/2010' ),
( 'Alpha', '5/22/2010' ),
( 'Beta', '1/29/2011' ),
( 'Gamma', '4/16/2011' ),
( 'Delta', '6/4/2011' ),
( 'Epsilon', '1/28/2012' ),
( 'Zeta', '5/19/2012' ),
( 'Eta', '9/29/2012' ),
( 'Theta', '1/27/2013' ),
( 'Iota', '4/19/2013' ),
( 'Kappa', '1/25/2014' ),
( 'Lambda', '5/16/2014' ),
( 'Mi', '1/31/2015' ),
( 'Ni', '5/16/2015' ),
( 'Xi', '1/16/2016' ),
( 'Omiron', '4/2/2016' )
GO

INSERT INTO [lxa].[Members]
( [member_first_name], [member_last_name], [member_type], [phone_number], [initiation_class_id], [member_status], [IsDeleted] )
VALUES
( 'Empty', 'Empty', 'None', '000-000-0000', 1, 'Inactive', 1 ),
( 'John', 'Andrus', 'Brother', '000-000-0000', 2, 'Alumni', 0 ),
( 'Jamal', 'Atif', 'Brother', '000-000-0000', 2, 'Alumni', 0 ),
( 'Nik', 'Bournelis', 'Brother', '000-000-0000', 2, 'Alumni', 0 ),
( 'Sunkwon', 'Bush', 'Brother', '000-000-0000', 2, 'Alumni', 0 )
GO

INSERT INTO [lxa].[HighZetaPositions]
( [position_name], [position_description] )
VALUES
( 'High Alpha', 'President' ),
( 'High Beta', 'Internal Vice President' ),
( 'High Theta', 'External Vice President' ),
( 'High Gamma', 'Secretary' ),
( 'High Tau', 'Treasurer' ),
( 'High Delta', 'Recruitment Chair' ),
( 'High Iota', '' ),
( 'High Kappa', 'Fraternity Educator' ),
( 'High Epsilon', 'Social Chair' ),
( 'High Sigma', 'Academics Chair' ),
( 'High Phi', 'Ritualist' ),
( 'High Rho', 'Undergrad-Alumni Liason' ),
( 'High Pi', 'Alumni Advisor' ),
( 'Standards Chair', 'Standards Chair' ),
( 'House Manager', 'House Manager' ),
( 'Chores Manager', 'Chores Manager' ),
( 'Athletics Chair', 'Athletics Chair' ),
( 'Inner Circle Steward', 'Inner Circle Steward' ),
( 'Exec At Large', 'Voting Executive Committee Member' ),
( 'Exec At Large', 'Voting Executive Committee Member' ),
( 'Exec Alternate', 'Non-Voting Executive Committee Member, fill-in for absent voting members' ),
( 'Greek Week Chair', 'Greek Week Chair' ),
( 'Deepher Dude', 'Deepher Dude' )
GO


ALTER TABLE [lxa].[Members] ADD CONSTRAINT [FK_Members_InitiationClasses] FOREIGN KEY ( [initiation_class_id] ) REFERENCES [lxa].[InitiationClasses] ( [initiation_class_id] )
ALTER TABLE [lxa].[InitiationClasses] ADD CONSTRAINT [FK_InitiationClasses_Members] FOREIGN KEY ( [e_member_id] ) REFERENCES [lxa].[Members] ( [member_id] )
ALTER TABLE [lxa].[MemberZetaXREF] ADD CONSTRAINT [FK_MemberZetaXREF_Members] FOREIGN KEY ( [member_id] ) REFERENCES [lxa].[Members] ( [member_id] )
ALTER TABLE [lxa].[MemberZetaXREF] ADD CONSTRAINT [FK_MemberZetaXREF_HighZeta] FOREIGN KEY ( [position_id] ) REFERENCES [lxa].[HighZetaPositions] ( [position_id] )
ALTER TABLE [lxa].[AlumniBoardMemberXREF] ADD CONSTRAINT [FK_AlumniBoardsMembersXREF_AlumniBoards] FOREIGN KEY ( [board_id] ) REFERENCES [lxa].[AlumniBoards] ( [board_id] )
ALTER TABLE [lxa].[AlumniBoardMemberXREF] ADD CONSTRAINT [FK_AlumniBoardsMembersXREF_Members] FOREIGN KEY ( [member_id] ) REFERENCES [lxa].[Members] ( [member_id] )
ALTER TABLE [lxa].[EmergencyContacts] ADD CONSTRAINT [FK_EmergencyContacts_Members] FOREIGN KEY ( [member_id] ) REFERENCES [lxa].[Members] ( [member_id] )
ALTER TABLE [lxa].[AnnualAwardsMembersXREF] ADD CONSTRAINT [FK_AnnualAwardsMembersXREF_AnnualAwards] FOREIGN KEY ( [award_id] ) REFERENCES [lxa].[AnnualAwards] ( [award_id] )
ALTER TABLE [lxa].[AnnualAwardsMembersXREF] ADD CONSTRAINT [FK_AnnualAwardsMembersXREF_Members] FOREIGN KEY ( [position_id] ) REFERENCES [lxa].[Members] ( [member_id] )


--ALTER TABLE [lxa].[AnnualAwardsMembersXREF] DROP CONSTRAINT [FK_AnnualAwardsMembersXREF_AnnualAwards]
--DROP TABLE [lxa].[AlumniBoards]
--DROP TABLE [lxa].[AlumniBoardMemberXREF]
--DROP TABLE [lxa].[AnnualAwards]
--DROP TABLE [lxa].[EmergencyContacts]
--DROP TABLE [lxa].[MemberZetaXREF]
--DROP TABLE [lxa].[HighZetaPositions]
--DROP TABLE [lxa].[AnnualAwardsMembersXREF]
--ALTER TABLE [lxa].[Members] DROP CONSTRAINT [FK_Members_InitiationClasses]
--DROP TABLE [lxa].[InitiationClasses]
--DROP TABLE [lxa].[Members]