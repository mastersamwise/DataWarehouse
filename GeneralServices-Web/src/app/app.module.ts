import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

// Material Components
import { MatSliderModule } from '@angular/material/slider';
import { MatTableModule } from '@angular/material/table';

import { FinancesComponent } from './finances/finances.component';
import { Router, RouterModule } from '@angular/router';
import { MainPageComponent } from './main-page/main-page.component';

@NgModule({
  declarations: [
    AppComponent,
    FinancesComponent,
    MainPageComponent
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,

    // Material Components
    MatSliderModule,
    MatTableModule,

    //
    RouterModule.forRoot
    (
      [
        { path: 'finance', component: FinancesComponent },
      ]
    )
  ],
  providers: [],
  bootstrap: [AppComponent]

})
export class AppModule { }
