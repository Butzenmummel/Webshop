import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { CartService } from 'app/services/cart.service';
import { ProductService } from 'app/services/product.service';
import { Products } from 'app/shared/models/Product';

@Component({
  selector: 'app-product-page',
  templateUrl: './product-page.component.html',
  styleUrls: ['./product-page.component.scss']
})
export class ProductPageComponent {
  product!: Products;
  constructor(activatedRoute:ActivatedRoute, productService:ProductService,
    private cartService:CartService, private router:Router) {
    activatedRoute.params.subscribe((params) => {
      if(params.id)
        productService.getProductByID(params.id).subscribe(serverProducts => {
          this.product = serverProducts;
        });
    })
  }

  addToCart(){
    this.cartService.addToCart(this.product);
    this.router.navigateByUrl('/cart-page');
  }
}
