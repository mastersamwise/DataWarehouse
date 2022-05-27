/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-03-26      Initial creation
 */

 CREATE OR REPLACE FUNCTION schema.GetAllxample
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
        RETURN QUERY
        SELECT  t.column_1,
                t.columnn_2,
                t.comment,
                t.created_date,
                t.last_updated,
                t.is_deleted
        FROM schema.table t;

    END;
$$ LANGUAGE plpgsql;