import { Component, OnInit } from '@angular/core';
import {MatDialog} from '@angular/material';

import { switchModalAnimation } from '../../animation';

import { UserService } from '../../user.service';



@Component({
  selector: 'app-user-login-register',
  templateUrl: './user-login-register.component.html',
  styleUrls: ['./user-login-register.component.css'],
  animations: [switchModalAnimation]
})
export class UserLoginRegisterComponent implements OnInit {

  constructor(public dialog: MatDialog) {}

  openRegisterDialog() {
    const dialogRef = this.dialog.open(UserLoginRegisterComponentModal, {
        autoFocus: false,
        panelClass: 'noPaddingModal'
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log(`Dialog result: ${result}`);
    });  
    
  }
      


  ngOnInit() {
    setTimeout(() => this.openRegisterDialog(), 500);
  }

}
@Component({
  selector: 'app-user-login-register-modal',
  templateUrl: './user-login-register-modal.html',
  styleUrls: ['./user-login-register.component.css'],
  animations: [switchModalAnimation]
})
export class UserLoginRegisterComponentModal {

  constructor(){}

  state = 'register'

  toggleLoginRegisterState() {
    this.state = this.state === 'login' ? 'register' : 'login';
  }

  ngOnInit() {
  }
}
