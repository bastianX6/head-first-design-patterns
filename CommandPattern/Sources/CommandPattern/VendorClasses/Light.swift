//
//  Light.swift
//
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

class Light {
    let location: String
    var isOn: Bool

    init(location: String) {
        self.location = location
        self.isOn = false
    }

    func on() {
        self.isOn = true
        print("\(self.location) light is On")
    }

    func off() {
        self.isOn = false
        print("\(self.location) light is On")
    }
}
