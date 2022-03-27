/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-03-26      Initial creation
 */

 CREATE OR REPLACE FUNCTION schema.GetByValueExample
 (
    in_column_value_    type
 )
 RETURNS TABLE
 (
    out_column_1_          type,
    out_column_2_          type,
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

        /******************************************************************/
        /*      Error Handling                                            */
        /******************************************************************/
        IF NOT EXISTS (SELECT 1 FROM schema.table WHERE user_id = in_user_id__) THEN
            RAISE EXCEPTION '[schema].[GetByValueExample]: A record in [schema].[table] with [column_1] = % does not exist.', in_column_value_;
            
        ELSE
        BEGIN
            /******************************************************************/
            /*      Body                                                      */
            /******************************************************************/
            RETURN QUERY
            SELECT  t.column_1,
                    t.columnn_2,
                    t.comment,
                    t.created_date,
                    t.last_updated,
                    t.is_deleted
            FROM schema.table t
            WHERE column_1 = in_column_value_;
        END;
        END IF;

    END;
$$ LANGUAGE plpgsql;