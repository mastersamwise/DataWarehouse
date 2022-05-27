/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-05-27      Initial creation
 */

 CREATE OR REPLACE FUNCTION schema.GetAllCategories
 ()
 RETURNS TABLE
 (
    out_category_id_        integer,
    out_category_           varchar (100),
    out_comment_            varchar (500),
    out_created_date_       timestamp,
    out_last_updated_       timestamp,
    out_is_deleted_         boolean
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
        SELECT  c.category_id,
                c.category,
                c.comment,
                c.created_date,
                c.last_updated,
                c.is_deleted
        FROM finances.Categories c;

    END;
$$ LANGUAGE plpgsql;