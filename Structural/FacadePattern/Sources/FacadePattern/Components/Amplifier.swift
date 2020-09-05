//
//  Amplifier.swift
//
//
//  Created by Bastián Véliz Vega on 18-08-20.
//

import Foundation

class Amplifier {
    weak var tuner: Tuner?
    weak var dvdPlayer: DvdPlayer?
    weak var cdPlayer: CdPlayer?

    private(set) var sourceType: SourceType = .none
    private(set) var audioType: AudioType = .twoChannel
    private(set) var isOn: Bool = false
    private(set) var volume: Float = 0

    init(tuner: Tuner?,
         dvdPlayer: DvdPlayer?,
         cdPlayer: CdPlayer?)
    {
        self.tuner = tuner
        self.dvdPlayer = dvdPlayer
        self.cdPlayer = cdPlayer
    }

    // MARK: - Turn on/off

    func on() {
        self.isOn = true
    }

    func off() {
        self.isOn = false
    }

    // MARK: - Select source

    func setCd() {
        self.sourceType = .cdPlayer
    }

    func setDvd() {
        self.sourceType = .dvdPlayer
    }

    func setTurner() {
        self.sourceType = .tuner
    }

    // MARK: - Audio settings

    func setSurroundAudio() {
        self.audioType = .surround
    }

    func setTwoChannelAudio() {
        self.audioType = .twoChannel
    }

    func setVolume(_ volume: Float) {
        self.volume = volume
    }
}

enum SourceType {
    case tuner
    case dvdPlayer
    case cdPlayer
    case none
}
