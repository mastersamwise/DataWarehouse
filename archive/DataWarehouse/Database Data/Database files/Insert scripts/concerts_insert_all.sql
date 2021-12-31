
/************************************************************************

	Inserting People  

 ************************************************************************/
INSERT INTO [concerts].[People]
( [person_first_name], [person_last_name], [person_relationship] )
VALUES
('Nik', 'Bournelis', ''),
('Ian', 'Bournelis', ''),
('Andrew', 'Schock', ''),
('Sean', 'Stengel', ''),
('Stephen', 'Hausler', ''),
('Whitney', 'Weinstein', ''),
('Michael', 'Hains', ''),
('Chris', 'Wozunk', ''),
('Abby', '', 'Wozunk''s girlfriend'),
('Mike', 'LeCastre', ''),
('Anita', '', 'Mike LeCastre''s girlfriend'),
('Sean', 'Flynn', ''),
('Cathy', 'Kaing', ''),
('Veronika', 'Legobitova', ''),
('Kevin', 'Boensch', ''),
('Mike', 'Shinbrot', ''),
('Katie', 'Schock', ''),
('Monica', 'Lee', ''),
('Rob', 'Hausler', ''),
('Tevin', 'Hill', ''),
('Steve', 'DiPietro', ''),
('Chris', 'Seidl', ''),
('Jon', 'Bean', ''),
('Amanda', 'Ondash', ''),
('Andrew', 'Good', ''),
('Tim', 'Chua', ''),
('Mem', '', ''),
('Chrysan', 'Bournelis', ''),
('Jim', 'Bournelis', ''),
('Roy', '', 'Mike Shinbrot''s friend'),
('Sunil', 'Verma', ''),
('Alex', 'Abadiotakis', ''),
('Erica', 'Henn', ''),
('Nola', 'McAloon', ''),
('Steph', 'Kovacs', ''),
('Joey', 'Painter', ''),
('Mike', 'Batson', 'Steve DiPietro''s cousin'),
('Greta', 'Ertzgard', ''),
('Stephan', '', 'Veronika''s boyfriend'),
('Sean', 'Harrington', ''),
('Christine', 'Kantonides', ''),
('Ian', 'Kerrington', 'Whitney'' friend'),
('Duncan', '', 'Met through Ian and Whitney'),
('John', 'Sinis', 'Met through Ian and Whitney'),
('Tim', '', 'Duncan''s friend from childhood, Met through Ian and Whitney'),
('Will', '', 'Met through Ian and Whitney')


/************************************************************************

	Inserting Venues  

 ************************************************************************/
INSERT INTO [concerts].[Venues]
( [venue_name], [venue_city], [venue_state] )
VALUES 
( 'Wachovia Spectrum', 'Philadelphia', 'PA' ),
( 'Susquehanna Bank Center', 'Camden', 'NJ' ),
( 'Hershey Stadium', 'Hershey', 'PA' ),
( 'Bamboozle', 'Asbury Park', 'NJ' ),
( 'Theater of the Living Arts', 'Philadelphia', 'PA' ),
( 'Electric Factory', 'Philadelphia', 'PA' ),
( 'Chameleon Club', 'Lancaster', 'PA' ),
( 'Liacouras Center', 'Philadelphia', 'PA' ),
( 'Sands Bethlehem Center', 'Bethlehem', 'PA' ),
( 'Firefly', 'Dover', 'DE' ),
( 'Red Rocks Amphitheatre', 'Morrison', 'CO' ),
( 'Wells Fargo Center', 'Philadelphia', 'PA' ),
( 'Fiddler''s Green Amphitheatre', 'Englewood', 'CO' ),
( 'Tower Theater', 'Philadelphia', 'PA' ),
( 'BB&T Center', 'Camden', 'NJ' ),
( 'Citizen''s Bank Park', 'Philadelphia', 'PA' ),
( 'The Mann Center', 'Philadelphia', 'PA' ),
( 'Atlantic City Beach', 'Atlantic City', 'NJ' ),
( '1stBANK Center', 'Broomfield', 'CO' ),
( 'GIANT Center', 'Hershey', 'PA' ),
( 'Festival Pier Plaza', 'Philadelphia', 'PA' ),
( 'Fillmore Theater', 'Philadelphia', 'PA' )


/************************************************************************

	Inserting Bands  

 ************************************************************************/
INSERT INTO [concerts].[Bands]
( [band_name] )
VALUES
( 'Green Day' ),
( 'The Bravery' ),
( 'AFI' ),
( 'Blink-182' ),
( 'My Chemical Romance' ),
( 'Rise Against' ),
( 'A Day To Remember' ),
( 'Jimmy Eat World' ),
( 'All American Rejects' ),
( 'Motion City Soundtrack' ),
( 'Foo Fighters' ),
( 'Macklemore' ),
( 'Yellowcard' ),
( 'Sum 41' ),
( 'Goo Goo Dolls' ),
( 'Matchbox Twenty' ),
( 'Bruce Springsteen' ),
( 'Arctic Monkeys' ),
( 'Cheap Trick' ),
( 'Paul McCartney' ),
( 'Royal Blood' ),
( 'Marilyn Manson' ),
( 'Smashing Pumpkins' ),
( 'Hawthorne Heights' ),
( 'Dave Matthews Band' ),
( 'PANIC! At the Disco' ),
( 'Weezer' ),
( 'Andrew McMahon in the Wilderness' ),
( 'Modest Mouse' ),
( 'Brand New' ),
( 'Dog Party' ),
( 'Red Hot Chili Peppers' ),
( 'Against Me!' ),
( 'Tom Petty and the Heartbreakers' ),
( 'Joan Jett and the Blackhearts' ),
( 'Heart' ),
( 'Animal Collective' ),
( 'Foreigner' ),
( 'Gorillaz' ),
( 'Linkin Park' ),
( 'Fleet Foxes' ),
( 'Peter Frampton' ),
( 'Dave Matthews and Tim Reynolds' ),
( 'Boston' ),
( 'Arcade Fire' )


/************************************************************************

	Inserting Concerts  

 ************************************************************************/
DECLARE @concertsTable table
(
	id_			int identity(1,1),
	date_		nvarchar (10),
	dow_		nvarchar (10),
	venue_		nvarchar (75),
	cost_		int,
	comment_	nvarchar (500)
)

INSERT INTO @concertsTable
( date_, dow_, venue_, cost_, comment_ )
VALUES
( '20090721', 'Tuesday', 'Wachovia Spectrum', 30, '' ),
( '20100803', 'Tuesday', 'Susquehanna Bank Center', 45, '' ),
( '20110813', 'Saturday', 'Hershey Stadium', 40, '' ),
( '20110918', 'Saturday', 'Susquehanna Bank Center', 30, '' ),
( '20120204', 'Saturday', 'Susquehanna Bank Center', null, '' ),
( '20120519', 'Friday', 'Bamboozle',  92, '' ),
( '20121114',	'Tuesday', 'Theater of the Living Arts', null, '' ),
( '20121115',	'Wednesday', 'Electric Factory', null, '' ),
( '20121117',	'Saturday', 'Chameleon Club', 30, '' ),
( '20130403',	'Wednesday', 'Liacouras Center', 83, '' ),
( '20130811',	'Sunday', 'Susquehanna Bank Center', null, '' ),
( '20130912',	'Thursday', 'Sands Bethlehem Center', 35, '' ),
( '20140514',	'Wednesday', 'Hershey Stadium', 55, '' ),
( '20140619',	'Saturday', 'Firefly', 112, '' ),
( '20150616',	'Tuesday', 'Red Rocks Amphitheatre', null, 'Peter Frampton was sick, Cheap Trick played a double set.' ),
( '20150621',	'Sunday', 'Wells Fargo Center', 168, '' ),
( '20150706',	'Tuesday', 'Susquehanna Bank Center', 55, 'Dave had his broken leg.' ),
( '20150802',	'Sunday', 'Susquehanna Bank Center', 40, '' ),
( '20150817',	'Monday', 'Fiddler''s Green Amphitheatre', 60, '' ),
( '20160408',	'Friday', 'Tower Theater', 60, 'Whitney was in the hospital, so we didn''t go.' ),
( '20160611',	'Saturday', 'Electric Factory', 35, 'Their final tour.' ),
( '20160622',	'Thursday', 'Sands Bethlehem Center', 60, '' ),
( '20160624',	'Saturday', 'Susquehanna Bank Center', 45, '' ),
( '20160705',	'Tuesday', 'BB&T Center', 40, '' ),
( '20160712',	'Tuesday', 'Citizen''s Bank Park', 267, '' ),
( '20160716',	'Saturday', 'The Mann Center', 105, 'Whitney''s birthday gift.' ),
( '20160731',	'Sunday', 'BB&T Center', 60, 'Missed all but encore of Cheap Trick due to tailgating...' ),
( '20160812',	'Saturday', 'BB&T Center', 45, 'Whitney was sick, she stayed home.' ),
( '20160904',	'Monday', 'Atlantic City Beach', 35, 'Show was canceled due to hurricane.' ),
( '20160929',	'Thursday', 'Tower Theater', 63, '' ),
( '20170212',	'Sunday', 'Wells Fargo Center', 102, 'Chris Soukas was working the show! We got to see him too.' ),
( '20170405',	'Wednesday', '1stBANK Center', 70, '' ),
( '20170602',	'Friday', 'The Mann Center', 59, 'Whitney''s birthday gift'),
( '20170713',	'Thursday', 'Festival Pier Plaza', 189, '' ),
( '20170715',	'Saturday', 'GIANT Center', 62, '' ),
( '20170727',	'Thursday', 'BB&T Center', 60, '' ),
( '20170729',	'Saturday', 'Wells Fargo Center', 60, '' ),
( '20170730',	'Sunday', 'Hershey Stadium', 102, 'Canceled due to Chester Bennington''s suicide.' ),
( '20170731',	'Monday', 'The Mann Center', 100, '' ),
( '20170831',	'Thursday', 'BB&T Center', 90, '' ),
( '20170917',	'Sunday', 'Wells Fargo Center', 100, '' ),
( '20171113',	'Monday', 'Fillmore Theater', 49, '' )

DECLARE @id int = (SELECT TOP 1 id_ FROM @concertsTable)
DECLARE @date datetime2 (7)
DECLARE @dow nvarchar (10)
DECLARE @venue_name nvarchar (75)
DECLARE	@venue_id int
DECLARE @cost int
DECLARE @comment nvarchar (500)

WHILE @id IS NOT NULL
BEGIN
	SET @date = CONVERT(datetime2(7),(SELECT date_ FROM @concertsTable WHERE id_ = @id))
	SET @dow = (SELECT dow_ FROM @concertsTable WHERE id_ = @id)
	SET @venue_name = (SELECT venue_ FROM @concertsTable WHERE id_ = @id)
	SET @venue_id = (SELECT [venue_id] FROM [concerts].[venues] WHERE [venue_name] = @venue_name)
	SET @cost = (SELECT cost_ FROM @concertsTable WHERE id_ = @id)
	SET @comment = (SELECT comment_ FROM @concertsTable WHERE id_ = @id)
	
	IF @venue_id IS NULL 
	BEGIN
		PRINT 'Venue ' + @venue_name + ' is invalid.'
		RETURN
	END

	INSERT INTO [concerts].[concerts]
	(
		[ticket_price],
		[concert_date],
		[concert_day_of_week],
		[venue_id],
		[comment]
	)
	VALUES
	(
		@cost,
		@date,
		@dow,
		@venue_id,
		@comment
	)
	
	SET @id = (SELECT MIN( id_ ) FROM @concertsTable WHERE id_ > @id)
END
GO


/************************************************************************

	Inserting conert-person xref  

 ************************************************************************/
DECLARE @concertPerson_xref table
(
	id_			int identity (1,1),
	concert_id_	int,
	fn_			nvarchar (25),
	ln_			nvarchar (25)
)

INSERT INTO @concertPerson_xref
( concert_id_, fn_, ln_ )
VALUES
( 1, 'Ian', 'Bournelis' ),
( 1, 'Nik', 'Bournelis' ),
( 1, 'Andrew', 'Schock' ),
( 1, 'Sean', 'Stengel' ),

( 2, 'Ian', 'Bournelis' ),
( 2, 'Nik', 'Bournelis' ),
( 2, 'Andrew', 'Schock' ),
( 2, 'Chris', 'Wozunk' ),
( 2, 'Abby', '' ),

( 3, 'Ian', 'Bournelis' ),
( 3, 'Nik', 'Bournelis' ),
( 3, 'Stephen', 'Hausler' ),
( 3, 'Whitney', 'Weinstein' ),
( 3, 'Michael', 'Hains' ),

( 4, 'Ian', 'Bournelis' ),
( 4, 'Nik', 'Bournelis' ),
( 4, 'Stephen', 'Hausler' ),
( 4, 'Mike', 'LeCastre' ),
( 4, 'Anita', '' ),
( 4, 'Sean', 'Flynn' ),
( 4, 'Cathy', 'Kaing' ),

( 5, 'Ian', 'Bournelis' ),
( 5, 'Nik', 'Bournelis' ),
( 5, 'Stephen', 'Hausler' ),
( 5, 'Veronika', 'Legobitova' ),
( 5, 'Kevin', 'Boensch' ),

( 6, 'Ian', 'Bournelis' ),
( 6, 'Nik', 'Bournelis' ),
( 6, 'Stephen', 'Hausler' ),
( 6, 'Mike', 'Shinbrot' ),

( 7, 'Andrew', 'Schock' ),
( 7, 'Monica', 'Lee' ),
( 7, 'Katie', 'Schock' ),
( 7, 'Nik', 'Bournelis' ),

( 8, 'Ian', 'Bournelis' ),
( 8, 'Nik', 'Bournelis' ),
( 8, 'Stephen', 'Hausler' ),
( 8, 'Rob', 'Hausler' ),

( 9, 'Ian', 'Bournelis' ),
( 9, 'Nik', 'Bournelis' ),

( 10, 'Ian', 'Bournelis' ),
( 10, 'Nik', 'Bournelis' ),
( 10, 'Stephen', 'Hausler' ),
( 10, 'Tevin', 'Hill' ),
( 10, 'Steve', 'DiPietro' ),
( 10, 'Sean', 'Flynn' ),
( 10, 'Chris', 'Seidl' ),
( 10, 'Jon', 'Bean' ),
( 10, 'Amanda', 'Ondash' ),

( 11, 'Nik', 'Bournelis' ),
( 11, 'Whitney', 'Weinstein' ),
( 11, 'Andrew', 'Good' ),

( 12, 'Ian', 'Bournelis' ),
( 12, 'Nik', 'Bournelis' ),
( 12, 'Stephen', 'Hausler' ),
( 12, 'Whitney', 'Weinstein' ),
( 12, 'Andrew', 'Good' ),
( 12, 'Tim', 'Chua' ),

( 13, 'Ian', 'Bournelis' ),
( 13, 'Nik', 'Bournelis' ),
( 13, 'Chrysan', 'Bournelis' ),
( 13, 'Jim', 'Bournelis' ),

( 14, 'Ian', 'Bournelis' ),
( 14, 'Nik', 'Bournelis' ),
( 14, 'Mike', 'Shinbrot' ),
( 14, 'Roy', '' ),

( 15, 'Ian', 'Bournelis' ),
( 15, 'Nik', 'Bournelis' ),

( 16, 'Steve', 'DiPietro' ),
( 16, 'Nik', 'Bournelis' ),	

( 17, 'Ian', 'Bournelis' ),
( 17, 'Nik', 'Bournelis' ),
( 17, 'Sunil', 'Verma' ),
( 17, 'Stephen', 'Hausler' ),
( 17, 'Steve', 'DiPietro' ),
( 17, 'Mem', '' ),
( 17, 'Alex', 'Abadiotakis' ),
( 17, 'Erica', 'Henn' ),
( 17, 'Whitney', 'Weinstein' ),
( 17, 'Andrew', 'Good' ),
( 17, 'Chris', 'Seidl' ),
( 17, 'Nola', 'McAloon' ),
( 17, 'Sean', 'Flynn' ),
( 17, 'Steph', 'Kovacs' ), /* Foo Fighters Camden */

( 18, 'Nik', 'Bournelis' ), /* Marilyn Manson */
( 18, 'Whitney', 'Weinstein' ),
( 18, 'Andrew', 'Good' ),
( 18, 'Joey', 'Painter' ),

( 19, 'Nik', 'Bournelis' ),
( 19, 'Ian', 'Bournelis' ),
( 19, 'Sean', 'Harrington' ),

( 20, 'Nik', 'Bournelis' ),
( 20, 'Whitney', 'Weinstein' ),

( 21, 'Nik', 'Bournelis' ),
( 21, 'Whitney', 'Weinstein' ),

( 22, 'Nik', 'Bournelis' ),
( 22, 'Whitney', 'Weinstein' ),
( 22, 'Steve', 'DiPietro' ),

( 23, 'Nik', 'Bournelis' ),
( 23, 'Whitney', 'Weinstein' ),

( 24, 'Nik', 'Bournelis' ),
( 24, 'Whitney', 'Weinstein' ),
( 24, 'Steve', 'DiPietro' ),
( 24, 'Mike', 'Batson' ), -- steves cousin

( 25, 'Nik', 'Bournelis' ),
( 25, 'Steve', 'DiPietro' ), -- paul

( 26, 'Nik', 'Bournelis' ),
( 26, 'Whitney', 'Weinstein' ),

( 27, 'Nik', 'Bournelis' ),
( 27, 'Sean', 'Harrington' ),
( 27, 'Christine', 'Kantonides' ),

( 28, 'Nik', 'Bournelis' ),
( 28, 'Sunil', 'Verma' ),
( 28, 'Greta', 'Ertzgard' ),
( 28, 'Chris', 'Seidl' ),
( 28, 'Nola', 'McAloon' ),
( 28, 'Steve', 'DiPietro' ),
( 28, 'Mem', '' ),
( 28, 'Veronika', 'Legobitova' ),
( 28, 'Stephan', '' ),

( 29, 'Nik', 'Bournelis' ),
( 29, 'Whitney', 'Weinstein' ),
( 29, 'Steve', 'DiPietro' ), -- blink AC show

( 30, 'Nik', 'Bournelis' ),
( 30, 'Steve', 'DiPietro' ),
( 30, 'Sean', 'Harrington' ),
( 30, 'Christine', 'Kantonides' ), -- green day dog party

( 31, 'Nik', 'Bournelis' ),
( 31, 'Steve', 'DiPietro' ),  --- rhcp

( 32, 'Nik', 'Bournelis' ),
( 32, 'Ian', 'Bournelis' ),

( 33, 'Nik', 'Bournelis' ),
( 33, 'Whitney', 'Weinstein' ),

( 34, 'Nik', 'Bournelis' ),
( 34, 'Whitney', 'Weinstein' ),
( 34, 'Ian', 'Kerrington' ),
( 34, 'Duncan', '' ),
( 34, 'John', 'Sinis' ),
( 34, 'Tim', '' ),

( 35, 'Nik', 'Bournelis' ),
( 35, 'Steve', 'DiPietro' ),

( 36, 'Nik', 'Bournelis' ),
( 36, 'Steve', 'DiPietro' ),
( 36, 'Mike', 'Batson' ),

( 37, 'Nik', 'Bournelis' ),
( 37, 'Steve', 'DiPietro' ),
( 37, 'Mem', '' ),

( 38, 'Nik', 'Bournelis' ),
( 38, 'Steve', 'DiPietro' ),
( 38, 'Whitney', 'Weinstein' ),

( 39, 'Nik', 'Bournelis' ),
( 39, 'Whitney', 'Weinstein' ),
( 39, 'Ian', 'Kerrington' ),
( 39, 'John', 'Sinis' ),
( 39, 'Will', '' ),

( 40, 'Nik', 'Bournelis' ),
( 40, 'Steve', 'DiPietro' ),
( 40, 'Whitney', 'Weinstein' ),
( 40, 'Stephen', 'Hausler' ),
( 40, 'Veronika', 'Legobitova' ),
( 40, 'Stephan', '' ),

( 41, 'Nik', 'Bournelis' ),
( 41, 'Whitney', 'Weinstein' ),
( 41, 'Ian', 'Kerrington' ),

( 42, 'Nik', 'Bournelis' ),
( 42, 'Whitney', 'Weinstein' ),
( 42, 'Andrew', 'Schock' ),
( 42, 'Steve', 'DiPietro' )

DECLARE @id int = (SELECT TOP 1 id_ FROM @concertPerson_xref)
DECLARE @concert_id int
DECLARE @fn nvarchar (25)
DECLARE @ln nvarchar (25)

DECLARE @person_id int

WHILE @id IS NOT NULL
BEGIN
	SET @concert_id = (SELECT concert_id_ FROM @concertPerson_xref WHERE id_ = @id)
	SET @fn = (SELECT fn_ FROM @concertPerson_xref WHERE id_ = @id)
	SET @ln = (SELECT ln_ FROM @concertPerson_xref WHERE id_ = @id)
	
	IF @ln IS NULL OR @ln = ''
	BEGIN
		SET @person_id = (SELECT [person_id] FROM [concerts].[People] WHERE [person_first_name] = @fn AND ([person_last_name] = '' OR [person_last_name] IS NULL))
	END
	ELSE
	BEGIN
		SET @person_id = (SELECT [person_id] FROM [concerts].[People] WHERE [person_first_name] = @fn AND [person_last_name] = @ln)
	END

	IF @person_id IS NULL 
	BEGIN
		PRINT 'Person name ' + @fn + ' ' + @ln + ' is invalid.'
		RETURN
	END
	
	INSERT INTO [concerts].[ConcertPerson_xref]
	( [concert_id], [person_id] )
	VALUES
	( @concert_id, @person_id )

	SET @id = (SELECT MIN( id_ ) FROM @concertPerson_xref WHERE id_ > @id)
END
GO


/************************************************************************

	Inserting concert-band xref  

 ************************************************************************/
DECLARE @concertBand_xref table
(
	id_			int identity (1,1),
	concert_id_	int,
	band_name_	nvarchar (100)
)

INSERT INTO @concertBand_xref
( concert_id_, band_name_ )
VALUES
( 1, 'Green Day' ),
( 1, 'The Bravery' ),
( 2, 'Green Day' ),
( 2, 'AFI' ),
( 3, 'Blink-182' ),
( 3, 'My Chemical Romance' ), 
( 4, 'Blink-182' ),
( 4, 'My Chemical Romance' ),
( 5, 'Rise Against' ),
( 5, 'A Day To Remember' ),
( 6, 'Jimmy Eat World' ),
( 6, 'All American Rejects' ),
( 6, 'Motion City Soundtrack' ),
( 6, 'My Chemical Romance' ),
( 6, 'Foo Fighters' ),
( 7, 'Macklemore' ),
( 8, 'Yellowcard' ),
( 9, 'Sum 41' ),
( 10, 'Green Day' ),
( 11, 'Goo Goo Dolls' ),
( 11, 'Matchbox Twenty' ),
( 12, 'Blink-182' ),
( 13, 'Bruce Springsteen' ),
( 14, 'Foo Fighters' ),
( 14, 'Arctic Monkeys' ),
( 15, 'Cheap Trick' ),
( 15, 'Peter Frampton' ),
( 16, 'Paul McCartney' ),
( 17, 'Foo Fighters' ),
( 17, 'Royal Blood' ),
( 18, 'Marilyn Manson' ),
( 18, 'Smashing Pumpkins' ),
( 19, 'Foo Fighters' ),
( 19, 'Royal Blood' ),
( 20, 'Smashing Pumpkins' ),
( 21, 'Motion City Soundtrack' ),
( 22, 'Blink-182' ),
( 22, 'Hawthorne Heights' ),
( 23, 'Dave Matthews Band' ),
( 24, 'PANIC! At The Disco' ),
( 24, 'Weezer' ),
( 24, 'Andrew McMahon in the Wilderness' ),
( 25, 'Paul McCartney' ),
( 26, 'Modest Mouse' ),
( 26, 'Brand New' ),
( 27, 'Joan Jett and the Blackhearts' ),
( 27, 'Cheap Trick' ),
( 27, 'Heart' ),
( 28, 'Blink-182' ),
( 28, 'A Day To Remember' ),
( 29, 'Blink-182' ),
( 29, 'A Day To Remember' ),
( 30, 'Green Day' ),
( 30, 'Dog Party' ),
( 31, 'Red Hot Chili Peppers' ),
( 32, 'Green Day' ),
( 32, 'Against Me!' ),
( 33, 'Dave Matthews and Tim Reynolds' ),
( 34, 'Gorillaz' ),
( 35, 'Cheap Trick' ),
( 35, 'Foreigner' ),
( 36, 'Boston' ),
( 36, 'Joan Jett and the Blackhearts' ),
( 37, 'Tom Petty and the Heartbreakers' ),
( 38, 'Linkin Park' ),
( 38, 'Blink-182' ),
( 39, 'Animal Collective' ),
( 39, 'Fleet Foxes' ),
( 40, 'Green Day' ),
( 41, 'Arcade Fire' ),
( 42, 'Macklemore' )

DECLARE @id int = (SELECT TOP 1 id_ FROM @concertBand_xref)
DECLARE @concert_id int
DECLARE @band_name nvarchar (100)

DECLARE @band_id int

WHILE @id IS NOT NULL
BEGIN
	SET @concert_id = (SELECT concert_id_ FROM @concertBand_xref WHERE id_ = @id)
	SET @band_name = (SELECT band_name_ FROM @concertBand_xref WHERE id_ = @id)

	SET @band_id = (SELECT [band_id] FROM [concerts].[Bands] WHERE [band_name] = @band_name)

	IF @band_id IS NULL 
	BEGIN
		PRINT 'Band name ' + @band_name + ' is invalid.'
		RETURN
	END
	
	INSERT INTO [concerts].[ConcertBand_xref]
	( [concert_id], [band_id] )
	VALUES
	( @concert_id, @band_id )

	SET @id = (SELECT MIN( id_ ) FROM @concertBand_xref WHERE id_ > @id)
END
GO