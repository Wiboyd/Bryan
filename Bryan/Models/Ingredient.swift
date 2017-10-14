//
//  Ingredient.swift
//  Bryan
//
//  Created by Arnaud Miguet on 14/10/2017.
//  Copyright © 2017 Arnaud Miguet. All rights reserved.
//

import UIKit

class Ingredient: NSObject {
    var name: String
    
    var amount: Amount?
    
    init(name: String) {
        self.name = name
        super.init()
    }
}
