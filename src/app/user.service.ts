import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs/Observable';
import { of } from 'rxjs/observable/of';
import { catchError, map, tap } from 'rxjs/operators';
import { Subject }    from 'rxjs/Subject';

// import {MatDialog} from '@angular/material';

@Injectable()
export class UserService {

  constructor(/* public dialog: MatDialog */) {}

  // openDialog(modalComponent, modalID) {
  //   const dialogRef = this.dialog.open(modalComponent, {
  //       autoFocus: false,
  //       id: modalID,
  //       panelClass: 'noPaddingModal' 
  //   });

  //   dialogRef.afterClosed().subscribe(result => {
  //     console.log(`Dialog result: ${result}`);
  //   });    
  // }
}
