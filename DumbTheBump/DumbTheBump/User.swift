//
//  User.swift
//  DumbTheBump
//
//  Created by Mario on 5/6/21.
//

import Foundation

class User {
    var name: String
    var surname: String
    var prePregnancyWeight: Int
    var currentWeight: Int
    
    init(name: String, surname: String, prePregnancyWeight: Int, currentWeight: Int) {
        self.name = name
        self.surname = surname
        self.prePregnancyWeight = prePregnancyWeight
        self.currentWeight = currentWeight
    }

}
