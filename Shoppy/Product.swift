//
//  ProductStruct.swift
//  Shoppy
//
//  Created by Jose Martinez on 1/16/19.
//  Copyright © 2019 Jose Martinez. All rights reserved.
//

import Foundation
import UIKit

//TODO add CustomStringConvertible protocol
class Product: CustomStringConvertible {
    
    var name: String
    var price: Double
    var info: String
    var image: UIImage?
    
    var description: String {
        
        return "\(name), \(price), \(info), \(String(describing: image))"
    }

    init?(name: String, price: Double, info: String, image: UIImage?){
        
        //initialization fails if there is no name or price is not a number.
        if name.isEmpty || price.isNaN{
            return nil
        }
        
        self.name = name
        self.price = price
        self.info = info
        self.image = image
    }
    
    
}
