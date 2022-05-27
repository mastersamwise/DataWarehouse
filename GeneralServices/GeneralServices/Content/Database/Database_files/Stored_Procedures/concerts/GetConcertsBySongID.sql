/*
 *      Date Updated    Description
 *      ------------    -----------
 *      2022-04-16      Initial creation
 */

 CREATE OR REPLACE FUNCTION concerts.GetConcertsBySongName
 (
     in_song_name_        varchar(200)
 )
 RETURNS TABLE
 (
    out_concert_id_                 integer,
    out_concert_day_of_week_        varchar (10),
    out_venue_id_                   integer,
    out_venue_name_                 integer,
    out_band_id_                    integer,
    out_band_name_                  varchar (100),
    out_is_encore_song_             boolean
 )
 AS
 $$
    /******************************************************************/
    /*      Declarations                                              */
    /******************************************************************/


    /******************************************************************/
    /*      Logic                                                     */
    /******************************************************************/
    BEGIN
        RETURN QUERY
        SELECT  csx.concert_id_,

        FROM concerts.ConcertSong_xref csx;

    END;
$$ LANGUAGE plpgsql;