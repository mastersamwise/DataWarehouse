/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-03-26      Initial creation
 */

 CREATE PROCEDURE common.AddUser
 (
     IN in_user_name        varchar (50),
     IN in_username         varchar (25),
     IN in_pin              varchar (25),
     IN in_comment          varchar (500),
     IN in_created_date     timestamp,
     IN in_last_updated     timestamp,

     OUT out_user_id       integer
 )
 BEGIN
    DECLARE is_deleted_ boolean := false;
    DECLARE pin_last_updated_ timestamp := in_created_date;

    /* Add data to common.Users table */
    INSERT INTO common.Users
    ( 
        user_name, 
        username, 
        comment,
        created_date, 
        last_updated, 
        is_deleted 
    )
    VALUES
    ( 
        in_user_name, 
        in_username, 
        in_comment,
        in_created_date, 
        in_last_updated, 
        is_deleted 
    )
    RETURNING user_id INTO out_user_id;

    /* Add credentials to common.Credentials table */
    INSERT INTO common.Credentials
    (
        user_id,
        pin,
        pin_last_updated
    )
    VALUES
    (
        out_user_id,
        in_pin,
        pin_last_updated_
    );

    RETURN out_user_id;

 END;