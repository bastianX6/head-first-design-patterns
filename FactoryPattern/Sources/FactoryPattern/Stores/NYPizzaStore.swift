//
//  NYPizzaStore.swift
//
//
//  Created by Bastián Véliz Vega on 14-07-20.
//

import Foundation

class NYPizzaStore: PizzaStore {
    func createPizza(ofType type: String) -> Pizza? {
        guard let pizzaType = NYPizzaType(rawValue: type) else { return nil }
        let pizza: Pizza
        switch pizzaType {
        case .cheese:
            pizza = NYStyleCheesePizza()
        }
        return pizza
    }
}

enum NYPizzaType: String {
    case cheese
}
