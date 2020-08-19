//
//  CaffeineBeverage.swift
//
//
//  Created by Bastián Véliz Vega on 19-08-20.
//

import Foundation

protocol CaffeineBeverageProtocol {
    var output: String { get set }
    func prepareRecipe()
    func boilWater()
    func pourInCup()
    func brew()
    func addCondiments()
}

class CaffeineBeverage: CaffeineBeverageProtocol {
    var output: String = ""

    func boilWater() {
        self.output += "Boiling water\n"
    }

    func pourInCup() {
        self.output += "Pouring into cup\n"
    }

    func brew() {}

    func addCondiments() {}

    final func prepareRecipe() {
        self.boilWater()
        self.brew()
        self.pourInCup()
        self.addCondiments()
    }
}
