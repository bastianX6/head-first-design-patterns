//
//  ChicagoPizzaIngredientsStore.swift
//
//
//  Created by Bastián Véliz Vega on 15-07-20.
//

import Foundation

class ChicagoPizzaIngredientsStore: PizzaWithIngredientsStore {
    func createPizza(ofType type: String) -> PizzaWithIngredients? {
        guard let pizzaType = ChicagoPizzaType(rawValue: type) else { return nil }
        let pizza: PizzaWithIngredients
        let factory = ChicagoPizzaIngredientFactory()

        switch pizzaType {
        case .cheese:
            pizza = CheesePizza(name: "Chicago Style Cheese Pizza", ingredientsFactory: factory)
        case .clam:
            pizza = ClamPizza(name: "Chicago Style Clam Pizza", ingredientsFactory: factory)
        }

        return pizza
    }
}
