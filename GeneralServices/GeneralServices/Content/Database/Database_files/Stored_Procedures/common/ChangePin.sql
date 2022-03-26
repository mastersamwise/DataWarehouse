/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-03-26      Initial creation
 */

 CREATE PROCEDURE common.ChangePin
 (
     IN in_user_id  integer,
     IN in_new_pin  varchar (25),
 )
 BEGIN
    DECLARE now_ timestampz := SELCT NOW();

    UPDATE common.Credentials
    SET     pin = in_new_pin,
            pin_last_updated = now_;
    WHERE user_id = in_user_id;

 END;