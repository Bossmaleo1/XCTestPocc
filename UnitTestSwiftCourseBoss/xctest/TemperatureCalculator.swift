//
//  TemperatureCalculator.swift
//  UnitTestSwiftCourseBoss
//
//  Created by Sidney MALEO on 17/03/2024.
//

import Foundation

class TemperatureCalculator {
    
    func toFahrenheit(degree: Double) -> Double {
        return degree * 9 / 5 + 32
    }
    
    func toDegrees(fahrenheit: Double) -> Double {
        return (fahrenheit - 32) * 5 / 9
    }
    
}
