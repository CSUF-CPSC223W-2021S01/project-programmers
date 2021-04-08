//
//  Tracker.swift
//  DumbTheBump
//
//  Created by Mario on 4/8/21.
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
        print(tracker)
    }
}
