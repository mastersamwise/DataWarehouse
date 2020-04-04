/*
 *		Date Updated	Description
 *		------------	-----------
 *		2017-08-13		Initial creation.
 */

CREATE PROCEDURE [concerts].[GetPersonSummary]
(
	@personFirstName	nvarchar (25),
	@personLastName		nvarchar (25)
)
AS

SELECT	[p].[person_first_name] + ' ' + [p].[person_last_name] AS [Person],
		STUFF((
			SELECT ', ' + [ib].[band_name] AS [text()]
			FROM [concerts].[Bands] [ib]
				INNER JOIN [concerts].[ConcertBand_xref] [icbx] ON [ib].[band_id] = [icbx].[band_id]
			WHERE [icbx].[concert_id] = [cpx].[concert_id]
			FOR XML PATH('')), 1, 2, ''
		) AS [Bands],
		STUFF((
			SELECT  ', ' + [ip].[person_first_name] + ' ' + [ip].[person_last_name] AS [text()]
			FROM [common].[People] [ip]
				INNER JOIN [concerts].[concertPerson_xref] [icpx] ON [ip].[person_id] = [icpx].[person_id]
			WHERE [icpx].[concert_id] = [cpx].[concert_id]
				AND [ip].[person_first_name] <> [p].[person_first_name]
				AND [ip].[person_last_name] <> [p].[person_last_name]
			FOR XML PATH('')), 1, 2, ''
		) AS [OtherPeople],
		[c].[concert_date] AS [ConcertDate]
FROM [common].[People] [p]
	INNER JOIN [concerts].[ConcertPerson_xref] [cpx] ON [p].[person_id] = [cpx].[person_id]
	INNER JOIN [concerts].[Concerts] [c] ON [cpx].[concert_id] = [c].[concert_id]
WHERE [p].[person_first_name] = @personFirstName
	AND [p].[person_last_name] = @personLastName
GO