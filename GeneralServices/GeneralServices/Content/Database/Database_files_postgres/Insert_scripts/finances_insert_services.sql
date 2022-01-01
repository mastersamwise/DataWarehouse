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
            id_col_         serial  primary key,
            
        );

END $$;