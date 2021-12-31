CREATE TABLE concerts.Bands 
(
    band_id         serial  primary key     not null,
    band_name       varchar (100)      not null
);

CREATE TABLE concerts.Venues
(
    venue_id        serial  primary key  not null,
    venue_name      varchar (100)      not null,
    venue_city      varchar (50)       not null,
    venue_state     varchar (50)       not null,
    comment         varchar (500)      null
);

CREATE TABLE concerts.Concerts
(
    concert_id              serial  primary key  not null,
    ticket_price            int                 null,
    concert_date            timestamp        not null,
    concert_day_of_week     varchar (10)       not null,
    venue_id                int                 not null,
    comment                 varchar (150)      null
);

CREATE TABLE concerts.ConcertPerson_xref
(
    concert_id      int     not null,
    person_id       int     not null
);

CREATE TABLE concerts.ConcertBand_xref
(
    concert_id  int not null,
    band_id     int not null
);

CREATE TABLE concerts.Songs
(
    song_id     serial  primary key  not null,
    song_title  varchar (200)       not null
);

CREATE TABLE concerts.ConcertSong_xref
(
    concert_id      int             not null,
    band_id         int             not null,
    song_id         int             not null,
    song_number     int             null,
    encore_song     bit             not null default b'0',
    comment         varchar (500)  null
);

CREATE TABLE concerts.ConcertSongEncore_xref
(
    concert_id      int             not null,
    band_id         int             not null,
    song_id         int             not null,
    song_number     int             null,
    encore_number   int             not null default 1,
    comment         varchar (500)  null
);

/***********************************************************************************************************
            Foreign Keys
***********************************************************************************************************/
/*
ALTER TABLE concerts.ConcertSongEncore_xref ADD CONSTRAINT FK_ConcertSongEncore_Songs       FOREIGN KEY ( song_id )     REFERENCES concerts.Songs       ( song_id );
ALTER TABLE concerts.ConcertSongEncore_xref ADD CONSTRAINT FK_ConcertSongEncore_Concerts    FOREIGN KEY ( concert_id )  REFERENCES concerts.Concerts    ( concert_id );
ALTER TABLE concerts.ConcertSongEncore_xref ADD CONSTRAINT FK_ConcertSongEncore_Bands       FOREIGN KEY ( band_id )     REFERENCES concerts.Bands       ( band_id );
ALTER TABLE concerts.ConcertSong_xref       ADD CONSTRAINT FK_ConcertSong_Songs         FOREIGN KEY ( song_id )     REFERENCES concerts.Songs       ( song_id );
ALTER TABLE concerts.ConcertSong_xref       ADD CONSTRAINT FK_ConcertSong_Concerts      FOREIGN KEY ( concert_id )  REFERENCES concerts.Concerts    ( concert_id );
ALTER TABLE concerts.ConcertSong_xref       ADD CONSTRAINT FK_ConcertSong_Bands         FOREIGN KEY ( band_id )     REFERENCES concerts.Bands       ( band_id );
ALTER TABLE concerts.ConcertPerson_xref     ADD CONSTRAINT FK_ConcertPerson_Concerts        FOREIGN KEY ( concert_id )  REFERENCES concerts.Concerts    ( concert_id );
ALTER TABLE concerts.ConcertPerson_xref     ADD CONSTRAINT FK_ConcertPerson_People      FOREIGN KEY ( person_id )       REFERENCES common.People        ( person_id );
ALTER TABLE concerts.ConcertBand_xref       ADD CONSTRAINT FK_ConcertBand_Concerts      FOREIGN KEY ( concert_id )  REFERENCES concerts.Concerts    ( concert_id );
ALTER TABLE concerts.ConcertBand_xref       ADD CONSTRAINT FK_ConcertBand_Bands         FOREIGN KEY ( band_id )     REFERENCES concerts.Bands       ( band_id );
ALTER TABLE concerts.Concerts               ADD CONSTRAINT FK_Concerts_Venues               FOREIGN KEY ( venue_id )        REFERENCES concerts.Venues      ( venue_id );
*/

/***********************************************************************************************************
            Drop Everything
***********************************************************************************************************/
/*
--ALTER TABLE concerts.Concerts                 DROP CONSTRAINT FK_Concerts_Venues;
--ALTER TABLE concerts.ConcertBand_xref         DROP CONSTRAINT FK_ConcertBand_Bands;
--ALTER TABLE concerts.ConcertBand_xref         DROP CONSTRAINT FK_ConcertBand_Concerts;
--ALTER TABLE concerts.ConcertPerson_xref       DROP CONSTRAINT FK_ConcertPerson_People;
--ALTER TABLE concerts.ConcertPerson_xref       DROP CONSTRAINT FK_ConcertPerson_Concerts;
--ALTER TABLE concerts.ConcertSong_xref         DROP CONSTRAINT FK_ConcertSong_Concerts;
--ALTER TABLE concerts.ConcertSong_xref         DROP CONSTRAINT FK_ConcertSong_Bands;
--ALTER TABLE concerts.ConcertSong_xref         DROP CONSTRAINT FK_ConcertSong_Songs;
--ALTER TABLE concerts.ConcertSongEncore_xref   DROP CONSTRAINT FK_ConcertSongEncore_Concerts;
--ALTER TABLE concerts.ConcertSongEncore_xref   DROP CONSTRAINT FK_ConcertSongEncore_Bands;
--ALTER TABLE concerts.ConcertSongEncore_xref   DROP CONSTRAINT FK_ConcertSongEncore_Songs;
*/
/*
--DROP TABLE concerts.Bands
--DROP TABLE concerts.Concerts
--DROP TABLE common.People
--DROP TABLE concerts.Venues
--DROP TABLE concerts.ConcertPerson_xref
--DROP TABLE concerts.ConcertBand_xref
--DROP TABLE concerts.Songs
--DROP TABLE concerts.ConcertSong_xref
--DROP TABLE concerts.ConcertSongEncore_xref
*/