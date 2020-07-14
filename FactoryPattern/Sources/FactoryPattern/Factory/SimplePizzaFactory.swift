//
//  SimplePizzaFactory.swift
//
//
//  Created by Bastián Véliz Vega on 14-07-20.
//

import Foundation

class SimplePizzaFactory: PizzaFactory {
    func createPizza(ofType type: String) -> Pizza? {
        guard let pizzaType = SimplePizzaType(rawValue: type) else { return nil }
        let pizza: Pizza
        switch pizzaType {
        case .cheese:
            pizza = SimpleCheesePizza()
        }
        return pizza
    }
}

enum SimplePizzaType: String {
    case cheese
}
