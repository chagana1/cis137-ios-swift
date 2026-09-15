import UIKit

/* Assignment 4
   Ajay Chagan
   09/13/2026 */

//Defining and Using the Property Wrapper

/* My attempt was to give the setter a string to print, but after a few iterations I was not able to print.  I used the propertyWrapper to either get the value from the var or set it to a message.  I noticed the program was not working as intended so I also edited the init, which also has a String message that handles empty strings*/

@propertyWrapper
struct NonEmpty {
    private var value: String
    
    var wrappedValue: String {
        get {
            value
        }
        set {
            if newValue.isEmpty {
                //Idea is to print something useful to student
                print("Please fill your name")
                return
            } else {
                value = newValue
            }
        }
    }

// Removed because I could not get the empty string to show the message
/* init (wrappedValue: String) {
     self.value = wrappedValue
     }
} */

//made this after trying to make the above init work
    init(wrappedValue: String) {
        if wrappedValue.isEmpty {
            self.value = "Please fill in your name"
        } else {
            self.value = wrappedValue
        }
    }
}

//added propertyWrapper to variables
struct Student {
    @NonEmpty var firstName: String
    @NonEmpty var lastName: String
}

var newStudent01 = Student(firstName: "Ajay", lastName: "Chagan")
//var newStudent02 = Student(firstName: "Bob", lastName: "Frost")
//var newStudent03 = Student(firstName: "", lastName: "NoName")


//Print Student Name, also practice students
print(newStudent01.firstName, newStudent01.lastName)
//print(newStudent02.firstName, newStudent02.lastName)
//print(newStudent03.firstName, newStudent03.lastName)

