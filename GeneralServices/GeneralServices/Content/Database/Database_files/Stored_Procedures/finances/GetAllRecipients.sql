/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-05-27      Initial creation
 */

 CREATE OR REPLACE FUNCTION schema.GetAllRecipients
 ()
 RETURNS TABLE
 (
    out_recipient_id_       integer,
    out_recipient_          varchar (100),
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
        SELECT  r.recipeient_id,
                r.recipient,
                r.comment,
                r.created_date,
                r.last_updated,
                r.is_deleted
        FROM finances.Recipients r;

    END;
$$ LANGUAGE plpgsql;