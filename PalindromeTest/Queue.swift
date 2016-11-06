//
//  Queue.swift
//  PalindromeTest
//
//  Created by Aleksei Danilov on 06.11.16.
//  Copyright © 2016 Aleksei Danilov. All rights reserved.
//

import Foundation

class Queue {
    var arr: [Character]
    
    init() {
        self.arr = [Character]()
    }
    
    func enqueue(ch: Character) -> Void {
        self.arr.append(ch)
    }
    
    func peek() -> Character? {
        return self.arr.first
    }
    
    func dequeue() -> Character {
        return self.arr.removeFirst()
    }
}
