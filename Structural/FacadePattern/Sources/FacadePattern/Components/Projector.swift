//
//  Projector.swift
//
//
//  Created by Bastián Véliz Vega on 18-08-20.
//

import Foundation

class Projector {
    private(set) var isOn: Bool = false
    private(set) var mode: ProjectorMode = .tv

    weak var player: DvdPlayer?

    init(player: DvdPlayer?) {
        self.player = player
    }

    // MARK: - Turn on/off

    func on() {
        self.isOn = true
    }

    func off() {
        self.isOn = false
    }

    // MARK: - Mode

    func tvMode() {
        self.mode = .tv
    }

    func wideScreenMode() {
        self.mode = .wideScreen
    }
}

enum ProjectorMode {
    case tv
    case wideScreen
}
