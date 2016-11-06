//
//  Stack.swift
//  PalindromeTest
//
//  Created by Aleksei Danilov on 06.11.16.
//  Copyright © 2016 Aleksei Danilov. All rights reserved.
//

import Foundation

class Stack {
    var arr: [Character]
    
    init() {
        self.arr = [Character]()
    }
    
    func peek() -> Character? {
        return self.arr.last
    }
    
    func pop() -> Character {
        return self.arr.removeLast()
    }
    
    func push(ch: Character) -> Void {
       self.arr.append(ch)
    }
    
}
