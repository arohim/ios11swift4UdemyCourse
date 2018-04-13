//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Abdulrohim 'Him' Sama on 13/4/2561 BE.
//  Copyright © 2561 Abdulrohim 'Him' Sama. All rights reserved.
//

import Foundation

enum SwitchStatus: Toggleable {
    case on, off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
