import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

// Material Components
import { MatSliderModule } from '@angular/material/slider';
import { MatTableModule } from '@angular/material/table';

import { Router, RouterModule } from '@angular/router';
import { DashboardMainComponent } from './modules/dashboard-main/dashboard-main.component';
import { DashboardFinancesComponent } from './modules/dashboard-finances/dashboard-finances.component';

@NgModule({
  declarations:
  [
    AppComponent,
    DashboardMainComponent,
    DashboardFinancesComponent
  ],
  imports:
  [
    AppRoutingModule,
    BrowserModule,
    BrowserAnimationsModule,

    // Material Components
    MatSliderModule,
    MatTableModule

  ],
  providers: [],
  bootstrap: [ AppComponent ]

})
export class AppModule { }
