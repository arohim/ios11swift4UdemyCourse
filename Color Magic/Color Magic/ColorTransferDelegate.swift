//
//  ColorTransferDelegate.swift
//  Color Magic
//
//  Created by Abdulrohim 'Him' Sama on 13/4/2561 BE.
//  Copyright © 2561 Abdulrohim 'Him' Sama. All rights reserved.
//

import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
}
