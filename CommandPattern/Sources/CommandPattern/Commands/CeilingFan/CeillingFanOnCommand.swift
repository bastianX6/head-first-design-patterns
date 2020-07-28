//
//  CeillingFanOnCommand.swift
//
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

class CeillingFanOnCommand: Command {
    let ceillingFan: CeilingFan

    init(ceillingFan: CeilingFan) {
        self.ceillingFan = ceillingFan
    }

    func execute() {
        self.ceillingFan.high()
    }

    func undo() {
        self.ceillingFan.off()
    }
}
