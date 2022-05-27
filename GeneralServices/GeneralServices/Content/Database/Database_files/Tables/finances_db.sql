/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-03-26      Initial creation
 *      2022-05-27      Updated [finances].[ConfirmationRecords] columes:
 *                              [payment_method] -> [payment_method_id]
 *                              [category] -> [category_id]
 *                              [recipient] -> [recipient_id]
 *                      Added [finances].[Categories] table
 *                      Added [finances].[Recipients] table
 *                      Added comments above each table
 */

/* Confirmation records */
CREATE TABLE finances.ConfirmationRecords
(
    confirmation_record_id      serial  primary key     not null,
    payment_date                timestamp               not null,
    arrival_date                timestamp               null,
    recipient_id                integer                 not null,
    category_id                 integer                 null,
    payment_method_id           number                  not null,
    payment_amount              decimal (6,2)           not null default 0.0,
    confirmation_number         varchar (50)            not null default '-',
    comment                     varchar (500)           null,
	created_date				timestamp 				null,
	updated_date				timestamp 				null,
	is_deleted					boolean					not null default false
);

/* Different payment methods used to pay for items / services */
CREATE TABLE finances.PaymentMethods
(
	payment_method_id	serial	primary key		not null,
	payment_method		varchar (50)			not null,
	comment				varchar (500)			null,
    created_date	    timestamp 				null,
	updated_date	    timestamp 				null,
	is_deleted		    boolean					not null default false
);

/* Different categories of the items / services */
CREATE TABLE finances.Categories
{
    category_id     serial  primary key     not null,
    category        varchar (25)            not null,
    comment         varchar (500)           null,
	created_date	timestamp 				null,
	updated_date	timestamp 				null,
	is_deleted		boolean					not null default false
};

/* Different recipients of the items / services */
CREATE TABLE finances.Recipients
{
    recipient_id    serial  primary key     not null,
    recipient       varchar (100)           not null,
    comment         varchar (500)           null,
	created_date	timestamp 				null,
	updated_date	timestamp 				null,
	is_deleted		boolean					not null default false
};

/*   List of cards and which services / accounts they are linked to    */
CREATE TABLE finances.Services
(
    service_id				serial  primary key     not null,
    service_name			varchar (100)           not null,
    service_description		varchar (500)           not null,
    is_recurring_payment	boolean                 not null default false,
    start_date				timestamp               null,
    end_date				timestamp               null,
    due_date				varchar (20)            null,
    payment_method_id		int                     not null,
    comment					varchar (500)           null
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