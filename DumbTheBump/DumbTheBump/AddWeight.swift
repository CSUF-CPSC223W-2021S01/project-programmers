//
//  AddWeight.swift
//  DumbTheBump
//
//  Created by CSUFTitan on 3/17/21.
//

import Foundation

struct weightCollection {
    var weightArray: [Weight]
    mutating func add (weight: Weight) {
        weightArray.append(weight)
    }
    init() {
        weightArray = []
    }
}
 
class Weight {
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
    
    func constraints() {
        /*
        if unit == "Imperial" || unit == "Metric" {
            // self.unit = unitTextField?
            self.unit = unit
        } else {
            self.unit = "Error"
        }
        if month >= "0" && month <= "12" {
            // self.month = unitTextField.text?
            self.month = month
        } else {
            self.month = "-1"
        }
        // self.month = monthTextField.text?
        self.day = day
        if year >= "0" {
            // self.year = yearTextField.text?
            self.year = year
        } else {
            self.year = "-1"
        }
        if weight >= "0" {
            // self.weight = weightTextField.text?
            self.weight = weight
        } else {
            self.weight = "-1"
        }    }
        */
    }
}
