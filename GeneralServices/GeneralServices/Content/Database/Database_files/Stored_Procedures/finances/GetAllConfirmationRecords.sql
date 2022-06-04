/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-06-03      Initial creation
 */

 CREATE OR REPLACE FUNCTION schema.GetAllConfirmationRecords
 ()
 RETURNS TABLE
 (
    out_confirmation_record_id_        integer,
    out_payment_date_                  timestamp,
    out_arrival_date_                  timestamp,
    out_recipient_                     varchar (100),
    out_category_                      varchar (25),
    out_payment_method_                varchar (50),
    out_payment_amount_                decimal (6,2),
    out_confirmation_number_           varchar (500),
    out_comment_                       varchar (500),
    out_created_date_                  timestamp,
    out_last_updated_                  timestamp,
    out_is_deleted_                    boolean
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
        SELECT  cr.confirmation_record_id,
                cr.payment_date,
                cr.arrival_date,
                r.recipient,
                c.category,
                pm.payment_method,
                cr.payment_amount,
                cr.confirmation_number,
                cr.comment,
                cr.created_date,
                cr.last_updated,
                cr.is_deleted
        FROM finances.ConfirmationRecords cr
         LEFT OUTER JOIN finances.Recipients r ON c.recipient_id = r.recipient_id
         LEFT OUTER JOIN finances.Categories c ON c.category_id = c.category_id
         LEFT OUTER JOIN finances.PaymentMethods pm ON c.payment_method_id = pm.payment_method_id;

    END;
$$ LANGUAGE plpgsql;