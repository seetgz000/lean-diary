import { Component, Input, OnInit } from '@angular/core';
import {MatDialog} from '@angular/material';

import { FadeInOutAnimation } from '../../animation';

import { Food } from '../food';
import { FoodService } from '../../food.service';


@Component({
  selector: 'app-food-gallery',
  templateUrl: './food-gallery.component.html',
  styleUrls: ['./food-gallery.component.css'],
  animations: [FadeInOutAnimation]
})
export class FoodGalleryComponent implements OnInit {

  foods: Food[];

  constructor(public dialog: MatDialog, private foodService: FoodService) {}

  getFoods(): void {
    this.foodService.getFoods()
    .subscribe(foods => this.foods = foods);
  }

  ngOnInit() {
    this.getFoods();
  }
}