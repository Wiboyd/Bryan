//
//  Step.swift
//  Bryan
//
//  Created by Arnaud Miguet on 14/10/2017.
//  Copyright © 2017 Arnaud Miguet. All rights reserved.
//

import UIKit

class Step: NSObject {
    var id: Int
    var instruction: String
    
    init(id: Int, instruction: String) {
        self.id = id
        self.instruction = instruction
    }
}
