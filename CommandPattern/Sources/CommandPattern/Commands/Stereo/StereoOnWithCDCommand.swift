//
//  StereoOnWithCDCommand.swift
//
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

class StereoOnWithCDCommand: Command {
    let stereo: Stereo

    init(stereo: Stereo) {
        self.stereo = stereo
    }

    func execute() {
        self.stereo.on()
        self.stereo.setCd()
        self.stereo.setVolume(11)
    }

    func undo() {
        self.stereo.setVolume(0)
        self.stereo.off()
    }
}
