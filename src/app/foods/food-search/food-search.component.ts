import { Component, OnInit } from '@angular/core';
import {MatDialog} from '@angular/material';

@Component({
  selector: 'app-food-search',
  templateUrl: './food-search.component.html',
  styleUrls: ['./food-search.component.css']
})
export class FoodSearchComponent implements OnInit {

  images;

  constructor() {
    this.images = [
   	{"url":"../../assets/images/food-list/food1.png"},
   	{"url":"../../assets/images/food-list/food2.png"},
   	{"url":"../../assets/images/food-list/food3.png"},
   	{"url":"../../assets/images/food-list/food4.png"},
   	{"url":"../../assets/images/food-list/food5.png"},
   	{"url":"../../assets/images/food-list/food6.png"},
   	{"url":"../../assets/images/food-list/food7.png"},
   	{"url":"../../assets/images/food-list/food8.png"},
   	{"url":"../../assets/images/food-list/food9.png"}
    ];
  }



  ngOnInit() {
  }
}
@Component({
  selector: 'app-food-search-modal',
  templateUrl: './food-search-modal.html',
})
export class FoodSearchComponentModal {}
