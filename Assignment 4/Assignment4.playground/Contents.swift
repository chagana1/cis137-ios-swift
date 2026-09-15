import UIKit

/* Assignment 4
   Ajay Chagan
   09/13/2026 */

//Defining and Using the Property Wrapper

@propertyWrapper
struct NonEmpty {
    private var value: String
    
    var wrappedValue: String {
        get {
            value
        }
        set {
            if newValue.isEmpty {
                //fill in your name print
                print("Please fill your name")
                return
            } else {
                value = newValue
            }
        }
    }

/* init (wrappedValue: String) {
     self.value = wrappedValue
     }
} */
    
    init(wrappedValue: String) {
        if wrappedValue.isEmpty {
            self.value = "Please fill in your name"
        } else {
            self.value = wrappedValue
        }
    }
}

struct Student {
    @NonEmpty var firstName: String
    @NonEmpty var lastName: String
}

var newStudent01 = Student(firstName: "Ajay", lastName: "Chagan")
//var newStudent02 = Student(firstName: "Bob", lastName: "Frost")
//var newStudent03 = Student(firstName: "", lastName: "NoName")


//Print Student Name
print(newStudent01.firstName, newStudent01.lastName)
//print(newStudent02.firstName, newStudent02.lastName)
//print(newStudent03.firstName, newStudent03.lastName)

