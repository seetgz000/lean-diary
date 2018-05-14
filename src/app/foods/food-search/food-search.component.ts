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
   	{"url":"../../assets/images/food-list/food9.png"},
   	{"url":"../../assets/images/food-list/food10.jpg"},
   	{"url":"../../assets/images/food-list/food11.jpg"},
   	{"url":"../../assets/images/food-list/food12.jpeg"},
   	{"url":"../../assets/images/food-list/food13.jpg"},
   	{"url":"../../assets/images/food-list/food14.jpg"},
   	{"url":"../../assets/images/food-list/food15.jpg"},
   	{"url":"../../assets/images/food-list/food16.jpg"},
   	{"url":"../../assets/images/food-list/food17.jpg"},
   	{"url":"../../assets/images/food-list/food18.jpg"},
   	{"url":"../../assets/images/food-list/food19.png"},
   	{"url":"../../assets/images/food-list/food20.jpg"},
    ];
  }



  ngOnInit() {
  }
}
@Component({
  selector: 'app-food-search-modal',
  templateUrl: './food-search-modal.html',
  styleUrls: ['./food-search-modal.component.css']
})
export class FoodSearchComponentModal {}
