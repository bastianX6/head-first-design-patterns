//
//  LegacyCoffee.swift
//
//
//  Created by Bastián Véliz Vega on 19-08-20.
//

import Foundation

class LegacyCoffee {
    private(set) var output: String = ""

    func prepareRecipe() {
        self.boilWater()
        self.brewCoffeeGrinds()
        self.pourInCup()
        self.addSugarAndMilk()
    }

    func boilWater() {
        self.output += "Boiling water\n"
    }

    func brewCoffeeGrinds() {
        self.output += "Dripping Coffee through filter\n"
    }

    func pourInCup() {
        self.output += "Pouring into cup\n"
    }

    func addSugarAndMilk() {
        self.output += "Adding Sugar and Milk\n"
    }
}
