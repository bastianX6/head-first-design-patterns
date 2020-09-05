//
//  GarageDoorDownCommand.swift
//
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

class GarageDoorDownCommand: Command {
    let garageDoor: GarageDoor

    init(garageDoor: GarageDoor) {
        self.garageDoor = garageDoor
    }

    func execute() {
        self.garageDoor.down()
    }

    func undo() {
        self.garageDoor.up()
    }
}
