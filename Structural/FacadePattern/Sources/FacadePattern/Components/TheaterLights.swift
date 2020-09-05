//
//  TheaterLights.swift
//
//
//  Created by Bastián Véliz Vega on 18-08-20.
//

import Foundation

class TheaterLights {
    private(set) var isOn: Bool = false
    private(set) var dim: Float = 0

    // MARK: - Turn on/off

    func on() {
        self.isOn = true
    }

    func off() {
        self.isOn = false
    }

    // MARK: - Dim

    func dim(_ dim: Float) {
        self.dim = dim
    }
}
