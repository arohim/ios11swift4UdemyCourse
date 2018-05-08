//
//  ProductVC.swift
//  coder-swag
//
//  Created by Abdulrohim 'Him' Sama on 8/5/2561 BE.
//  Copyright © 2561 Abdulrohim 'Him' Sama. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.delegate = self
        productsCollection.dataSource = self
    }
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductViewCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            
            return cell
        }
        
        return ProductViewCell()
    }
}
