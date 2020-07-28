//
//  GarageDoor.swift
//
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

class GarageDoor {
    var lightIsOn: Bool
    var position: GarageDoorPosition

    init() {
        self.lightIsOn = false
        self.position = .down
    }

    func up() {
        self.position = .up
        print("Garage door is open")
    }

    func down() {
        self.position = .down
        print("Garage door is closed")
    }

    func lightOn() {
        self.lightIsOn = true
    }

    func lightOff() {
        self.lightIsOn = false
    }
}

enum GarageDoorPosition {
    case up
    case down
}
