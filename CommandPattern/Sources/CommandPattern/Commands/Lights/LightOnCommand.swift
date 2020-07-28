//
//  LightOnCommand.swift
//
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

class LightOnCommand: Command {
    let light: Light

    init(light: Light) {
        self.light = light
    }

    func execute() {
        self.light.on()
    }

    func undo() {
        self.light.off()
    }
}
