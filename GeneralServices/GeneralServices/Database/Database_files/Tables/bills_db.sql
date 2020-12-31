CREATE TABLE bills.Payments
(
    payment_id          int auto_increment  not null,
    company             nvarchar (100)      not null,
    payment_date        datetime(6)         not null,
    due_date            datetime(6)         not null,
    payment_amount      decimal (6,2)       not null default 0.0,
    confirmation_number nvarchar (50)       not null default '-',
    comment             nvarchar (500)      null,
    CONSTRAINT PK_Payments PRIMARY KEY ( payment_id ASC )
);

CREATE TABLE bills.CreditCards
(
    credit_card_id      int auto_increment  not null,
    credit_card_type    nvarchar (50)       not null,
    activation_date     datetime(6)     not null,
    cancelation_date    datetime(6)     null,
    comment             nvarchar (500)      null,
    CONSTRAINT PK_Cards PRIMARY KEY ( credit_card_id ASC )
);

/*   List of cards and which cards they are linked to    */
CREATE TABLE bills.Services
(
    service_id          int auto_increment  not null,
    service_name        nvarchar (100)      not null,
    service_description nvarchar (500)      not null,
    recurring_payment   bit                 not null default 0,
    start_date          datetime(6)     null,
    end_date            datetime(6)     null,
    comment             nvarchar (500)      null,
    credit_card_id      int                 not null,
    CONSTRAINT PK_Services PRIMARY KEY ( service_id ASC )
);

/***********************************************************************************************************
            Foreign Keys
***********************************************************************************************************/
ALTER TABLE bills.Services  ADD CONSTRAINT FK_CreditCards       FOREIGN KEY ( credit_card_id )  REFERENCES bills.CreditCards    ( credit_card_id )


/***********************************************************************************************************
            Drop Everything
***********************************************************************************************************/
/*--ALTER TABLE bills.Services                  DROP CONSTRAINT FK_CreditCards

--DROP TABLE bills.Services
--DROP TABLE bills.CreditCards
--DROP TABLE bills.Payments
*/