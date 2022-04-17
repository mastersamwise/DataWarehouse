/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-04-16      Initial creation
 */

 CREATE OR REPLACE FUNCTION common.GetUserByID
 (
    in_user_id_    integer
 )
 RETURNS TABLE
 (
    out_user_id_            integer,
    out_user_name           varchar (50),
    out_username_           varchar (25),
    out_comment_            varchar (500),
    out_created_date_       timestamp,
    out_last_updated_       timestamp,
    out_is_deleted_         boolean
 )
 AS
 $$
    /******************************************************************/
    /*      Declarations                                              */
    /******************************************************************/


    /******************************************************************/
    /*      Logic                                                     */
    /******************************************************************/
    BEGIN

        /******************************************************************/
        /*      Error Handling                                            */
        /******************************************************************/
        IF NOT EXISTS (SELECT 1 FROM common.Users WHERE user_id = in_user_id_) THEN
            RAISE EXCEPTION '[common].[GetUserByID]: A record in [common].[Users] with [user_id] = % does not exist.', in_user_id_;

        ELSIF NOT EXISTS (SELECT 1 FROM common.Users WHERE user_id = in_user_id_ AND is_deleted = false) THEN
            RAISE EXCEPTION '[common].[GetUserByID]: A record in [common].[Users] with [user_id] = % has been soft deleted.', in_user_id_;
            
        ELSE
        BEGIN
            /******************************************************************/
            /*      Body                                                      */
            /******************************************************************/
            RETURN QUERY
            SELECT  u.user_id,
                    u.user_name,
                    u.username,
                    u.comment,
                    u.created_date,
                    u.last_updated,
                    u.is_deleted
            FROM common.Users u
            WHERE user_id = in_user_id_;
        END;
        END IF;

    END;
$$ LANGUAGE plpgsql;