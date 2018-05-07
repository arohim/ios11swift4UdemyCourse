//
//  Category.swift
//  coder-swag
//
//  Created by Abdulrohim 'Him' Sama on 7/5/2561 BE.
//  Copyright © 2561 Abdulrohim 'Him' Sama. All rights reserved.
//

import Foundation

struct Category {
    private(set) public  var title: String!
    private(set) public var imageName: String!
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
