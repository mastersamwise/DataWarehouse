
export class Venue {

    public name: string;
    public city: string;
    public state: string;
    public comment: string;

    public constructor( name_: string, city_: string, state_: string, comment_: string ) {
        this.name = name_;
        this.city = city_;
        this.state = state_;
        this.comment = comment_;
    }
}
