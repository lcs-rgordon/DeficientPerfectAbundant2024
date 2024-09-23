//
//  DeficientPerfectAbundantTests.swift
//  DeficientPerfectAbundantTests
//
//  Created by Russell Gordon on 2024-09-23.
//

import Testing

struct DeficientPerfectAbundantTests {

    // TYPICAL CASES
    @Test func isADeficientNumber() {
        let result = report(on: 4)
        
        #expect(result == "4 is a deficient number.")
    }
    
    @Test func isAPerfectNumber() {
        let result = report(on: 6)
        
        #expect(result == "6 is a perfect number.")
    }

    @Test func isAnAbundantNumber() {
        let result = report(on: 12)
        
        #expect(result == "12 is an abundant number.")
    }
    
    @Test func highNumber() {
        let result = report(on: 30000)

        #expect(result == "30000 is an abundant number.")
    }
    
    @Test func lowNumber() {
        let result = report(on: 28)

        #expect(result == "28 is a perfect number.")
    }
    
    // BOUNDARY CONDITIONS
    @Test func lowestPossibleNumber() {
        let result = report(on: 1)
        
        #expect(result == "1 is a deficient number.")

    }

    @Test func highestPossibleNumber() {
        let result = report(on: 32500)
        
        #expect(result == "32500 is an abundant number.")

    }
    
    // TESTS FOR SUB-FUNCTIONS
    @Test func specialCaseSumOfProperDivisors() {
        let result = getSumOfProperDivisors(for: 1)
        
        #expect(result == 0)
    }
    
    @Test func manyDivisors() {
        let result = getSumOfProperDivisors(for: 12)
        
        #expect(result == 16)
    }
    
    @Test func categorizeDeficient() {
        let result = categorize(number: 8)
        
        #expect(result == "deficient")
    }
    
    @Test func categorizePerfect() {
        let result = categorize(number: 28)
        
        #expect(result == "perfect")
    }
    
    @Test func categorizeAbundant() {
        let result = categorize(number: 24)
        
        #expect(result == "abundant")
    }
    

}
