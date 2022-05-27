/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-05-27      Initial creation
 */

CREATE OR REPLACE FUNCTION schema.GetAllServices
 ()
 RETURNS TABLE
 (
    out_service_id_             integer,
    out_service_name_           varchar (100),
    out_service_description_    varchar (500),
    out_is_recurring_payment_   boolean,
    out_start_date_             timestamp,
    out_end_date_               timestamp,
    out_due_date_               varchar (20),
    out_payment_method          varchar (50),
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
        SELECT  s.service_id,
                s.service_name,
                s.service_description,
                s.is_recurring_payment,
                s.start_date,
                s.end_date,
                s.due_date,
                p.payment_method,
                s.comment,
                s.created_date,
                s.last_updated,
                s.is_deleted
        FROM finances.Services s
            LEFT OUTER JOIN finances.PaymentMethods p ON s.payment_method_id = p.payment_method_id;

    END;
$$ LANGUAGE plpgsql;