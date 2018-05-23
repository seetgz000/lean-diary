import { Component, OnInit, HostBinding } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Location } from '@angular/common';

import { zoomInAnimation } from '../../animation';

import { Food } from '../../foods/food';
import { FoodService } from '../../food.service';

@Component({
  selector: 'app-food-detail',
  templateUrl: './food-detail.component.html',
  styleUrls: ['./food-detail.component.css'],
  animations: [zoomInAnimation]
})
export class FoodDetailComponent implements OnInit {
  food: Food;
  foods: Food[];
  constructor(
    private route: ActivatedRoute,
    private foodService: FoodService,
    private location: Location
  ) { }

  @HostBinding('@zoomIn') zoomIn = true;
  @HostBinding('style.display')   display = 'block';
  @HostBinding('style.position')  position = 'absolute';
  @HostBinding('style.width')  width = '100%';

  ngOnInit() {
    this.getFood();
    this.getFoods();
  }

  getFood(): void {
    const id = +this.route.snapshot.paramMap.get('id');
    this.foodService.getFood(id)
      .subscribe(food => this.food = food);
  }

  getFoods(): void {
    this.foodService.getFoods()
    .subscribe(foods => this.foods = foods);
  }

  goBack(): void {
    this.location.back();
  }

}
