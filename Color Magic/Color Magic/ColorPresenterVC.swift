//
//  ViewController.swift
//  Color Magic
//
//  Created by Abdulrohim 'Him' Sama on 13/4/2561 BE.
//  Copyright © 2561 Abdulrohim 'Him' Sama. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate  {

    @IBOutlet weak var colorLabelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPIckerVC" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else { return }
            
            colorPickerVC.delegate = self
        }
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        colorLabelName.text = colorName
        view.backgroundColor = color
    }
}

