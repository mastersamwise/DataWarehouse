/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-03-26      Initial creation
 */

 CREATE OR REPLACE FUNCTION schema.DeleteExample
 (
    in_column_1  type
 )
 RETURNS boolean
 AS
 $$
    /******************************************************************/
    /*      Declarations                                              */
    /******************************************************************/
    DECLARE out_success_ := false;

    /******************************************************************/
    /*      Logic                                                     */
    /******************************************************************/
    BEGIN

        /******************************************************************/
        /*      Error Handling                                            */
        /******************************************************************/
        IF NOT EXISTS (SELECT 1 FROM schema.table WHERE user_id = in_user_id__) THEN
            RAISE EXCEPTION '[schema].[DeleteExample]: A record in [schema].[table] with [column_1] = % does not exist.', in_column_1;
            
        ELSE
        BEGIN
            /******************************************************************/
            /*      Body                                                      */
            /******************************************************************/

            /* Rather than a hard delete, just flip the "is_deleted" flag to true */
            UPDATE schema.table
            SET is_deleted = true
            WHERE column_1 = in_column_1;

            out_success_ := true;

        END;
        END IF;

        RETURN out_success_;
    END;
$$ LANGUAGE plpgsql;