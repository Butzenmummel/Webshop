import { Injectable } from '@angular/core';
import { Cart } from 'app/shared/models/Cart';
import { CartItem } from 'app/shared/models/CartItem';
import { Products } from 'app/shared/models/Product';
import { BehaviorSubject, Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CartService {
  private cart:Cart = this.getCartFromLocalStorage();
  private cartSubject:BehaviorSubject<Cart> = new BehaviorSubject(this.cart);
  constructor() { }

  addToCart(product:Products):void{
    let cartItem = this.cart.items
    .find(item => item.product.id === product.id);
    if (cartItem)
      return;

    this.cart.items.push(new CartItem(product));
    this.setCartToLocalStorage();
  }

  removeFromCart(productID: number):void{
    this.cart.items = this.cart.items
    .filter(item => item.product.id != productID  );
    this.setCartToLocalStorage();
  }

  changeQuantity(productID:number, quantity: number) {
    let cartItem = this.cart.items
    .find(item => item.product.id === productID);
    if(!cartItem) return;

    cartItem.quantity = quantity;
    cartItem.price = quantity * cartItem.product.price;
    this.setCartToLocalStorage();
  }

  clearCart(){
    this.cart = new Cart();
    this.setCartToLocalStorage();
  }

  getCartObservable():Observable<Cart>{
    return this.cartSubject.asObservable();
  }

  private setCartToLocalStorage():void{
    this.cart.totalPrice = this.cart.items
    .reduce((prevSum, currentItem) => +prevSum + +currentItem.price, 0);
    this.cart.totalCount = this.cart.items
    .reduce((prevSum, currentItem) => +prevSum + +currentItem.quantity, 0);

    const cartJson = JSON.stringify(this.cart);
    localStorage.setItem('Cart', cartJson);
    this.cartSubject.next(this.cart);
  }

  private getCartFromLocalStorage():Cart{
    const cartJson = localStorage.getItem('Cart');
    return cartJson? JSON.parse(cartJson): new Cart();
  }
}
