CREATE TABLE finances.Payments
(
    payment_id          serial  primary key     not null,
    service_id          varchar (100)           not null,
    payment_date        timestamp               not null,
    arrival_date        TIMESTAMP               null,
    due_date            timestamp               not null,
    category            VARCHAR                 null,
    payment_amount      decimal (6,2)           not null default 0.0,
    confirmation_number varchar (50)            not null default '-',
    comment             varchar (500)           null
);

CREATE TABLE finances.CreditCards
(
    credit_card_id      serial  primary key     not null,
    credit_card_type    varchar (50)            not null,
    activation_date     timestamp               not null,
    cancelation_date    timestamp               null,
    comment             varchar (500)           null
);

CREATE TABLE finances.PaymentMethods
(
	payment_method_id	serial	primary key		not null,
	payment_method		varchar (50)			not null,
	comment				varchar (500)			null
);

/*   List of cards and which cards they are linked to    */
CREATE TABLE finances.Services
(
    service_id          serial  primary key     not null,
    service_name        varchar (100)           not null,
    service_description varchar (500)           not null,
    recurring_payment   bit                     not null default b'0',
    start_date          timestamp               null,
    end_date            timestamp               null,
    comment             varchar (500)           null,
    credit_card_id      int                     not null
);

/***********************************************************************************************************
            Foreign Keys
***********************************************************************************************************/
--ALTER TABLE finances.Services  ADD CONSTRAINT FK_CreditCards       FOREIGN KEY ( credit_card_id )  REFERENCES finances.CreditCards    ( credit_card_id )


/***********************************************************************************************************
            Drop Everything
***********************************************************************************************************/
/*--ALTER TABLE finances.Services                  DROP CONSTRAINT FK_CreditCards

--DROP TABLE finances.Services
--DROP TABLE finances.CreditCards
--DROP TABLE finances.Payments
*/