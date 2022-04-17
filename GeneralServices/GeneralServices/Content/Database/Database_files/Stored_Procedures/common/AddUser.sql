/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-03-26      Initial creation
 */

 CREATE OR REPLACE FUNCTION common.AddUser
 (
    in_user_name_       varchar (50),
    in_username_        varchar (25),
    in_pin_             varchar (25),
    in_comment_         varchar (500),
    in_created_date_    timestamp   -- pass in through C# to make sure we get UTC time, or else test UTC time with psql
 )
 RETURNS integer
 AS
 $$
    /******************************************************************/
    /*      Declarations                                              */
    /******************************************************************/
    DECLARE is_deleted_ boolean := false;
    DECLARE pin_last_updated_ timestamp := in_created_date_;
    DECLARE out_user_id_ integer := -1;

    /******************************************************************/
    /*      Logic                                                     */
    /******************************************************************/
    BEGIN
        
        /******************************************************************/
        /*      Error Handling                                            */
        /******************************************************************/
        IF EXISTS (SELECT 1 FROM common.Users WHERE username = in_username_) THEN
            RAISE EXCEPTION '[common].[AddUser]: A record in [common].[Users] with [username] = % already exists.', in_username_;

        ELSE
        BEGIN
            /******************************************************************/
            /*      Body                                                      */
            /******************************************************************/

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
                in_user_name_, 
                in_username_, 
                in_comment_,
                in_created_date_, 
                in_created_date_, 
                is_deleted_ 
            )
            RETURNING user_id INTO out_user_id_;

            /* Add credentials to common.Credentials table */
            INSERT INTO common.Credentials
            (
                user_id,
                pin,
                pin_last_updated
            )
            VALUES
            (
                out_user_id_,
                in_pin_,
                pin_last_updated_
            );

            RETURN out_user_id_;
        END;
        END IF;

    END;
$$ LANGUAGE plpgsql;