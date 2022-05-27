/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-05-27      Initial creation
 */

 CREATE OR REPLACE FUNCTION schema.UpdateExample
 (
    in_column_id_           integer,
    in_column_1_            type,
    in_column_2_            type,
    in_comment_             varchar (500),
    in_last_updated_date_   timestamp   -- pass in through C# to make sure we get UTC time, or else test UTC time with psql
 )
 RETURNS integer
 AS
 $$
    /******************************************************************/
    /*      Declarations                                              */
    /******************************************************************/
    DECLARE out_column_id_ integer := -1;

    /******************************************************************/
    /*      Logic                                                     */
    /******************************************************************/
    BEGIN
        
        /******************************************************************/
        /*      Error Handling                                            */
        /******************************************************************/
        IF NOT EXISTS (SELECT 1 FROM schema.table WHERE column_id = in_column_id_) THEN
            RAISE EXCEPTION '[schema].[UpdateExample]: A record in [schema].[table] with [column_id] = % does not exist.', in_column_id_;
            
        ELSE
        BEGIN
            /******************************************************************/
            /*      Body                                                      */
            /******************************************************************/

            /* Add data to common.Users table */
            UPDATE schema.table
            SET column_1 = in_column_1,
                column_2 = in_column_2,
                comment = in_comment,
                last_updated_date = in_last_updated_date_
            WHERE column_id = in_column_id_;

            out_column_id_ := in_column_id_;

        END;
        END IF;

        RETURN out_column_id_;

    END;
$$ LANGUAGE plpgsql;