/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-03-26      Initial creation
 */

 CREATE OR REPLACE FUNCTION schema.AddExample
 (
    in_column_1_   type
 )
 RETURNS integer
 AS
 $$
    /******************************************************************/
    /*      Declarations                                              */
    /******************************************************************/
    DECLARE out_id_ integer;

    /******************************************************************/
    /*      Logic                                                     */
    /******************************************************************/
    BEGIN
        
        /******************************************************************/
        /*      Error Handling                                            */
        /******************************************************************/
        IF EXISTS (SELECT 1 FROM schema.table WHERE column_1 = in_column_1_) THEN
            RAISE EXCEPTION '[schema].[AddExample]: A record in [schema].[table] with [column_1] = % already exists.', in_column_1_;
            
        ELSE
        BEGIN
            /******************************************************************/
            /*      Body                                                      */
            /******************************************************************/

            /* Add data to common.Users table */
            INSERT INTO schema.table
            ( 
                column_1
            )
            VALUES
            ( 
                in_column_1_ 
            )
            RETURNING id INTO out_id_;

            RETURN out_id_;
        END;
        END IF;

    END;
$$ LANGUAGE plpgsql;