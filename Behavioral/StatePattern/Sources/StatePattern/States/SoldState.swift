//
//  SoldState.swift
//
//
//  Created by Bastián Véliz Vega on 26-08-20.
//

import Foundation

class SoldState: GumballMachineState {
    private weak var machine: GumballMachine?

    init(machine: GumballMachine) {
        self.machine = machine
    }

    func insertQuarter() -> String {
        return SoldL10n.insertQuarter
    }

    func ejectQuarter() -> String {
        return SoldL10n.ejectQuarter
    }

    func turnCrank() -> String {
        return SoldL10n.turnCrank
    }

    func dispense() -> String {
        guard let machine = self.machine else {
            fatalError("There are not machine")
        }
        machine.releaseBall()

        guard machine.count > 0 else {
            machine.setState(.soldOut)
            return SoldL10n.dispense
        }

        machine.setState(.noQuarter)
        return ""
    }
}
