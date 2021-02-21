DELIMITER //
CREATE PROCEDURE concerts.insert_concerts()
BEGIN
	CREATE TEMPORARY TABLE concertsTable
	(
		id_			int auto_increment,
		date_		nvarchar (10),
		dow_		nvarchar (10),
		venue_		nvarchar (75),
		cost_		int,
		comment_	nvarchar (500)
	);

	INSERT INTO concertsTable
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
	( '20170917',	'Sunday', 'Wells Fargo Center', 105, '' ),
	( '20171113',	'Monday', 'Fillmore Theater', 49, 'Mem had to travel for work, Whitney couldn''t join.' );

	DECLARE id int = (SELECT TOP 1 id_ FROM concertsTable)
	DECLARE date datetime2 (7)
	DECLARE dow nvarchar (10)
	DECLARE venue_name nvarchar (75)
	DECLARE	venue_id int
	DECLARE cost int
	DECLARE comment nvarchar (500)

	WHILE id IS NOT NULL
	BEGIN
		SET date = CONVERT(datetime,(SELECT date_ FROM concertsTable WHERE id_ = id))
		SET dow = (SELECT dow_ FROM concertsTable WHERE id_ = id)
		SET venue_name = (SELECT venue_ FROM concertsTable WHERE id_ = id)
		SET venue_id = (SELECT venue_id FROM concerts.venues WHERE venue_name = venue_name)
		SET cost = (SELECT cost_ FROM concertsTable WHERE id_ = id)
		SET comment = (SELECT comment_ FROM concertsTable WHERE id_ = id)
		
		IF venue_id IS NULL 
		BEGIN
			PRINT 'Venue ' + venue_name + ' is invalid.'
			RETURN
		END;

		INSERT INTO concerts.concerts
		(
			ticket_price,
			concert_date,
			concert_day_of_week,
			venue_id,
			comment
		)
		VALUES
		(
			cost,
			date,
			dow,
			venue_id,
			comment
		);
		
		SET id = (SELECT MIN( id_ ) FROM concertsTable WHERE id_ > id);
	END
END //

