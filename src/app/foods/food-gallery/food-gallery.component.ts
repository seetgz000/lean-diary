import { Component, Input } from '@angular/core';
import {MatDialog} from '@angular/material';

import { FoodService } from '../../food.service';


@Component({
  selector: 'app-food-gallery',
  templateUrl: './food-gallery.component.html',
  styleUrls: ['./food-gallery.component.css']
})
export class FoodGalleryComponent {

  constructor(public dialog: MatDialog, private foodService: FoodService) {}


  @Input() datasource;
}