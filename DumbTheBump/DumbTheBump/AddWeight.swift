//
//  AddWeight.swift
//  DumbTheBump
//
//  Created by CSUFTitan on 3/17/21.
//

import Foundation

struct Weight {
    var unit: String
    var date: String
    var weight: String
    
    func addWeight (unit: String, date: String, weight: String) -> String {
        var message = "" // Data to be returned for other classes
        if (unit == "Metric") {
            message = "\(date), \(weight)kg"
        }
        if (unit == "Imperial") {
            message = "\(date), \(weight)lbs"
        }
        return message
    }
    
    
}
