import { Component, OnInit } from '@angular/core';
import {MatDialog} from '@angular/material';

import { UserService } from '../../user.service';



@Component({
  selector: 'app-user-login-register',
  templateUrl: './user-login-register.component.html',
  styleUrls: ['./user-login-register.component.css']
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
    setTimeout(() => this.openRegisterDialog(), 0);
  }

}
@Component({
  selector: 'app-user-login-register-modal',
  templateUrl: './user-login-register-modal.html',
  styleUrls: ['./user-login-register.component.css']
})
export class UserLoginRegisterComponentModal {

  constructor(){}

  modalType: string;

  changeModal(ModalType: string){
    
    this.modalType = ModalType;
  }

  ngOnInit() {
    this.modalType = "register";
  }
}
