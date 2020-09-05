//
//  SoldOutState.swift
//
//
//  Created by Bastián Véliz Vega on 26-08-20.
//

import Foundation

class SoldOutState: GumballMachineState {
    private weak var machine: GumballMachine?

    init(machine: GumballMachine) {
        self.machine = machine
    }

    func insertQuarter() -> String {
        return SoldOutL10n.insertQuarter
    }

    func ejectQuarter() -> String {
        return SoldOutL10n.ejectQuarter
    }

    func turnCrank() -> String {
        return SoldOutL10n.turnCrank
    }

    func dispense() -> String {
        return SoldOutL10n.dispense
    }
}
