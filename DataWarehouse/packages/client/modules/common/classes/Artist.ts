import { Song } from './Song';

export class Artist {

    public name: string;
    public comment: string;
    public setlist: Array<Song>;

    public constructor( name_: string, comment_: string, setlist_: Array<Song> ) {
        this.name = name_;
        this.comment = comment_;
        this.setlist = setlist_;
    }
}
