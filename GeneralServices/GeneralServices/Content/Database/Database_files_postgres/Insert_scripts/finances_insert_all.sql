
/************************************************************************

	Inserting Payment Methods  

 ************************************************************************/
INSERT INTO finances.PaymentMethods
( payment_method, comment )
VALUES
( 'PNC Card', '' ),
( 'Citi Bank Card', '' ),
( 'Capital One Card', '' ),
( 'Paypal (PNC Card)', '' ),
( 'Chase Card', '' ),
( 'PNC Bank', '' );


/************************************************************************

	Inserting Services
 ************************************************************************/
INSERT INTO finances.Services
( service_name, service_description, recurring_payment, due_date, payment_method_id, comment )
VALUES
( 'AES', 'student loans', b'1', 'mm/15', 6, 'refinanced from Navient');