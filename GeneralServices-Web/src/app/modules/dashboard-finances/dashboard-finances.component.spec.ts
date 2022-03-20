import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DashboardFinancesComponent } from './dashboard-finances.component';

describe('DashboardFinancesComponent', () => {
  let component: DashboardFinancesComponent;
  let fixture: ComponentFixture<DashboardFinancesComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ DashboardFinancesComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(DashboardFinancesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
