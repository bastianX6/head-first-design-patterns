//
//  LightOffCommand.swift
//
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

class LightOffCommand: Command {
    let light: Light

    init(light: Light) {
        self.light = light
    }

    func execute() {
        self.light.off()
    }

    func undo() {
        self.light.on()
    }
}
