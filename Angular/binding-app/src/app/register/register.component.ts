import { Component } from '@angular/core';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss']
})
export class RegisterComponent {
  title="manavan"
   add() {
    alert("hi everyone");
  }
  name:string="hemthath";
  imgpath:string="https://angular.io/assets/images/logos/angular/logo-nav@2x.png";
}
