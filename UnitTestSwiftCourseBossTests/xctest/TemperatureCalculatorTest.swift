//
//  TemperatureCalculatorTest.swift
//  UnitTestSwiftCourseBossTests
//
//  Created by Sidney MALEO on 17/03/2024.
//

import Foundation

import XCTest
@testable import UnitTestSwiftCourseBoss

class TemperatureCalculatorTest: XCTestCase {
    var sut: TemperatureCalculator?
    
    override func setUp() async throws {
        sut = TemperatureCalculator()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testToFahrenheit() {
        let expectedResult: Double = -9.4
        let result = sut?.toFahrenheit(degree: -23)
        XCTAssertEqual(expectedResult, result!, accuracy: 0.01)
    }
    
    func testToDegrees() {
        let expectedResult: Double = 25.555
        let result = sut?.toDegrees(fahrenheit: 78)
        XCTAssertEqual(expectedResult, result!, accuracy: 0.001)
    }
    
}
