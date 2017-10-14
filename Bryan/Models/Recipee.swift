//
//  Recipee.swift
//  Bryan
//
//  Created by Arnaud Miguet on 14/10/2017.
//  Copyright © 2017 Arnaud Miguet. All rights reserved.
//

import UIKit

class Recipee: NSObject {
    var id: Int
    var name: String
    
    var ingredients: [Ingredient]
    var steps: [Step]
    
    init(id: Int, name: String, ingredients: [Ingredient], steps: [Step]) {
        self.id = id
        self.name = name
        self.ingredients = ingredients
        self.steps = steps
        super.init()
    }
}
