CREATE TABLE [acnh].[Critters]
(
	[critter_id]				int	identity(1,1)	not null,
	[critter_type]				nvarchar (10)		not null,
	[critter_name]				nvarchar (25)		null,
	[sale_price]				decimal (8,2)		null,
	[location]					nvarchar (100)		null,
	[comment]					nvarchar (500)		null,
	CONSTRAINT [PK_Critters] PRIMARY KEY CLUSTERED ( [critter_id] ASC )
)
GO

CREATE TABLE [acnh].[Months]
(
	[january]		bit		default(0) not null,
	[february]		bit		default(0) not null,
	[march]			bit		default(0) not null,
	[april]			bit		default(0) not null,
	[may]			bit		default(0) not null,
	[june]			bit		default(0) not null,
	[july]			bit		default(0) not null,
	[august]		bit		default(0) not null,
	[september]		bit		default(0) not null,
	[october]		bit		default(0) not null,
	[november]		bit		default(0) not null,
	[december]		bit		default(0) not null,
	[critter_id]	int		not null,
	CONSTRAINT [PK_Months] PRIMARY KEY CLUSTERED ( [critter_id] ASC )
)
GO

CREATE TABLE [acnh].[Hours]
(
	[12_AM]		bit		default(0) not null,
	[1_AM]		bit		default(0) not null,
	[2_AM]		bit		default(0) not null,
	[3_AM]		bit		default(0) not null,
	[4_AM]		bit		default(0) not null,
	[5_AM]		bit		default(0) not null,
	[6_AM]		bit		default(0) not null,
	[7_AM]		bit		default(0) not null,
	[8_AM]		bit		default(0) not null,
	[9_AM]		bit		default(0) not null,
	[10_AM]		bit		default(0) not null,
	[11_AM]		bit		default(0) not null,
	[12_PM]		bit		default(0) not null,
	[1_PM]		bit		default(0) not null,
	[2_PM]		bit		default(0) not null,
	[3_PM]		bit		default(0) not null,
	[4_PM]		bit		default(0) not null,
	[5_PM]		bit		default(0) not null,
	[6_PM]		bit		default(0) not null,
	[7_PM]		bit		default(0) not null,
	[8_AM]		bit		default(0) not null,
	[9_PM]		bit		default(0) not null,
	[10_PM]		bit		default(0) not null,
	[11_PM]		bit		default(0) not null,
	[critter_id]	int	not null,
	CONSTRAINT [PK_Hours] PRIMARY KEY CLUSTERED ( [critter_id] ASC )
)
GO

CREATE TABLE [acnh].[Fossils]
(
	[fossil_id]		int	identity(1,1)	not null,
	[fossil_name]	nvarchar (25)		not null,
	[sale_price]	decimal (8,2)		null,
	CONSTRAINT [PK_Fossils] PRIMARY KEY CLUSTERED ( [fossil_id] ASC )
)
GO

CREATE TABLE [acnh].[PlayerCritter_xref]
(
	[player_id]			int		not null,
	[critter_id]		int		not null,
	[date_collected]	datetime (7)	default(getdate())	not null,
	CONSTRAINT [PK_PlayerCritterXREF] PRIMARY KEY CLUSTERED ( [player_id], [critter_id] )
)
GO

CREATE TABLE [acnh].[PlayerFossil_xref]
(
	[player_id]			int		not null,
	[fossil_id]			int		not null,
	[date_collected]	datetime (7)	default(getdate())	not null,
	CONSTRAINT [PK_PlayerFossilXREF] PRIMARY KEY CLUSTERED ( [player_id], [fossil_id] )
)
GO

CREATE TABLE [acnh].[SeasonalItems]
(
	[item_id]		int		identity(1,1)	not null,
	[item_name]		nvarchar (50)			not null,
	[season]		nvarchar (50)			not null,
)
GO

CREATE TABLE [acnh].[PlayerSeasonalItem_xref]
(
	[player_id]			int		not null,
	[item_id]			int		not null,
	[date_collected]	datetime (7)	default(getdate())	not null,
	CONSTRAINT [PK_PlayerSeasonalItemXREF] PRIMARY KEY CLUSTERED ( [player_id], [item_id] )
)
GO