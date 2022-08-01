//: [Previous](@previous)

import Foundation

class Dog {
    func breed() {
        print("I am breed in the parent class")
    }
}

class Puppy: Dog {
    override func breed() {
        print ("I am the puppy breed")
    }
}
//: [Next](@next)

let doggy = Puppy()
let doggyParent = Dog()
doggy.breed()
doggyParent.breed()
