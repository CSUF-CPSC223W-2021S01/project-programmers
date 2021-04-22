//
//  shared.swift
//  DumbTheBump
//
//  Created by Ventayen, Harrold on 4/22/21.
//

import Foundation

func save (newWeight: Weight) {
    let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    let archiveURL = documentsDirectory.appendingPathComponent("weight").appendingPathExtension("plist")

    let propertyListEncoder = PropertyListEncoder()
    if let encodedWeight = try? propertyListEncoder.encode(newWeight) {
      try? encodedWeight?.write(to: archiveURL, options: .noFileProtection)
    }
}
func readWeight () {
    var loadedWeight : Weight
    let propertyListDecoder = PropertyListDecoder()

    let archiveURL = documentsDirectory.appendingPathComponent("weight".appendingPathExtension("plist")

    if let retrievedWeight = try? Data(contentsOf: archiveURL),
        let decodedWeight = try? propertyListDecoder.decode(Weight.self, from: retrievedWeight) {
        loadedWeight = decodedWeight
    }
}
