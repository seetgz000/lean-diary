import { Component, OnInit } from '@angular/core';
import {MatDialog} from '@angular/material';

@Component({
  selector: 'app-user-register',
  templateUrl: './user-register.component.html',
  styleUrls: ['./user-register.component.css']
})
export class UserRegisterComponent implements OnInit {

  constructor(public dialog: MatDialog) {}

  openDialog() {
    const dialogRef = this.dialog.open(UserRegisterComponentModal, {
        autoFocus: false,
        id: 'userRegisterModal',
        panelClass: 'noPaddingModal' 
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log(`Dialog result: ${result}`);
    });
  }

  ngOnInit() {
    setTimeout(() => this.openDialog(), 0);
  }

}
@Component({
  selector: 'app-user-register-modal',
  templateUrl: './user-register-modal.html',
  styleUrls: ['./user-register.component.css']
})
export class UserRegisterComponentModal {}
