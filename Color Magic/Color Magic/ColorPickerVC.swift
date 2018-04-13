//
//  ColorPickerVC.swift
//  Color Magic
//
//  Created by Abdulrohim 'Him' Sama on 13/4/2561 BE.
//  Copyright © 2561 Abdulrohim 'Him' Sama. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate: ColorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func colorBtnWasPressed(sender: UIButton) {
        
        print(sender.titleLabel?.text!)
        
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: (sender.titleLabel?.text!)!)
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
