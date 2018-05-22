import { Component, OnInit } from '@angular/core';
import {MatDialog} from '@angular/material';

@Component({
  selector: 'app-food-search',
  templateUrl: './food-search.component.html',
  styleUrls: ['./food-search.component.css']
})
export class FoodSearchComponent implements OnInit {


  constructor() {}



  ngOnInit() {
  }
}
@Component({
  selector: 'app-food-search-modal',
  templateUrl: './food-search-modal.html',
  styleUrls: ['./food-search-modal.component.css']
})
export class FoodSearchComponentModal {}
