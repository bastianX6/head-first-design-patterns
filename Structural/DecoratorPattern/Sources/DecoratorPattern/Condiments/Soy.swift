//
//  Soy.swift
//
//
//  Created by Bastián Véliz Vega on 13-07-20.
//

import Foundation

class Soy: CondimentDecorator {
    var beverage: Beverage

    var description: String {
        return self.beverage.description + ", Soy"
    }

    var cost: Double {
        return self.beverage.cost + 0.15
    }

    init(beverage: Beverage) {
        self.beverage = beverage
    }
}
