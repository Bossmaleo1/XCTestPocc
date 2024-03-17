//
//  StringManagerTest.swift
//  UnitTestSwiftCourseBossTests
//
//  Created by Sidney MALEO on 17/03/2024.
//

import Foundation


import XCTest
@testable import UnitTestSwiftCourseBoss

class StringManagerTest: XCTestCase {
    var sut: StringManager?
    
    override func setUp() async throws {
        sut = StringManager()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testToUpperCased() {
        XCTAssertEqual("WE TEST SOMETHING VERY WELL", sut?.toUpperCased(message: "we Test something Very WELL"))
    }
    
    func testToLowerCased() {
       
    }
}

