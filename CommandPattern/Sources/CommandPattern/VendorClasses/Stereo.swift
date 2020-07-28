//
//  Stereo.swift
//
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

class Stereo {
    let location: String
    var isOn: Bool
    var volume: Int
    var currentSource: StereoSource

    init(location: String) {
        self.location = location
        self.isOn = false
        self.volume = 0
        self.currentSource = .radio
    }

    func on() {
        self.isOn = true
        print("\(self.location) stereo is On")
    }

    func off() {
        self.isOn = false
        print("\(self.location) stereo is On")
    }

    func setCd() {
        self.currentSource = .cd
        print("\(self.location) stereo source set to CD")
    }

    func setDvd() {
        self.currentSource = .dvd
        print("\(self.location) stereo source set to DVD")
    }

    func setRadio() {
        self.currentSource = .radio
        print("\(self.location) stereo source set to Radio")
    }

    func setVolume(_ volume: Int) {
        self.volume = volume
        print("\(self.location) volume set to \(self.volume)")
    }
}

enum StereoSource {
    case cd
    case dvd
    case radio
}
