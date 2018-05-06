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
( 41, 'Grace', '' ),
( 41, 'Eric', '' ),
( 41, 'Dave', '' ),
( 41, 'Anna', '' ),
( 41, 'John', 'Sinis' ),

( 42, 'Nik', 'Bournelis' ),
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
--DELETE FROM [concerts].[ConcertPerson_xref]



