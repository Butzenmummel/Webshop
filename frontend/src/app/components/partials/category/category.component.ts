import { Component } from '@angular/core';
import { ProductService } from 'app/services/product.service';
import { Manufacturer, FilamentType, PrintingProcess } from 'app/shared/models/Category';

@Component({
  selector: 'app-category',
  templateUrl: './category.component.html',
  styleUrls: ['./category.component.scss']
})
export class CategoryComponent {
  manufacturers?:Manufacturer[];
  filamentTypes?:FilamentType[];
  printingProcesses?:PrintingProcess[];
  constructor(productService:ProductService) {
    productService.getAllManufacturer().subscribe(serverManufacturer => {
      this.manufacturers = serverManufacturer;
    })
    productService.getAllFilamentTypes().subscribe(serverFilamentTypes => {
      this.filamentTypes = serverFilamentTypes;
    })
    productService.getAllPrintingProcesses().subscribe(serverPrintingProcesses => {
      this.printingProcesses = serverPrintingProcesses;
    })
  }
}
