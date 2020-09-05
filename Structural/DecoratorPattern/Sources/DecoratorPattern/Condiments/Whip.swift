//
//  Whip.swift
//
//
//  Created by Bastián Véliz Vega on 13-07-20.
//

import Foundation

class Whip: CondimentDecorator {
    var beverage: Beverage

    var description: String {
        return self.beverage.description + ", Whip"
    }

    var cost: Double {
        return self.beverage.cost + 0.10
    }

    init(beverage: Beverage) {
        self.beverage = beverage
    }
}
