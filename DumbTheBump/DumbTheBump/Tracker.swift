//
//  Tracker.swift
//  DumbTheBump
//
//  Created by Mario on 5/6/21.
//

import Foundation

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
        for weight in tracker {
            print("Date: \(weight.month)-\(weight.day)-\(weight.year) Weight: \(weight.weight) ")
        }
    }
}
