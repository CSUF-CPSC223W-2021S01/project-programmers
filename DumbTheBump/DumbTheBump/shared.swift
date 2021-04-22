//
//  shared.swift
//  DumbTheBump
//
//  Created by Ventayen, Harrold on 4/22/21.
//

import Foundation

func save (array: weightCollection) {
    let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    let archiveURL = documentsDirectory.appendingPathComponent("weight").appendingPathExtension("plist")

    let propertyListEncoder = PropertyListEncoder()
    if let encodedWeight = try? propertyListEncoder.encode(array) {
      try? encodedWeight?.write(to: archiveURL, options: .noFileProtection)
    }
}
func readWeight (URL: String) {
    var loadedWeight : Weight
    let propertyListDecoder = PropertyListDecoder()
    let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    let archiveURL = documentsDirectory.appendingPathComponent("weight").appendingPathExtension("plist")

    if let retrievedWeight = try? Data(contentsOf: archiveURL),
        let decodedWeight = try? propertyListDecoder.decode(Weight.self, from: retrievedWeight) {
        loadedWeight = decodedWeight
    }
}
