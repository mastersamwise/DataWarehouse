/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-04-16      Initial creation
 */

 CREATE OR REPLACE FUNCTION common.GetAllActiveUsers
 (
    /* no input */
 )
 RETURNS TABLE
 (
    out_user_id_           integer,
    out_user_name_         varchar (50),
    out_username_          varchar (25),
    out_comment_           varchar (500),
    out_created_date_      timestamp,
    out_last_updated_      timestamp,
    out_is_deleted_        boolean
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
        RETURN QUERY
        SELECT  u.user_id,
                u.user_name,
                u.username,
                u.comment,
                u.created_date,
                u.last_updated,
                u.is_deleted
        FROM common.Users u
        WHERE u.is_deleted = false;

    END;
$$ LANGUAGE plpgsql;