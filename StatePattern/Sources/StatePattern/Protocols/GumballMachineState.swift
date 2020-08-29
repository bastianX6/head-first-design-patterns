//
//  GumballMachineState.swift
//  
//
//  Created by Bastián Véliz Vega on 26-08-20.
//

import Foundation

protocol GumballMachineState {
    func insertQuarter() -> String
    func ejectQuarter() -> String
    func turnCrank() -> String
    func dispense() -> String
}
