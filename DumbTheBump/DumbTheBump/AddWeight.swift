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
        self.unit = unit
        self.month = month
        self.day = day
        self.year = year
        self.weight = weight
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
    }
}
