import { Component, OnInit } from '@angular/core';
import { FoodSearchComponent,FoodSearchComponentModal } from '../foods/food-search/food-search.component';
import {MatDialog} from '@angular/material';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
   constructor(public dialog: MatDialog){}

   openSearchModal() {
     const dialogRef = this.dialog.open(FoodSearchComponentModal, {
         autoFocus: false,
         id: 'foodSearchModal',
         panelClass: 'noPaddingModal',
         maxWidth: '800px'
     });

     dialogRef.afterClosed().subscribe(result => {
       console.log(`Dialog result: ${result}`);
     });
   }

  ngOnInit() {
  }

}
