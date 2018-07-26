/************************************************************************

	Inserting Setlists  

 ************************************************************************/
DECLARE @tempTable table
(
	id_				int identity(1, 1),
	date_			int,
	band_			nvarchar (100),
	song_title_		nvarchar (100),
	comment_		nvarchar (500)
)

INSERT INTO @tempTable
( date_, band_, song_title_, comment_ )
VALUES
-- https://www.setlist.fm/setlist/green-day/2009/wachovia-spectrum-philadelphia-pa-43d64fdf.html
( 20090721, 'Green Day', 'Song of the Century', 'Song played from a tape' ),
( 20090721, 'Green Day', '21st Century Breakdown', '' ),

-- https://www.setlist.fm/setlist/green-day/2010/susquehanna-bank-center-camden-nj-3d5bd2b.html
( 20100803, 'Green Day', 'Song of the Century', 'Song played from a tape' ),
( 20100803, 'Green Day', '21st Century Breakdown', '' )

INSERT INTO [concerts].[Songs]
( [song_title] )
VALUES
( )

INSERT INTO [concerts].[ConcertSong_xref]
( [concert_id], [band_id], [song_number], [song_id], [comment] )
VALUES
( )