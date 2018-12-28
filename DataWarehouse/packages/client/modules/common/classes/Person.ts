
export class Person {

    public firstName: string;
    public lastName: string;
    public relationship: string;

    public constructor( firstName_: string, lastName_: string, relationship_: string ) {
        this.firstName = firstName_;
        this.lastName = lastName_;
        this.relationship = relationship_;
    }
}
