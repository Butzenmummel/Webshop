import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './components/pages/home/home.component';
import { ProductPageComponent } from './components/pages/product-page/product-page.component';
import { CartPageComponent } from './components/pages/cart-page/cart-page.component';

const routes: Routes = [
  // Home
  {path:'', component:HomeComponent},
  // Kategorien und Suchleiste
  {path:'search/:searchTerm', component:HomeComponent},
  {path:'category/manufacturer/id/:manufacturer', component:HomeComponent},
  {path:'category/filamentType/id/:filamentType', component:HomeComponent},
  {path:'category/printingProcess/id/:printingProcess', component:HomeComponent},
  // Einzelproduktansicht
  {path:'product/:id', component:ProductPageComponent},
  //Warenkorb
  {path:'cart-page', component:CartPageComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
