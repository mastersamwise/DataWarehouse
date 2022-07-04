/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-07-03      Initial creation
 */

 CREATE OR REPLACE FUNCTION finances.DeleteConfirmationRecord
 (
    in_conf_record_id_      integer
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
        IF NOT EXISTS (SELECT 1 FROM finances.ConfirmationRecords WHERE confirmation_record_id = in_conf_record_id_) THEN
            RAISE EXCEPTION '[finances].[AddConfirmationRecord]: A record in [finances].[ConfirmationRecords] with [confirmation_record_id] = % does not exist.', in_conf_record_id_;
            
        ELSE
        BEGIN
            /******************************************************************/
            /*      Body                                                      */
            /******************************************************************/

            /* Rather than a hard delete, just flip the "is_deleted" flag to true */
            UPDATE finances.ConfirmationRecords
            SET is_deleted = true
            WHERE confirmation_record_id = in_conf_record_id_;

            out_success_ := true;

        END;
        END IF;

        RETURN out_success_;
    END;
$$ LANGUAGE plpgsql;