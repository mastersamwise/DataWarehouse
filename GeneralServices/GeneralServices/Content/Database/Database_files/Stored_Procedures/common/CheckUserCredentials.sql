/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-04-16      Initial creation
 */

 CREATE OR REPLACE FUNCTION common.CheckUserCredentials
 (
    in_user_id_     integer,
    in_new_pin_     varchar (25)
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
            RAISE EXCEPTION '[common].[CheckUserCredentials]: A record in [common].[Users] with [user_id] = % does not exist.', in_user_id_;

        ELSIF NOT EXISTS (SELECT 1 FROM common.Users WHERE user_id = in_user_id_ AND is_deleted = false) THEN
            RAISE EXCEPTION '[common].[CheckUserCredentials]: A record in [common].[Users] with [user_id] = % has been soft deleted.', in_user_id_;
        
        ELSIF NOT EXISTS (SELECT 1 FROM common.Credentials WHERE user_id = in_user_id_) THEN
            RAISE EXCEPTION '[common].[CheckUserCredentials]: A record in [common].[Credentials] with [user_id] = % does not exist.', in_user_id_;

        ELSIF NOT EXISTS (SELECT 1 FROM common.Credentials WHERE user_id = in_user_id_ AND pin = in_new_pin_) THEN
            RAISE EXCEPTION '[common].[CheckUserCredentials]: Supplied pin is incorrect.';
            
        ELSE
        BEGIN
            /******************************************************************/
            /*      Body                                                      */
            /******************************************************************/

            out_success_ := true;

        END;
        END IF;

        RETURN out_success_;
    END;
$$ LANGUAGE plpgsql;
