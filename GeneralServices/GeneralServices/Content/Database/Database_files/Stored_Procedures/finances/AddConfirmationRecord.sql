/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-07-03      Initial creation
 *      2022-07-21      Renamed out_conf_record_id_ -> out_id_ to keep variables in sync
 */

 CREATE OR REPLACE FUNCTION finances.AddConfirmationRecord
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
        IF EXISTS (SELECT 1 FROM schema.table WHERE column_1 = in_column_1_) THEN
            RAISE EXCEPTION '[schema].[AddExample]: A record in [schema].[table] with [column_1] = % already exists.', in_column_1_;
            
        ELSE
        BEGIN
            /******************************************************************/
            /*      Body                                                      */
            /******************************************************************/

            /* Add data to finances.Recipients table if recipient doesn't exist */
            IF NOT EXISTS (SELECT 1 FROM finances.Recipients WHERE recipient = in_recipient_) THEN
                INSERT INTO finances.Recipients
                ( 
                    recipient, 
                    created_date, 
                    updated_date 
                )
                VALUES
                ( 
                    in_recipient_, 
                    in_last_updated_date_, 
                    in_last_updated_date_ 
                )
                RETURNING recipient_id = recipient_id_;
            END IF;

            /* Add data to finances.Categories table if category doesn't exist */
            IF NOT EXISTS (SELECT 1 FROM finances.Categories WHERE category = in_category_) THEN
                INSERT INTO finances.Categories
                ( 
                    category, 
                    created_date, 
                    updated_date 
                )
                VALUES
                ( 
                    in_category_, 
                    in_last_updated_date_, 
                    in_last_updated_date_ 
                )
                RETURNING category_id = category_id_;
            END IF;

            /* Add data to finances.PaymentMethods table if payment method doesn't exist */
            IF NOT EXISTS (SELECT 1 FROM finances.PaymentMethods WHERE category = in_payment_method_) THEN
                INSERT INTO finances.PaymentMethods
                ( 
                    payment_method, 
                    created_date, 
                    updated_date 
                )
                VALUES
                ( 
                    in_payment_method_, 
                    in_last_updated_date_, 
                    in_last_updated_date_ 
                )
                RETURNING payment_method_id = payment_method_id_;
            END IF;

            /* Add data to finances.ConfirmationRecords table */
            INSERT INTO finances.ConfirmationRecords
            ( 
                payment_date,
                arrival_date,
                recipient_id,
                category_id,
                payment_method_id,
                payment_amount,
                confirmation_number,
                comment,
                created_date,
                updated_date,
                is_deleted
            )
            VALUES
            ( 
                in_payment_date_,
                in_arrival_date_,
                recipient_id_,
                category_id_,
                payment_method_id_,
                in_payment_amount_,
                in_confirmation_number_,
                in_comment_,
                in_last_updated_date_,
                in_last_updated_date_
            )
            RETURNING confirmation_record_id INTO out_id_;

            RETURN out_id_;
        END;
        END IF;

    END;
$$ LANGUAGE plpgsql;