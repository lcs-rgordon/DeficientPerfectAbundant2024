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

}
