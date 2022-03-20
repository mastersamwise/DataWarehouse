import { Timestamp } from "rxjs";

class ConfirmationNumberEntry
{
  entryID: number;
  dateOrdered: string;
  dateArrived: string;

  constructor(inEntryID: number, inDateOrdered: string, inDateArrived: string)
  {
    this.entryID = 0;
    this.dateOrdered = inDateOrdered;
    this.dateArrived = inDateArrived;
  }

}
