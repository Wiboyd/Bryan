//
//  Amount.swift
//  Bryan
//
//  Created by Arnaud Miguet on 14/10/2017.
//  Copyright © 2017 Arnaud Miguet. All rights reserved.
//

import UIKit

class Amount: NSObject {
    var amount: Double
    var unit: Unit
    var ingredient: Int
    
    init(amount: Double, unit: Unit, ingredient: Int) {
        self.amount = amount
        self.unit = unit
        self.ingredient = ingredient
        super.init()
    }
    
    func getDescriptionWithAmount() -> String {
        switch self.unit {
        case .NoUnit:
            return INGREDIENTS[self.ingredient]!.name
        case .Unit:
            return String(self.amount) + " " + INGREDIENTS[self.ingredient]!.name
        case .Kilograms:
            return String(self.amount) + "kg de " + INGREDIENTS[self.ingredient]!.name
        case .Liters:
            return String(self.amount) + "l de " + INGREDIENTS[self.ingredient]!.name
        }
    }
}

enum Unit {
    case Kilograms
    case NoUnit
    case Liters
    case Unit
}
