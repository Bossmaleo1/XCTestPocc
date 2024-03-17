//
//  ValidNumberTest.swift
//  UnitTestSwiftCourseBossTests
//
//  Created by Sidney MALEO on 17/03/2024.
//

import Foundation
import XCTest

@testable import UnitTestSwiftCourseBoss

class ValidNumberTest: XCTestCase {
    var sut: ValidNumber?
    
    override func setUp() async throws {
        sut = ValidNumber()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testCheck() {
        XCTAssertEqual(true, sut?.check(number: 4))
    }
    
    func testCheckNegative() {
        XCTAssertEqual(false, sut?.check(number: -4))
    }
    
    func testCheckMoreThan10() {
        XCTAssertEqual(false, sut?.check(number: 10))
    }
}
