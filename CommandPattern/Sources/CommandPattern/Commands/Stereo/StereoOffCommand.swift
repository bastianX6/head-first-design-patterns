//
//  StereoOffCommand.swift
//
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

class StereoOffCommand: Command {
    let stereo: Stereo

    init(stereo: Stereo) {
        self.stereo = stereo
    }

    func execute() {
        self.stereo.off()
    }

    func undo() {
        self.stereo.on()
    }
}
