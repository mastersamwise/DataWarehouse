DO $$

    DECLARE 
        id_ integer := 1;
        service_id_ integer := 1;
        service_name_ varchar (100);
        service_description_ varchar (500);
        is_recurring_payment_ bit;
        start_date_ timestamp;
        end_date_ timestamp;
        due_date_ varchar (20);
        payment_method_id_ int;
        payment_method_ varchar (50);
        comment_ varchar (500);

    BEGIN
        CREATE TEMP TABLE services_table_
        (
            id_col_             serial  primary key,
            service_name_col_   varchar (100),
            service_desc_col_   varchar (500),
            is_recur_pmt_col_   bit,
            start_date_col_     timestamp,
            end_date_col_       timestamp,
            due_date_col_       varchar (20),
            pmt_method_col_     varchar (50),
            comment_col_        varchar (500)
        );

        /* insert data into temp table */
        INSERT INTO services_table_
        ( service_name_col_, service_desc_col_, is_recur_pmt_col_, start_date_col_, end_date_col_, due_date_col_, pmt_method_col_, comment_col_ )
        VALUES
        ( 'AES', 'Student loans', b'1', '2014-03-01', '2030-03-01', 'xx/15', 'PNC Bank', '' );

        LOOP
            EXIT WHEN id_ IS NULL;

            service_name_ := (SELECT service_name_col_ FROM services_table_ WHERE id_col_ = id_ );
            service_description_ := (SELECT service_desc_col_ FROM services_table_ WHERE id_col_ = id_ );
            is_recurring_payment_ := (SELECT is_recur_pmt_col_ FROM services_table_ WHERE id_col_ = id_ );
            start_date_ := (SELECT start_date_col_ FROM services_table_ WHERE id_col_ = id_ );
            end_date_ := (SELECT end_date_col_ FROM services_table_ WHERE id_col_ = id_ );
            due_date_ := (SELECT due_date_col_ FROM services_table_ WHERE id_col_ = id_ );
            payment_method_ := (SELECT pmt_method_col_ FROM services_table_ WHERE id_col_ = id_ );
            comment_ := (SELECT comment_col_ FROM services_table_ WHERE id_col_ = id_ );

            payment_method_id_ := (SELECT 1 FROM finances.PaymentMethods WHERE payment_method = payment_method_);

            /* Add service to the services table if they don't already exist */
			IF (SELECT 1 FROM finances.Services WHERE service_name = service_name_) IS NULL THEN
				INSERT INTO finances.Services
				(  
                    service_name, 
                    service_description, 
                    is_recurring_payment, 
                    start_date, 
                    end_date, 
                    due_date, 
                    payment_method_id, 
                    comment 
                )
				VALUES
				( 
                    service_name_, 
                    service_description_, 
                    is_recur_pmt_, 
                    start_date_, 
                    end_date_, 
                    due_date_, 
                    payment_method_id_, 
                    comment_ 
                )
				RETURNING service_id INTO service_id_;
			ELSE
				service_id_ := (SELECT service_id FROM finances.Services WHERE service_name = service_name_);
			END IF;

            id_ := (SELECT MIN( id_col_ ) FROM services_table_ WHERE id_col_ > id_ );

        END LOOP;

END $$;