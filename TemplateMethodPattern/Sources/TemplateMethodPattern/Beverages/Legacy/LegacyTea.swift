//
//  LegacyTea.swift
//
//
//  Created by Bastián Véliz Vega on 19-08-20.
//

import Foundation

class LegacyTea {
    private(set) var output: String = ""

    func prepareRecipe() {
        self.boilWater()
        self.steepTeaBag()
        self.pourInCup()
        self.addLemon()
    }

    func boilWater() {
        self.output += "Boiling water\n"
    }

    func steepTeaBag() {
        self.output += "Steeping the tea\n"
    }

    func pourInCup() {
        self.output += "Pouring into cup\n"
    }

    func addLemon() {
        self.output += "Adding Lemon\n"
    }
}
