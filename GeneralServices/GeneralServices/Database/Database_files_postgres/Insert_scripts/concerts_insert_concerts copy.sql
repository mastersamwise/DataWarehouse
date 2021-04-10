DO $$

	DECLARE 
			id_ integer := 1;
			date_ timestamp;
			dow_ varchar (10);
			venue_name_ varchar (75);
			venue_id_ integer;
			cost_ integer;
			comment_ varchar (500);

	BEGIN 
		CREATE TEMP TABLE concerts_table_
		(
			id_col_			serial primary key,
			date_col_		varchar (10),
			dow_col_		varchar (10),
			venue_col_		varchar (75),
			cost_col_		int,
			comment_col_	varchar (500)
		);
		
		INSERT INTO concerts_table_
		( date_col_, dow_col_, venue_col_, cost_col_, comment_col_ )
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


		LOOP
			EXIT WHEN id_ IS NULL;
			
			--id_ := 1;
			date_ := (SELECT date_col_ FROM concerts_table_ WHERE id_col_ = id_);
			dow_ := (SELECT dow_col_ FROM concerts_table_ WHERE id_col_ = id_);
			venue_name_ := (SELECT venue_col_ FROM concerts_table_ WHERE id_col_ = id_);
			venue_id_ := (SELECT venue_id FROM concerts.Venues WHERE venue_name = venue_name_);
			cost_ := (SELECT cost_col_ FROM concerts_table_ WHERE id_col_ = id_);
			comment_ := (SELECT comment_col_ FROM concerts_table_ WHERE id_col_ = id_);
			
			IF venue_id_ IS NULL THEN
				RAISE INFO 'Venue % is invalid', venue_name_;
			END IF;

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
				cost_,
				date_,
				dow_,
				venue_id_,
				comment_
			);	

			id_ := (SELECT MIN( id_col_ ) FROM concerts_table_ WHERE id_col_ > id_);
		END LOOP;
		--DELETE FROM concerts.ConcertBand_xref
END $$;

--DROP TABLE concerts_table_;
SELECT * FROM concerts.concerts;
--SELECT * from concerts_table_;

