/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-03-26      Initial creation
 */

 CREATE OR REPLACE FUNCTION common.ChangePin
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
    DECLARE now_ timestamp := CURRENT_TIMESTAMP;
    DECLARE out_success_ boolean := false;

    /******************************************************************/
    /*      Logic                                                     */
    /******************************************************************/
    BEGIN
        
        /******************************************************************/
        /*      Error Handling                                            */
        /******************************************************************/
        IF NOT EXISTS (SELECT 1 FROM common.Users WHERE user_id = in_user_id_) THEN
            RAISE EXCEPTION '[common].[ChangePin]: A record in [common].[Users] with [user_id] = % does not exist.', in_user_id_;
        
        ELSIF NOT EXISTS (SELECT 1 FROM common.Users WHERE user_id = in_user_id_) THEN
            RAISE EXCEPTION '[common].[ChangePin]: A record in [common].[Credentials] with [user_id] = % does not exist.', in_user_id_;
            
        ELSE
        BEGIN
            /******************************************************************/
            /*      Body                                                      */
            /******************************************************************/
            UPDATE common.Credentials
            SET     pin = in_new_pin_,
                    pin_last_updated = now_
            WHERE user_id = in_user_id_;

            out_success_ := true;

        END;
        END IF;

        RETURN out_success_;
    END;
$$ LANGUAGE plpgsql;
