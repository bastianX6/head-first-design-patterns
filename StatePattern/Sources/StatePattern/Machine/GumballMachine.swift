//
//  GumballMachine.swift
//
//
//  Created by Bastián Véliz Vega on 26-08-20.
//

import Foundation

class GumballMachine {
    // MARK: - Output

    private(set) var output: String = ""

    // MARK: - States and count

    private(set) var count: Int = 0
    lazy var currentState: GumballMachineState = self.soldOutState

    private lazy var soldState: GumballMachineState = SoldState(machine: self)
    private lazy var soldOutState: GumballMachineState = SoldOutState(machine: self)
    private lazy var noQuarterState: GumballMachineState = NoQuarterState(machine: self)
    private lazy var hasQuarterState: GumballMachineState = HasQuarterState(machine: self)

    init(numerOfGumballs: Int) {
        self.count = numerOfGumballs
        if numerOfGumballs > 0 {
            self.currentState = self.noQuarterState
        }
    }

    // MARK: - Machine actions

    func insertQuarter() {
        self.output += self.currentState.insertQuarter() + "\n"
    }

    func ejectQuarter() {
        self.output += self.currentState.ejectQuarter() + "\n"
    }

    func turnCrank() {
        self.output += self.currentState.turnCrank() + "\n"
        self.output += self.currentState.dispense() + "\n"
    }

    func setState(_ state: MachineState) {
        switch state {
        case .sold:
            self.currentState = self.soldState
        case .soldOut:
            self.currentState = self.soldOutState
        case .noQuarter:
            self.currentState = self.noQuarterState
        case .hasQuarter:
            self.currentState = self.hasQuarterState
        }
    }

    func releaseBall() {
        self.output += GumballMachineL10n.releaseBall + "\n"
        if self.count != 0 {
            self.count -= 1
        }
    }
}

extension GumballMachine: CustomStringConvertible {
    var description: String {
        var string = GumballMachineL10n.brand
        string += "\n\(GumballMachineL10n.inventory(gumballs: self.count))"
        if self.count == 0 {
            string += "\n\(GumballMachineL10n.soldOut)"
        } else {
            string += "\n\(GumballMachineL10n.waitingForQuarter)"
        }
        return string
    }
}
