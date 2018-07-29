/************************************************************************

	Inserting Setlists  

 ************************************************************************/
DECLARE @tempTable table
(
	id_				int identity(1, 1),
	date_			int,
	band_			nvarchar (100),
	song_title_		nvarchar (100),
	song_number_	int,
	encore_			int,
	comment_		nvarchar (500)
)

INSERT INTO @tempTable
( date_, band_, song_title_, comment_ )
VALUES
-- https://www.setlist.fm/setlist/green-day/2009/wachovia-spectrum-philadelphia-pa-43d64fdf.html
( 20090721, 'Green Day', 'Song of the Century', 0, 0, 'Song played from a tape' ),
( 20090721, 'Green Day', '21st Century Breakdown', 1, 0, '' ),
( 20090721, 'Green Day', 'Know Your Enemy', 2, 0, '' ),
( 20090721, 'Green Day', 'East Jesus Nowhere', 3, 0, '' ),
( 20090721, 'Green Day', 'Holiday', 4, 0, '' ),
( 20090721, 'Green Day', 'The Static Age', 5, 0, '' ),
( 20090721, 'Green Day', 'Before the Lobotomy', 6, 0, '' ),
( 20090721, 'Green Day', 'Are We the Waiting', 7, 0, '' ),
( 20090721, 'Green Day', 'St. Jimmy', 8, 0, '' ),
( 20090721, 'Green Day', 'Boulevard of Broken Dreams', 9, 0, '' ),
( 20090721, 'Green Day', 'Hitchin'' a Ride', 10, 0, '' ),
( 20090721, 'Green Day', '2000 Light Years Away', 11, 0, '' ),
( 20090721, 'Green Day', 'Welcome to Paradise', 12, 0, '' ),
( 20090721, 'Green Day', 'Brain Stew', 13, 0, '' ),
( 20090721, 'Green Day', 'Jaded', 14, 0, '' ),
( 20090721, 'Green Day', 'Longview', 15, 0, '' ),
( 20090721, 'Green Day', 'Basket Case', 16, 0, '' ),
( 20090721, 'Green Day', 'She', 17, 0, '' ),
( 20090721, 'Green Day', 'King for a Day', 18, 0, '' ),
( 20090721, 'Green Day', 'Shout / Earth Angel / I''ll Be There / Stand by Me', 19, 0, '' ),
( 20090721, 'Green Day', '21 Guns', 20, 0, '' ),
( 20090721, 'Green Day', 'American Eulogy', 21, 0, '' ),
( 20090721, 'Green Day', 'American Idiot', 22, 1, '' ),
( 20090721, 'Green Day', 'Jesus of Suburbia', 23, 1, 'Audience member came up to play guitar until "Dearly Beloved", then he sang "Dearly Beloved"' ),
( 20090721, 'Green Day', 'Minority', 24, 1, '' ),
( 20090721, 'Green Day', 'Words I Might Have Ate', 25, 2, 'Acoustic, partial' ),
( 20090721, 'Green Day', 'Give Me Novacaine', 26, 2, 'Acoustic, partial' ),
( 20090721, 'Green Day', 'Good Riddance (Time of Your Life)', 27, 2, '' ),

-- https://www.setlist.fm/setlist/green-day/2010/susquehanna-bank-center-camden-nj-3d5bd2b.html
( 20100803, 'Green Day', 'Song of the Century', 0, 0, 'Song played from a tape' ),
( 20100803, 'Green Day', '21st Century Breakdown', 1, 0, '' ),
( 20100803, 'Green Day', 'Know Your Enemy', 2, 0, '' ),
( 20100803, 'Green Day', 'East Jesus Nowhere', 3, 0, '' ),
( 20100803, 'Green Day', 'Holiday', 4, 0, '' ),
( 20100803, 'Green Day', 'Viva la Gloria!', 5, 0, '' ),
( 20100803, 'Green Day', 'Give Me Novacaine', 6, 0, '' ),
( 20100803, 'Green Day', 'Are We the Waiting', 7, 0, '' ),
( 20100803, 'Green Day', 'St. Jimmy', 8, 0, '' ),
( 20100803, 'Green Day', 'Boulevard of Broken Dreams', 9, 0, '' ),
( 20100803, 'Green Day', 'Nice Guys Finish Last', 10, 0, '' ),
( 20100803, 'Green Day', 'Burnout', 11, 0, '' ),
( 20100803, 'Green Day', 'Paper Lanterns', 12, 0, 'Half with band' ),
( 20100803, 'Green Day', '2000 Light Years Away', 13, 0, 'Half with band. Billie Joe invited crowd on stage' ),
( 20100803, 'Green Day', 'Hitchin'' a Ride', 41, 0, 'Billie Joe stopped the song to make sure a crowd surfer was alright' ),
( 20100803, 'Green Day', 'Welcome to Paradise', 15, 0, '' ),
( 20100803, 'Green Day', 'When I Come Around', 16, 0, '' ),
( 20100803, 'Green Day', 'Master of Puppets / Iron Man / Sweet Child o'' Mine / Highway to Hell', 17, 0, '' ),
( 20100803, 'Green Day', 'Brain Stew', 18, 0, '' ),
( 20100803, 'Green Day', 'Jaded', 19, 0, '' ),
( 20100803, 'Green Day', 'Longview', 20, 0, '' ),
( 20100803, 'Green Day', 'Basket Case', 21, 0, '' ),
( 20100803, 'Green Day', 'She', 22, 0, '' ),
( 20100803, 'Green Day', 'King for a Day', 23, 0, '' ),
( 20100803, 'Green Day', 'Shout / Stand by Me / (I Can''t Get No) Satisfaction / Hey Jude', 24, 0, '' ),
( 20100803, 'Green Day', 'Extraordinary Girl', 25, 0, 'Billie Joe only, acoustic, partial' ),
( 20100803, 'Green Day', '21 Guns', 26, 0, '' ),
( 20100803, 'Green Day', 'Minority', 27, 0, '' ),
( 20100803, 'Green Day', 'American Idiot', 28, 1, '' ),
( 20100803, 'Green Day', 'Jesus of Suburbia', 29, 1, '' ),
( 20100803, 'Green Day', 'When It''s Time', 30, 2, '' ),
( 20100803, 'Green Day', 'Wake Me Up When September Ends', 31, 2, 'First half acoustic with only Billie Joe' ),
( 20100803, 'Green Day', 'Good Riddance (Time of Your Life)', 32, 2, 'Wrapping up with "Wake Me Up When September Ends" ending' ),

-- https://www.setlist.fm/setlist/my-chemical-romance/2011/hersheypark-stadium-hershey-pa-53d083dd.html
( 20110813, 'My Chemical Romance', 'House of Wolves', 1, 0, '' ),
( 20110813, 'My Chemical Romance', 'Give ''Em Hell, Kid', 2, 0, '' ),
( 20110813, 'My Chemical Romance', 'Planetary (GO!)', 3, 0, '' ),
( 20110813, 'My Chemical Romance', 'Helena', 4, 0, '' ),
( 20110813, 'My Chemical Romance', 'The Kids From Yesterday', 5, 0, '' ),
( 20110813, 'My Chemical Romance', 'Welcome to the Black Parade', 6, 0, '' ),
( 20110813, 'My Chemical Romance', 'DESTROYA', 7, 0, '' ),
( 20110813, 'My Chemical Romance', 'Mama', 8, 0, '' ),
( 20110813, 'My Chemical Romance', 'Teenagers', 9, 0, '' ),
( 20110813, 'My Chemical Romance', 'I''m Not Okay (I Promise)', 10, 0, '' ),
( 20110813, 'My Chemical Romance', 'Famous Last Words', 11, 0, '' ),

-- https://www.setlist.fm/setlist/blink182/2011/hersheypark-stadium-hershey-pa-4bd083de.html
( 20110813, 'Blink-182', 'Feeling This', 1, 0, '' ),
( 20110813, 'Blink-182', 'Up All Night', 2, 0, '' ),
( 20110813, 'Blink-182', 'The Rock Show', 3, 0, '' ),
( 20110813, 'Blink-182', 'What''s My Age Again?', 4, 0, '' ),
( 20110813, 'Blink-182', 'Down', 5, 0, '' ),
( 20110813, 'Blink-182', 'I Miss You', 6, 0, '' ),
( 20110813, 'Blink-182', 'Stay Together for the Kids', 7, 0, '' ),
( 20110813, 'Blink-182', 'Dumpweed', 8, 0, '' ),
( 20110813, 'Blink-182', 'Blow Job', 9, 0, '' ),
( 20110813, 'Blink-182', 'Always', 10, 0, '' ),
( 20110813, 'Blink-182', 'Violence', 11, 0, '' ),
( 20110813, 'Blink-182', 'After Midnight', 12, 0, '' ),
( 20110813, 'Blink-182', 'Happy Holidays, You Bastard', 13, 0, 'First time since 2004' ),
( 20110813, 'Blink-182', 'First Date', 14, 0, '' ),
( 20110813, 'Blink-182', 'Heart''s All Gone', 15, 0, '' ),
( 20110813, 'Blink-182', 'Man Overboard', 16, 0, '' ),
( 20110813, 'Blink-182', 'Ghost on the Dancefloor', 17, 0, '' ),
( 20110813, 'Blink-182', 'All the Small Things', 18, 0, '' ),
( 20110813, 'Blink-182', 'Josie', 19, 0, '' ),
( 20110813, 'Blink-182', 'Drum Solo', 20, 1, 'Travis played a drum solo' ),
( 20110813, 'Blink-182', 'Carousel', 21, 1, '' ),
( 20110813, 'Blink-182', 'Dammit', 22, 1, '' ),
( 20110813, 'Blink-182', 'Family Reunion', 23, 1, '' ),

-- https://www.setlist.fm/setlist/my-chemical-romance/2011/susquehanna-bank-center-camden-nj-5bd0276c.html
( 20110917, 'My Chemical Romance', 'Na Na Na (Na Na Na Na Na Na Na Na Na)', 1, 0, '' ),
( 20110917, 'My Chemical Romance', 'I''m Not Okay (I Promise)', 2, 0, '' ),
( 20110917, 'My Chemical Romance', 'Planetary (GO!)', 3, 0, '' ),
( 20110917, 'My Chemical Romance', 'Mama', 4, 0, '' ),
( 20110917, 'My Chemical Romance', 'Helena', 5, 0, '' ),
( 20110917, 'My Chemical Romance', 'The Kids From Yesterday', 6, 0, '' ),
( 20110917, 'My Chemical Romance', 'Teenagers', 7, 0, '' ),
( 20110917, 'My Chemical Romance', 'Give ''Em Hell, Kid', 8, 0, '' ),
( 20110917, 'My Chemical Romance', 'The Only Hope for Me Is You', 9, 0, '' ),
( 20110917, 'My Chemical Romance', 'S/C/A/R/E/C/R/O/W', 10, 0, '' ),
( 20110917, 'My Chemical Romance', 'Welcome to the Black Parade', 11, 0, '' ),
( 20110917, 'My Chemical Romance', 'Cancer', 12, 0, '' ),

-- https://www.setlist.fm/setlist/blink182/2011/susquehanna-bank-center-camden-nj-4bd0276e.html
( 20110917, 'Blink-182', 'Feeling This', 1, 0, '' ),
( 20110917, 'Blink-182', 'Up All Night', 2, 0, '' ),
( 20110917, 'Blink-182', 'The Rock Show', 3, 0, '' ),
( 20110917, 'Blink-182', 'What''s My Age Again?', 4, 0, '' ),
( 20110917, 'Blink-182', 'Down', 5, 0, '' ),
( 20110917, 'Blink-182', 'I Miss You', 6, 0, '' ),
( 20110917, 'Blink-182', 'Stay Together for the Kids', 7, 0, '' ),
( 20110917, 'Blink-182', 'Dumpweed', 8, 0, '' ),
( 20110917, 'Blink-182', 'Always', 9, 0, '' ),
( 20110917, 'Blink-182', 'Violence', 10, 0, '' ),
( 20110917, 'Blink-182', 'After Midnight', 11, 0, '' ),
( 20110917, 'Blink-182', 'First Date', 12, 0, '' ),
( 20110917, 'Blink-182', 'Fuck a Dog', 13, 0, '' ),
( 20110917, 'Blink-182', 'Heart''s All Gone', 14, 0, '' ),
( 20110917, 'Blink-182', 'Man Overboard', 15, 0, '' ),
( 20110917, 'Blink-182', 'Ghost on the Dancefloor', 16, 0, '' ),
( 20110917, 'Blink-182', 'Happy Holidays, You Bastard', 17, 0, '' ),
( 20110917, 'Blink-182', 'All the Small Things', 18, 0, '' ),
( 20110917, 'Blink-182', 'Josie', 19, 0, '' ),
( 20110917, 'Blink-182', 'Drum Solo', 20, 1, 'Travis played a drum solo after Bun B was on stage' ),
( 20110917, 'Blink-182', 'Carousel', 21, 1, '' ),
( 20110917, 'Blink-182', 'Dammit', 22, 1, '' ),
( 20110917, 'Blink-182', 'Family Reunion', 23, 1, '' ),

-- https://www.setlist.fm/setlist/a-day-to-remember/2012/susquehanna-bank-center-camden-nj-13deaded.html
( 20120204, 'A Day to Remember', 'The Downfall of Us All', 1, 0, '' ),
( 20120204, 'A Day to Remember', 'A Shot in the Dark', 2, 0, '' ),
( 20120204, 'A Day to Remember', 'I''m Made of Wax, Larry, What Are You Made Of?', 3, 0, '' ),
( 20120204, 'A Day to Remember', 'My Life for Hire', 4, 0, '' ),
( 20120204, 'A Day to Remember', 'All Signs Point to Lauderdale', 5, 0, '' ),
( 20120204, 'A Day to Remember', '2nd Sucks', 6, 0, '' ),
( 20120204, 'A Day to Remember', 'You Be Tails, I''ll Be Sonic', 7, 0, '' ),
( 20120204, 'A Day to Remember', 'You Should Have Killed Me When You Had the Chance', 8, 0, '' ),
( 20120204, 'A Day to Remember', 'Homesick', 9, 0, '' ),
( 20120204, 'A Day to Remember', 'Better Off This Way', 10, 0, '' ),
( 20120204, 'A Day to Remember', 'Have Faith in Me', 11, 0, '' ),
( 20120204, 'A Day to Remember', 'All I Want', 12, 0, '' ),
( 20120204, 'A Day to Remember', 'The Plot to Bomb the Pan handle', 13, 0, '' ),



INSERT INTO [concerts].[Songs]
( [song_title] )
VALUES
( )

INSERT INTO [concerts].[ConcertSong_xref]
( [concert_id], [band_id], [song_number], [song_id], [comment] )
VALUES
( )