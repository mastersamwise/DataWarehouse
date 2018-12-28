import { Component, OnInit } from '@angular/core';
import { Concert } from '../common/classes/Concert';
import { ConcertSummaryRow } from '../common/classes/ConcertSummaryRow';

@Component({
  selector: 'app-concert',
  templateUrl: './concert.component.html',
  styleUrls: ['./concert.component.css']
})
export class ConcertComponent implements OnInit {

  public concertSummaryData: ConcertSummaryRow[];
  public displayedColumns: string[] = ['Date', 'Artist', 'Ticket Price', 'Attendees', 'Comment'];

  constructor() { }

  ngOnInit() {
  }


}
