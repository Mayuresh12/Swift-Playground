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

class Poddle: Dog{
    init(name: String) {
        super.init(name: name, breed: "Poodle" )
    }
}

let dog1 = Poddle(name: "Maximus")
print("The name of the dog is = \(dog1.name) \n and breed is = \(dog1.breed) ")
//: [Next](@next)
