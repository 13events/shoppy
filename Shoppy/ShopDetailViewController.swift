//
//  ShopDetailViewController.swift
//  Shoppy
//
//  Created by Jose Martinez on 1/17/19.
//  Copyright © 2019 Jose Martinez. All rights reserved.
//

import UIKit

class ShopDetailViewController: UIViewController {

    var product: Product?
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Setup UI
        setCurvedBorders(label: productDescriptionLabel)
        setProductLabels(product: product)
        
        }
    
    
    func setCurvedBorders(label: UILabel){
        productDescriptionLabel.layer.cornerRadius = 1
        productDescriptionLabel.layer.borderWidth = 0.5
        productDescriptionLabel.layer.borderColor = UIColor.black.cgColor
    }
    
    func setProductLabels(product: Product?){
        if let product = product {
            productImage.image = product.image
            productNameLabel.text = product.name
            productPriceLabel.text = String(format: "$%.2f", product.price)
            productDescriptionLabel.text = product.info
            productDescriptionLabel.sizeToFit()
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
