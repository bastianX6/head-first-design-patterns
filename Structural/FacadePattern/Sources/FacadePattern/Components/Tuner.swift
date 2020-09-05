//
//  Tuner.swift
//
//
//  Created by Bastián Véliz Vega on 18-08-20.
//

import Foundation

class Tuner {
    weak var amplifier: Amplifier?
    private(set) var isOn: Bool = false
    private(set) var band: RadioBand = .fm
    private(set) var frecuency: Float = 87.9

    init(amplifier: Amplifier?) {
        self.amplifier = amplifier
    }

    // MARK: - Turn on/off

    func on() {
        self.isOn = true
    }

    func off() {
        self.isOn = false
    }

    // MARK: - Band

    func setAm() {
        self.band = .am
    }

    func setFm() {
        self.band = .fm
    }

    // MARK: - Frecuency

    func setFrecuency(_ frecuency: Float) {
        self.frecuency = frecuency
    }
}

enum RadioBand {
    case am
    case fm
}
