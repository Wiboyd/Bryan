//
//  NewRecipeeViewController.swift
//  Bryan
//
//  Created by Arnaud Miguet on 14/10/2017.
//  Copyright © 2017 Arnaud Miguet. All rights reserved.
//

import UIKit

class NewRecipeeViewController: UIViewController {
    var recipee = Recipee(name: "", steps: [])
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        (segue.destination as! NewStepViewController).recipeeViewController = self
        (segue.destination as! NewStepViewController).step = Step(instruction: "")
    }
}
