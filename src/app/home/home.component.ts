import { Component, OnInit, HostBinding } from '@angular/core';
import { FoodSearchComponent,FoodSearchComponentModal } from '../foods/food-search/food-search.component';
import {MatDialog} from '@angular/material';

import { slideRightAnimation } from '../animation';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css'],
  animations: [slideRightAnimation]
})
export class HomeComponent implements OnInit {
   constructor(public dialog: MatDialog){}

  @HostBinding('@slideRight') slideRight = true;
  @HostBinding('style.display')   display = 'block';
  @HostBinding('style.position')  position = 'absolute';

   openSearchModal() {
     const dialogRef = this.dialog.open(FoodSearchComponentModal, {
         autoFocus: false,
         id: 'foodSearchModal',
         panelClass: 'noPaddingModal',
         maxWidth: '75vw'
     });

     dialogRef.afterClosed().subscribe(result => {
       console.log(`Dialog result: ${result}`);
     });
   }

  ngOnInit() {
  }

}
