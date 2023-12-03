import UIKit

func swapToValues<T> (_ a : inout T, _ b: inout T) {
    let tempA = a
    a = b
    b = tempA
    print("Value of a is \(a)")
    print("Value of a is \(b)")
}


var a = 10
var b = 20

swapToValues(&a, &b)
