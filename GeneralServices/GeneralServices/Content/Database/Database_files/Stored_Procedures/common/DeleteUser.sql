/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-03-26      Initial creation
 */

 CREATE OR REPLACE FUNCTION common.DeleteUser
 (
    in_user_id_  integer
 )
 RETURNS boolean
 AS
 $$
    /******************************************************************/
    /*      Declarations                                              */
    /******************************************************************/
    DECLARE out_success_ boolean := false;

    /******************************************************************/
    /*      Logic                                                     */
    /******************************************************************/
    BEGIN

        /******************************************************************/
        /*      Error Handling                                            */
        /******************************************************************/
        IF NOT EXISTS (SELECT 1 FROM common.Users WHERE user_id = in_user_id_) THEN
            RAISE EXCEPTION '[common].[DeleteUser]: A record in [common].[Users] with [user_id] = % does not exist.', in_user_id;
            
        ELSE
        BEGIN
            /******************************************************************/
            /*      Body                                                      */
            /******************************************************************/

            /* Rather than a hard delete, just flip the "is_deleted" flag to true */
            UPDATE common.Users
            SET is_deleted = true
            WHERE user_id = in_user_id_;

            out_success_ := true;

        END;
        END IF;

        RETURN out_success_;

    END;
$$ LANGUAGE plpgsql;