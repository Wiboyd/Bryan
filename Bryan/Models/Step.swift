//
//  Step.swift
//  Bryan
//
//  Created by Arnaud Miguet on 14/10/2017.
//  Copyright © 2017 Arnaud Miguet. All rights reserved.
//

import UIKit

class Step: NSObject {
    private var instruction: String
    weak var recipee: Recipee?
    
    init(instruction: String) {
        self.instruction = instruction
        super.init()
    }
    
    func getInstruction() -> String {
        var output = ""
        var isInMarkup = false
        var id = ""
        for character in self.instruction {
            switch character {
            case "[":
                isInMarkup = true
                break
            case "]":
                isInMarkup = false
                output += self.recipee!.ingredients[Int(id)!]!.getDescriptionWithAmount()
                id = ""
                break
            default:
                if isInMarkup {
                    id += String(character)
                } else {
                    output += String(character)
                }
            }
        }
        return output
    }
    
    func getRawInstruction() -> String {
        return self.instruction
    }
}
