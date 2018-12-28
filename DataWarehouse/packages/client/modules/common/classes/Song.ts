
export class Song {

    public orderNumber: number;
    public name: string;
    public encoreNumber: number;
    public comment: string;

    public constructor( orderNumber_: number, name_: string, encoreNumber_: number, comment_: string ) {
        this.orderNumber = orderNumber_;
        this.name = name_;
        this.encoreNumber = encoreNumber_;
        this.comment = comment_;
    }
}
