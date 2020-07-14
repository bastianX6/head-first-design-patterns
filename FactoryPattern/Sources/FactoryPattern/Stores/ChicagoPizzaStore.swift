//
//  ChicagoPizzaStore.swift
//
//
//  Created by Bastián Véliz Vega on 14-07-20.
//

import Foundation

class ChicagoPizzaStore: PizzaStore {
    func createPizza(ofType type: String) -> Pizza? {
        guard let pizzaType = ChicagoPizzaType(rawValue: type) else { return nil }

        let pizza: Pizza
        switch pizzaType {
        case .cheese:
            pizza = ChicagoStyleCheesePizza()
        }

        return pizza
    }
}

enum ChicagoPizzaType: String {
    case cheese
}
