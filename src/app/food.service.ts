import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs/Observable';
import { of } from 'rxjs/observable/of';
import { catchError, map, tap } from 'rxjs/operators';
import { Subject }    from 'rxjs/Subject';

@Injectable()
export class FoodService {

  constructor() { }
  
  selectedImage;

  setSelectedImage(image){
    this.selectedImage= image;	
 }

 getSelectedImage() {
   return this.selectedImage;
 }
}
