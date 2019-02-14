//
//  ShopViewControllerTableViewController.swift
//  Shoppy
//
//  Created by Jose Martinez on 1/16/19.
//  Copyright © 2019 Jose Martinez. All rights reserved.
//

import UIKit

class ShopViewControllerTableViewController: UITableViewController {

    var products = [Product?]()
    var  cart: Cart = Cart.getCart()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       products = generateSampleProductList()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return products.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as? ProductTableViewCell else {
            fatalError("The dequeued cell is not an instance of ProductTableViewCell.")
            
        }

        guard let product = products[indexPath.row] else {
            fatalError("Could not get product at index row.")
        }
        // Configure the cell...
        cell.productName.text = product.name
        cell.productPrice.text = String(format: "$%.2f", product.price)
        cell.productImage.image = product.image

        return cell
    }
    
    func generateSampleProductList() -> [Product?]{
        
        products.append(Product.init(name: "Cool Fork", price: 10.00, info: "Cool Fork", image: UIImage(named: "coolFork")))
        products.append(Product.init(name: "Time Machine", price: 200.00, info: "Go back in time and save the world.", image: UIImage(named:"timeMachine")))
        return products
    }
    
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        
        if segue.identifier == "shopDetailSegue"{
            
            //grab destination view controller
            let shopDetailViewController = segue.destination as! ShopDetailViewController
        
            //get index path of selected row
            guard  let indexPath = tableView?.indexPathForSelectedRow else {
                fatalError("Failed to get selected index path for ShopDetailSegue transition.")
            }
            
            //get product from products array
            let product = products[indexPath.row]
            
            //TODO: Pass the product to the ShopDetailViewController.
            shopDetailViewController.product = product
        }
        
    }
    

}
