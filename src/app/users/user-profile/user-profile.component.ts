import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-user-profile',
  templateUrl: './user-profile.component.html',
  styleUrls: ['./user-profile.component.css']
})
export class UserProfileComponent implements OnInit {



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