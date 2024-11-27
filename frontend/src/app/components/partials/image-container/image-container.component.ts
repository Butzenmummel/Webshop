import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ProductService } from 'app/services/product.service';
import { Products } from 'app/shared/models/Product';


@Component({
  selector: 'app-image-container',
  templateUrl: './image-container.component.html',
  styleUrls: ['./image-container.component.scss']
})
export class ImageContainerComponent {
  product!: Products;
  constructor(activatedRoute:ActivatedRoute, productService:ProductService,
    private router:Router) {
    activatedRoute.params.subscribe((params) => {
      if(params.id)
        productService.getProductByID(params.id).subscribe(serverProducts => {
          this.product = serverProducts;
        });
    })
  }

}
