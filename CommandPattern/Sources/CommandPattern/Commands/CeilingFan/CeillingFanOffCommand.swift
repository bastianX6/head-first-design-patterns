//
//  CeillingFanOffCommand.swift
//
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

class CeillingFanOffCommand: Command {
    let ceillingFan: CeilingFan

    init(ceillingFan: CeilingFan) {
        self.ceillingFan = ceillingFan
    }

    func execute() {
        self.ceillingFan.off()
    }

    func undo() {
        self.ceillingFan.high()
    }
}
