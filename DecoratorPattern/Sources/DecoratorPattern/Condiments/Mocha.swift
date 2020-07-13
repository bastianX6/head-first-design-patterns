//
//  Mocha.swift
//
//
//  Created by Bastián Véliz Vega on 13-07-20.
//

import Foundation

class Mocha: CondimentDecorator {
    var beverage: Beverage

    var description: String {
        return self.beverage.description + ", Mocha"
    }

    var cost: Double {
        return self.beverage.cost + 0.20
    }

    init(beverage: Beverage) {
        self.beverage = beverage
    }
}
