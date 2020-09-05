//
//  HasQuarterState.swift
//
//
//  Created by Bastián Véliz Vega on 26-08-20.
//

import Foundation

class HasQuarterState: GumballMachineState {
    private weak var machine: GumballMachine?

    init(machine: GumballMachine) {
        self.machine = machine
    }

    func insertQuarter() -> String {
        return HasQuarterL10n.insertQuarter
    }

    func ejectQuarter() -> String {
        defer {
            self.machine?.setState(.noQuarter)
        }
        return HasQuarterL10n.ejectQuarter
    }

    func turnCrank() -> String {
        defer {
            self.machine?.setState(.sold)
        }
        return HasQuarterL10n.turnCrank
    }

    func dispense() -> String {
        return HasQuarterL10n.dispense
    }
}
