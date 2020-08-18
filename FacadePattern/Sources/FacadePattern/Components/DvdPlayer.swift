//
//  DvdPlayer.swift
//
//
//  Created by Bastián Véliz Vega on 18-08-20.
//

import Foundation

class DvdPlayer {
    private(set) var isOn: Bool = false
    private(set) var wasEjected: Bool = false
    private(set) var movieStatus: PlaybackStatus = .stopped
    private(set) var audioType: AudioType = .twoChannel

    weak var amplifier: Amplifier?

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

    // MARK: - Eject disk

    func eject() {
        self.wasEjected = true
    }

    // MARK: - Movie status

    func play() {
        self.movieStatus = .playing
    }

    func pause() {
        self.movieStatus = .paused
    }

    func stop() {
        self.movieStatus = .stopped
    }

    // MARK: - Audio settings

    func setSurroundAudio() {
        self.audioType = .surround
    }

    func setTwoChannelAudio() {
        self.audioType = .twoChannel
    }
}
