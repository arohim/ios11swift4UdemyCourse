//
//  ViewController.swift
//  app-swoosh
//
//  Created by Abdulrohim 'Him' Sama on 15/4/2561 BE.
//  Copyright © 2561 Abdulrohim 'Him' Sama. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var bgImg: UIImageView!
    @IBOutlet weak var swoosh: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        swoosh.frame = CGRect(x: view.frame.size.width / 2 - swoosh.frame.size.width / 2, y: 50, width: swoosh.frame.size.width, height: swoosh.frame.size)
    }
    
    @IBAction func unwindFromSkillVC(unwindSeque: UIStoryboardSegue) {
        
    }

}

