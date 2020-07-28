//
//  RemoteControl.swift
//
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

class RemoteControl {
    private let maxCommands: Int = 7
    var onCommands: [Command] = []
    var offCommands: [Command] = []

    init() {
        for _ in 0 ..< self.maxCommands {
            self.onCommands.append(NoCommand())
            self.offCommands.append(NoCommand())
        }
    }

    func setCommand(inSlot slot: Int, onCommand: Command, offCommand: Command) {
        guard slot >= 0, slot < self.maxCommands else { return }
        self.onCommands[slot] = onCommand
        self.offCommands[slot] = offCommand
    }

    func onButtonPressed(inSlot slot: Int) {
        guard slot >= 0, slot < self.maxCommands else { return }
        self.onCommands[slot].execute()
    }

    func offButtonPressed(inSlot slot: Int) {
        guard slot >= 0, slot < self.maxCommands else { return }
        self.offCommands[slot].execute()
    }
}

extension RemoteControl: CustomStringConvertible {
    var description: String {
        var string = "\n------ Remote Control ------\n"
        for slot in 0 ..< self.maxCommands {
            let onCommand = self.onCommands[slot]
            let offCommand = self.offCommands[slot]

            string += "slot \(slot): \(onCommand)\t\(offCommand)\n"
        }
        return string
    }
}
