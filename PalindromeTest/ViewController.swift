//
//  ViewController.swift
//  PalindromeTest
//
//  Created by Aleksei Danilov on 06.11.16.
//  Copyright © 2016 Aleksei Danilov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onCheckButtonTouched(_ sender: Any) {
       
        if let str = self.textField.text {
            var isPalindrome = true
            let charArr = Array(str.characters)
            let queue = Queue()
            let stack = Stack()
            for ch in charArr {
                queue.enqueue(ch: ch)
                stack.push(ch: ch)
            }
            for _ in 0..<charArr.count {
                if queue.dequeue() != stack.pop() {
                    isPalindrome = false
                    break
                }
            }
            if isPalindrome {
                self.resultLabel.text = "Palindrome!"
            } else {
                self.resultLabel.text = "NOT Palindrome!"
            }
        }
        
    }


}

