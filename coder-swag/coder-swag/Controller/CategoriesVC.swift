//
//  ViewController.swift
//  coder-swag
//
//  Created by Abdulrohim 'Him' Sama on 2/5/2561 BE.
//  Copyright © 2561 Abdulrohim 'Him' Sama. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTable.dataSource = self
        categoryTable.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = Data-Service.instance.getCategories()[indexPath.row]
            
            cell.updateviews(category: category)
            
            return cell
        }
        
        return CategoryCell()
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductVC {
            
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            productVC.initProducts(category: sender as! Category)
            
        }
    }
    

}

