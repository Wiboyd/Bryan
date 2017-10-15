//
//  Recipee.swift
//  Bryan
//
//  Created by Arnaud Miguet on 14/10/2017.
//  Copyright © 2017 Arnaud Miguet. All rights reserved.
//

import UIKit

class Recipee: NSObject {
    var name: String
    
    var steps: [Step]
    
    var ingredients: [Int: Amount]
    
    init(name: String, steps: [Step], ingredients: [Int: Amount] = [:]) {
        self.name = name
        self.steps = steps
        self.ingredients = ingredients
        super.init()
    }
}
