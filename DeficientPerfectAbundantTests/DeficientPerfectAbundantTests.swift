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


}
