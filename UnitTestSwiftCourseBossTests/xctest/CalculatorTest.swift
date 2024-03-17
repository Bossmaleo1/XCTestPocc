//
//  CalculatorTest.swift
//  UnitTestSwiftCourseBossTests
//
//  Created by Sidney MALEO on 17/03/2024.
//

import Foundation
import XCTest

@testable import UnitTestSwiftCourseBoss


class CalculatorTest: XCTestCase {
    
    var sut: Calculator!
    
    override func setUp() async throws {
        print("XXXX setUp()")
        sut = Calculator()
    }
    
    override func tearDown() {
        print("XXXX tearDown()")
        sut = nil
    }
    
    func testCalculatorNotNil() {
        print("XXXX testCalculatorNotNil()")
        XCTAssertNotNil(sut, "SUT est nil")
    }
    
    func testAddAssert() {
        print("XXXX tearDown()")
        let result1 = 30
        var result2: Int
        
        result2 = sut.add(n1: 10, n2: 20)
        
        XCTAssertEqual(result1,result2)
    }
    
    
    func testAddBDD() {
        print("XXXX testAddBDD()")
        let result1 = 30
        var result2: Int
        
        result2 = sut.add(n1: 10, n2: 20)
        
        XCTAssertEqual(result1,result2)
    }
    
    func testAdd(){
        print("XXXX testAdd()")
        XCTAssertEqual(30, sut.add(n1: 10, n2: 20))
    }
    
    func testAssertTypes() {
        XCTAssertTrue(1 == 1)
        XCTAssertFalse(1 == 2)
        XCTAssertNil(nil)
        XCTAssertNotNil(sut)
        XCTAssertEqual("alberto", "alberto")
        XCTAssertGreaterThan(10, 1)
    }
    
    func testSubstract() {
        print("XXXX testSubstract()")
        XCTAssertEqual(4, sut.substract(n1: 11, n2: 7) )
    }
    
    func testDivide() {
        print("XXXX testDivide()")
        XCTAssertEqual(2, sut.divide(n1: 4, n2: 2))
    }
    
    func testDivideByZero() {
        print("XXXX testDivideByZero()")
        XCTAssertEqual(2, try sut.divideByZero(n1: 4, n2: 2))
        XCTAssertThrowsError(try sut.divideByZero(n1: 4, n2: 0))
    }
    
    func testDisable() {
        print("XXXX testDivideByZero()")
        XCTAssertThrowsError(try sut.divideByZero(n1: 4, n2: 0))
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            sut.divide(n1: 4, n2: 2)
        }
    }
    
    func testArraySquared() {
        //Given
        var numbers = [Int]()
        for n in 1...4 {
            numbers.append(n)
        }
        //when
        let numbersSquared = sut.arraySquared(numberArray: numbers)
        //Then
        var expectedResult = [Int]()
        expectedResult.append(1)
        expectedResult.append(4)
        expectedResult.append(9)
        expectedResult.append(16)
        XCTAssertEqual(expectedResult, numbersSquared)
    }
    
    func testArraySquared2() {
        var numbers = [Int]()
        for n in 1...4 {
            numbers.append(n)
        }
        let numbersSquared = sut.arraySquared2(numberArray: numbers)
        var expectedResult = [Int]()
        expectedResult.append(1)
        expectedResult.append(4)
        expectedResult.append(9)
        expectedResult.append(16)
        XCTAssertEqual(expectedResult, numbersSquared)
    }
    
    func testArraySquaredMeasure() {
        var numbers = [Int]()
        for n in 1...5000000 {
            numbers.append(n)
        }
        self.measure {
            sut.arraySquared(numberArray: numbers)
        }
    }
    
    func testArraySquaredMeasure2() {
        var numbers = [Int]()
        for n in 1...5000000 {
            numbers.append(n)
        }
        self.measure {
            sut.arraySquared2(numberArray: numbers)
        }
    }
}
