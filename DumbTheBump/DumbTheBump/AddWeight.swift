//
//  AddWeight.swift
//  DumbTheBump
//
//  Created by CSUFTitan on 3/17/21.
//

import Foundation

class Weight {
    var unit: String
    var month: Int
    var day: Int
    var year: Int
    var weight: Int
    
    init(unit: String, month: Int, day: Int, year: Int, weight: Int) {
        if unit == "Imperial" || unit == "Metric" {
            // self.unit = unitTextField?
            self.unit = unit
        } else {
            self.unit = "Error"
        }
        if month >= 0 && month <= 12 {
            // self.month = unitTextField.text?
            self.month = month
        } else {
            self.month = -1
        }
        // self.month = monthTextField.text?
        self.day = day
        if year >= 0 {
            // self.year = yearTextField.text?
            self.year = year
        } else {
            self.year = -1
        }
        if weight >= 0 {
            // self.weight = weightTextField.text?
            self.weight = weight
        } else {
            self.weight = -1
        }
    }
}
