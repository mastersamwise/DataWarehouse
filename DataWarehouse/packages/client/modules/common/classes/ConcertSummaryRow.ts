import { Venue } from './Venue';
import { Artist } from './Artist';
import { Person } from './Person';

export class ConcertSummaryRow {

    public date: Date;
    public venue: Venue;
    public ticketPrice: number;  // double?
    public artists: Array<Artist>;
    public attendees: Array<Person>;
    public comment: string;

    public constructor( date_: Date, venue_: Venue, ticketPrice_: number, artists_: Array<Artist>, attendees_: Array<Person>, comment_: string ) {
        this.date = date_;
        this.venue = venue_;
        this.ticketPrice = ticketPrice_;
        this.artists = artists_;
        this.attendees = attendees_;
        this.comment = comment_;
    }
}
