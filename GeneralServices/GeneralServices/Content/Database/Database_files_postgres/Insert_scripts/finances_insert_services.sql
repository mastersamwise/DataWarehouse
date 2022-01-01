DO $$

    DECLARE 
        id_ integer := 1;
        service_id_ integer := 1;
        service_name_ varchar (100);
        service_description_ varchar (500);
        recurring_payment_ bit;
        start_date_ timestamp;
        end_date_ timestamp;
        due_date_ varchar (20);
        payment_method_ varchar (50);
        comment_ varchar (500);

    BEGIN
        CREATE TEMP TABLE services_table_
        (
            id_col_             serial  primary key,
            service_id_col_     integer,
            service_name_col_   varchar (100),
            service_desc_col_   varchar (500),
            recur_pmt_col_      bit,
            start_date_col_     timestamp,
            end_date_col_       timestamp,
            due_date_col        varchar (20),
            pmt_method_col_     varchar (50),
            comment_col_        varchar (500)
        );

END $$;