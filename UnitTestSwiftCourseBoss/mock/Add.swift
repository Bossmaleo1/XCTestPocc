//
//  Add.swift
//  UnitTestSwiftCourseBoss
//
//  Created by Sidney MALEO on 17/03/2024.
//

import Foundation

class Add {
    
    var validNumber: ValidNumber
    
    init(validNumber: ValidNumber) {
        self.validNumber = validNumber
    }
    
    func add(a: Int, b: Int) -> Int {
        if(validNumber.check(number: a) && validNumber.check(number: b)) {
            return a + b
        }
        return 0
    }
}
