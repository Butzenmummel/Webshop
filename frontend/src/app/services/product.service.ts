import { Injectable } from '@angular/core';
import { PRODUCTS_BY_FILAMENTYPES_URL,
  PRODUCTS_BY_ID_URL,
  PRODUCTS_BY_MANUFACTURER_URL,
  PRODUCTS_BY_PRINTINGPROCESS_URL,
  PRODUCTS_PRINTINGPROCESS_URL,
  PRODUCTS_BY_SEARCH_URL,
  PRODUCTS_FILAMENTYPES_URL,
  PRODUCTS_MANUFACTURER_URL,
  PRODUCTS_URL } from 'app/shared/constants/urls';
import { Products } from 'app/shared/models/Product';
import { FilamentType, Manufacturer, PrintingProcess } from 'app/shared/models/Category';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';



@Injectable({
  providedIn: 'root'
})
export class ProductService {

  constructor(private http:HttpClient) { }

  getAll(): Observable<Products[]> {
    return this.http.get<Products[]>(PRODUCTS_URL);
  }
  // Suchbegriff abgleichen (non case sensitive)
  getAllProductsBySearchTerm(searchTerm:string){
    return this.http.get<Products[]>(PRODUCTS_BY_SEARCH_URL +  searchTerm);
  }

  // Alle Hersteller für Filter
  getAllManufacturer():Observable<Manufacturer[]> {
    return this.http.get<Manufacturer[]>(PRODUCTS_MANUFACTURER_URL);
  }
  // Hersteller mit Produkten abgleichen
  getAllProductsByManufacturer(manufacturer:number):Observable<Products[]>{
    return this.http.get<Products[]>(PRODUCTS_BY_MANUFACTURER_URL +  manufacturer);
  }

  // Alle Filament Typen für Filter
  getAllFilamentTypes():Observable<FilamentType[]>{
    return this.http.get<FilamentType[]>(PRODUCTS_FILAMENTYPES_URL);
  }
  // Filament Typen mit Produkten abgleichen
  getAllProductsByFilamentTypes(filamentType:string):Observable<Products[]>{
    return this.http.get<Products[]>(PRODUCTS_BY_FILAMENTYPES_URL +  filamentType);
  }

  // Alle Druck Prozesse für Filter
  getAllPrintingProcesses():Observable<PrintingProcess[]>{
    return this.http.get<PrintingProcess[]>(PRODUCTS_PRINTINGPROCESS_URL);
  }
  // Druck Prozesse mit Produkten abgleichen
  getAllProductsByPrintingProcesses(printingProcess:string):Observable<Products[]>{
    return this.http.get<Products[]>(PRODUCTS_BY_PRINTINGPROCESS_URL +  printingProcess);
  }
  
  // Einzelnes Produkt nach ID für Produktansicht
  getProductByID(productID:string):Observable<Products>{
    return this.http.get<Products>(PRODUCTS_BY_ID_URL + productID);
  }

}
