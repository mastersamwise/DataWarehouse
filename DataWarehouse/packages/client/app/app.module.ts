import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';


import { AppComponent } from './app.component';
import { ConcertComponent } from '../modules/concert/concert.component';


@NgModule({
  declarations: [
    AppComponent,
    ConcertComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  exports: [
    ConcertComponent
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
