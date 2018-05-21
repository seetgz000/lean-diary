/* JavaScript imports */
import {CdkTableModule} from '@angular/cdk/table';
import {HttpClientModule} from '@angular/common/http';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import {
    MatDialogModule
} from '@angular/material';
import { BrowserModule } from '@angular/platform-browser';
import {platformBrowserDynamic} from '@angular/platform-browser-dynamic';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';

import { AppComponent } from './app.component';
import { FoodComponent } from './foods/food/food.component';
import { FoodSearchComponent,FoodSearchComponentModal } from './foods/food-search/food-search.component';
import { UserComponent } from './users/user/user.component';
import { UserLoginRegisterComponent,UserLoginRegisterComponentModal } from './users/user-login-register/user-login-register.component';

import { HomeComponent } from './home/home.component';
import { FoodDetailComponent } from './foods/food-detail/food-detail.component';
import { UserDetailComponent } from './users/user-detail/user-detail.component';

import { FoodService } from './food.service';
import { UserService } from './user.service';
import { FoodGalleryComponent } from './foods/food-gallery/food-gallery.component';
import { UserProfileComponent } from './users/user-profile/user-profile.component';


import { AppRoutingModule } from './app-routing.module'
/* the AppModule class with the @NgModule decorator */
@NgModule({
  exports: [
    CdkTableModule,
    MatDialogModule
  ],
})
export class MaterialModule {}

@NgModule({
  declarations: [
    AppComponent,
    FoodComponent,
    FoodSearchComponent,
    FoodSearchComponentModal,
    UserComponent,
    UserLoginRegisterComponent,
    UserLoginRegisterComponentModal,
    HomeComponent,
    FoodDetailComponent,
    UserDetailComponent,
    FoodGalleryComponent,
    UserProfileComponent
    
  ],
  entryComponents: [
    FoodSearchComponent,
    FoodSearchComponentModal,
    UserLoginRegisterComponent,
    UserLoginRegisterComponentModal],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    HttpClientModule,
    MaterialModule,
    ReactiveFormsModule,
    FormsModule,
    HttpModule,
    AppRoutingModule
  ],
  providers: [FoodService, UserService],
  bootstrap: [AppComponent]
})
export class AppModule { }
