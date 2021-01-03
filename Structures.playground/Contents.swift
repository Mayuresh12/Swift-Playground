import UIKit

var str = "Hello, playground"


// Creating struct
struct FullName {
    var firstName: String
    var lastName: String
}


let fullName =  FullName(firstName: "John", lastName: "Doe")
print("My name is \(fullName.firstName) \(fullName.lastName)" )


// Computed propertied in struct

// In the above example the firstName and lastName are stored Properties. There are another types of propeties calles as computed properties. Were the value of the property is set according to cerain condition.

struct name {
    var firstName: String
    var lastName: String
    var hasLastName: Bool
    var fullName: String {
        if (hasLastName) {
            return "My fullName is \(firstName) \(lastName)"
        } else {
           return "My fullName is \(firstName)"
        }
    }
    
}

let computedName = name(firstName: "John", lastName: "", hasLastName: false)
print("\(computedName.fullName)" )


// Property Observers in Struct

struct number {
    var didSetNumber: Int {
        didSet {
            print("The value of the number after setting is \(didSetNumber)")
        }
    }
    
    var willSetNumber: Int {
        willSet {
            print("The value of the number before setting is \(willSetNumber)")
        }
    }
}

var num1 = number(didSetNumber: 12, willSetNumber: 13)
num1.didSetNumber = 3
num1.willSetNumber = 23
// here whenever we change the value of the number propetty observer didset prints the statement.


//MARK: methods

struct Profile {
    
    var firtName: String
    var lastName: String
    
    func fullName() -> String {
        return "My name is \(firtName) \(lastName)"
    }
}

let a = Profile(firtName: "John", lastName: "Doe")
print("\(a.fullName())")
