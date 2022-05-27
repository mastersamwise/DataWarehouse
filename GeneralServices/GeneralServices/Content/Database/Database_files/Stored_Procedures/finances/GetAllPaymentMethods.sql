/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-05-27      Initial creation
 */

 CREATE OR REPLACE FUNCTION schema.GetAllPaymentMethods
 ()
 RETURNS TABLE
 (
    out_payment_method_id_      integer,
    out_payment_method_         varchar (50),
    out_comment_                varchar (500),
    out_created_date_           timestamp,
    out_last_updated_           timestamp,
    out_is_deleted_             boolean
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
        SELECT  p.payment_method_id,
                p.payment_method,
                p.comment,
                p.created_date,
                p.last_updated,
                p.is_deleted
        FROM finances.PaymentMethods p;

    END;
$$ LANGUAGE plpgsql;