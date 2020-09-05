//
//  PizzaWithIngredientsStore.swift
//
//
//  Created by Bastián Véliz Vega on 15-07-20.
//

import Foundation

protocol PizzaWithIngredientsStore {
    func orderPizza(ofType type: String) -> PizzaWithIngredients?
    func createPizza(ofType type: String) -> PizzaWithIngredients?
}

extension PizzaWithIngredientsStore {
    func orderPizza(ofType type: String) -> PizzaWithIngredients? {
        guard var pizza = self.createPizza(ofType: type) else { return nil }
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        pizza.isReady = true
        return pizza
    }
}
