/**
 Assignment #2
 Ajay Chagan
 Aug 30, 2026
 */

import UIKit

let names = ["Anna", "Alex", "Brian", "Jack"]
let greeting = ["Good Morning", "How are you?", "Good to see you", "Good Day!", "What heppened to you?"]
let randomIndex = Int.random(in: 0...4)
let randomGreeting = greeting[randomIndex]

for name in names {
    print((randomGreeting), (name))
}
var nameDict: [String: Int] = ["Anna":24, "Alex":15, "Brian":43, "Jack":60]

for (name, age) in nameDict {
    print("Happy Birthday \(name)! You are \(age) years old.")
    
    switch age {
    case ..<18:
        print("You can almost drive!")
    case 18...25:
        print("Almost able to rent a car!")
    case 26...59:
        print("When is the next road trip?")
    case 60...100:
        print("Where are you traveling to next?")
    default:
        print("Keep taking care of yourself!")
    }
}
