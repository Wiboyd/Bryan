//
//  NewStepViewController.swift
//  Bryan
//
//  Created by Arnaud Miguet on 14/10/2017.
//  Copyright © 2017 Arnaud Miguet. All rights reserved.
//

import UIKit

class NewStepViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet var stepTextView: UITextView!
    
    var recipeeViewController: NewRecipeeViewController!
    
    var step: Step!
    
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if (text == "") {
            if ((self.stepTextView.text as NSString).substring(with: range) == "]") {
                
                var count = 1
                for i in (0..<(range.location - 1)).reversed() {
                    count += 1;
                    if(self.stepTextView.text[self.stepTextView.text.index(self.stepTextView.text.startIndex, offsetBy: i)] == "[") {
                        break;
                    }
                }
                
                let newRange = NSRange(location: 0, length: range.location - count)
                self.stepTextView.text = (self.stepTextView.text as NSString).substring(with: newRange)
                
                return false;
            }
        }
        return true
    }
    

}
