//
//  RemoteControlWithUndo.swift
//
//
//  Created by Bastián Véliz Vega on 28-07-20.
//

import Foundation

class RemoteControlWithUndo {
    private let maxCommands: Int = 7
    var onCommands: [Command] = []
    var offCommands: [Command] = []
    var undoCommand: Command

    init() {
        for _ in 0 ..< self.maxCommands {
            self.onCommands.append(NoCommand())
            self.offCommands.append(NoCommand())
        }
        self.undoCommand = NoCommand()
    }

    func setCommand(inSlot slot: Int, onCommand: Command, offCommand: Command) {
        guard slot >= 0, slot < self.maxCommands else { return }
        self.onCommands[slot] = onCommand
        self.offCommands[slot] = offCommand
    }

    func onButtonPressed(inSlot slot: Int) {
        guard slot >= 0, slot < self.maxCommands else { return }
        let command = self.onCommands[slot]
        command.execute()
        self.undoCommand = command
    }

    func offButtonPressed(inSlot slot: Int) {
        guard slot >= 0, slot < self.maxCommands else { return }
        let command = self.offCommands[slot]
        command.execute()
        self.undoCommand = command
    }

    func undoButtonPressed() {
        self.undoCommand.undo()
    }
}

extension RemoteControlWithUndo: CustomStringConvertible {
    var description: String {
        var string = "\n------ Remote Control With Undo ------\n"
        for slot in 0 ..< self.maxCommands {
            let onCommand = self.onCommands[slot]
            let offCommand = self.offCommands[slot]

            string += "slot \(slot): \(onCommand)\t\(offCommand)\n"
        }
        return string
    }
}
