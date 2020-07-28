//
//  Hottub.swift
//
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

class Hottub {
    let location: String
    var temperature: Float
    var isCirculating: Bool
    var jetsIsOn: Bool

    init(location: String) {
        self.location = location
        self.temperature = 0
        self.isCirculating = false
        self.jetsIsOn = false
    }

    func circulate() {
        self.isCirculating = true
    }

    func jetsOn() {
        self.jetsIsOn = true
    }

    func jetsIsOff() {
        self.jetsIsOn = false
    }

    func setTemperature(_ temperature: Float) {
        self.temperature = temperature
    }
}
