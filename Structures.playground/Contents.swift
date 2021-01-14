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


// Mutating Methods
// By default the properties in struct are const if you want to modify the values add mutating keyword at the start

struct School {
    var name: String
    mutating func theSchoolName(){
        name = "xyz"
    }
}

var mySchoolName = School(name: "Modern School")
print("My School name is \(mySchoolName.name)")


// Properties of string. String and Array use structs

let string = "How are you?."
print(string.uppercased())


// Struct initializers

struct name1 {
    var firstName : String
}

let firstName1 = name1(firstName: "John")

print(firstName1)

struct name2 {
    var firstName : String
    
    init() {
        firstName = "firstName"
        print("firstName has been created")
    }
}

var b = name2()
print("the default value for name \(b.firstName)")
b.firstName = "John Doe"
print("the default value for name \(b.firstName)")

// refering to the current instance

struct Person {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var person1 = Person(name: "Jon")
print("The value of the current instance \(person1.name)")


// Lazy initializer in Struct

struct Personalprofile {
    init() {
        print("This is my profile..")
    }
}

struct LazyVar {
    var name: String
    lazy var personalProfile = Personalprofile()
    init(name: String) {
        self.name = name
    }
}

var p = LazyVar(name: "LazyOno")

print("lazy var name = \(p.name)")
