//
//  CeilingFan.swift
//
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

class CeilingFan {
    let location: String
    var speed: CeilingFanSpeed

    init(location: String) {
        self.location = location
        self.speed = .off
    }

    func high() {
        self.speed = .high
        print("\(self.location) ceiling fan is high")
    }

    func medium() {
        self.speed = .medium
        print("\(self.location) ceiling fan is medium")
    }

    func low() {
        self.speed = .low
        print("\(self.location) ceiling fan is low")
    }

    func off() {
        self.speed = .off
        print("\(self.location) ceiling fan is off")
    }
}

enum CeilingFanSpeed {
    case high
    case medium
    case low
    case off
}
