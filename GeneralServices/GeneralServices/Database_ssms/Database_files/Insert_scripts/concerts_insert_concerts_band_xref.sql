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
--DELETE FROM [concerts].[ConcertBand_xref]



