//
//  ValidNumber.swift
//  UnitTestSwiftCourseBoss
//
//  Created by Sidney MALEO on 17/03/2024.
//

import Foundation

class ValidNumber {
    
    func check(number: Int) -> Bool {
        if(number >= 0 && number < 10) {
            return true
        } else {
            return false
        }
    }
}
