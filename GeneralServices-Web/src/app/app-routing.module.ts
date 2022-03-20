import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { DashboardMainComponent } from './modules/dashboard-main/dashboard-main.component';
import { DashboardFinancesComponent } from './modules/dashboard-finances/dashboard-finances.component';

const routes: Routes =
[
  { path: '', redirectTo: '/dashboard-main', pathMatch: 'full' },
  { path: 'dashboard-main', component: DashboardMainComponent },
  { path: 'dashboard-finances', component: DashboardFinancesComponent }
];

@NgModule
({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
