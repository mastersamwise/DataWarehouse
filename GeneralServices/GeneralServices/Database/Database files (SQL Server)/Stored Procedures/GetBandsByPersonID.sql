/*
 *		Date Updated	Description
 *		------------	-----------
 *		2019-11-24		Initial creation.
 */

CREATE PROCEDURE [concerts].[GetBandsByPersonID]
(
	@personFirstName	varchar(25),
	@personLastName		varchar(50)
)
AS

DECLARE @personID int = (SELECT [person_id] 
							FROM [concerts].[People] 
							WHERE [person_first_name] = @personFirstName 
								AND [person_last_name] = @personLastName)

SELECT	DISTINCT([b].[band_name]),
		[p].[person_first_name],
		[p].[person_last_name],
		[c].[concert_date]
FROM [concerts].[People] [p]
	INNER JOIN [concerts].[ConcertPerson_xref] [cpx] ON [p].[person_id] = [cpx].[person_id]
	INNER JOIN [concerts].[ConcertBand_xref] [cbx] ON [cpx].[concert_id] = [cbx].[concert_id]
	INNER JOIN [concerts].[Bands] [b] ON [cbx].[band_id] = [b].[band_id]
	INNER JOIN [concerts].[Concerts] [c] ON [cpx].[concert_id] = [c].[concert_id]
WHERE [p].[person_id] = @personID