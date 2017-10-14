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
    
    init(amount: Double, unit: Unit) {
        self.amount = amount
        self.unit = unit
        super.init()
    }
}

enum Unit {
    case Kilograms
    case NoUnit
    case Liters
}
