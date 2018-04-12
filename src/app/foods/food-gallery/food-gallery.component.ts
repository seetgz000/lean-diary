import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-food-gallery',
  templateUrl: './food-gallery.component.html',
  styleUrls: ['./food-gallery.component.css']
})
export class FoodGalleryComponent {

  constructor() { }

  @Input() datasource;

}
