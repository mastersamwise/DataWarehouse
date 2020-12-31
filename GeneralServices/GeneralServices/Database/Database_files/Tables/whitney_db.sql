CREATE TABLE whitney.Hospitalizations
(
    hospitalization_id      int auto_increment  not null,
    admittance_date         datetime (6)        null,
    discharge_date          datetime (6)        null,
    hospital_id             int                 not null,
    reason                  nvarchar (1000)     null,
    comment                 nvarchar (500)      null,
    CONSTRAINT PK_Hospitalizations PRIMARY KEY ( hospitalization_id ASC )
);

CREATE TABLE whitney.Hopsitals
(
    hospital_id         int auto_increment  not null,
    hospital_name       nvarchar (100)      not null,
    hospital_address    nvarchar (100)      not null default '-',
    comment             nvarchar (500)      null,
    CONSTRAINT PK_Hospitals PRIMARY KEY ( hospital_id ASC )
);

CREATE TABLE whitney.Doctors
(
    doctor_id                   int auto_increment  not null,
    doctor_name                 nvarchar (75)       not null default '-',
    type_of_doctor              nvarchar (75)       null,
    associated_hospital_id      int                 null,
    office_address              nvarchar (150)      not null default 'N/A',
    start_date                  datetime (6)        null,
    end_date                    datetime (6)        null,
    comment                     nvarchar (500)      null,
    CONSTRAINT PK_Doctors PRIMARY KEY ( doctor_id ASC )
);

CREATE TABLE whitney.Appointments
(
    appointment_id              int auto_increment  not null,
    type_of_appointment         nvarchar (75)       not null,
    reason_for_appointment      nvarchar (150)      null,
    appointment_date            datetime (6)        not null,
    appointment_time            nvarchar (10)       null,
    appointment_address         nvarchar (150)      null,
    outcome                     nvarchar (1000)     null,
    follow_up_appointment_id    int                 null,
    comment                     nvarchar (500)      null,
    CONSTRAINT PK_Appointments PRIMARY KEY ( appointment_id ASC )
);