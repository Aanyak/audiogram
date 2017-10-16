//
//  HelpViewController.swift
//  AudiogramTestApp
//
//  Created by Aanya Khaira on 8/11/17.
//  Copyright © 2017 testCompany. All rights reserved.
//

import UIKit
class HelpViewController:UIViewController{
    @IBOutlet var backBtn: UIButton!
    
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

