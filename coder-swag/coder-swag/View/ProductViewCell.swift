//
//  ProductViewCell.swift
//  coder-swag
//
//  Created by Abdulrohim 'Him' Sama on 8/5/2561 BE.
//  Copyright © 2561 Abdulrohim 'Him' Sama. All rights reserved.
//

import UIKit

class ProductViewCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!

    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
