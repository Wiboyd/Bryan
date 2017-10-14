//
//  Constants.swift
//  Bryan
//
//  Created by Arnaud Miguet on 14/10/2017.
//  Copyright © 2017 Arnaud Miguet. All rights reserved.
//

import Foundation

let INGREDIENTS: [Int: Ingredient] = [1: Ingredient(name: "carrots"), 2: Ingredient(name: "pepper")]
let AMOUNTS: [Amount] = [Amount(amount: 1, unit: .NoUnit, ingredient: 2), Amount(amount: 3, unit: .Unit, ingredient: 1)]
let STEPS: [Step] = [Step(instruction: "Put [0]"), Step(instruction: "Cut down [1]")]
let RECIPEE: Recipee = Recipee(name: "Carrots and Pepper", steps: STEPS)
