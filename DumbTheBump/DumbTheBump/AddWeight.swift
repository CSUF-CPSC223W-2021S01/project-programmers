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
<<<<<<< HEAD
            self.weight = "-1"
        }    }
        */
            //self.weight = "-1"
=======
            self.weight = -1
        }
        /*
         self.unit = unit
         self.month = month
         self.day = day
         self.year = year
         self.weight = weight
         */
    }
}

class Tracker {
    var tracker: [Weight] // an array that stores the users progress
    
    init() {
        tracker = []
    }
    
    // add a weight
    func addWeight(weight: Weight) {
        tracker.append(weight)
    }
    

    // display the weight loss history
    func history() {
        print(tracker)
    }
}

class User {
    var name: String
    var surname: String
    var prePregnancyWeight: Int // the end goal
    var currentWeight: Int
    
    init(name: String, surname: String, prePregnancyWeight: Int, currentWeight: Int) {
        self.name = name
        self.surname = surname
        self.prePregnancyWeight = prePregnancyWeight
        self.currentWeight = currentWeight
>>>>>>> parent of 774eea9... Added a library to create graphs
    }
}
