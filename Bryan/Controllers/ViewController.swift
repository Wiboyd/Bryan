//
//  ViewController.swift
//  Bryan
//
//  Created by Arnaud Miguet on 14/10/2017.
//  Copyright © 2017 Arnaud Miguet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        STEPS[0].recipee = RECIPEE
        STEPS[1].recipee = RECIPEE
        
        print(RECIPEE.steps[0].getInstruction())
        print(RECIPEE.steps[1].getInstruction())
    }
}

