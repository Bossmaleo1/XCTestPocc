//
//  Calculator.swift
//  UnitTestSwiftCourseBoss
//
//  Created by Sidney MALEO on 17/03/2024.
//

import Foundation

class Calculator {
    
    func add(n1: Int, n2: Int) -> Int {
        return n1 + n2
    }
    
    func substract(n1: Int, n2: Int) -> Int {
        return n1 - n2
    }
    
    func divide(n1: Int, n2: Int) -> Int {
        return n1/n2
    }
    
    func divideByZero(n1: Int, n2: Int) throws -> Int {
        if(n2 == 0) {
            throw SomeError.ZeroError
        }
        return n1/n2
    }
    
    func arraySquared(numberArray: [Int])->[Int] {
        var result = [Int]()
        for number in numberArray {
            result.append(number * number)
        }
        
        return result
    }
    
    func arraySquared2(numberArray: [Int])->[Int] {
       return numberArray.map { numberArray in numberArray * numberArray }
    }
    
}

enum SomeError: Error {
    case ZeroError
}
