//
//  Wage.swift
//  window-shopper
//
//  Created by Abdulrohim 'Him' Sama on 26/4/2561 BE.
//  Copyright © 2561 Abdulrohim 'Him' Sama. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
