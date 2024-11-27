import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ProductService } from 'app/services/product.service';
import { Products } from 'app/shared/models/Product';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent {

  products:Products[] = [];
  constructor(private productService:ProductService, activatedRoute:ActivatedRoute) {
    let productsObservable:Observable<Products[]>;
    activatedRoute.params.subscribe((params) => {
      if (params.searchTerm) {
        productsObservable = this.productService.getAllProductsBySearchTerm(params.searchTerm);
      }
      else if(params.manufacturer) {
        productsObservable = this.productService.getAllProductsByManufacturer(params.manufacturer);
      }
      else if(params.filamentType)  // Suche nach Filament Typ
        productsObservable = this.productService.getAllProductsByFilamentTypes(params.filamentType);
      else if(params.printingProcess)  // Suche nach Filament Typ
        productsObservable = this.productService.getAllProductsByPrintingProcesses(params.printingProcess);
      else                          // Alle Produkte
        productsObservable = productService.getAll();

        productsObservable.subscribe((serverProducts) => {
          this.products = serverProducts;
        })
    })
  }
}
