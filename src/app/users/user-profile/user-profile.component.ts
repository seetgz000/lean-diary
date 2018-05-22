import { Component, OnInit, HostBinding } from '@angular/core';
import { User } from '../user';

import { slideLeftAnimation } from '../../animation';

import { Food } from '../../foods/food';
import { FoodService } from '../../food.service';

@Component({
  selector: 'app-user-profile',
  templateUrl: './user-profile.component.html',
  styleUrls: ['./user-profile.component.css'],
  animations: [slideLeftAnimation]
})
export class UserProfileComponent implements OnInit {

  @HostBinding('@routeAnimation') routeAnimation = true;
  @HostBinding('style.display')   display = 'block';
  @HostBinding('style.position')  position = 'absolute';
  @HostBinding('style.width')  width = '100vw';
  @HostBinding('style.zIndex')  zIndex = '1000';

  editProfile: boolean;

  user: User = {
    id: 1,
    name: 'Your Name',
    age: 1,
    gender: 'MALE',
    weight: 1,
    height: 1,
    mealPerDay: 3,
    targetWeight: 1,
    activityLevel: 'Medium'
  };

  constructor() {
      this.editProfile = false;
  }

  ngOnInit() {
  }

  showEdit(){
    this.editProfile = true;
  }
  saveEdit(){
    this.editProfile = false;
  }

}
