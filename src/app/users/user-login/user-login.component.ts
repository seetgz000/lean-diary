import { Component, OnInit } from '@angular/core';
import {MatDialog} from '@angular/material';

import { UserService } from '../../user.service';

import { UserRegisterComponent,UserRegisterComponentModal } from '../user-register/user-register.component';

@Component({
  selector: 'app-user-login',
  templateUrl: './user-login.component.html',
  styleUrls: ['./user-login.component.css']
})
export class UserLoginComponent implements OnInit {

  constructor() {}

  ngOnInit() {
  }
}
@Component({
  selector: 'app-user-login-modal',
  templateUrl: './user-login-modal.html',
  styleUrls: ['./user-login.component.css']
})
export class UserLoginComponentModal {

  constructor(public dialog: MatDialog){}

  switchRegisterDialog() {
    this.dialog.closeAll();

    const dialogRef = this.dialog.open(UserRegisterComponentModal, {
      autoFocus: false,
      id: 'userRegisterModal',
      panelClass: 'noPaddingModal' 
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log(`Dialog result: ${result}`);
    });    
  }

}
