//
//  TV.swift
//
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

class TV {
    let location: String
    var isOn: Bool
    var currentChannel: Int
    var volume: Int

    init(location: String) {
        self.location = location
        self.isOn = false
        self.currentChannel = 2
        self.volume = 0
    }

    func on() {
        self.isOn = true
        print("\(self.location) TV is On")
    }

    func off() {
        self.isOn = false
        print("\(self.location) TV is Off")
    }

    func setInputChannel(_ channel: Int) {
        self.currentChannel = channel
        print("Current channel is \(self.currentChannel)")
    }

    func setVolume(_ volume: Int) {
        self.volume = volume
        print("Volume is \(self.volume)")
    }
}
