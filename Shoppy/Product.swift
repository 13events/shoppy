//
//  ProductStruct.swift
//  Shoppy
//
//  Created by Jose Martinez on 1/16/19.
//  Copyright © 2019 Jose Martinez. All rights reserved.
//

import Foundation
import UIKit

class Product {
    
    var name: String
    var price: Double
    var description: String
    var image: UIImage?

    init?(name: String, price: Double, description: String, image: UIImage?){
        
        //initialization fails if there is no name or price is not a number.
        if name.isEmpty || price.isNaN{
            return nil
        }
        
        self.name = name
        self.price = price
        self.description = description
        self.image = image
    }
    
    
}
