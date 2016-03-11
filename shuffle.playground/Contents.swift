//: Playground - noun: a place where people can play

import Cocoa

extension MutableCollectionType where Index == Int {
    /// Shuffle the elements of `self` in-place.
    mutating func shuffleInPlace() {
        // empty and single-element collections don't shuffle
        if count < 2 { return }
        
        for i in 0..<count - 1 {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}

var arrayOfStuff = [1,2,3,4,5,6,7,8,9,10]
arrayOfStuff.shuffleInPlace()