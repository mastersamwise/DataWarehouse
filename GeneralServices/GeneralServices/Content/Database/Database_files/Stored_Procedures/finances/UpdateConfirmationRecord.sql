/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-07-03      Initial creation
 */

 CREATE OR REPLACE FUNCTION finances.UpdateConfirmationRecord
 (
    in_conf_record_id_          integer,
    in_payment_date_            timestamp,
    in_arrival_date_            timestamp,
    in_recipient_               varchar (100),
    in_category_                varchar (25),
    in_payment_method_          varchar (50),
    in_payment_amount_          decimal (6,2),
    in_confirmation_number_     varchar (50),
    in_comment_                 varchar (500),
    in_last_updated_date_       timestamp   -- pass in through C# to make sure we get UTC time, or else test UTC time with psql
 )
 RETURNS integer
 AS
 $$
    /******************************************************************/
    /*      Declarations                                              */
    /******************************************************************/
    DECLARE out_conf_record_id_ integer := -1;
    DECLARE recipient_id_       integer := -1;
    DECLARE category_id_        integer := -1;
    DECLARE payment_method_id_  integer := -1;

    /******************************************************************/
    /*      Logic                                                     */
    /******************************************************************/
    BEGIN
        
        /******************************************************************/
        /*      Error Handling                                            */
        /******************************************************************/
        IF NOT EXISTS (SELECT 1 FROM finances.ConfirmationRecords WHERE confirmation_record_id = in_conf_record_id_) THEN
            RAISE EXCEPTION '[finances].[UpdateConfirmationRecord]: A record in [finances].[ConfirmationRecords] with [confirmation_record_id] = % does not exist.', in_conf_record_id_;
            
        ELSIF NOT EXISTS (SELECT 1 FROM finances.Recipients WHERE recipient = in_recipient_) THEN
            RAISE EXCEPTION '[finances].[UpdateConfirmationRecord]: A record in [finances].[Recipients] with [recipient] = % does not exist.', in_recipient_;
   
        ELSIF NOT EXISTS (SELECT 1 FROM finances.Category WHERE category = in_category_) THEN
            RAISE EXCEPTION '[finances].[UpdateConfirmationRecord]: A record in [finances].[Recipients] with [category] = % does not exist.', in_category_;

        ELSIF NOT EXISTS (SELECT 1 FROM finances.PaymentMethods WHERE payment_method = in_payment_method) THEN
            RAISE EXCEPTION '[finances].[UpdateConfirmationRecord]: A record in [finances].[PaymentMethods] with [payment_method] = % does not exist.', in_payment_method;
            
        ELSE
        BEGIN
            /******************************************************************/
            /*      Body                                                      */
            /******************************************************************/
            recipient_id_ = (SELECT recipient_id FROM finances.Recipients WHERE recipient = in_recipient_);
            category_id_ = (SELECT category_id FROM finances.Categories WHERE category = in_category_);
            payment_method_id_ = (SELECT payment_method_id FROM finances.PaymentMethods WHERE payment_method = in_payment_method_);

            /* Add data to common.Users table */
            UPDATE finances.ConfirmationRecords
            SET payment_date        = in_payment_date_,
                arrival_date        = in_arrival_date_,
                recipient_id        = recipient_id_,
                category_id         = category_id_,
                payment_method_id   = payment_method_id_,
                payment_amount      = in_payment_amount,
                confirmation_number = in_confirmation_number_,
                comment             = in_comment,
                updated_date        = in_last_updated_date_
            WHERE confirmation_record_id = in_conf_record_id_;

            out_conf_record_id_ := in_conf_record_id_;

        END;
        END IF;

        RETURN out_conf_record_id_;

    END;
$$ LANGUAGE plpgsql;