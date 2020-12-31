/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2019-11-24      Initial creation.
 *      2020-04-03      Moved concerts.People to common.People
 *      2020-12-30      Updated to MySQL syntax
 */

DELIMITER //
CREATE PROCEDURE concerts.GetBandsByPersonName
(
    IN in_personFirstName     varchar(25),
    IN in_personLastName      varchar(50),
    
    OUT out_bandName           varchar(100),
    OUT out_personFirstName   varchar(25),
    OUT out_personLastName    varchar(25),
    OUT out_concertDate        datetime(6)
)
BEGIN
    DECLARE personID_ int;
    SET personID_ = (SELECT person_id 
						FROM common.People 
						WHERE person_first_name = in_personFirstName 
							AND person_last_name = in_personLastName);

    SELECT  DISTINCT(b.band_name)   AS bandName,
            p.person_first_name     AS personFirstName,
            p.person_last_name      AS personLastName,
            c.concert_date          AS concertDate
    FROM common.People p
        INNER JOIN concerts.ConcertPerson_xref cpx ON p.person_id = cpx.person_id
        INNER JOIN concerts.ConcertBand_xref cbx ON cpx.concert_id = cbx.concert_id
        INNER JOIN concerts.Bands b ON cbx.band_id = b.band_id
        INNER JOIN concerts.Concerts c ON cpx.concert_id = c.concert_id
    WHERE p.person_id = personID_;
END //