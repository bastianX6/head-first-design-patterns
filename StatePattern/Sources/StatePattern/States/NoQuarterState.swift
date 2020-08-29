//
//  NoQuarterState.swift
//
//
//  Created by Bastián Véliz Vega on 26-08-20.
//

import Foundation

class NoQuarterState: GumballMachineState {
    private weak var machine: GumballMachine?

    init(machine: GumballMachine) {
        self.machine = machine
    }

    func insertQuarter() -> String {
        defer {
            self.machine?.setState(.hasQuarter)
        }
        return NoQuarterL10n.insertQuarter
    }

    func ejectQuarter() -> String {
        return NoQuarterL10n.ejectQuarter
    }

    func turnCrank() -> String {
        return NoQuarterL10n.turnCrank
    }

    func dispense() -> String {
        return NoQuarterL10n.dispense
    }
}
