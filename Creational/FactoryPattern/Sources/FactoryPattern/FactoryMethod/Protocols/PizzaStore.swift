//
//  PizzaStore.swift
//
//
//  Created by Bastián Véliz Vega on 14-07-20.
//

import Foundation

protocol PizzaStore {
    func orderPizza(ofType type: String) -> Pizza?
    func createPizza(ofType type: String) -> Pizza?
}

extension PizzaStore {
    func orderPizza(ofType type: String) -> Pizza? {
        guard var pizza = self.createPizza(ofType: type) else { return nil }
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        pizza.isReady = true
        return pizza
    }
}
