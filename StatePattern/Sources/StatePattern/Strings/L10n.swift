//
//  File.swift
//
//
//  Created by Bastián Véliz Vega on 28-08-20.
//

import Foundation

enum HasQuarterL10n {
    /// "You can't insert another a quarter"
    static let insertQuarter = "You can't insert another a quarter"

    /// "Quarter returned"
    static let ejectQuarter = "Quarter returned"

    /// "You turned..."
    static let turnCrank = "You turned..."

    /// "No gumball dispensed"
    static let dispense = "No gumball dispensed"
}

enum NoQuarterL10n {
    /// "You inserted a quarter"
    static let insertQuarter = "You inserted a quarter"

    /// "You haven't inserted a quarter"
    static let ejectQuarter = "You haven't inserted a quarter"

    /// "You turned, but there's no quarter"
    static let turnCrank = "You turned, but there's no quarter"

    /// "You need to pay first"
    static let dispense = "You need to pay first"
}

enum SoldOutL10n {
    /// "Opps, out of gumballs!"
    static let insertQuarter = "Opps, out of gumballs!"

    /// "Opps, out of gumballs!"
    static let ejectQuarter = "Opps, out of gumballs!"

    /// "Opps, out of gumballs!"
    static let turnCrank = "Opps, out of gumballs!"

    /// "Opps, out of gumballs!"
    static let dispense = "Opps, out of gumballs!"
}

enum SoldL10n {
    /// "Please wait, we're alreade giving you a gumball"
    static let insertQuarter = "Please wait, we're alreade giving you a gumball"

    /// "Sorry, you already turned the crank"
    static let ejectQuarter = "Sorry, you already turned the crank"

    /// "Turning twice doesn't get you another gumball"
    static let turnCrank = "Turning twice doesn't get you another gumball"

    /// "Opps, out of gumballs!"
    static let dispense = "Opps, out of gumballs!"
}

enum GumballMachineL10n {
    /// "A gumball comes rolling out the slot..."
    static let releaseBall = "A gumball comes rolling out the slot..."

    /// "Mighty Gumball, Inc"
    static let brand = "Mighty Gumball, Inc"

    /// "Inventory: n gumballs"
    static func inventory(gumballs: Int) -> String {
        return "Inventory: \(gumballs) gumballs"
    }

    /// "Machine is waiting for quarter"
    static let waitingForQuarter = "Machine is waiting for quarter"

    /// "Machine is sold out"
    static let soldOut = "Machine is sold out"
}
