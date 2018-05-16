import { Component, OnInit } from '@angular/core';
import {MatDialog} from '@angular/material';

import { UserService } from '../../user.service';

import { UserLoginComponent,UserLoginComponentModal } from '../user-login/user-login.component';


@Component({
  selector: 'app-user-register',
  templateUrl: './user-register.component.html',
  styleUrls: ['./user-register.component.css']
})
export class UserRegisterComponent implements OnInit {

  constructor(public dialog: MatDialog) {}

  // private loginDialog = new UserLoginComponent(this.dialog);

  openRegisterDialog() {
    const dialogRef = this.dialog.open(UserRegisterComponentModal, {
        autoFocus: false,
        id: 'userRegisterModal',
        panelClass: 'noPaddingModal' 
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log(`Dialog result: ${result}`);
    });    
  }

  // closeRegisterDialog() {
  //   const dialogRef = this.dialog.(UserRegisterComponentModal);
  // }

  // private switchLoginDialog = this.loginDialog .openLoginDialog();

  ngOnInit() {
    // setTimeout(() => this.openRegisterDialog(), 0);
  }

}
@Component({
  selector: 'app-user-register-modal',
  templateUrl: './user-register-modal.html',
  styleUrls: ['./user-register.component.css']
})
export class UserRegisterComponentModal {}
