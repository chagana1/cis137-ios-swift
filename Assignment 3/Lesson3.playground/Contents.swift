import UIKit

struct Address {
    var street: String
    var number: Int
    var zip: Int
    var city: String
    var state: String
}

let oneAddress = Address(street: "El Camino Rd", number: 101, zip: 95500, city: "San Mateo", state: "CA")
var secondAddress = oneAddress
secondAddress.number = 222
print(oneAddress)
print(secondAddress)

class Student {
    var id: Int
    var name: String
    var address: Address
    var major: String
    var gpa: Double
    
    init(_ id: Int, _ name:String, _ address: Address, _ major: String, _ gpa: Double) {
        self.id = id
        self.name = name
        self.address = address
        self.major = major
        self.gpa = 0.0
    }
    func calculateGPA() -> Double {
        return 4.0
    }
}

var studentOne = Student(1111, "Anna", oneAddress, "CIS", 4.0)
var studentTwo = studentOne

studentTwo.id = 2222
studentTwo.name = "John"

print(studentOne.name)
print(studentTwo.name)

extension Double {
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var inches: Double { return self * 39.3701 }
}

let meter = 25.m
let oneCentimeter = meter.cm
print("\(meter) meters is \(oneCentimeter) centimeter") // Prints "One inch is 0.025 meters"

let inches = 1.inches
print("1 meter is \(inches) inches")
