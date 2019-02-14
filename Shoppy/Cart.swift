//
//  Cart.swift
//  Shoppy
//
//  Created by Jose Martinez on 1/21/19.
//  Copyright © 2019 Jose Martinez. All rights reserved.
//

// A Singleton Object representing a cart that hold an array of optional products.
// Use of singleton is required to make sure that we only ever have one
// instance of a Cart object in our application.
import Foundation

class Cart: CustomStringConvertible {
   
    private static let shared = Cart()
    
    var items: [Product?]
    
    
    var description: String {
        if self.isEmpty(){
            return "No items in cart."
        } else {
            return "You have some items in your cart."
        }
    }
    
   /// Initializes instance of cart
   private  init(){
        items = [Product?]()
        print("Cart Created")
    }
    
    /*** Accessors ***/
    
    /// Returns an instance of a cart.
    ///
    /// - Returns: a Cart object reference.
    class func getCart() -> Cart{
        return shared
    }
    
    /// Indicated if the cart is empty.
    ///
    /// - Returns: True if empty.
    func isEmpty() -> Bool{
        
        return items.isEmpty
    }
    
    /*** Mutators ***/
    
    /// Add a product to cart
    ///
    /// - Parameter product: A Product Object to add.
    /// - Returns: True if operation was successful.
    func addProduct(product: Product?) -> Bool{
        if let product = product{
            items.append(product)
            print("Added item to cart: \(product)")
            return true
        } else {
            print("Unable to add item to cart.")
            return false
        }
    }
    
    /// Removes item form cart at a specified index.
    ///
    /// - Parameter index: index of item to remove.
    func removeItemFromCart(index: Int){
    
        items.remove(at: index);
    }
    
   
    
}
