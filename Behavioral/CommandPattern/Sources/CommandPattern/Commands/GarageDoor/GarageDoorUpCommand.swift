//
//  GarageDoorUpCommand.swift
//
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

class GarageDoorUpCommand: Command {
    let garageDoor: GarageDoor

    init(garageDoor: GarageDoor) {
        self.garageDoor = garageDoor
    }

    func execute() {
        self.garageDoor.up()
    }

    func undo() {
        self.garageDoor.down()
    }
}
