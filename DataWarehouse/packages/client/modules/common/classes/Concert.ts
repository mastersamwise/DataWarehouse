import { Venue } from './Venue';

export class Concert {

    public date: Date;
    public venue: Venue;
    public ticketPrice: number;  // double?

    public constructor( date_: Date, venue_: Venue, ticketPrice_: number ) {
        this.date = date_;
        this.venue = venue_;
        this.ticketPrice = ticketPrice_;
    }
}
