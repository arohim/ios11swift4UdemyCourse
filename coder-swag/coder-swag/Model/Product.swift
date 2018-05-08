//
//  Product.swift
//  coder-swag
//
//  Created by Abdulrohim 'Him' Sama on 8/5/2561 BE.
//  Copyright © 2561 Abdulrohim 'Him' Sama. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
