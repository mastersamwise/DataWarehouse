/*
 *		Date Updated	Description
 *		------------	-----------
 *		2017-08-13		Initial creation.
 *		2020-12-30		Updated to MySQL syntax
 */

DELIMITER //
CREATE PROCEDURE concerts.GetPersonSummary
(
	IN in_personFirstName		nvarchar (25),
	IN in_personLastName		nvarchar (25),
    
    OUT out_person				nvarchar(100),
    OUT out_bands				text,
    OUT out_otherPeople			text,
    OUT out_concertDate			datetime(6)
)
BEGIN
	SELECT	p.person_first_name + ' ' + p.person_last_name AS person,
			INSERT((
				SELECT ', ' + ib.band_name
				FROM concerts.Bands ib
					INNER JOIN concerts.ConcertBand_xref icbx ON ib.band_id = icbx.band_id
				WHERE icbx.concert_id = cpx.concert_id
				), 1, 2, ''
			) AS bands,
			INSERT((
				SELECT  ', ' + ip.person_first_name + ' ' + ip.person_last_name
				FROM common.People ip
					INNER JOIN concerts.concertPerson_xref icpx ON ip.person_id = icpx.person_id
				WHERE icpx.concert_id = cpx.concert_id
					AND ip.person_first_name <> p.person_first_name
					AND ip.person_last_name <> p.person_last_name
				), 1, 2, ''
			) AS other_people,
			c.concert_date AS concertDate
	FROM common.People p
		INNER JOIN concerts.ConcertPerson_xref cpx ON p.person_id = cpx.person_id
		INNER JOIN concerts.Concerts c ON cpx.concert_id = c.concert_id
	WHERE p.person_first_name = in_personFirstName
		AND p.person_last_name = in_personLastName;
END //