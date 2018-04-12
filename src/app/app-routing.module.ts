import { NgModule }             from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { HomeComponent }        from './home/home.component';
import { FoodComponent }        from './foods/food/food.component';
import { FoodDetailComponent }        from './foods/food-detail/food-detail.component';
import { UserComponent }        from './users/user/user.component';
import { UserProfileComponent }        from './users/user-profile/user-profile.component';
import { UserDetailComponent }        from './users/user-detail/user-detail.component';

const routes: Routes = [
  { path: '', redirectTo: '/home', pathMatch: 'full' },
  { path: 'home', component: HomeComponent },
  { path: 'food', component: FoodComponent },
  { path: 'user', component: UserComponent },
  { path: 'profile', component: UserProfileComponent }
];

@NgModule({
  imports: [ RouterModule.forRoot(routes) ],
  exports: [ RouterModule ]
})
export class AppRoutingModule { }
