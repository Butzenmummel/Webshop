import { Products } from "./Product";

export class CartItem{
    constructor(public product:Products){ }
    quantity:number = 1;
    price:number = this.product.price;
}