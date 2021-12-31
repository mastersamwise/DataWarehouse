/*
 *		Date Updated	Description
 *		------------	-----------
 *		2017-08-13		Initial creation.
 */

CREATE PROCEDURE lxa.GetMemberContactInfo
(
	@memberID	int
)
AS
/* this stored procedure needs updated to reflect table structure */
SELECT	m.member_id AS memberID,
		m.member_first_name AS memberFirstName,
		m.member_last_name AS memberLastName,
		c.phone_number AS phoneNumber,
		c.email AS email,
		c.mailing_street_address AS streetAddress,
		c.mailing_county AS county,
		c.mailing_state AS state,
		c.mailing_zip AS zipCode,
		c.mailing_country AS country,
		c.comment AS comment
FROM lxa.Members m
	INNER JOIN lxa.MemberContactInformation c ON m.member_id = c.member_id
WHERE m.member_id = @memberID
