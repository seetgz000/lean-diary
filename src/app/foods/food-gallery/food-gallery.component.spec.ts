import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FoodGalleryComponent } from './food-gallery.component';

describe('FoodGalleryComponent', () => {
  let component: FoodGalleryComponent;
  let fixture: ComponentFixture<FoodGalleryComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FoodGalleryComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FoodGalleryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
