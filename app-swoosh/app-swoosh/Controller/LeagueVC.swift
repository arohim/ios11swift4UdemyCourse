//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Abdulrohim 'Him' Sama on 17/4/2561 BE.
//  Copyright © 2561 Abdulrohim 'Him' Sama. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onNextTapped(_ sender: BorderButton) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }

}
