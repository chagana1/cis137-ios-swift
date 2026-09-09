import UIKit

/* Assignment #3
 Ajay Chagan
 09/08/2026 */

// Celsius to Fahrenheit conversion 1
func c2f (_ celsius: Double) -> Double {
    return (celsius * (9 / 5)) + 32
}

// Fahrenheit to Celsius conversion 2
func f2c (_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5 / 9
}

// Celsius to Kelvin conversion 3
func c2k (_ celsuis: Double) -> Double {
    return (celsius + 273.15)
}

// Kelvin to Celsius conversion 4
func k2c (_ kelvin: Double) -> Double {
    return (273.15 - celsius)
}

// Fahrenheit to Kelvin conversion 5
func f2k (_ fahrenheit: Double) -> Double {
    return ((fahrenheit - 32) * 5/9 + 273.15)
}

// Kelvin to Fahrenheit conversion 6
func k2f (_ kelvin: Double) -> Double {
    return ((kelvin - 273.15) * 9/5 + 32)
}

let fahrenheit = c2f(23)
print("23°C is \(fahrenheit)°F")

let celsius = f2c(73)
print("73°F is \(celsius)°C")

func convertTemperature(_ temperature: Int, using conversionFormula: (Double) -> Double) -> Double {
    return conversionFormula(Double(temperature))
}

let tempInFc = convertTemperature(26, using: c2f)
print("26°C = \(tempInFc)°F")

let tempInCf = convertTemperature(77, using: f2c)
print("77°F = \(tempInCf)°C")

let tempInCk = convertTemperature(25, using: c2k)
print("25°C = \(tempInCk) K")

let tempInKc = convertTemperature(290, using: k2c)
print("290 K = \(tempInKc)°C")

let tempInFk = convertTemperature(71, using: f2k)
print("71°F = \(tempInFk) K")

let tempInKf = convertTemperature(295, using: k2f)
print("295 K = \(tempInKf)°F")


