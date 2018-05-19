import { Component, OnInit } from '@angular/core';

import { UserRegisterComponent,UserRegisterComponentModal } from '../user-register/user-register.component';
import { UserService } from '../../user.service';

@Component({
  selector: 'app-user-login',
  templateUrl: './user-login.component.html',
  styleUrls: ['./user-login.component.css']
})
export class UserLoginComponent implements OnInit {

  constructor(private userService: UserService) {}

  openLoginDialog = new this.userService.openDialog( UserLoginComponentModal, "userLoginModal" );

  ngOnInit() {
    setTimeout(() => this.openLoginDialog(), 0);
  }
}
@Component({
  selector: 'app-user-login-modal',
  templateUrl: './user-login-modal.html',
  styleUrls: ['./user-login.component.css']
})
export class UserLoginComponentModal {}
