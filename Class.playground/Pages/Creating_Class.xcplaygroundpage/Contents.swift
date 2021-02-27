//: [Previous](@previous)

import Foundation

class Dog {
    var name: String
    var breed: String
    
    init (name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let mydog = Dog(name: "Pheobe", breed: "Pug")
print("My dog name is \(mydog.name) and its breed is \(mydog.breed)")

//: [Next](@next)
