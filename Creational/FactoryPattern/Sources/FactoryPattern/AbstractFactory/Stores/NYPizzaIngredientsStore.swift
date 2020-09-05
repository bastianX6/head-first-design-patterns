//
//  NYPizzaIngredientsStore.swift
//  
//
//  Created by Bastián Véliz Vega on 15-07-20.
//

import Foundation

class NYPizzaIngredientsStore: PizzaWithIngredientsStore {
    func createPizza(ofType type: String) -> PizzaWithIngredients? {
        guard let pizzaType = NYPizzaType(rawValue: type) else { return nil }
        let pizza: PizzaWithIngredients
        let factory = NYPizzaIngredientFactory()
        
        switch pizzaType {
        case .cheese:
            pizza = CheesePizza(name: "New York Style Cheese Pizza", ingredientsFactory: factory)
        case .clam:
            pizza = ClamPizza(name: "New York Style Clam Pizza", ingredientsFactory: factory)
        }

        return pizza
    }
}

