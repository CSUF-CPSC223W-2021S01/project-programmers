//
//  shared.swift
//  DumbTheBump
//
//  Created by Ventayen, Harrold on 4/22/21.
//

import Foundation

func save (array: Tracker) {
    let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    let archiveURL = documentsDirectory.appendingPathComponent("weight").appendingPathExtension("plist")

    let propertyListEncoder = PropertyListEncoder()
    if let encodedWeight = try? propertyListEncoder.encode(array) {
        try? encodedWeight.write(to: archiveURL, options: .noFileProtection)
    }
}
func readWeight () { // return tracker array
    var loadedTracker : Tracker // I want a tracker array here
    let propertyListDecoder = PropertyListDecoder()
    let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    let archiveURL = documentsDirectory.appendingPathComponent("weight").appendingPathExtension("plist")

    if let retrievedTracker = try? Data(contentsOf: archiveURL),
        let decodedTracker = try? propertyListDecoder.decode(Tracker.self, from: retrievedTracker) {
        loadedTracker = decodedTracker
    }
}
