//
//  main.swift
//  DeficientPerfectAbundant2024
//
//  Created by Russell Gordon on 2024-09-23.
//

import Foundation

// FUNCTIONS
func getInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
    
    // Loop until a valid value is provided
    while true {
        
        // Prompt the user
        print(prompt)
        
        // Collect the input
        guard let givenInput = readLine() else {
            continue
        }
        
        // Convert to an integer
        guard let givenInteger = Int(givenInput) else {
            continue
        }
        
        // If a lowest value for the integer was specified...
        if let minimumValue = minimum {
            
            // ... then check that the given integer is greater than or equal to the lowest desired value.
            guard givenInteger >= minimumValue else {
                continue
            }
            
        }
        
        // If an highest possible value for the integer was specified...
        if let maximumValue = maximum {
            
            // ... then check that the given integer is less than or equal to the highest desired value.
            guard givenInteger <= maximumValue else {
                continue
            }
            
            
        }
        
        // If we've made it past all the checks, the input is an integer in the desired range of values, so, return it
        return givenInteger
        
    }
    
}

func getSumOfProperDivisors(for number: Int) -> Int {
    
    // Special case
    if number == 1 {
        return 1
    }
    
    // Track sum of divisors
    var sum = 0
    for i in 1...number - 1 {
        
        // Is the current value, "i", a divisor of "number"
        let result = isDivisor(dividend: number, divisor: i)
        
        // It is a divisor, so add to the sum of divisors
        if result == true {
            sum += i
        }
        
    }
    
    // Return the sum of proper divisors
    return sum
}

func isDivisor(dividend: Int, divisor: Int) -> Bool {
    // Add logic to determine whether provided divisor actually
    // goes evenly into the provided dividend
    // (e.g.: remainder is zero)
 
    // Return the result...
    if dividend % divisor == 0 {
        return true
    } else {
        return false
    }
}

print(getSumOfProperDivisors(for: 4))   // 1 + 2 == 3 (deficient)
print(getSumOfProperDivisors(for: 6))   // 1 + 2 + 3 == 6 (perfect)
print(getSumOfProperDivisors(for: 12))  // 1 + 2 + 3 + 4 + 6 == 16 (abundant)

