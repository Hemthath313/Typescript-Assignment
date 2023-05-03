import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'Templete-app';
  name:string="hemthath";

  getinfo():string{
    return"welcome to our page";
  }

  

}
