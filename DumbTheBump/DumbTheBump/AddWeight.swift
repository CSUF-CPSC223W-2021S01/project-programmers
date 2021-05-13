//
//  AddWeight.swift
//  DumbTheBump
//
//  Created by CSUFTitan on 3/17/21.
//

import Foundation

class Weight: Codable {
    var unit: String
    var month: String
    var day: String
    var year: String
    var weight: String
    
    init?(unit: String, month: String, day: String, year: String, weight: String) {
         self.unit = unit
         self.month = month
         self.day = day
         self.year = year
         self.weight = weight
    }
    
    func returnDay() -> Double {
      return Double(day)!
    }
    
    func returnWeight() -> Double {
        return Double(weight)!
    }
}
