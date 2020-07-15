//
//  NYPizzaIngredientFactory.swift
//
//
//  Created by Bastián Véliz Vega on 15-07-20.
//

import Foundation

class NYPizzaIngredientFactory: PizzaIngredientFactory {
    func createDough() -> Dough {
        return ThinCrustDough()
    }

    func createSauce() -> Sauce {
        return MarinaraSauce()
    }

    func createCheese() -> Cheese {
        return RegianoCheese()
    }

    func createVeggies() -> [Veggies] {
        return [Garlic(), Onion(), Mushroom(), RedPepper()]
    }

    func createPepperoni() -> Pepperoni {
        return SlicedPepperoni()
    }

    func createClam() -> Clams {
        return FreshClams()
    }
}
