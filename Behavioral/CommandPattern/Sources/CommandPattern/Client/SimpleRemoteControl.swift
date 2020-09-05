//
//  SimpleRemoteControl.swift
//
//
//  Created by Bastián Véliz Vega on 21-07-20.
//

import Foundation

class SimpleRemoteControl {
    var command: Command?

    func setCommand(_ command: Command) {
        self.command = command
    }

    func buttonPressed() {
        self.command?.execute()
    }
}
